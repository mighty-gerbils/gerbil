(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g210486_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210493_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210495_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210497_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210499_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210501_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210513_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210515_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210517_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210519_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210521_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx203904%_)
        (let* ((_%g203908203926%_
                (lambda (_%g203909203922%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203909203922%_))))
               (_%g203907203981%_
                (lambda (_%g203909203930%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203909203930%_))
                      (let ((_%e203912203933%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203909203930%_))))
                        (let ((_%hd203913203937%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203912203933%_)))
                              (_%tl203914203940%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203912203933%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203914203940%_))
                              (let ((_%e203915203943%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203914203940%_))))
                                (let ((_%hd203916203947%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203915203943%_)))
                                      (_%tl203917203950%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203915203943%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203917203950%_))
                                      (let ((_%e203918203953%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203917203950%_))))
                                        (let ((_%hd203919203957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203918203953%_)))
                                              (_%tl203920203960%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203918203953%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203920203960%_))
                                              ((lambda (_%L203963%_
                                                        _%L203965%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L203965%_))
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
                               (cons _%L203965%_ '()))
                         (cons _%L203963%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g203908203926%_
                                                      _%g203909203930%_)))
                                               _%hd203919203957%_
                                               _%hd203916203947%_)
                                              (_%g203908203926%_
                                               _%g203909203930%_))))
                                      (_%g203908203926%_ _%g203909203930%_))))
                              (_%g203908203926%_ _%g203909203930%_))))
                      (_%g203908203926%_ _%g203909203930%_)))))
          (_%g203907203981%_ _%$stx203904%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx203985%_)
        (let* ((_%g203989204007%_
                (lambda (_%g203990204003%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203990204003%_))))
               (_%g203988204062%_
                (lambda (_%g203990204011%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203990204011%_))
                      (let ((_%e203993204014%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203990204011%_))))
                        (let ((_%hd203994204018%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203993204014%_)))
                              (_%tl203995204021%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203993204014%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203995204021%_))
                              (let ((_%e203996204024%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203995204021%_))))
                                (let ((_%hd203997204028%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203996204024%_)))
                                      (_%tl203998204031%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203996204024%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203998204031%_))
                                      (let ((_%e203999204034%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203998204031%_))))
                                        (let ((_%hd204000204038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203999204034%_)))
                                              (_%tl204001204041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203999204034%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204001204041%_))
                                              ((lambda (_%L204044%_
                                                        _%L204046%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L204046%_))
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
                               (cons _%L204046%_ '()))
                         (cons _%L204044%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g203989204007%_
                                                      _%g203990204011%_)))
                                               _%hd204000204038%_
                                               _%hd203997204028%_)
                                              (_%g203989204007%_
                                               _%g203990204011%_))))
                                      (_%g203989204007%_ _%g203990204011%_))))
                              (_%g203989204007%_ _%g203990204011%_))))
                      (_%g203989204007%_ _%g203990204011%_)))))
          (_%g203988204062%_ _%$stx203985%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx204066%_)
        (let* ((_%g204070204099%_
                (lambda (_%g204071204095%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204071204095%_))))
               (_%g204069204199%_
                (lambda (_%g204071204103%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204071204103%_))
                      (let ((_%e204074204106%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204071204103%_))))
                        (let ((_%hd204075204110%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204074204106%_)))
                              (_%tl204076204113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204074204106%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204076204113%_))
                              (let ((_g210464_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204076204113%_
                                        '0))))
                                (begin
                                  (let ((_g210465_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210464_)
                                               (##values-length _g210464_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210465_ 2)))
                                        (error "Context expects 2 values"
                                               _g210465_)))
                                  (let ((_%target204077204116%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210464_ 0)))
                                        (_%tl204079204119%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210464_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204079204119%_))
                                        (letrec ((_%loop204080204122%_
                                                  (lambda (_%hd204078204126%_
                                                           _%type204084204129%_
                                                           _%symbol204085204131%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204078204126%_))
                                                        (let ((_%e204081204134%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204078204126%_))))
                  (let ((_%lp-hd204082204138%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204081204134%_)))
                        (_%lp-tl204083204141%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204081204134%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd204082204138%_))
                        (let ((_%e204088204144%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd204082204138%_))))
                          (let ((_%hd204089204148%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204088204144%_)))
                                (_%tl204090204151%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204088204144%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204090204151%_))
                                (let ((_%e204091204154%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204090204151%_))))
                                  (let ((_%hd204092204158%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204091204154%_)))
                                        (_%tl204093204161%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204091204154%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204093204161%_))
                                        (_%loop204080204122%_
                                         _%lp-tl204083204141%_
                                         (cons _%hd204092204158%_
                                               _%type204084204129%_)
                                         (cons _%hd204089204148%_
                                               _%symbol204085204131%_))
                                        (_%g204070204099%_
                                         _%g204071204103%_))))
                                (_%g204070204099%_ _%g204071204103%_))))
                        (_%g204070204099%_ _%g204071204103%_))))
                (let ((_%type204086204164%_ (reverse _%type204084204129%_))
                      (_%symbol204087204167%_
                       (reverse _%symbol204085204131%_)))
                  ((lambda (_%L204170%_ _%L204172%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L204170%_
                                _%L204172%_))
                             (let ((__tmp210466
                                    (lambda (_%g204187204191%_
                                             _%g204188204194%_
                                             _%g204189204196%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g204188204194%_
                                                        (cons _%g204187204191%_
                                                              '())))
                                            _%g204189204196%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp210466
                                '()
                                _%L204170%_
                                _%L204172%_)))))
                   _%type204086204164%_
                   _%symbol204087204167%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204080204122%_
                                           _%target204077204116%_
                                           '()
                                           '()))
                                        (_%g204070204099%_
                                         _%g204071204103%_)))))
                              (_%g204070204099%_ _%g204071204103%_))))
                      (_%g204070204099%_ _%g204071204103%_)))))
          (_%g204069204199%_ _%$stx204066%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx204204%_)
        (let* ((_%__stx209775209776%_ _%$stx204204%_)
               (_%g204209204251%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209775209776%_)))))
          (let ((_%__kont209778209779%_
                 (lambda (_%L204379%_ _%L204381%_ _%L204382%_ _%L204383%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204383%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204382%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L204381%_ '()))
                                           (cons _%L204379%_ '())))))))
                (_%__kont209780209781%_
                 (lambda (_%L204298%_ _%L204300%_ _%L204301%_ _%L204302%_)
                   (cons _%L204302%_
                         (cons _%L204301%_
                               (cons _%L204300%_
                                     (cons _%L204298%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match209814209815%_
                   (lambda (_%e204215204329%_
                            _%hd204216204333%_
                            _%tl204217204336%_
                            _%e204218204339%_
                            _%hd204219204343%_
                            _%tl204220204346%_
                            _%e204221204349%_
                            _%hd204222204353%_
                            _%tl204223204356%_
                            _%e204224204359%_
                            _%hd204225204363%_
                            _%tl204226204366%_
                            _%e204227204369%_
                            _%hd204228204373%_
                            _%tl204229204376%_)
                     (let ((_%L204379%_ _%hd204228204373%_)
                           (_%L204381%_ _%hd204225204363%_)
                           (_%L204382%_ _%hd204222204353%_)
                           (_%L204383%_ _%hd204219204343%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204383%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204382%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204381%_)))
                           (_%__kont209778209779%_
                            _%L204379%_
                            _%L204381%_
                            _%L204382%_
                            _%L204383%_)
                           (let ()
                             (declare (not safe))
                             (_%g204209204251%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209775209776%_))
                  (let ((_%e204215204329%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209775209776%_))))
                    (let ((_%tl204217204336%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204215204329%_)))
                          (_%hd204216204333%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204215204329%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204217204336%_))
                          (let ((_%e204218204339%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl204217204336%_))))
                            (let ((_%tl204220204346%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204218204339%_)))
                                  (_%hd204219204343%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204218204339%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204220204346%_))
                                  (let ((_%e204221204349%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl204220204346%_))))
                                    (let ((_%tl204223204356%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204221204349%_)))
                                          (_%hd204222204353%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204221204349%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204223204356%_))
                                          (let ((_%e204224204359%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl204223204356%_))))
                                            (let ((_%tl204226204366%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204224204359%_)))
                                                  (_%hd204225204363%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204224204359%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204226204366%_))
                                                  (let ((_%e204227204369%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl204226204366%_))))
                                                    (let ((_%tl204229204376%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204227204369%_)))
                                                          (_%hd204228204373%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204227204369%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204229204376%_))
                                                          (_%__match209814209815%_
                                                           _%e204215204329%_
                                                           _%hd204216204333%_
                                                           _%tl204217204336%_
                                                           _%e204218204339%_
                                                           _%hd204219204343%_
                                                           _%tl204220204346%_
                                                           _%e204221204349%_
                                                           _%hd204222204353%_
                                                           _%tl204223204356%_
                                                           _%e204224204359%_
                                                           _%hd204225204363%_
                                                           _%tl204226204366%_
                                                           _%e204227204369%_
                                                           _%hd204228204373%_
                                                           _%tl204229204376%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204209204251%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204226204366%_))
                                                      (_%__kont209780209781%_
                                                       _%hd204225204363%_
                                                       _%hd204222204353%_
                                                       _%hd204219204343%_
                                                       _%hd204216204333%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204209204251%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204209204251%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204209204251%_)))))
                          (let () (declare (not safe)) (_%g204209204251%_)))))
                  (let () (declare (not safe)) (_%g204209204251%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx204408%_)
        (let* ((_%g204412204447%_
                (lambda (_%g204413204443%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204413204443%_))))
               (_%g204411204566%_
                (lambda (_%g204413204451%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204413204451%_))
                      (let ((_%e204417204454%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204413204451%_))))
                        (let ((_%hd204418204458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204417204454%_)))
                              (_%tl204419204461%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204417204454%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204419204461%_))
                              (let ((_g210467_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204419204461%_
                                        '0))))
                                (begin
                                  (let ((_g210468_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210467_)
                                               (##values-length _g210467_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210468_ 2)))
                                        (error "Context expects 2 values"
                                               _g210468_)))
                                  (let ((_%target204420204464%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210467_ 0)))
                                        (_%tl204422204467%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210467_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204422204467%_))
                                        (letrec ((_%loop204423204470%_
                                                  (lambda (_%hd204421204474%_
                                                           _%symbol204427204477%_
                                                           _%method204428204479%_
                                                           _%type-t204429204481%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204421204474%_))
                                                        (let ((_%e204424204484%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204421204474%_))))
                  (let ((_%lp-hd204425204488%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204424204484%_)))
                        (_%lp-tl204426204491%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204424204484%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd204425204488%_))
                        (let ((_%e204433204494%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd204425204488%_))))
                          (let ((_%hd204434204498%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204433204494%_)))
                                (_%tl204435204501%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204433204494%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204435204501%_))
                                (let ((_%e204436204504%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204435204501%_))))
                                  (let ((_%hd204437204508%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204436204504%_)))
                                        (_%tl204438204511%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204436204504%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204438204511%_))
                                        (let ((_%e204439204514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl204438204511%_))))
                                          (let ((_%hd204440204518%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204439204514%_)))
                                                (_%tl204441204521%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204439204514%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204441204521%_))
                                                (_%loop204423204470%_
                                                 _%lp-tl204426204491%_
                                                 (cons _%hd204440204518%_
                                                       _%symbol204427204477%_)
                                                 (cons _%hd204437204508%_
                                                       _%method204428204479%_)
                                                 (cons _%hd204434204498%_
                                                       _%type-t204429204481%_))
                                                (_%g204412204447%_
                                                 _%g204413204451%_))))
                                        (_%g204412204447%_
                                         _%g204413204451%_))))
                                (_%g204412204447%_ _%g204413204451%_))))
                        (_%g204412204447%_ _%g204413204451%_))))
                (let ((_%symbol204430204524%_ (reverse _%symbol204427204477%_))
                      (_%method204431204527%_ (reverse _%method204428204479%_))
                      (_%type-t204432204529%_
                       (reverse _%type-t204429204481%_)))
                  ((lambda (_%L204532%_ _%L204534%_ _%L204535%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L204532%_
                                _%L204534%_
                                _%L204535%_))
                             (let ((__tmp210469
                                    (lambda (_%g204551204556%_
                                             _%g204552204559%_
                                             _%g204553204561%_
                                             _%g204554204563%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g204553204561%_
                                                        (cons _%g204552204559%_
                                                              (cons _%g204551204556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g204554204563%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp210469
                                '()
                                _%L204532%_
                                _%L204534%_
                                _%L204535%_)))))
                   _%symbol204430204524%_
                   _%method204431204527%_
                   _%type-t204432204529%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204423204470%_
                                           _%target204420204464%_
                                           '()
                                           '()
                                           '()))
                                        (_%g204412204447%_
                                         _%g204413204451%_)))))
                              (_%g204412204447%_ _%g204413204451%_))))
                      (_%g204412204447%_ _%g204413204451%_)))))
          (_%g204411204566%_ _%$stx204408%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx204571%_)
        (let* ((_%g204575204608%_
                (lambda (_%g204576204604%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204576204604%_))))
               (_%g204574204722%_
                (lambda (_%g204576204612%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204576204612%_))
                      (let ((_%e204580204615%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204576204612%_))))
                        (let ((_%hd204581204619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204580204615%_)))
                              (_%tl204582204622%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204580204615%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204582204622%_))
                              (let ((_%e204583204625%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204582204622%_))))
                                (let ((_%hd204584204629%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204583204625%_)))
                                      (_%tl204585204632%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204583204625%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl204585204632%_))
                                      (let ((_g210470_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl204585204632%_
                                                '0))))
                                        (begin
                                          (let ((_g210471_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210470_)
                                                       (##values-length
                                                        _g210470_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210471_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210471_)))
                                          (let ((_%target204586204635%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210470_ 0)))
                                                (_%tl204588204638%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210470_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204588204638%_))
                                                (letrec ((_%loop204589204641%_
                                                          (lambda (_%hd204587204645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol204593204648%_
                           _%method204594204650%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd204587204645%_))
                        (let ((_%e204590204653%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd204587204645%_))))
                          (let ((_%lp-hd204591204657%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204590204653%_)))
                                (_%lp-tl204592204660%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204590204653%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd204591204657%_))
                                (let ((_%e204597204663%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd204591204657%_))))
                                  (let ((_%hd204598204667%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204597204663%_)))
                                        (_%tl204599204670%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204597204663%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204599204670%_))
                                        (let ((_%e204600204673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl204599204670%_))))
                                          (let ((_%hd204601204677%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204600204673%_)))
                                                (_%tl204602204680%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204600204673%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204602204680%_))
                                                (_%loop204589204641%_
                                                 _%lp-tl204592204660%_
                                                 (cons _%hd204601204677%_
                                                       _%symbol204593204648%_)
                                                 (cons _%hd204598204667%_
                                                       _%method204594204650%_))
                                                (_%g204575204608%_
                                                 _%g204576204612%_))))
                                        (_%g204575204608%_
                                         _%g204576204612%_))))
                                (_%g204575204608%_ _%g204576204612%_))))
                        (let ((_%symbol204595204683%_
                               (reverse _%symbol204593204648%_))
                              (_%method204596204686%_
                               (reverse _%method204594204650%_)))
                          ((lambda (_%L204689%_ _%L204691%_ _%L204692%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L204689%_
                                        _%L204691%_))
                                     (let ((__tmp210472
                                            (lambda (_%g204710204714%_
                                                     _%g204711204717%_
                                                     _%g204712204719%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L204692%_
                                                                (cons _%g204711204717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g204710204714%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g204712204719%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp210472
                                        '()
                                        _%L204689%_
                                        _%L204691%_)))))
                           _%symbol204595204683%_
                           _%method204596204686%_
                           _%hd204584204629%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop204589204641%_
                                                   _%target204586204635%_
                                                   '()
                                                   '()))
                                                (_%g204575204608%_
                                                 _%g204576204612%_)))))
                                      (_%g204575204608%_ _%g204576204612%_))))
                              (_%g204575204608%_ _%g204576204612%_))))
                      (_%g204575204608%_ _%g204576204612%_)))))
          (_%g204574204722%_ _%$stx204571%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx204727%_)
        (let* ((_%g204731204745%_
                (lambda (_%g204732204741%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204732204741%_))))
               (_%g204730204786%_
                (lambda (_%g204732204749%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204732204749%_))
                      (let ((_%e204734204752%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204732204749%_))))
                        (let ((_%hd204735204756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204734204752%_)))
                              (_%tl204736204759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204734204752%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204736204759%_))
                              (let ((_%e204737204762%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204736204759%_))))
                                (let ((_%hd204738204766%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204737204762%_)))
                                      (_%tl204739204769%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204737204762%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204739204769%_))
                                      ((lambda (_%L204772%_)
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
                                                           (cons _%L204772%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204738204766%_)
                                      (_%g204731204745%_ _%g204732204749%_))))
                              (_%g204731204745%_ _%g204732204749%_))))
                      (_%g204731204745%_ _%g204732204749%_)))))
          (_%g204730204786%_ _%$stx204727%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx204790%_)
        (let* ((_%g204794204848%_
                (lambda (_%g204795204844%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204795204844%_))))
               (_%g204793205029%_
                (lambda (_%g204795204852%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204795204852%_))
                      (let ((_%e204807204855%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204795204852%_))))
                        (let ((_%hd204808204859%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204807204855%_)))
                              (_%tl204809204862%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204807204855%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204809204862%_))
                              (let ((_%e204810204865%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204809204862%_))))
                                (let ((_%hd204811204869%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204810204865%_)))
                                      (_%tl204812204872%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204810204865%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204812204872%_))
                                      (let ((_%e204813204875%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204812204872%_))))
                                        (let ((_%hd204814204879%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204813204875%_)))
                                              (_%tl204815204882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204813204875%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204815204882%_))
                                              (let ((_%e204816204885%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204815204882%_))))
                                                (let ((_%hd204817204889%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204816204885%_)))
                                                      (_%tl204818204892%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204816204885%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204818204892%_))
                                                      (let ((_%e204819204895%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl204818204892%_))))
                (let ((_%hd204820204899%_
                       (let () (declare (not safe)) (##car _%e204819204895%_)))
                      (_%tl204821204902%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e204819204895%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204821204902%_))
                      (let ((_%e204822204905%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204821204902%_))))
                        (let ((_%hd204823204909%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204822204905%_)))
                              (_%tl204824204912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204822204905%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204824204912%_))
                              (let ((_%e204825204915%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204824204912%_))))
                                (let ((_%hd204826204919%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204825204915%_)))
                                      (_%tl204827204922%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204825204915%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204827204922%_))
                                      (let ((_%e204828204925%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204827204922%_))))
                                        (let ((_%hd204829204929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204828204925%_)))
                                              (_%tl204830204932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204828204925%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204830204932%_))
                                              (let ((_%e204831204935%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204830204932%_))))
                                                (let ((_%hd204832204939%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204831204935%_)))
                                                      (_%tl204833204942%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204831204935%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204833204942%_))
                                                      (let ((_%e204834204945%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl204833204942%_))))
                (let ((_%hd204835204949%_
                       (let () (declare (not safe)) (##car _%e204834204945%_)))
                      (_%tl204836204952%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e204834204945%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204836204952%_))
                      (let ((_%e204837204955%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204836204952%_))))
                        (let ((_%hd204838204959%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204837204955%_)))
                              (_%tl204839204962%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204837204955%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204839204962%_))
                              (let ((_%e204840204965%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204839204962%_))))
                                (let ((_%hd204841204969%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204840204965%_)))
                                      (_%tl204842204972%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204840204965%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204842204972%_))
                                      ((lambda (_%L204975%_
                                                _%L204977%_
                                                _%L204978%_
                                                _%L204979%_
                                                _%L204980%_
                                                _%L204981%_
                                                _%L204982%_
                                                _%L204983%_
                                                _%L204984%_
                                                _%L204985%_
                                                _%L204986%_)
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
                                                           (cons _%L204986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L204985%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L204984%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204983%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204982%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L204981%_ '()))
                                           (cons _%L204980%_
                                                 (cons _%L204979%_
                                                       (cons _%L204978%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204977%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L204975%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd204841204969%_
                                       _%hd204838204959%_
                                       _%hd204835204949%_
                                       _%hd204832204939%_
                                       _%hd204829204929%_
                                       _%hd204826204919%_
                                       _%hd204823204909%_
                                       _%hd204820204899%_
                                       _%hd204817204889%_
                                       _%hd204814204879%_
                                       _%hd204811204869%_)
                                      (_%g204794204848%_ _%g204795204852%_))))
                              (_%g204794204848%_ _%g204795204852%_))))
                      (_%g204794204848%_ _%g204795204852%_))))
              (_%g204794204848%_ _%g204795204852%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204794204848%_
                                               _%g204795204852%_))))
                                      (_%g204794204848%_ _%g204795204852%_))))
                              (_%g204794204848%_ _%g204795204852%_))))
                      (_%g204794204848%_ _%g204795204852%_))))
              (_%g204794204848%_ _%g204795204852%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204794204848%_
                                               _%g204795204852%_))))
                                      (_%g204794204848%_ _%g204795204852%_))))
                              (_%g204794204848%_ _%g204795204852%_))))
                      (_%g204794204848%_ _%g204795204852%_)))))
          (_%g204793205029%_ _%$stx204790%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx205033%_)
        (let* ((_%g205037205051%_
                (lambda (_%g205038205047%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205038205047%_))))
               (_%g205036205092%_
                (lambda (_%g205038205055%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205038205055%_))
                      (let ((_%e205040205058%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205038205055%_))))
                        (let ((_%hd205041205062%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205040205058%_)))
                              (_%tl205042205065%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205040205058%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205042205065%_))
                              (let ((_%e205043205068%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205042205065%_))))
                                (let ((_%hd205044205072%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205043205068%_)))
                                      (_%tl205045205075%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205043205068%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl205045205075%_))
                                      ((lambda (_%L205078%_)
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
                                                           (cons _%L205078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd205044205072%_)
                                      (_%g205037205051%_ _%g205038205055%_))))
                              (_%g205037205051%_ _%g205038205055%_))))
                      (_%g205037205051%_ _%g205038205055%_)))))
          (_%g205036205092%_ _%$stx205033%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx205096%_)
        (let* ((_%g205100205114%_
                (lambda (_%g205101205110%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205101205110%_))))
               (_%g205099205155%_
                (lambda (_%g205101205118%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205101205118%_))
                      (let ((_%e205103205121%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205101205118%_))))
                        (let ((_%hd205104205125%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205103205121%_)))
                              (_%tl205105205128%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205103205121%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205105205128%_))
                              (let ((_%e205106205131%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205105205128%_))))
                                (let ((_%hd205107205135%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205106205131%_)))
                                      (_%tl205108205138%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205106205131%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl205108205138%_))
                                      ((lambda (_%L205141%_)
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
                                                           (cons _%L205141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd205107205135%_)
                                      (_%g205100205114%_ _%g205101205118%_))))
                              (_%g205100205114%_ _%g205101205118%_))))
                      (_%g205100205114%_ _%g205101205118%_)))))
          (_%g205099205155%_ _%$stx205096%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx205159%_)
        (let* ((_%g205163205185%_
                (lambda (_%g205164205181%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205164205181%_))))
               (_%g205162205254%_
                (lambda (_%g205164205189%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205164205189%_))
                      (let ((_%e205168205192%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205164205189%_))))
                        (let ((_%hd205169205196%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205168205192%_)))
                              (_%tl205170205199%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205168205192%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205170205199%_))
                              (let ((_%e205171205202%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205170205199%_))))
                                (let ((_%hd205172205206%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205171205202%_)))
                                      (_%tl205173205209%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205171205202%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205173205209%_))
                                      (let ((_%e205174205212%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205173205209%_))))
                                        (let ((_%hd205175205216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205174205212%_)))
                                              (_%tl205176205219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205174205212%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205176205219%_))
                                              (let ((_%e205177205222%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205176205219%_))))
                                                (let ((_%hd205178205226%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205177205222%_)))
                                                      (_%tl205179205229%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205177205222%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205179205229%_))
                                                      ((lambda (_%L205232%_
                                                                _%L205234%_
                                                                _%L205235%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205235%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L205234%_ '()))
                                   (cons _%L205232%_ '())))))
               _%hd205178205226%_
               _%hd205175205216%_
               _%hd205172205206%_)
              (_%g205163205185%_ _%g205164205189%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205163205185%_
                                               _%g205164205189%_))))
                                      (_%g205163205185%_ _%g205164205189%_))))
                              (_%g205163205185%_ _%g205164205189%_))))
                      (_%g205163205185%_ _%g205164205189%_)))))
          (_%g205162205254%_ _%$stx205159%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx205258%_)
        (let* ((_%g205262205284%_
                (lambda (_%g205263205280%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205263205280%_))))
               (_%g205261205353%_
                (lambda (_%g205263205288%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205263205288%_))
                      (let ((_%e205267205291%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205263205288%_))))
                        (let ((_%hd205268205295%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205267205291%_)))
                              (_%tl205269205298%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205267205291%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205269205298%_))
                              (let ((_%e205270205301%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205269205298%_))))
                                (let ((_%hd205271205305%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205270205301%_)))
                                      (_%tl205272205308%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205270205301%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205272205308%_))
                                      (let ((_%e205273205311%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205272205308%_))))
                                        (let ((_%hd205274205315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205273205311%_)))
                                              (_%tl205275205318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205273205311%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205275205318%_))
                                              (let ((_%e205276205321%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205275205318%_))))
                                                (let ((_%hd205277205325%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205276205321%_)))
                                                      (_%tl205278205328%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205276205321%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205278205328%_))
                                                      ((lambda (_%L205331%_
                                                                _%L205333%_
                                                                _%L205334%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205334%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L205333%_ '()))
                                   (cons _%L205331%_ '())))))
               _%hd205277205325%_
               _%hd205274205315%_
               _%hd205271205305%_)
              (_%g205262205284%_ _%g205263205288%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205262205284%_
                                               _%g205263205288%_))))
                                      (_%g205262205284%_ _%g205263205288%_))))
                              (_%g205262205284%_ _%g205263205288%_))))
                      (_%g205262205284%_ _%g205263205288%_)))))
          (_%g205261205353%_ _%$stx205258%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx205357%_)
        (let* ((_%g205361205375%_
                (lambda (_%g205362205371%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205362205371%_))))
               (_%g205360205416%_
                (lambda (_%g205362205379%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205362205379%_))
                      (let ((_%e205364205382%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205362205379%_))))
                        (let ((_%hd205365205386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205364205382%_)))
                              (_%tl205366205389%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205364205382%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205366205389%_))
                              (let ((_%e205367205392%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205366205389%_))))
                                (let ((_%hd205368205396%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205367205392%_)))
                                      (_%tl205369205399%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205367205392%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl205369205399%_))
                                      ((lambda (_%L205402%_)
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
                                                           (cons _%L205402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd205368205396%_)
                                      (_%g205361205375%_ _%g205362205379%_))))
                              (_%g205361205375%_ _%g205362205379%_))))
                      (_%g205361205375%_ _%g205362205379%_)))))
          (_%g205360205416%_ _%$stx205357%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx205420%_)
        (let* ((_%g205424205442%_
                (lambda (_%g205425205438%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205425205438%_))))
               (_%g205423205497%_
                (lambda (_%g205425205446%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205425205446%_))
                      (let ((_%e205428205449%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205425205446%_))))
                        (let ((_%hd205429205453%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205428205449%_)))
                              (_%tl205430205456%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205428205449%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205430205456%_))
                              (let ((_%e205431205459%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205430205456%_))))
                                (let ((_%hd205432205463%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205431205459%_)))
                                      (_%tl205433205466%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205431205459%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205433205466%_))
                                      (let ((_%e205434205469%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205433205466%_))))
                                        (let ((_%hd205435205473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205434205469%_)))
                                              (_%tl205436205476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205434205469%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205436205476%_))
                                              ((lambda (_%L205479%_
                                                        _%L205481%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205481%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L205479%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205435205473%_
                                               _%hd205432205463%_)
                                              (_%g205424205442%_
                                               _%g205425205446%_))))
                                      (_%g205424205442%_ _%g205425205446%_))))
                              (_%g205424205442%_ _%g205425205446%_))))
                      (_%g205424205442%_ _%g205425205446%_)))))
          (_%g205423205497%_ _%$stx205420%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx205501%_)
        (let* ((_%__stx209843209844%_ _%$stx205501%_)
               (_%g205508205569%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209843209844%_)))))
          (let ((_%__kont209846209847%_
                 (lambda (_%L205807%_ _%L205809%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205809%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L205807%_ '()))
                                     '())))))
                (_%__kont209848209849%_
                 (lambda (_%L205746%_ _%L205748%_ _%L205749%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205749%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L205748%_ '()))
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
                                 (cons _%L205746%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont209850209851%_
                 (lambda (_%L205670%_ _%L205672%_)
                   (cons _%L205672%_ (cons _%L205670%_ (cons '#f '())))))
                (_%__kont209852209853%_
                 (lambda (_%L205620%_ _%L205622%_ _%L205623%_)
                   (cons _%L205623%_
                         (cons _%L205622%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L205620%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209843209844%_))
                (let ((_%e205512205777%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx209843209844%_))))
                  (let ((_%tl205514205784%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205512205777%_)))
                        (_%hd205513205781%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205512205777%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl205514205784%_))
                        (let ((_%e205515205787%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205514205784%_))))
                          (let ((_%tl205517205794%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205515205787%_)))
                                (_%hd205516205791%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205515205787%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205517205794%_))
                                (let ((_%e205518205797%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205517205794%_))))
                                  (let ((_%tl205520205804%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205518205797%_)))
                                        (_%hd205519205801%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205518205797%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205520205804%_))
                                        (_%__kont209846209847%_
                                         _%hd205519205801%_
                                         _%hd205516205791%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205520205804%_))
                                            (let ((_%e205533205722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl205520205804%_))))
                                              (let ((_%tl205535205729%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205533205722%_)))
                                                    (_%hd205534205726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205533205722%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd205534205726%_))
                                                    (let ((_%e205536205732%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd205534205726%_))))
                                                      (if (equal? _%e205536205732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl205535205729%_))
                      (let ((_%e205537205736%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl205535205729%_))))
                        (let ((_%tl205539205743%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205537205736%_)))
                              (_%hd205538205740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205537205736%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205539205743%_))
                              (_%__kont209848209849%_
                               _%hd205538205740%_
                               _%hd205519205801%_
                               _%hd205516205791%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd205519205801%_))
                                  (let ((_%e205560205606%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd205519205801%_))))
                                    (declare (not safe))
                                    (_%g205508205569%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g205508205569%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd205519205801%_))
                          (let ((_%e205560205606%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd205519205801%_))))
                            (if (equal? _%e205560205606%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205535205729%_))
                                    (_%__kont209852209853%_
                                     _%hd205534205726%_
                                     _%hd205516205791%_
                                     _%hd205513205781%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g205508205569%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g205508205569%_))))
                          (let () (declare (not safe)) (_%g205508205569%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd205519205801%_))
                      (let ((_%e205560205606%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd205519205801%_))))
                        (if (equal? _%e205560205606%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl205535205729%_))
                                (_%__kont209852209853%_
                                 _%hd205534205726%_
                                 _%hd205516205791%_
                                 _%hd205513205781%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g205508205569%_)))
                            (let () (declare (not safe)) (_%g205508205569%_))))
                      (let () (declare (not safe)) (_%g205508205569%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd205519205801%_))
                                                        (let ((_%e205560205606%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd205519205801%_))))
                  (if (equal? _%e205560205606%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205535205729%_))
                          (_%__kont209852209853%_
                           _%hd205534205726%_
                           _%hd205516205791%_
                           _%hd205513205781%_)
                          (let () (declare (not safe)) (_%g205508205569%_)))
                      (let () (declare (not safe)) (_%g205508205569%_))))
                (let () (declare (not safe)) (_%g205508205569%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd205519205801%_))
                                                (let ((_%e205560205606%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd205519205801%_))))
                                                  (declare (not safe))
                                                  (_%g205508205569%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g205508205569%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205517205794%_))
                                    (_%__kont209850209851%_
                                     _%hd205516205791%_
                                     _%hd205513205781%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g205508205569%_))))))
                        (let () (declare (not safe)) (_%g205508205569%_)))))
                (let () (declare (not safe)) (_%g205508205569%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx205828%_)
        (let* ((_%g205832205861%_
                (lambda (_%g205833205857%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205833205857%_))))
               (_%g205831205970%_
                (lambda (_%g205833205865%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205833205865%_))
                      (let ((_%e205835205868%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205833205865%_))))
                        (let ((_%hd205836205872%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205835205868%_)))
                              (_%tl205837205875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205835205868%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl205837205875%_))
                              (let ((_g210473_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl205837205875%_
                                        '0))))
                                (begin
                                  (let ((_g210474_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210473_)
                                               (##values-length _g210473_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210474_ 2)))
                                        (error "Context expects 2 values"
                                               _g210474_)))
                                  (let ((_%target205838205878%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210473_ 0)))
                                        (_%tl205840205881%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210473_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205840205881%_))
                                        (letrec ((_%loop205841205884%_
                                                  (lambda (_%hd205839205888%_
                                                           _%clause205845205891%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205839205888%_))
                                                        (let ((_%e205842205894%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205839205888%_))))
                  (let ((_%lp-hd205843205898%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205842205894%_)))
                        (_%lp-tl205844205901%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205842205894%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd205843205898%_))
                        (let ((_g210475_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd205843205898%_
                                  '0))))
                          (begin
                            (let ((_g210476_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g210475_)
                                         (##values-length _g210475_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g210476_ 2)))
                                  (error "Context expects 2 values"
                                         _g210476_)))
                            (let ((_%target205847205904%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g210475_ 0)))
                                  (_%tl205849205907%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g210475_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl205849205907%_))
                                  (letrec ((_%loop205850205910%_
                                            (lambda (_%hd205848205914%_
                                                     _%clause205854205917%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd205848205914%_))
                                                  (let ((_%e205851205920%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd205848205914%_))))
                                                    (let ((_%lp-hd205852205924%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205851205920%_)))
                                                          (_%lp-tl205853205927%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205851205920%_))))
                                                      (_%loop205850205910%_
                                                       _%lp-tl205853205927%_
                                                       (cons _%lp-hd205852205924%_
                                                             _%clause205854205917%_))))
                                                  (let ((_%clause205855205930%_
                                                         (reverse _%clause205854205917%_)))
                                                    (_%loop205841205884%_
                                                     _%lp-tl205844205901%_
                                                     (cons _%clause205855205930%_
                                                           _%clause205845205891%_)))))))
                                    (_%loop205850205910%_
                                     _%target205847205904%_
                                     '()))
                                  (_%g205832205861%_ _%g205833205865%_)))))
                        (_%g205832205861%_ _%g205833205865%_))))
                (let ((_%clause205846205934%_
                       (reverse _%clause205845205891%_)))
                  ((lambda (_%L205938%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp210477
                                              (lambda (_%g205953205958%_
                                                       _%g205954205961%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp210478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g205955205964%_ _%g205956205967%_)
                             (cons _%g205955205964%_ _%g205956205967%_))))
                      (declare (not safe))
                      (__foldr1 __tmp210478 '() _%g205953205958%_)))
              _%g205954205961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp210477
                                          '()
                                          _%L205938%_)))
                                 '())))
                   _%clause205846205934%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop205841205884%_
                                           _%target205838205878%_
                                           '()))
                                        (_%g205832205861%_
                                         _%g205833205865%_)))))
                              (_%g205832205861%_ _%g205833205865%_))))
                      (_%g205832205861%_ _%g205833205865%_)))))
          (_%g205831205970%_ _%$stx205828%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx205976%_)
        (let* ((_%g205980205998%_
                (lambda (_%g205981205994%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205981205994%_))))
               (_%g205979206053%_
                (lambda (_%g205981206002%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205981206002%_))
                      (let ((_%e205984206005%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205981206002%_))))
                        (let ((_%hd205985206009%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205984206005%_)))
                              (_%tl205986206012%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205984206005%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205986206012%_))
                              (let ((_%e205987206015%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205986206012%_))))
                                (let ((_%hd205988206019%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205987206015%_)))
                                      (_%tl205989206022%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205987206015%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205989206022%_))
                                      (let ((_%e205990206025%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205989206022%_))))
                                        (let ((_%hd205991206029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205990206025%_)))
                                              (_%tl205992206032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205990206025%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205992206032%_))
                                              ((lambda (_%L206035%_
                                                        _%L206037%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206037%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L206035%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205991206029%_
                                               _%hd205988206019%_)
                                              (_%g205980205998%_
                                               _%g205981206002%_))))
                                      (_%g205980205998%_ _%g205981206002%_))))
                              (_%g205980205998%_ _%g205981206002%_))))
                      (_%g205980205998%_ _%g205981206002%_)))))
          (_%g205979206053%_ _%$stx205976%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx206057%_)
        (let* ((_%g206061206079%_
                (lambda (_%g206062206075%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206062206075%_))))
               (_%g206060206134%_
                (lambda (_%g206062206083%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206062206083%_))
                      (let ((_%e206065206086%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206062206083%_))))
                        (let ((_%hd206066206090%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206065206086%_)))
                              (_%tl206067206093%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206065206086%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206067206093%_))
                              (let ((_%e206068206096%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206067206093%_))))
                                (let ((_%hd206069206100%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206068206096%_)))
                                      (_%tl206070206103%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206068206096%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206070206103%_))
                                      (let ((_%e206071206106%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl206070206103%_))))
                                        (let ((_%hd206072206110%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206071206106%_)))
                                              (_%tl206073206113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206071206106%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206073206113%_))
                                              ((lambda (_%L206116%_
                                                        _%L206118%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206118%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L206116%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd206072206110%_
                                               _%hd206069206100%_)
                                              (_%g206061206079%_
                                               _%g206062206083%_))))
                                      (_%g206061206079%_ _%g206062206083%_))))
                              (_%g206061206079%_ _%g206062206083%_))))
                      (_%g206061206079%_ _%g206062206083%_)))))
          (_%g206060206134%_ _%$stx206057%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx206138%_)
        (let* ((_%g206142206171%_
                (lambda (_%g206143206167%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206143206167%_))))
               (_%g206141206271%_
                (lambda (_%g206143206175%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206143206175%_))
                      (let ((_%e206146206178%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206143206175%_))))
                        (let ((_%hd206147206182%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206146206178%_)))
                              (_%tl206148206185%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206146206178%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl206148206185%_))
                              (let ((_g210479_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl206148206185%_
                                        '0))))
                                (begin
                                  (let ((_g210480_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210479_)
                                               (##values-length _g210479_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210480_ 2)))
                                        (error "Context expects 2 values"
                                               _g210480_)))
                                  (let ((_%target206149206188%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210479_ 0)))
                                        (_%tl206151206191%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210479_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206151206191%_))
                                        (letrec ((_%loop206152206194%_
                                                  (lambda (_%hd206150206198%_
                                                           _%rule206156206201%_
                                                           _%proc206157206203%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd206150206198%_))
                                                        (let ((_%e206153206206%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd206150206198%_))))
                  (let ((_%lp-hd206154206210%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206153206206%_)))
                        (_%lp-tl206155206213%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206153206206%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd206154206210%_))
                        (let ((_%e206160206216%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd206154206210%_))))
                          (let ((_%hd206161206220%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206160206216%_)))
                                (_%tl206162206223%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206160206216%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206162206223%_))
                                (let ((_%e206163206226%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206162206223%_))))
                                  (let ((_%hd206164206230%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206163206226%_)))
                                        (_%tl206165206233%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206163206226%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206165206233%_))
                                        (_%loop206152206194%_
                                         _%lp-tl206155206213%_
                                         (cons _%hd206164206230%_
                                               _%rule206156206201%_)
                                         (cons _%hd206161206220%_
                                               _%proc206157206203%_))
                                        (_%g206142206171%_
                                         _%g206143206175%_))))
                                (_%g206142206171%_ _%g206143206175%_))))
                        (_%g206142206171%_ _%g206143206175%_))))
                (let ((_%rule206158206236%_ (reverse _%rule206156206201%_))
                      (_%proc206159206239%_ (reverse _%proc206157206203%_)))
                  ((lambda (_%L206242%_ _%L206244%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L206242%_
                                _%L206244%_))
                             (let ((__tmp210481
                                    (lambda (_%g206259206263%_
                                             _%g206260206266%_
                                             _%g206261206268%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g206260206266%_
                                                        (cons _%g206259206263%_
                                                              '())))
                                            _%g206261206268%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp210481
                                '()
                                _%L206242%_
                                _%L206244%_)))))
                   _%rule206158206236%_
                   _%proc206159206239%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop206152206194%_
                                           _%target206149206188%_
                                           '()
                                           '()))
                                        (_%g206142206171%_
                                         _%g206143206175%_)))))
                              (_%g206142206171%_ _%g206143206175%_))))
                      (_%g206142206171%_ _%g206143206175%_)))))
          (_%g206141206271%_ _%$stx206138%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx206276%_)
        (let* ((_%g206280206298%_
                (lambda (_%g206281206294%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206281206294%_))))
               (_%g206279206353%_
                (lambda (_%g206281206302%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206281206302%_))
                      (let ((_%e206284206305%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206281206302%_))))
                        (let ((_%hd206285206309%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206284206305%_)))
                              (_%tl206286206312%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206284206305%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206286206312%_))
                              (let ((_%e206287206315%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206286206312%_))))
                                (let ((_%hd206288206319%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206287206315%_)))
                                      (_%tl206289206322%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206287206315%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206289206322%_))
                                      (let ((_%e206290206325%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl206289206322%_))))
                                        (let ((_%hd206291206329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206290206325%_)))
                                              (_%tl206292206332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206290206325%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206292206332%_))
                                              ((lambda (_%L206335%_
                                                        _%L206337%_)
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
                                                   (cons _%L206337%_ '()))
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
                 (cons _%L206335%_ '())))
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
                                   (cons _%L206337%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd206291206329%_
                                               _%hd206288206319%_)
                                              (_%g206280206298%_
                                               _%g206281206302%_))))
                                      (_%g206280206298%_ _%g206281206302%_))))
                              (_%g206280206298%_ _%g206281206302%_))))
                      (_%g206280206298%_ _%g206281206302%_)))))
          (_%g206279206353%_ _%$stx206276%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx206357%_)
        (let* ((_%__stx209961209962%_ _%$stx206357%_)
               (_%g206362206387%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209961209962%_)))))
          (let ((_%__kont209964209965%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont209966209967%_
                 (lambda (_%L206434%_ _%L206436%_ _%L206437%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L206437%_ (cons _%L206436%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L206434%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209961209962%_))
                (let ((_%e206364206463%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx209961209962%_))))
                  (let ((_%tl206366206470%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206364206463%_)))
                        (_%hd206365206467%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206364206463%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl206366206470%_))
                        (_%__kont209964209965%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl206366206470%_))
                            (let ((_%e206373206404%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl206366206470%_))))
                              (let ((_%tl206375206411%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e206373206404%_)))
                                    (_%hd206374206408%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e206373206404%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd206374206408%_))
                                    (let ((_%e206376206414%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd206374206408%_))))
                                      (let ((_%tl206378206421%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e206376206414%_)))
                                            (_%hd206377206418%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e206376206414%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl206378206421%_))
                                            (let ((_%e206379206424%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl206378206421%_))))
                                              (let ((_%tl206381206431%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206379206424%_)))
                                                    (_%hd206380206428%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206379206424%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl206381206431%_))
                                                    (_%__kont209966209967%_
                                                     _%tl206375206411%_
                                                     _%hd206380206428%_
                                                     _%hd206377206418%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g206362206387%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g206362206387%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g206362206387%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g206362206387%_))))))
                (let () (declare (not safe)) (_%g206362206387%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx206481%_)
        (let* ((_%__stx210005210006%_ _%$stx206481%_)
               (_%g206486206517%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx210005210006%_)))))
          (let ((_%__kont210008210009%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont210010210011%_
                 (lambda (_%L206584%_ _%L206586%_ _%L206587%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L206587%_
                                           (let ((__tmp210482
                                                  (lambda (_%g206607206610%_
                                                           _%g206608206613%_)
                                                    (cons _%g206607206610%_
                                                          _%g206608206613%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp210482
                                              '()
                                              _%L206586%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L206584%_)
                                     '()))))))
            (let ((_%__match210048210049%_
                   (lambda (_%e206494206524%_
                            _%hd206495206528%_
                            _%tl206496206531%_
                            _%e206497206534%_
                            _%hd206498206538%_
                            _%tl206499206541%_
                            _%e206500206544%_
                            _%hd206501206548%_
                            _%tl206502206551%_
                            _%__splice210012210013%_
                            _%target206503206554%_
                            _%tl206505206557%_)
                     (letrec ((_%loop206506206560%_
                               (lambda (_%hd206504206564%_ _%sig206510206567%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd206504206564%_))
                                     (let ((_%e206507206570%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd206504206564%_))))
                                       (let ((_%lp-tl206509206577%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e206507206570%_)))
                                             (_%lp-hd206508206574%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e206507206570%_))))
                                         (_%loop206506206560%_
                                          _%lp-tl206509206577%_
                                          (cons _%lp-hd206508206574%_
                                                _%sig206510206567%_))))
                                     (let ((_%sig206511206580%_
                                            (reverse _%sig206510206567%_)))
                                       (_%__kont210010210011%_
                                        _%tl206499206541%_
                                        _%sig206511206580%_
                                        _%hd206501206548%_))))))
                       (_%loop206506206560%_ _%target206503206554%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx210005210006%_))
                  (let ((_%e206488206623%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx210005210006%_))))
                    (let ((_%tl206490206630%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206488206623%_)))
                          (_%hd206489206627%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206488206623%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206490206630%_))
                          (_%__kont210008210009%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206490206630%_))
                              (let ((_%e206497206534%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206490206630%_))))
                                (let ((_%tl206499206541%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206497206534%_)))
                                      (_%hd206498206538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206497206534%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206498206538%_))
                                      (let ((_%e206500206544%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206498206538%_))))
                                        (let ((_%tl206502206551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206500206544%_)))
                                              (_%hd206501206548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206500206544%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl206502206551%_))
                                              (let ((_%__splice210012210013%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl206502206551%_
                                                        '0))))
                                                (let ((_%tl206505206557%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice210012210013%_
                                                          '1)))
                                                      (_%target206503206554%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice210012210013%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206505206557%_))
                                                      (_%__match210048210049%_
                                                       _%e206488206623%_
                                                       _%hd206489206627%_
                                                       _%tl206490206630%_
                                                       _%e206497206534%_
                                                       _%hd206498206538%_
                                                       _%tl206499206541%_
                                                       _%e206500206544%_
                                                       _%hd206501206548%_
                                                       _%tl206502206551%_
                                                       _%__splice210012210013%_
                                                       _%target206503206554%_
                                                       _%tl206505206557%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g206486206517%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206486206517%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g206486206517%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g206486206517%_))))))
                  (let () (declare (not safe)) (_%g206486206517%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx206642%_)
        (let* ((_%__stx210051210052%_ _%$stx206642%_)
               (_%g206647206694%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx210051210052%_)))))
          (let ((_%__kont210054210055%_
                 (lambda (_%L206856%_ _%L206858%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L206858%_
                               (let ((__tmp210483
                                      (lambda (_%g206878206881%_
                                               _%g206879206884%_)
                                        (cons _%g206878206881%_
                                              _%g206879206884%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp210483 '() _%L206856%_))))))
                (_%__kont210058210059%_
                 (lambda (_%L206751%_ _%L206753%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L206753%_
                               (let ((__tmp210484
                                      (lambda (_%g206770206773%_
                                               _%g206771206776%_)
                                        (cons _%g206770206773%_
                                              _%g206771206776%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp210484 '() _%L206751%_)))))))
            (let* ((_%__match210118210119%_
                    (lambda (_%e206674206701%_
                             _%hd206675206705%_
                             _%tl206676206708%_
                             _%e206677206711%_
                             _%hd206678206715%_
                             _%tl206679206718%_
                             _%__splice210060210061%_
                             _%target206680206721%_
                             _%tl206682206724%_)
                      (letrec ((_%loop206683206727%_
                                (lambda (_%hd206681206731%_
                                         _%sig206687206734%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206681206731%_))
                                      (let ((_%e206684206737%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206681206731%_))))
                                        (let ((_%lp-tl206686206744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206684206737%_)))
                                              (_%lp-hd206685206741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206684206737%_))))
                                          (_%loop206683206727%_
                                           _%lp-tl206686206744%_
                                           (cons _%lp-hd206685206741%_
                                                 _%sig206687206734%_))))
                                      (let ((_%sig206688206747%_
                                             (reverse _%sig206687206734%_)))
                                        (_%__kont210058210059%_
                                         _%sig206688206747%_
                                         _%hd206678206715%_))))))
                        (_%loop206683206727%_ _%target206680206721%_ '()))))
                   (_%__match210110210111%_
                    (lambda (_%e206674206701%_
                             _%hd206675206705%_
                             _%tl206676206708%_
                             _%e206677206711%_
                             _%hd206678206715%_
                             _%tl206679206718%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl206679206718%_))
                          (let ((_%__splice210060210061%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl206679206718%_
                                    '0))))
                            (let ((_%tl206682206724%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice210060210061%_
                                      '1)))
                                  (_%target206680206721%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice210060210061%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206682206724%_))
                                  (_%__match210118210119%_
                                   _%e206674206701%_
                                   _%hd206675206705%_
                                   _%tl206676206708%_
                                   _%e206677206711%_
                                   _%hd206678206715%_
                                   _%tl206679206718%_
                                   _%__splice210060210061%_
                                   _%target206680206721%_
                                   _%tl206682206724%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g206647206694%_)))))
                          (let () (declare (not safe)) (_%g206647206694%_)))))
                   (_%__match210098210099%_
                    (lambda (_%e206651206786%_
                             _%hd206652206790%_
                             _%tl206653206793%_
                             _%e206654206796%_
                             _%hd206655206800%_
                             _%tl206656206803%_
                             _%e206657206806%_
                             _%hd206658206810%_
                             _%tl206659206813%_
                             _%e206660206816%_
                             _%hd206661206820%_
                             _%tl206662206823%_
                             _%__splice210056210057%_
                             _%target206663206826%_
                             _%tl206665206829%_)
                      (letrec ((_%loop206666206832%_
                                (lambda (_%hd206664206836%_
                                         _%sig206670206839%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206664206836%_))
                                      (let ((_%e206667206842%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206664206836%_))))
                                        (let ((_%lp-tl206669206849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206667206842%_)))
                                              (_%lp-hd206668206846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206667206842%_))))
                                          (_%loop206666206832%_
                                           _%lp-tl206669206849%_
                                           (cons _%lp-hd206668206846%_
                                                 _%sig206670206839%_))))
                                      (let ((_%sig206671206852%_
                                             (reverse _%sig206670206839%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl206659206813%_))
                                            (_%__kont210054210055%_
                                             _%sig206671206852%_
                                             _%hd206655206800%_)
                                            (_%__match210110210111%_
                                             _%e206651206786%_
                                             _%hd206652206790%_
                                             _%tl206653206793%_
                                             _%e206654206796%_
                                             _%hd206655206800%_
                                             _%tl206656206803%_)))))))
                        (_%loop206666206832%_ _%target206663206826%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx210051210052%_))
                  (let ((_%e206651206786%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx210051210052%_))))
                    (let ((_%tl206653206793%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206651206786%_)))
                          (_%hd206652206790%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206651206786%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl206653206793%_))
                          (let ((_%e206654206796%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl206653206793%_))))
                            (let ((_%tl206656206803%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206654206796%_)))
                                  (_%hd206655206800%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206654206796%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206656206803%_))
                                  (let ((_%e206657206806%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl206656206803%_))))
                                    (let ((_%tl206659206813%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206657206806%_)))
                                          (_%hd206658206810%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206657206806%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd206658206810%_))
                                          (let ((_%e206660206816%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd206658206810%_))))
                                            (let ((_%tl206662206823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e206660206816%_)))
                                                  (_%hd206661206820%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e206660206816%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd206661206820%_))
                                                  (if (let ((__tmp210485
                                                             |gxc[1]#_g210486_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp210485
                                                         _%hd206661206820%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl206662206823%_))
                                                          (let ((_%__splice210056210057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl206662206823%_
                            '0))))
                    (let ((_%tl206665206829%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice210056210057%_ '1)))
                          (_%target206663206826%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice210056210057%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206665206829%_))
                          (_%__match210098210099%_
                           _%e206651206786%_
                           _%hd206652206790%_
                           _%tl206653206793%_
                           _%e206654206796%_
                           _%hd206655206800%_
                           _%tl206656206803%_
                           _%e206657206806%_
                           _%hd206658206810%_
                           _%tl206659206813%_
                           _%e206660206816%_
                           _%hd206661206820%_
                           _%tl206662206823%_
                           _%__splice210056210057%_
                           _%target206663206826%_
                           _%tl206665206829%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl206656206803%_))
                              (let ((_%__splice210060210061%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl206656206803%_
                                        '0))))
                                (let ((_%tl206682206724%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice210060210061%_
                                          '1)))
                                      (_%target206680206721%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice210060210061%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl206682206724%_))
                                      (_%__match210118210119%_
                                       _%e206651206786%_
                                       _%hd206652206790%_
                                       _%tl206653206793%_
                                       _%e206654206796%_
                                       _%hd206655206800%_
                                       _%tl206656206803%_
                                       _%__splice210060210061%_
                                       _%target206680206721%_
                                       _%tl206682206724%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g206647206694%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g206647206694%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl206656206803%_))
                      (let ((_%__splice210060210061%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl206656206803%_
                                '0))))
                        (let ((_%tl206682206724%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice210060210061%_ '1)))
                              (_%target206680206721%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice210060210061%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl206682206724%_))
                              (_%__match210118210119%_
                               _%e206651206786%_
                               _%hd206652206790%_
                               _%tl206653206793%_
                               _%e206654206796%_
                               _%hd206655206800%_
                               _%tl206656206803%_
                               _%__splice210060210061%_
                               _%target206680206721%_
                               _%tl206682206724%_)
                              (let ()
                                (declare (not safe))
                                (_%g206647206694%_)))))
                      (let () (declare (not safe)) (_%g206647206694%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl206656206803%_))
                  (let ((_%__splice210060210061%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl206656206803%_
                            '0))))
                    (let ((_%tl206682206724%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice210060210061%_ '1)))
                          (_%target206680206721%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice210060210061%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206682206724%_))
                          (_%__match210118210119%_
                           _%e206651206786%_
                           _%hd206652206790%_
                           _%tl206653206793%_
                           _%e206654206796%_
                           _%hd206655206800%_
                           _%tl206656206803%_
                           _%__splice210060210061%_
                           _%target206680206721%_
                           _%tl206682206724%_)
                          (let () (declare (not safe)) (_%g206647206694%_)))))
                  (let () (declare (not safe)) (_%g206647206694%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl206656206803%_))
                                                      (let ((_%__splice210060210061%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl206656206803%_
                        '0))))
                (let ((_%tl206682206724%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice210060210061%_ '1)))
                      (_%target206680206721%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice210060210061%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl206682206724%_))
                      (_%__match210118210119%_
                       _%e206651206786%_
                       _%hd206652206790%_
                       _%tl206653206793%_
                       _%e206654206796%_
                       _%hd206655206800%_
                       _%tl206656206803%_
                       _%__splice210060210061%_
                       _%target206680206721%_
                       _%tl206682206724%_)
                      (let () (declare (not safe)) (_%g206647206694%_)))))
              (let () (declare (not safe)) (_%g206647206694%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl206656206803%_))
                                              (let ((_%__splice210060210061%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl206656206803%_
                                                        '0))))
                                                (let ((_%tl206682206724%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice210060210061%_
                                                          '1)))
                                                      (_%target206680206721%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice210060210061%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206682206724%_))
                                                      (_%__match210118210119%_
                                                       _%e206651206786%_
                                                       _%hd206652206790%_
                                                       _%tl206653206793%_
                                                       _%e206654206796%_
                                                       _%hd206655206800%_
                                                       _%tl206656206803%_
                                                       _%__splice210060210061%_
                                                       _%target206680206721%_
                                                       _%tl206682206724%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g206647206694%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206647206694%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl206656206803%_))
                                      (let ((_%__splice210060210061%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl206656206803%_
                                                '0))))
                                        (let ((_%tl206682206724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice210060210061%_
                                                  '1)))
                                              (_%target206680206721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice210060210061%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206682206724%_))
                                              (_%__match210118210119%_
                                               _%e206651206786%_
                                               _%hd206652206790%_
                                               _%tl206653206793%_
                                               _%e206654206796%_
                                               _%hd206655206800%_
                                               _%tl206656206803%_
                                               _%__splice210060210061%_
                                               _%target206680206721%_
                                               _%tl206682206724%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g206647206694%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g206647206694%_))))))
                          (let () (declare (not safe)) (_%g206647206694%_)))))
                  (let () (declare (not safe)) (_%g206647206694%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx208041%_ _%id208043%_)
        (let ((_%proc208047%_
               (let ((__tmp210487
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id208043%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp210487))))
          (if (procedure? _%proc208047%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx208041%_
                 _%id208043%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx208032%_ _%id208034%_)
        (let ((_%klass208038%_
               (let ((__tmp210488
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id208034%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp210488))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass208038%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx208032%_
                 _%id208034%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx207282%_ _%proc207284%_ _%sig207285%_)
        (letrec ((_%signature-arity207287%_
                  (lambda (_%args207964%_)
                    (let _%loop207967%_ ((_%rest207970%_ _%args207964%_)
                                         (_%count207972%_ '0))
                      (let* ((_%rest207973207984%_ _%rest207970%_)
                             (_%E207977207990%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest207973207984%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K207980208021%_
                               (lambda (_%rest208018%_)
                                 (_%loop207967%_
                                  _%rest208018%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count207972%_ '1)))))
                              (_%K207979208010%_ (lambda () _%count207972%_))
                              (_%K207978207998%_
                               (lambda () (cons _%count207972%_ '()))))
                          (let ((_%try-match207975208014%_
                                 (lambda ()
                                   (if (null? _%rest207973207984%_)
                                       (_%K207979208010%_)
                                       (_%K207978207998%_)))))
                            (if (pair? _%rest207973207984%_)
                                (let* ((_%tl207982208025%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest207973207984%_)))
                                       (_%rest208029%_ _%tl207982208025%_))
                                  (_%K207980208021%_ _%rest208029%_))
                                (_%try-match207975208014%_))))))))
                 (_%make-signature207289%_
                  (lambda (_%args207846%_
                           _%return207848%_
                           _%effect207849%_
                           _%unchecked207850%_)
                    (let ((__tmp210489
                           (lambda (_%g207851207853%_)
                             (|gxc[1]#verify-class!|
                              _%ctx207282%_
                              _%g207851207853%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp210489 _%args207846%_))
                    (|gxc[1]#verify-class!| _%ctx207282%_ _%return207848%_)
                    (if _%unchecked207850%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx207282%_
                         _%unchecked207850%_)
                        '#!void)
                    (let ((_%arity207857%_
                           (_%signature-arity207287%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args207846%_)))))
                      (if _%effect207849%_
                          (let ((_%effect207860%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect207849%_))))
                            (if (and (list? _%effect207860%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect207860%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx207282%_
                                   _%proc207284%_
                                   _%effect207860%_))))
                          '#!void)
                      (cons _%arity207857%_
                            (cons (let* ((_%g207863207886%_
                                          (lambda (_%g207864207882%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g207864207882%_))))
                                         (_%g207862207960%_
                                          (lambda (_%g207864207890%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g207864207890%_))
                                                (let ((_%e207869207893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g207864207890%_))))
                                                  (let ((_%hd207870207897%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e207869207893%_)))
                                                        (_%tl207871207900%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e207869207893%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl207871207900%_))
                                                        (let ((_%e207872207903%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl207871207900%_))))
                  (let ((_%hd207873207907%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207872207903%_)))
                        (_%tl207874207910%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207872207903%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl207874207910%_))
                        (let ((_%e207875207913%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl207874207910%_))))
                          (let ((_%hd207876207917%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207875207913%_)))
                                (_%tl207877207920%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207875207913%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl207877207920%_))
                                (let ((_%e207878207923%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl207877207920%_))))
                                  (let ((_%hd207879207927%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e207878207923%_)))
                                        (_%tl207880207930%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e207878207923%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl207880207930%_))
                                        ((lambda (_%L207933%_
                                                  _%L207935%_
                                                  _%L207936%_
                                                  _%L207937%_)
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
                           (cons _%L207937%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L207936%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L207935%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L207933%_ '()))
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
                                         _%hd207879207927%_
                                         _%hd207876207917%_
                                         _%hd207873207907%_
                                         _%hd207870207897%_)
                                        (_%g207863207886%_
                                         _%g207864207890%_))))
                                (_%g207863207886%_ _%g207864207890%_))))
                        (_%g207863207886%_ _%g207864207890%_))))
                (_%g207863207886%_ _%g207864207890%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g207863207886%_
                                                 _%g207864207890%_)))))
                                    (_%g207862207960%_
                                     (list _%args207846%_
                                           _%return207848%_
                                           _%effect207849%_
                                           _%unchecked207850%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx207282%_ _%proc207284%_)
          (let* ((_%__stx210129210130%_ _%sig207285%_)
                 (_%g207296207399%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx210129210130%_)))))
            (let ((_%__kont210132210133%_
                   (lambda (_%L207827%_ _%L207829%_)
                     (_%make-signature207289%_
                      _%L207829%_
                      _%L207827%_
                      '#f
                      '#f)))
                  (_%__kont210134210135%_
                   (lambda (_%L207778%_ _%L207780%_ _%L207781%_)
                     (_%make-signature207289%_
                      _%L207781%_
                      _%L207780%_
                      _%L207778%_
                      '#f)))
                  (_%__kont210136210137%_
                   (lambda (_%L207702%_ _%L207704%_ _%L207705%_)
                     (_%make-signature207289%_
                      _%L207705%_
                      _%L207704%_
                      _%L207702%_
                      (let ((__tmp210490
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc207284%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp210490)))))
                  (_%__kont210138210139%_
                   (lambda (_%L207608%_ _%L207610%_ _%L207611%_ _%L207612%_)
                     (_%make-signature207289%_
                      _%L207612%_
                      _%L207611%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L207608%_)))))
                  (_%__kont210140210141%_
                   (lambda (_%L207515%_ _%L207517%_)
                     (_%make-signature207289%_
                      _%L207517%_
                      _%L207515%_
                      '#f
                      (let ((__tmp210491
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc207284%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp210491)))))
                  (_%__kont210142210143%_
                   (lambda (_%L207450%_ _%L207452%_ _%L207453%_)
                     (_%make-signature207289%_
                      _%L207453%_
                      _%L207452%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L207450%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx210129210130%_))
                  (let ((_%e207300207807%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx210129210130%_))))
                    (let ((_%tl207302207814%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207300207807%_)))
                          (_%hd207301207811%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207300207807%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl207302207814%_))
                          (let ((_%e207303207817%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl207302207814%_))))
                            (let ((_%tl207305207824%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207303207817%_)))
                                  (_%hd207304207821%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207303207817%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl207305207824%_))
                                  (_%__kont210132210133%_
                                   _%hd207304207821%_
                                   _%hd207301207811%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207305207824%_))
                                      (let ((_%e207315207754%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl207305207824%_))))
                                        (let ((_%tl207317207761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207315207754%_)))
                                              (_%hd207316207758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207315207754%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd207316207758%_))
                                              (let ((_%e207318207764%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd207316207758%_))))
                                                (if (equal? _%e207318207764%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl207317207761%_))
                                                        (let ((_%e207319207768%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl207317207761%_))))
                  (let ((_%tl207321207775%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207319207768%_)))
                        (_%hd207320207772%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207319207768%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl207321207775%_))
                        (_%__kont210134210135%_
                         _%hd207320207772%_
                         _%hd207304207821%_
                         _%hd207301207811%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl207321207775%_))
                            (let ((_%e207338207688%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl207321207775%_))))
                              (let ((_%tl207340207695%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e207338207688%_)))
                                    (_%hd207339207692%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e207338207688%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd207339207692%_))
                                    (let ((_%e207341207698%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd207339207692%_))))
                                      (if (equal? _%e207341207698%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207340207695%_))
                                              (_%__kont210136210137%_
                                               _%hd207320207772%_
                                               _%hd207304207821%_
                                               _%hd207301207811%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl207340207695%_))
                                                  (let ((_%e207363207598%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl207340207695%_))))
                                                    (let ((_%tl207365207605%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207363207598%_)))
                                                          (_%hd207364207602%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207363207598%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl207365207605%_))
                                                          (_%__kont210138210139%_
                                                           _%hd207364207602%_
                                                           _%hd207320207772%_
                                                           _%hd207304207821%_
                                                           _%hd207301207811%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g207296207399%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g207296207399%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g207296207399%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g207296207399%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g207296207399%_))))))
                (let () (declare (not safe)) (_%g207296207399%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e207318207764%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl207317207761%_))
                                                            (_%__kont210140210141%_
                                                             _%hd207304207821%_
                                                             _%hd207301207811%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl207317207761%_))
                        (let ((_%e207391207440%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl207317207761%_))))
                          (let ((_%tl207393207447%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207391207440%_)))
                                (_%hd207392207444%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207391207440%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl207393207447%_))
                                (_%__kont210142210143%_
                                 _%hd207392207444%_
                                 _%hd207304207821%_
                                 _%hd207301207811%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g207296207399%_)))))
                        (let () (declare (not safe)) (_%g207296207399%_))))
                (let () (declare (not safe)) (_%g207296207399%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g207296207399%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g207296207399%_))))))
                          (let () (declare (not safe)) (_%g207296207399%_)))))
                  (let () (declare (not safe)) (_%g207296207399%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig206893%_)
        (let* ((_%g206896206976%_
                (lambda (_%g206897206972%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206897206972%_))))
               (_%g206895207278%_
                (lambda (_%g206897206980%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206897206980%_))
                      (let ((_%e206903206983%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206897206980%_))))
                        (let ((_%hd206904206987%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206903206983%_)))
                              (_%tl206905206990%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206903206983%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206905206990%_))
                              (let ((_%e206906206993%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206905206990%_))))
                                (let ((_%hd206907206997%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206906206993%_)))
                                      (_%tl206908207000%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206906206993%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd206907206997%_))
                                      (let ((_%e206909207003%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd206907206997%_))))
                                        (if (equal? _%e206909207003%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl206908207000%_))
                                                (let ((_%e206910207007%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl206908207000%_))))
                                                  (let ((_%hd206911207011%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206910207007%_)))
                                                        (_%tl206912207014%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206910207007%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd206911207011%_))
                                                        (let ((_%e206913207017%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd206911207011%_))))
                  (let ((_%hd206914207021%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206913207017%_)))
                        (_%tl206915207024%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206913207017%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd206914207021%_))
                        (if (let ((__tmp210492 |gxc[1]#_g210493_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp210492
                               _%hd206914207021%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206915207024%_))
                                (let ((_%e206916207027%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206915207024%_))))
                                  (let ((_%hd206917207031%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206916207027%_)))
                                        (_%tl206918207034%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206916207027%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206918207034%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl206912207014%_))
                                            (let ((_%e206919207037%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl206912207014%_))))
                                              (let ((_%hd206920207041%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206919207037%_)))
                                                    (_%tl206921207044%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206919207037%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd206920207041%_))
                                                    (let ((_%e206922207047%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd206920207041%_))))
                                                      (if (equal? _%e206922207047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl206921207044%_))
                      (let ((_%e206923207051%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl206921207044%_))))
                        (let ((_%hd206924207055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206923207051%_)))
                              (_%tl206925207058%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206923207051%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd206924207055%_))
                              (let ((_%e206926207061%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd206924207055%_))))
                                (let ((_%hd206927207065%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206926207061%_)))
                                      (_%tl206928207068%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206926207061%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd206927207065%_))
                                      (if (let ((__tmp210494
                                                 |gxc[1]#_g210495_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp210494
                                             _%hd206927207065%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206928207068%_))
                                              (let ((_%e206929207071%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206928207068%_))))
                                                (let ((_%hd206930207075%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206929207071%_)))
                                                      (_%tl206931207078%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206929207071%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206931207078%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl206925207058%_))
                                                          (let ((_%e206932207081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl206925207058%_))))
                    (let ((_%hd206933207085%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206932207081%_)))
                          (_%tl206934207088%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206932207081%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd206933207085%_))
                          (let ((_%e206935207091%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd206933207085%_))))
                            (if (equal? _%e206935207091%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl206934207088%_))
                                    (let ((_%e206936207095%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl206934207088%_))))
                                      (let ((_%hd206937207099%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e206936207095%_)))
                                            (_%tl206938207102%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e206936207095%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd206937207099%_))
                                            (let ((_%e206939207105%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd206937207099%_))))
                                              (let ((_%hd206940207109%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206939207105%_)))
                                                    (_%tl206941207112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206939207105%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd206940207109%_))
                                                    (if (let ((__tmp210496
                                                               |gxc[1]#_g210497_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp210496
                                                           _%hd206940207109%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl206941207112%_))
                                                            (let ((_%e206942207115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl206941207112%_))))
                      (let ((_%hd206943207119%_
                             (let ()
                               (declare (not safe))
                               (##car _%e206942207115%_)))
                            (_%tl206944207122%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e206942207115%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl206944207122%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206938207102%_))
                                (let ((_%e206945207125%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206938207102%_))))
                                  (let ((_%hd206946207129%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206945207125%_)))
                                        (_%tl206947207132%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206945207125%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd206946207129%_))
                                        (let ((_%e206948207135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd206946207129%_))))
                                          (if (equal? _%e206948207135%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206947207132%_))
                                                  (let ((_%e206949207139%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206947207132%_))))
                                                    (let ((_%hd206950207143%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206949207139%_)))
                                                          (_%tl206951207146%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206949207139%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd206950207143%_))
                                                          (let ((_%e206952207149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd206950207143%_))))
                    (let ((_%hd206953207153%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206952207149%_)))
                          (_%tl206954207156%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206952207149%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd206953207153%_))
                          (if (let ((__tmp210498 |gxc[1]#_g210499_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp210498
                                 _%hd206953207153%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206954207156%_))
                                  (let ((_%e206955207159%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl206954207156%_))))
                                    (let ((_%hd206956207163%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206955207159%_)))
                                          (_%tl206957207166%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206955207159%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl206957207166%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206951207146%_))
                                              (let ((_%e206958207169%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206951207146%_))))
                                                (let ((_%hd206959207173%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206958207169%_)))
                                                      (_%tl206960207176%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206958207169%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd206959207173%_))
                                                      (let ((_%e206961207179%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd206959207173%_))))
                (if (equal? _%e206961207179%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206960207176%_))
                        (let ((_%e206962207183%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206960207176%_))))
                          (let ((_%hd206963207187%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206962207183%_)))
                                (_%tl206964207190%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206962207183%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd206963207187%_))
                                (let ((_%e206965207193%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd206963207187%_))))
                                  (let ((_%hd206966207197%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206965207193%_)))
                                        (_%tl206967207200%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206965207193%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd206966207197%_))
                                        (if (let ((__tmp210500
                                                   |gxc[1]#_g210501_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp210500
                                               _%hd206966207197%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl206967207200%_))
                                                (let ((_%e206968207203%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl206967207200%_))))
                                                  (let ((_%hd206969207207%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206968207203%_)))
                                                        (_%tl206970207210%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206968207203%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl206970207210%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl206964207190%_))
                                                            ((lambda (_%L207213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L207215%_
                              _%L207216%_
                              _%L207217%_
                              _%L207218%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L207215%_))
                           (cons _%L207215%_
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
                       (cons _%L207217%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L207213%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd206969207207%_
                     _%hd206956207163%_
                     _%hd206943207119%_
                     _%hd206930207075%_
                     _%hd206917207031%_)
                    (_%g206896206976%_ _%g206897206980%_))
                (_%g206896206976%_ _%g206897206980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206896206976%_
                                                 _%g206897206980%_))
                                            (_%g206896206976%_
                                             _%g206897206980%_))
                                        (_%g206896206976%_
                                         _%g206897206980%_))))
                                (_%g206896206976%_ _%g206897206980%_))))
                        (_%g206896206976%_ _%g206897206980%_))
                    (_%g206896206976%_ _%g206897206980%_)))
              (_%g206896206976%_ _%g206897206980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206896206976%_
                                               _%g206897206980%_))
                                          (_%g206896206976%_
                                           _%g206897206980%_))))
                                  (_%g206896206976%_ _%g206897206980%_))
                              (_%g206896206976%_ _%g206897206980%_))
                          (_%g206896206976%_ _%g206897206980%_))))
                  (_%g206896206976%_ _%g206897206980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g206896206976%_
                                                   _%g206897206980%_))
                                              (_%g206896206976%_
                                               _%g206897206980%_)))
                                        (_%g206896206976%_
                                         _%g206897206980%_))))
                                (_%g206896206976%_ _%g206897206980%_))
                            (_%g206896206976%_ _%g206897206980%_))))
                    (_%g206896206976%_ _%g206897206980%_))
                (_%g206896206976%_ _%g206897206980%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g206896206976%_
                                                     _%g206897206980%_))))
                                            (_%g206896206976%_
                                             _%g206897206980%_))))
                                    (_%g206896206976%_ _%g206897206980%_))
                                (_%g206896206976%_ _%g206897206980%_)))
                          (_%g206896206976%_ _%g206897206980%_))))
                  (_%g206896206976%_ _%g206897206980%_))
              (_%g206896206976%_ _%g206897206980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206896206976%_
                                               _%g206897206980%_))
                                          (_%g206896206976%_
                                           _%g206897206980%_))
                                      (_%g206896206976%_ _%g206897206980%_))))
                              (_%g206896206976%_ _%g206897206980%_))))
                      (_%g206896206976%_ _%g206897206980%_))
                  (_%g206896206976%_ _%g206897206980%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g206896206976%_
                                                     _%g206897206980%_))))
                                            (_%g206896206976%_
                                             _%g206897206980%_))
                                        (_%g206896206976%_
                                         _%g206897206980%_))))
                                (_%g206896206976%_ _%g206897206980%_))
                            (_%g206896206976%_ _%g206897206980%_))
                        (_%g206896206976%_ _%g206897206980%_))))
                (_%g206896206976%_ _%g206897206980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206896206976%_
                                                 _%g206897206980%_))
                                            (_%g206896206976%_
                                             _%g206897206980%_)))
                                      (_%g206896206976%_ _%g206897206980%_))))
                              (_%g206896206976%_ _%g206897206980%_))))
                      (_%g206896206976%_ _%g206897206980%_)))))
          (_%g206895207278%_ _%sig206893%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx208050%_)
        (let* ((_%g208053208071%_
                (lambda (_%g208054208067%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208054208067%_))))
               (_%g208052208126%_
                (lambda (_%g208054208075%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208054208075%_))
                      (let ((_%e208057208078%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208054208075%_))))
                        (let ((_%hd208058208082%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208057208078%_)))
                              (_%tl208059208085%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208057208078%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208059208085%_))
                              (let ((_%e208060208088%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208059208085%_))))
                                (let ((_%hd208061208092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208060208088%_)))
                                      (_%tl208062208095%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208060208088%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl208062208095%_))
                                      (let ((_%e208063208098%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl208062208095%_))))
                                        (let ((_%hd208064208102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208063208098%_)))
                                              (_%tl208065208105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208063208098%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208065208105%_))
                                              ((lambda (_%L208108%_
                                                        _%L208110%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L208110%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L208108%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx208050%_
                                                        _%L208110%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx208050%_
                                                        _%L208108%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L208110%_
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
                                                   (cons _%L208108%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208053208071%_
                                                      _%g208054208075%_)))
                                               _%hd208064208102%_
                                               _%hd208061208092%_)
                                              (_%g208053208071%_
                                               _%g208054208075%_))))
                                      (_%g208053208071%_ _%g208054208075%_))))
                              (_%g208053208071%_ _%g208054208075%_))))
                      (_%g208053208071%_ _%g208054208075%_)))))
          (_%g208052208126%_ _%stx208050%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx208130%_)
        (let* ((_%g208133208157%_
                (lambda (_%g208134208153%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208134208153%_))))
               (_%g208132208440%_
                (lambda (_%g208134208161%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208134208161%_))
                      (let ((_%e208137208164%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208134208161%_))))
                        (let ((_%hd208138208168%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208137208164%_)))
                              (_%tl208139208171%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208137208164%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208139208171%_))
                              (let ((_%e208140208174%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208139208171%_))))
                                (let ((_%hd208141208178%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208140208174%_)))
                                      (_%tl208142208181%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208140208174%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl208142208181%_))
                                      (let ((_g210502_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl208142208181%_
                                                '0))))
                                        (begin
                                          (let ((_g210503_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210502_)
                                                       (##values-length
                                                        _g210502_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210503_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210503_)))
                                          (let ((_%target208143208184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210502_ 0)))
                                                (_%tl208145208187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210502_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208145208187%_))
                                                (letrec ((_%loop208146208190%_
                                                          (lambda (_%hd208144208194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature208150208197%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd208144208194%_))
                        (let ((_%e208147208200%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd208144208194%_))))
                          (let ((_%lp-hd208148208204%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208147208200%_)))
                                (_%lp-tl208149208207%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208147208200%_))))
                            (_%loop208146208190%_
                             _%lp-tl208149208207%_
                             (cons _%lp-hd208148208204%_
                                   _%signature208150208197%_))))
                        (let ((_%signature208151208210%_
                               (reverse _%signature208150208197%_)))
                          ((lambda (_%L208214%_ _%L208216%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L208216%_))
                                 (let* ((_%g208234208249%_
                                         (lambda (_%g208235208245%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208235208245%_))))
                                        (_%g208233208428%_
                                         (lambda (_%g208235208253%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g208235208253%_))
                                               (let ((_%e208238208256%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g208235208253%_))))
                                                 (let ((_%hd208239208260%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208238208256%_)))
                                                       (_%tl208240208263%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208238208256%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl208240208263%_))
                                                       (let ((_%e208241208266%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl208240208263%_))))
                 (let ((_%hd208242208270%_
                        (let ()
                          (declare (not safe))
                          (##car _%e208241208266%_)))
                       (_%tl208243208273%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e208241208266%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl208243208273%_))
                       ((lambda (_%L208276%_ _%L208278%_)
                          (let* ((_%g208294208302%_
                                  (lambda (_%g208295208298%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g208295208298%_))))
                                 (_%g208293208424%_
                                  (lambda (_%g208295208306%_)
                                    ((lambda (_%L208309%_)
                                       (let* ((_%unchecked208322%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L208276%_))
                                              (_%g208325208333%_
                                               (lambda (_%g208326208329%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g208326208329%_))))
                                              (_%g208324208356%_
                                               (lambda (_%g208326208337%_)
                                                 ((lambda (_%L208340%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L208309%_
                                                                (cons _%L208340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g208326208337%_))))
                                         (_%g208324208356%_
                                          (if _%unchecked208322%_
                                              (let* ((_%g208360208375%_
                                                      (lambda (_%g208361208371%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g208361208371%_))))
                                                     (_%g208359208420%_
                                                      (lambda (_%g208361208379%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g208361208379%_))
                                                            (let ((_%e208364208382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g208361208379%_))))
                      (let ((_%hd208365208386%_
                             (let ()
                               (declare (not safe))
                               (##car _%e208364208382%_)))
                            (_%tl208366208389%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e208364208382%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl208366208389%_))
                            (let ((_%e208367208392%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl208366208389%_))))
                              (let ((_%hd208368208396%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e208367208392%_)))
                                    (_%tl208369208399%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e208367208392%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl208369208399%_))
                                    ((lambda (_%L208402%_ _%L208404%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L208404%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L208278%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L208402%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd208368208396%_
                                     _%hd208365208386%_)
                                    (_%g208360208375%_ _%g208361208379%_))))
                            (_%g208360208375%_ _%g208361208379%_))))
                    (_%g208360208375%_ _%g208361208379%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g208359208420%_
                                                 _%unchecked208322%_))
                                              '(begin)))))
                                     _%g208295208306%_))))
                            (_%g208293208424%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L208216%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L208278%_ '()))
                   (cons '#f (cons 'signature: (cons _%L208276%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd208242208270%_
                        _%hd208239208260%_)
                       (_%g208234208249%_ _%g208235208253%_))))
               (_%g208234208249%_ _%g208235208253%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208234208249%_
                                                _%g208235208253%_)))))
                                   (_%g208233208428%_
                                    (|gxc[1]#parse-signature|
                                     _%stx208130%_
                                     _%L208216%_
                                     (let ((__tmp210504
                                            (lambda (_%g208431208434%_
                                                     _%g208432208437%_)
                                              (cons _%g208431208434%_
                                                    _%g208432208437%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp210504
                                        '()
                                        _%L208214%_)))))
                                 (_%g208133208157%_ _%g208134208161%_)))
                           _%signature208151208210%_
                           _%hd208141208178%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop208146208190%_
                                                   _%target208143208184%_
                                                   '()))
                                                (_%g208133208157%_
                                                 _%g208134208161%_)))))
                                      (_%g208133208157%_ _%g208134208161%_))))
                              (_%g208133208157%_ _%g208134208161%_))))
                      (_%g208133208157%_ _%g208134208161%_)))))
          (_%g208132208440%_ _%stx208130%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx208445%_)
        (let* ((_%g208448208472%_
                (lambda (_%g208449208468%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208449208468%_))))
               (_%g208447209355%_
                (lambda (_%g208449208476%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208449208476%_))
                      (let ((_%e208452208479%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208449208476%_))))
                        (let ((_%hd208453208483%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208452208479%_)))
                              (_%tl208454208486%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208452208479%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208454208486%_))
                              (let ((_%e208455208489%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208454208486%_))))
                                (let ((_%hd208456208493%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208455208489%_)))
                                      (_%tl208457208496%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208455208489%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl208457208496%_))
                                      (let ((_g210505_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl208457208496%_
                                                '0))))
                                        (begin
                                          (let ((_g210506_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210505_)
                                                       (##values-length
                                                        _g210505_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210506_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210506_)))
                                          (let ((_%target208458208499%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210505_ 0)))
                                                (_%tl208460208502%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210505_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208460208502%_))
                                                (letrec ((_%loop208461208505%_
                                                          (lambda (_%hd208459208509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature208465208512%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd208459208509%_))
                        (let ((_%e208462208515%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd208459208509%_))))
                          (let ((_%lp-hd208463208519%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208462208515%_)))
                                (_%lp-tl208464208522%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208462208515%_))))
                            (_%loop208461208505%_
                             _%lp-tl208464208522%_
                             (cons _%lp-hd208463208519%_
                                   _%case-signature208465208512%_))))
                        (let ((_%case-signature208466208525%_
                               (reverse _%case-signature208465208512%_)))
                          ((lambda (_%L208529%_ _%L208531%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L208531%_))
                                 (let* ((_%signatures208562%_
                                         (map (lambda (_%g208548208550%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx208445%_
                                                 _%L208531%_
                                                 _%g208548208550%_))
                                              (let ((__tmp210507
                                                     (lambda (_%g208553208556%_
                                                              _%g208554208559%_)
                                                       (cons _%g208553208556%_
                                                             _%g208554208559%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp210507
                                                 '()
                                                 _%L208529%_))))
                                        (_%g208565208591%_
                                         (lambda (_%g208566208587%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208566208587%_))))
                                        (_%g208564209351%_
                                         (lambda (_%g208566208595%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g208566208595%_))
                                               (let ((_g210508_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g208566208595%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g210509_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g210508_)
                        (##values-length _g210508_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g210509_ 2)))
                 (error "Context expects 2 values" _g210509_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target208569208598%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g210508_
                                                             0)))
                                                         (_%tl208571208601%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g210508_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208571208601%_))
                                                         (letrec ((_%loop208572208604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd208570208608%_
                                    _%sig208576208611%_
                                    _%arity208577208613%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd208570208608%_))
                                 (let ((_%e208573208616%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd208570208608%_))))
                                   (let ((_%lp-hd208574208620%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208573208616%_)))
                                         (_%lp-tl208575208623%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208573208616%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd208574208620%_))
                                         (let ((_%e208580208626%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd208574208620%_))))
                                           (let ((_%hd208581208630%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e208580208626%_)))
                                                 (_%tl208582208633%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e208580208626%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208582208633%_))
                                                 (let ((_%e208583208636%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208582208633%_))))
                                                   (let ((_%hd208584208640%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208583208636%_)))
                                                         (_%tl208585208643%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208583208636%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208585208643%_))
                                                         (_%loop208572208604%_
                                                          _%lp-tl208575208623%_
                                                          (cons _%hd208584208640%_
                                                                _%sig208576208611%_)
                                                          (cons _%hd208581208630%_
                                                                _%arity208577208613%_))
                                                         (_%g208565208591%_
                                                          _%g208566208595%_))))
                                                 (_%g208565208591%_
                                                  _%g208566208595%_))))
                                         (_%g208565208591%_
                                          _%g208566208595%_))))
                                 (let ((_%sig208578208646%_
                                        (reverse _%sig208576208611%_))
                                       (_%arity208579208649%_
                                        (reverse _%arity208577208613%_)))
                                   ((lambda (_%L208652%_ _%L208654%_)
                                      (let* ((_%g208671208679%_
                                              (lambda (_%g208672208675%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g208672208675%_))))
                                             (_%g208670209336%_
                                              (lambda (_%g208672208683%_)
                                                ((lambda (_%L208686%_)
                                                   (let* ((_%g208699208707%_
                                                           (lambda (_%g208700208703%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g208700208703%_))))
                  (_%g208698208729%_
                   (lambda (_%g208700208711%_)
                     ((lambda (_%L208714%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L208686%_ (cons _%L208714%_ '()))))
                      _%g208700208711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208698208729%_
                                                      (let ((_g210510_
                                                             (let _%loop208733%_ ((_%rest208736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures208562%_)
                                          (_%unchecked-proc208738%_ '#f)
                                          (_%unchecked-clauses208739%_ '()))
                       (let* ((_%rest208740208748%_ _%rest208736%_)
                              (_%else208742208760%_
                               (lambda ()
                                 (values _%unchecked-proc208738%_
                                         (reverse!
                                          _%unchecked-clauses208739%_))))
                              (_%K208744209201%_
                               (lambda (_%rest208764%_ _%hd208766%_)
                                 (let* ((_%g208768208855%_
                                         (lambda (_%g208769208851%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208769208851%_))))
                                        (_%g208767209197%_
                                         (lambda (_%g208769208859%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g208769208859%_))
                                               (let ((_%e208776208862%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g208769208859%_))))
                                                 (let ((_%hd208777208866%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208776208862%_)))
                                                       (_%tl208778208869%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208776208862%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl208778208869%_))
                                                       (let ((_%e208779208872%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl208778208869%_))))
                 (let ((_%hd208780208876%_
                        (let ()
                          (declare (not safe))
                          (##car _%e208779208872%_)))
                       (_%tl208781208879%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e208779208872%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd208780208876%_))
                       (let ((_%e208782208882%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd208780208876%_))))
                         (let ((_%hd208783208886%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e208782208882%_)))
                               (_%tl208784208889%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e208782208882%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl208784208889%_))
                               (let ((_%e208785208892%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl208784208889%_))))
                                 (let ((_%hd208786208896%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e208785208892%_)))
                                       (_%tl208787208899%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e208785208892%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd208786208896%_))
                                       (let ((_%e208788208902%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd208786208896%_))))
                                         (if (equal? _%e208788208902%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208787208899%_))
                                                 (let ((_%e208789208906%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208787208899%_))))
                                                   (let ((_%hd208790208910%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208789208906%_)))
                                                         (_%tl208791208913%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208789208906%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd208790208910%_))
                                                         (let ((_%e208792208916%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd208790208910%_))))
                   (let ((_%hd208793208920%_
                          (let ()
                            (declare (not safe))
                            (##car _%e208792208916%_)))
                         (_%tl208794208923%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e208792208916%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd208793208920%_))
                         (if (let ((__tmp210512 |gxc[1]#_g210513_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp210512
                                _%hd208793208920%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl208794208923%_))
                                 (let ((_%e208795208926%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl208794208923%_))))
                                   (let ((_%hd208796208930%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208795208926%_)))
                                         (_%tl208797208933%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208795208926%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl208797208933%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl208791208913%_))
                                             (let ((_%e208798208936%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl208791208913%_))))
                                               (let ((_%hd208799208940%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e208798208936%_)))
                                                     (_%tl208800208943%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e208798208936%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd208799208940%_))
                                                     (let ((_%e208801208946%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd208799208940%_))))
                                                       (if (equal? _%e208801208946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl208800208943%_))
                       (let ((_%e208802208950%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl208800208943%_))))
                         (let ((_%hd208803208954%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e208802208950%_)))
                               (_%tl208804208957%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e208802208950%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd208803208954%_))
                               (let ((_%e208805208960%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd208803208954%_))))
                                 (let ((_%hd208806208964%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e208805208960%_)))
                                       (_%tl208807208967%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e208805208960%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd208806208964%_))
                                       (if (let ((__tmp210514
                                                  |gxc[1]#_g210515_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp210514
                                              _%hd208806208964%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl208807208967%_))
                                               (let ((_%e208808208970%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl208807208967%_))))
                                                 (let ((_%hd208809208974%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208808208970%_)))
                                                       (_%tl208810208977%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208808208970%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl208810208977%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl208804208957%_))
                                                           (let ((_%e208811208980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl208804208957%_))))
                     (let ((_%hd208812208984%_
                            (let ()
                              (declare (not safe))
                              (##car _%e208811208980%_)))
                           (_%tl208813208987%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e208811208980%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd208812208984%_))
                           (let ((_%e208814208990%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd208812208984%_))))
                             (if (equal? _%e208814208990%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl208813208987%_))
                                     (let ((_%e208815208994%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl208813208987%_))))
                                       (let ((_%hd208816208998%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e208815208994%_)))
                                             (_%tl208817209001%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e208815208994%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd208816208998%_))
                                             (let ((_%e208818209004%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd208816208998%_))))
                                               (let ((_%hd208819209008%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e208818209004%_)))
                                                     (_%tl208820209011%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e208818209004%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd208819209008%_))
                                                     (if (let ((__tmp210516
                                                                |gxc[1]#_g210517_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp210516
                                                            _%hd208819209008%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl208820209011%_))
                     (let ((_%e208821209014%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl208820209011%_))))
                       (let ((_%hd208822209018%_
                              (let ()
                                (declare (not safe))
                                (##car _%e208821209014%_)))
                             (_%tl208823209021%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e208821209014%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl208823209021%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl208817209001%_))
                                 (let ((_%e208824209024%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl208817209001%_))))
                                   (let ((_%hd208825209028%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208824209024%_)))
                                         (_%tl208826209031%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208824209024%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd208825209028%_))
                                         (let ((_%e208827209034%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd208825209028%_))))
                                           (if (equal? _%e208827209034%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl208826209031%_))
                                                   (let ((_%e208828209038%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl208826209031%_))))
                                                     (let ((_%hd208829209042%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e208828209038%_)))
                                                           (_%tl208830209045%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e208828209038%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd208829209042%_))
                                                           (let ((_%e208831209048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd208829209042%_))))
                     (let ((_%hd208832209052%_
                            (let ()
                              (declare (not safe))
                              (##car _%e208831209048%_)))
                           (_%tl208833209055%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e208831209048%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd208832209052%_))
                           (if (let ((__tmp210518 |gxc[1]#_g210519_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp210518
                                  _%hd208832209052%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl208833209055%_))
                                   (let ((_%e208834209058%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl208833209055%_))))
                                     (let ((_%hd208835209062%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e208834209058%_)))
                                           (_%tl208836209065%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e208834209058%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl208836209065%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl208830209045%_))
                                               (let ((_%e208837209068%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl208830209045%_))))
                                                 (let ((_%hd208838209072%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208837209068%_)))
                                                       (_%tl208839209075%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208837209068%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd208838209072%_))
                                                       (let ((_%e208840209078%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd208838209072%_))))
                 (if (equal? _%e208840209078%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl208839209075%_))
                         (let ((_%e208841209082%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl208839209075%_))))
                           (let ((_%hd208842209086%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e208841209082%_)))
                                 (_%tl208843209089%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e208841209082%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd208842209086%_))
                                 (let ((_%e208844209092%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd208842209086%_))))
                                   (let ((_%hd208845209096%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208844209092%_)))
                                         (_%tl208846209099%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208844209092%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd208845209096%_))
                                         (if (let ((__tmp210520
                                                    |gxc[1]#_g210521_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp210520
                                                _%hd208845209096%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208846209099%_))
                                                 (let ((_%e208847209102%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208846209099%_))))
                                                   (let ((_%hd208848209106%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208847209102%_)))
                                                         (_%tl208849209109%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208847209102%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208849209109%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl208843209089%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl208781208879%_))
                         ((lambda (_%L209112%_
                                   _%L209114%_
                                   _%L209115%_
                                   _%L209116%_
                                   _%L209117%_
                                   _%L209118%_)
                            (let ((_%clause209189%_
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
                                                     (cons _%L209118%_ '()))
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
                                                 (cons _%L209116%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209112%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked209191%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L209114%_))))
                              (_%loop208733%_
                               _%rest208764%_
                               (let ((_%$e209193%_ _%unchecked209191%_))
                                 (if _%$e209193%_
                                     _%$e209193%_
                                     _%unchecked-proc208738%_))
                               (cons _%clause209189%_
                                     _%unchecked-clauses208739%_))))
                          _%hd208848209106%_
                          _%hd208835209062%_
                          _%hd208822209018%_
                          _%hd208809208974%_
                          _%hd208796208930%_
                          _%hd208777208866%_)
                         (_%g208768208855%_ _%g208769208859%_))
                     (_%g208768208855%_ _%g208769208859%_))
                 (_%g208768208855%_ _%g208769208859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g208768208855%_
                                                  _%g208769208859%_))
                                             (_%g208768208855%_
                                              _%g208769208859%_))
                                         (_%g208768208855%_
                                          _%g208769208859%_))))
                                 (_%g208768208855%_ _%g208769208859%_))))
                         (_%g208768208855%_ _%g208769208859%_))
                     (_%g208768208855%_ _%g208769208859%_)))
               (_%g208768208855%_ _%g208769208859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208768208855%_
                                                _%g208769208859%_))
                                           (_%g208768208855%_
                                            _%g208769208859%_))))
                                   (_%g208768208855%_ _%g208769208859%_))
                               (_%g208768208855%_ _%g208769208859%_))
                           (_%g208768208855%_ _%g208769208859%_))))
                   (_%g208768208855%_ _%g208769208859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g208768208855%_
                                                    _%g208769208859%_))
                                               (_%g208768208855%_
                                                _%g208769208859%_)))
                                         (_%g208768208855%_
                                          _%g208769208859%_))))
                                 (_%g208768208855%_ _%g208769208859%_))
                             (_%g208768208855%_ _%g208769208859%_))))
                     (_%g208768208855%_ _%g208769208859%_))
                 (_%g208768208855%_ _%g208769208859%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208768208855%_
                                                      _%g208769208859%_))))
                                             (_%g208768208855%_
                                              _%g208769208859%_))))
                                     (_%g208768208855%_ _%g208769208859%_))
                                 (_%g208768208855%_ _%g208769208859%_)))
                           (_%g208768208855%_ _%g208769208859%_))))
                   (_%g208768208855%_ _%g208769208859%_))
               (_%g208768208855%_ _%g208769208859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208768208855%_
                                                _%g208769208859%_))
                                           (_%g208768208855%_
                                            _%g208769208859%_))
                                       (_%g208768208855%_ _%g208769208859%_))))
                               (_%g208768208855%_ _%g208769208859%_))))
                       (_%g208768208855%_ _%g208769208859%_))
                   (_%g208768208855%_ _%g208769208859%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208768208855%_
                                                      _%g208769208859%_))))
                                             (_%g208768208855%_
                                              _%g208769208859%_))
                                         (_%g208768208855%_
                                          _%g208769208859%_))))
                                 (_%g208768208855%_ _%g208769208859%_))
                             (_%g208768208855%_ _%g208769208859%_))
                         (_%g208768208855%_ _%g208769208859%_))))
                 (_%g208768208855%_ _%g208769208859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g208768208855%_
                                                  _%g208769208859%_))
                                             (_%g208768208855%_
                                              _%g208769208859%_)))
                                       (_%g208768208855%_ _%g208769208859%_))))
                               (_%g208768208855%_ _%g208769208859%_))))
                       (_%g208768208855%_ _%g208769208859%_))))
               (_%g208768208855%_ _%g208769208859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208768208855%_
                                                _%g208769208859%_)))))
                                   (_%g208767209197%_ _%hd208766%_)))))
                         (if (pair? _%rest208740208748%_)
                             (let ((_%hd208745209205%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest208740208748%_)))
                                   (_%tl208746209208%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest208740208748%_))))
                               (let* ((_%hd209211%_ _%hd208745209205%_)
                                      (_%rest209214%_ _%tl208746209208%_))
                                 (_%K208744209201%_
                                  _%rest209214%_
                                  _%hd209211%_)))
                             (_%else208742208760%_))))))
                (begin
                  (let ((_g210511_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g210510_)
                               (##values-length _g210510_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g210511_ 2)))
                        (error "Context expects 2 values" _g210511_)))
                  (let ((_%unchecked-proc209217%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210510_ 0)))
                        (_%unchecked-clauses209219%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210510_ 1))))
                    (if _%unchecked-proc209217%_
                        (let* ((_%g209221209245%_
                                (lambda (_%g209222209241%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g209222209241%_))))
                               (_%g209220209332%_
                                (lambda (_%g209222209249%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g209222209249%_))
                                      (let ((_%e209225209252%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g209222209249%_))))
                                        (let ((_%hd209226209256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e209225209252%_)))
                                              (_%tl209227209259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e209225209252%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl209227209259%_))
                                              (let ((_%e209228209262%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl209227209259%_))))
                                                (let ((_%hd209229209266%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e209228209262%_)))
                                                      (_%tl209230209269%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e209228209262%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd209229209266%_))
                                                      (let ((_g210522_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd209229209266%_ '0))))
                (begin
                  (let ((_g210523_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g210522_)
                               (##values-length _g210522_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g210523_ 2)))
                        (error "Context expects 2 values" _g210523_)))
                  (let ((_%target209231209272%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210522_ 0)))
                        (_%tl209233209275%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210522_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl209233209275%_))
                        (letrec ((_%loop209234209278%_
                                  (lambda (_%hd209232209282%_
                                           _%clause209238209285%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd209232209282%_))
                                        (let ((_%e209235209288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd209232209282%_))))
                                          (let ((_%lp-hd209236209292%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e209235209288%_)))
                                                (_%lp-tl209237209295%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e209235209288%_))))
                                            (_%loop209234209278%_
                                             _%lp-tl209237209295%_
                                             (cons _%lp-hd209236209292%_
                                                   _%clause209238209285%_))))
                                        (let ((_%clause209239209298%_
                                               (reverse _%clause209238209285%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl209230209269%_))
                                              ((lambda (_%L209302%_
                                                        _%L209304%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L209304%_
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
                                             (let ((__tmp210524
                                                    (lambda (_%g209323209326%_
                                                             _%g209324209329%_)
                                                      (cons _%g209323209326%_
                                                            _%g209324209329%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp210524
                                                '()
                                                _%L209302%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause209239209298%_
                                               _%hd209226209256%_)
                                              (_%g209221209245%_
                                               _%g209222209249%_)))))))
                          (_%loop209234209278%_ _%target209231209272%_ '()))
                        (_%g209221209245%_ _%g209222209249%_)))))
              (_%g209221209245%_ _%g209222209249%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g209221209245%_
                                               _%g209222209249%_))))
                                      (_%g209221209245%_ _%g209222209249%_)))))
                          (_%g209220209332%_
                           (list _%unchecked-proc209217%_
                                 _%unchecked-clauses209219%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g208672208683%_))))
                                        (_%g208670209336%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L208531%_
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
                                          _%L208652%_
                                          _%L208654%_))
                                       (let ((__tmp210525
                                              (lambda (_%g209339209343%_
                                                       _%g209340209346%_
                                                       _%g209341209348%_)
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
                                (cons _%g209340209346%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g209339209343%_ '())))))
              _%g209341209348%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp210525
                                          '()
                                          _%L208652%_
                                          _%L208654%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig208578208646%_
                                    _%arity208579208649%_))))))
                   (_%loop208572208604%_ _%target208569208598%_ '() '()))
                 (_%g208565208591%_ _%g208566208595%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208565208591%_
                                                _%g208566208595%_)))))
                                   (_%g208564209351%_ _%signatures208562%_))
                                 (_%g208448208472%_ _%g208449208476%_)))
                           _%case-signature208466208525%_
                           _%hd208456208493%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop208461208505%_
                                                   _%target208458208499%_
                                                   '()))
                                                (_%g208448208472%_
                                                 _%g208449208476%_)))))
                                      (_%g208448208472%_ _%g208449208476%_))))
                              (_%g208448208472%_ _%g208449208476%_))))
                      (_%g208448208472%_ _%g208449208476%_)))))
          (_%g208447209355%_ _%stx208445%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx209363%_)
        (let* ((_%__stx210345210346%_ _%$stx209363%_)
               (_%g209369209429%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx210345210346%_)))))
          (let ((_%__kont210348210349%_
                 (lambda (_%L209651%_ _%L209653%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209653%_ '()))
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
                                                       (cons _%L209653%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209651%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont210350210351%_
                 (lambda (_%L209576%_ _%L209578%_ _%L209579%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209579%_ '()))
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
                                                       (cons _%L209579%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209578%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L209576%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont210352210353%_
                 (lambda (_%L209490%_ _%L209492%_ _%L209493%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209493%_ '()))
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
                                                       (cons _%L209493%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209492%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L209490%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx210345210346%_))
                (let ((_%e209373209607%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx210345210346%_))))
                  (let ((_%tl209375209614%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e209373209607%_)))
                        (_%hd209374209611%_
                         (let ()
                           (declare (not safe))
                           (##car _%e209373209607%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl209375209614%_))
                        (let ((_%e209376209617%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl209375209614%_))))
                          (let ((_%tl209378209624%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e209376209617%_)))
                                (_%hd209377209621%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e209376209617%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd209377209621%_))
                                (let ((_%e209379209627%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd209377209621%_))))
                                  (if (equal? _%e209379209627%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl209378209624%_))
                                          (let ((_%e209380209631%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl209378209624%_))))
                                            (let ((_%tl209382209638%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e209380209631%_)))
                                                  (_%hd209381209635%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e209380209631%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl209382209638%_))
                                                  (let ((_%e209383209641%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl209382209638%_))))
                                                    (let ((_%tl209385209648%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e209383209641%_)))
                                                          (_%hd209384209645%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e209383209641%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl209385209648%_))
                                                          (_%__kont210348210349%_
                                                           _%hd209384209645%_
                                                           _%hd209381209635%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g209369209429%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g209369209429%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g209369209429%_)))
                                      (if (equal? _%e209379209627%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl209378209624%_))
                                              (let ((_%e209396209546%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl209378209624%_))))
                                                (let ((_%tl209398209553%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e209396209546%_)))
                                                      (_%hd209397209550%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e209396209546%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl209398209553%_))
                                                      (let ((_%e209399209556%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl209398209553%_))))
                (let ((_%tl209401209563%_
                       (let () (declare (not safe)) (##cdr _%e209399209556%_)))
                      (_%hd209400209560%_
                       (let ()
                         (declare (not safe))
                         (##car _%e209399209556%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl209401209563%_))
                      (let ((_%e209402209566%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl209401209563%_))))
                        (let ((_%tl209404209573%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209402209566%_)))
                              (_%hd209403209570%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209402209566%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl209404209573%_))
                              (_%__kont210350210351%_
                               _%hd209403209570%_
                               _%hd209400209560%_
                               _%hd209397209550%_)
                              (let ()
                                (declare (not safe))
                                (_%g209369209429%_)))))
                      (let () (declare (not safe)) (_%g209369209429%_)))))
              (let () (declare (not safe)) (_%g209369209429%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g209369209429%_)))
                                          (if (equal? _%e209379209627%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl209378209624%_))
                                                  (let ((_%e209415209460%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl209378209624%_))))
                                                    (let ((_%tl209417209467%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e209415209460%_)))
                                                          (_%hd209416209464%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e209415209460%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl209417209467%_))
                                                          (let ((_%e209418209470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl209417209467%_))))
                    (let ((_%tl209420209477%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e209418209470%_)))
                          (_%hd209419209474%_
                           (let ()
                             (declare (not safe))
                             (##car _%e209418209470%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl209420209477%_))
                          (let ((_%e209421209480%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl209420209477%_))))
                            (let ((_%tl209423209487%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e209421209480%_)))
                                  (_%hd209422209484%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e209421209480%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl209423209487%_))
                                  (_%__kont210352210353%_
                                   _%hd209422209484%_
                                   _%hd209419209474%_
                                   _%hd209416209464%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g209369209429%_)))))
                          (let () (declare (not safe)) (_%g209369209429%_)))))
                  (let () (declare (not safe)) (_%g209369209429%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g209369209429%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g209369209429%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g209369209429%_)))))
                        (let () (declare (not safe)) (_%g209369209429%_)))))
                (let () (declare (not safe)) (_%g209369209429%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx209675%_)
        (let* ((_%g209679209699%_
                (lambda (_%g209680209695%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209680209695%_))))
               (_%g209678209770%_
                (lambda (_%g209680209703%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209680209703%_))
                      (let ((_%e209682209706%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g209680209703%_))))
                        (let ((_%hd209683209710%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209682209706%_)))
                              (_%tl209684209713%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209682209706%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl209684209713%_))
                              (let ((_g210526_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl209684209713%_
                                        '0))))
                                (begin
                                  (let ((_g210527_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210526_)
                                               (##values-length _g210526_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210527_ 2)))
                                        (error "Context expects 2 values"
                                               _g210527_)))
                                  (let ((_%target209685209716%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210526_ 0)))
                                        (_%tl209687209719%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210526_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl209687209719%_))
                                        (letrec ((_%loop209688209722%_
                                                  (lambda (_%hd209686209726%_
                                                           _%decl209692209729%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd209686209726%_))
                                                        (let ((_%e209689209732%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd209686209726%_))))
                  (let ((_%lp-hd209690209736%_
                         (let ()
                           (declare (not safe))
                           (##car _%e209689209732%_)))
                        (_%lp-tl209691209739%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e209689209732%_))))
                    (_%loop209688209722%_
                     _%lp-tl209691209739%_
                     (cons _%lp-hd209690209736%_ _%decl209692209729%_))))
                (let ((_%decl209693209742%_ (reverse _%decl209692209729%_)))
                  ((lambda (_%L209746%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp210528
                                  (lambda (_%g209761209764%_ _%g209762209767%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g209761209764%_)
                                          _%g209762209767%_))))
                             (declare (not safe))
                             (__foldr1 __tmp210528 '() _%L209746%_))))
                   _%decl209693209742%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop209688209722%_
                                           _%target209685209716%_
                                           '()))
                                        (_%g209679209699%_
                                         _%g209680209703%_)))))
                              (_%g209679209699%_ _%g209680209703%_))))
                      (_%g209679209699%_ _%g209680209703%_)))))
          (_%g209678209770%_ _%$stx209675%_))))))
