(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g202711_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202725_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202727_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202729_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202731_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202744_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202746_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202748_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202750_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx196267%_)
        (let* ((_%g196271196289%_
                (lambda (_%g196272196285%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196272196285%_))))
               (_%g196270196344%_
                (lambda (_%g196272196293%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196272196293%_))
                      (let ((_%e196277196296%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196272196293%_))))
                        (let ((_%hd196276196300%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196277196296%_)))
                              (_%tl196275196303%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196277196296%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196275196303%_))
                              (let ((_%e196280196306%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196275196303%_))))
                                (let ((_%hd196279196310%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196280196306%_)))
                                      (_%tl196278196313%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196280196306%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196278196313%_))
                                      (let ((_%e196283196316%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196278196313%_))))
                                        (let ((_%hd196282196320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196283196316%_)))
                                              (_%tl196281196323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196283196316%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196281196323%_))
                                              ((lambda (_%L196326%_
                                                        _%L196328%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196328%_))
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
                               (cons _%L196328%_ '()))
                         (cons _%L196326%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196271196289%_
                                                      _%g196272196293%_)))
                                               _%hd196282196320%_
                                               _%hd196279196310%_)
                                              (_%g196271196289%_
                                               _%g196272196293%_))))
                                      (_%g196271196289%_ _%g196272196293%_))))
                              (_%g196271196289%_ _%g196272196293%_))))
                      (_%g196271196289%_ _%g196272196293%_)))))
          (_%g196270196344%_ _%$stx196267%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx196348%_)
        (let* ((_%g196352196370%_
                (lambda (_%g196353196366%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196353196366%_))))
               (_%g196351196425%_
                (lambda (_%g196353196374%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196353196374%_))
                      (let ((_%e196358196377%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196353196374%_))))
                        (let ((_%hd196357196381%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196358196377%_)))
                              (_%tl196356196384%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196358196377%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196356196384%_))
                              (let ((_%e196361196387%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196356196384%_))))
                                (let ((_%hd196360196391%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196361196387%_)))
                                      (_%tl196359196394%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196361196387%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196359196394%_))
                                      (let ((_%e196364196397%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196359196394%_))))
                                        (let ((_%hd196363196401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196364196397%_)))
                                              (_%tl196362196404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196364196397%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196362196404%_))
                                              ((lambda (_%L196407%_
                                                        _%L196409%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196409%_))
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
                               (cons _%L196409%_ '()))
                         (cons _%L196407%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196352196370%_
                                                      _%g196353196374%_)))
                                               _%hd196363196401%_
                                               _%hd196360196391%_)
                                              (_%g196352196370%_
                                               _%g196353196374%_))))
                                      (_%g196352196370%_ _%g196353196374%_))))
                              (_%g196352196370%_ _%g196353196374%_))))
                      (_%g196352196370%_ _%g196353196374%_)))))
          (_%g196351196425%_ _%$stx196348%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx196429%_)
        (let* ((_%g196433196462%_
                (lambda (_%g196434196458%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196434196458%_))))
               (_%g196432196562%_
                (lambda (_%g196434196466%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196434196466%_))
                      (let ((_%e196439196469%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196434196466%_))))
                        (let ((_%hd196438196473%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196439196469%_)))
                              (_%tl196437196476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196439196469%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196437196476%_))
                              (let ((_g202689_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196437196476%_
                                        '0))))
                                (begin
                                  (let ((_g202690_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202689_)
                                               (##vector-length _g202689_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202690_ 2)))
                                        (error "Context expects 2 values"
                                               _g202690_)))
                                  (let ((_%target196440196479%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202689_ 0)))
                                        (_%tl196442196482%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202689_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196442196482%_))
                                        (letrec ((_%loop196443196485%_
                                                  (lambda (_%hd196441196489%_
                                                           _%type196447196492%_
                                                           _%symbol196448196494%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196441196489%_))
                                                        (let ((_%e196444196497%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196441196489%_))))
                  (let ((_%lp-hd196445196501%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196444196497%_)))
                        (_%lp-tl196446196504%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196444196497%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196445196501%_))
                        (let ((_%e196453196507%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196445196501%_))))
                          (let ((_%hd196452196511%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196453196507%_)))
                                (_%tl196451196514%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196453196507%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196451196514%_))
                                (let ((_%e196456196517%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196451196514%_))))
                                  (let ((_%hd196455196521%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196456196517%_)))
                                        (_%tl196454196524%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196456196517%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196454196524%_))
                                        (_%loop196443196485%_
                                         _%lp-tl196446196504%_
                                         (cons _%hd196455196521%_
                                               _%type196447196492%_)
                                         (cons _%hd196452196511%_
                                               _%symbol196448196494%_))
                                        (_%g196433196462%_
                                         _%g196434196466%_))))
                                (_%g196433196462%_ _%g196434196466%_))))
                        (_%g196433196462%_ _%g196434196466%_))))
                (let ((_%type196449196527%_ (reverse _%type196447196492%_))
                      (_%symbol196450196530%_
                       (reverse _%symbol196448196494%_)))
                  ((lambda (_%L196533%_ _%L196535%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196533%_
                                _%L196535%_))
                             (let ((__tmp202691
                                    (lambda (_%g196550196554%_
                                             _%g196551196557%_
                                             _%g196552196559%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g196551196557%_
                                                        (cons _%g196550196554%_
                                                              '())))
                                            _%g196552196559%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202691
                                '()
                                _%L196533%_
                                _%L196535%_)))))
                   _%type196449196527%_
                   _%symbol196450196530%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196443196485%_
                                           _%target196440196479%_
                                           '()
                                           '()))
                                        (_%g196433196462%_
                                         _%g196434196466%_)))))
                              (_%g196433196462%_ _%g196434196466%_))))
                      (_%g196433196462%_ _%g196434196466%_)))))
          (_%g196432196562%_ _%$stx196429%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx196567%_)
        (let* ((_%__stx202000202001%_ _%$stx196567%_)
               (_%g196572196614%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202000202001%_)))))
          (let ((_%__kont202003202004%_
                 (lambda (_%L196742%_ _%L196744%_ _%L196745%_ _%L196746%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196746%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196745%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L196744%_ '()))
                                           (cons _%L196742%_ '())))))))
                (_%__kont202005202006%_
                 (lambda (_%L196661%_ _%L196663%_ _%L196664%_ _%L196665%_)
                   (cons _%L196665%_
                         (cons _%L196664%_
                               (cons _%L196663%_
                                     (cons _%L196661%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match202039202040%_
                   (lambda (_%e196580196692%_
                            _%hd196579196696%_
                            _%tl196578196699%_
                            _%e196583196702%_
                            _%hd196582196706%_
                            _%tl196581196709%_
                            _%e196586196712%_
                            _%hd196585196716%_
                            _%tl196584196719%_
                            _%e196589196722%_
                            _%hd196588196726%_
                            _%tl196587196729%_
                            _%e196592196732%_
                            _%hd196591196736%_
                            _%tl196590196739%_)
                     (let ((_%L196742%_ _%hd196591196736%_)
                           (_%L196744%_ _%hd196588196726%_)
                           (_%L196745%_ _%hd196585196716%_)
                           (_%L196746%_ _%hd196582196706%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196746%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196745%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196744%_)))
                           (_%__kont202003202004%_
                            _%L196742%_
                            _%L196744%_
                            _%L196745%_
                            _%L196746%_)
                           (let ()
                             (declare (not safe))
                             (_%g196572196614%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202000202001%_))
                  (let ((_%e196580196692%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202000202001%_))))
                    (let ((_%tl196578196699%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196580196692%_)))
                          (_%hd196579196696%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196580196692%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196578196699%_))
                          (let ((_%e196583196702%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl196578196699%_))))
                            (let ((_%tl196581196709%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196583196702%_)))
                                  (_%hd196582196706%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196583196702%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196581196709%_))
                                  (let ((_%e196586196712%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl196581196709%_))))
                                    (let ((_%tl196584196719%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196586196712%_)))
                                          (_%hd196585196716%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196586196712%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196584196719%_))
                                          (let ((_%e196589196722%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl196584196719%_))))
                                            (let ((_%tl196587196729%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196589196722%_)))
                                                  (_%hd196588196726%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196589196722%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196587196729%_))
                                                  (let ((_%e196592196732%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl196587196729%_))))
                                                    (let ((_%tl196590196739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196592196732%_)))
                                                          (_%hd196591196736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196592196732%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196590196739%_))
                                                          (_%__match202039202040%_
                                                           _%e196580196692%_
                                                           _%hd196579196696%_
                                                           _%tl196578196699%_
                                                           _%e196583196702%_
                                                           _%hd196582196706%_
                                                           _%tl196581196709%_
                                                           _%e196586196712%_
                                                           _%hd196585196716%_
                                                           _%tl196584196719%_
                                                           _%e196589196722%_
                                                           _%hd196588196726%_
                                                           _%tl196587196729%_
                                                           _%e196592196732%_
                                                           _%hd196591196736%_
                                                           _%tl196590196739%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g196572196614%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196587196729%_))
                                                      (_%__kont202005202006%_
                                                       _%hd196588196726%_
                                                       _%hd196585196716%_
                                                       _%hd196582196706%_
                                                       _%hd196579196696%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g196572196614%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g196572196614%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g196572196614%_)))))
                          (let () (declare (not safe)) (_%g196572196614%_)))))
                  (let () (declare (not safe)) (_%g196572196614%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx196771%_)
        (let* ((_%g196775196810%_
                (lambda (_%g196776196806%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196776196806%_))))
               (_%g196774196929%_
                (lambda (_%g196776196814%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196776196814%_))
                      (let ((_%e196782196817%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196776196814%_))))
                        (let ((_%hd196781196821%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196782196817%_)))
                              (_%tl196780196824%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196782196817%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196780196824%_))
                              (let ((_g202692_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196780196824%_
                                        '0))))
                                (begin
                                  (let ((_g202693_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202692_)
                                               (##vector-length _g202692_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202693_ 2)))
                                        (error "Context expects 2 values"
                                               _g202693_)))
                                  (let ((_%target196783196827%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202692_ 0)))
                                        (_%tl196785196830%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202692_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196785196830%_))
                                        (letrec ((_%loop196786196833%_
                                                  (lambda (_%hd196784196837%_
                                                           _%symbol196790196840%_
                                                           _%method196791196842%_
                                                           _%type-t196792196844%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196784196837%_))
                                                        (let ((_%e196787196847%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196784196837%_))))
                  (let ((_%lp-hd196788196851%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196787196847%_)))
                        (_%lp-tl196789196854%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196787196847%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196788196851%_))
                        (let ((_%e196798196857%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196788196851%_))))
                          (let ((_%hd196797196861%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196798196857%_)))
                                (_%tl196796196864%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196798196857%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196796196864%_))
                                (let ((_%e196801196867%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196796196864%_))))
                                  (let ((_%hd196800196871%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196801196867%_)))
                                        (_%tl196799196874%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196801196867%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196799196874%_))
                                        (let ((_%e196804196877%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196799196874%_))))
                                          (let ((_%hd196803196881%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196804196877%_)))
                                                (_%tl196802196884%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196804196877%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196802196884%_))
                                                (_%loop196786196833%_
                                                 _%lp-tl196789196854%_
                                                 (cons _%hd196803196881%_
                                                       _%symbol196790196840%_)
                                                 (cons _%hd196800196871%_
                                                       _%method196791196842%_)
                                                 (cons _%hd196797196861%_
                                                       _%type-t196792196844%_))
                                                (_%g196775196810%_
                                                 _%g196776196814%_))))
                                        (_%g196775196810%_
                                         _%g196776196814%_))))
                                (_%g196775196810%_ _%g196776196814%_))))
                        (_%g196775196810%_ _%g196776196814%_))))
                (let ((_%symbol196793196887%_ (reverse _%symbol196790196840%_))
                      (_%method196794196890%_ (reverse _%method196791196842%_))
                      (_%type-t196795196892%_
                       (reverse _%type-t196792196844%_)))
                  ((lambda (_%L196895%_ _%L196897%_ _%L196898%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196895%_
                                _%L196897%_
                                _%L196898%_))
                             (let ((__tmp202694
                                    (lambda (_%g196914196919%_
                                             _%g196915196922%_
                                             _%g196916196924%_
                                             _%g196917196926%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g196916196924%_
                                                        (cons _%g196915196922%_
                                                              (cons _%g196914196919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g196917196926%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp202694
                                '()
                                _%L196895%_
                                _%L196897%_
                                _%L196898%_)))))
                   _%symbol196793196887%_
                   _%method196794196890%_
                   _%type-t196795196892%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196786196833%_
                                           _%target196783196827%_
                                           '()
                                           '()
                                           '()))
                                        (_%g196775196810%_
                                         _%g196776196814%_)))))
                              (_%g196775196810%_ _%g196776196814%_))))
                      (_%g196775196810%_ _%g196776196814%_)))))
          (_%g196774196929%_ _%$stx196771%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx196934%_)
        (let* ((_%g196938196971%_
                (lambda (_%g196939196967%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196939196967%_))))
               (_%g196937197085%_
                (lambda (_%g196939196975%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196939196975%_))
                      (let ((_%e196945196978%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196939196975%_))))
                        (let ((_%hd196944196982%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196945196978%_)))
                              (_%tl196943196985%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196945196978%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196943196985%_))
                              (let ((_%e196948196988%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196943196985%_))))
                                (let ((_%hd196947196992%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196948196988%_)))
                                      (_%tl196946196995%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196948196988%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196946196995%_))
                                      (let ((_g202695_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196946196995%_
                                                '0))))
                                        (begin
                                          (let ((_g202696_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202695_)
                                                       (##vector-length
                                                        _g202695_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202696_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202696_)))
                                          (let ((_%target196949196998%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202695_ 0)))
                                                (_%tl196951197001%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202695_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196951197001%_))
                                                (letrec ((_%loop196952197004%_
                                                          (lambda (_%hd196950197008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol196956197011%_
                           _%method196957197013%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd196950197008%_))
                        (let ((_%e196953197016%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd196950197008%_))))
                          (let ((_%lp-hd196954197020%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196953197016%_)))
                                (_%lp-tl196955197023%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196953197016%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd196954197020%_))
                                (let ((_%e196962197026%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd196954197020%_))))
                                  (let ((_%hd196961197030%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196962197026%_)))
                                        (_%tl196960197033%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196962197026%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196960197033%_))
                                        (let ((_%e196965197036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196960197033%_))))
                                          (let ((_%hd196964197040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196965197036%_)))
                                                (_%tl196963197043%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196965197036%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196963197043%_))
                                                (_%loop196952197004%_
                                                 _%lp-tl196955197023%_
                                                 (cons _%hd196964197040%_
                                                       _%symbol196956197011%_)
                                                 (cons _%hd196961197030%_
                                                       _%method196957197013%_))
                                                (_%g196938196971%_
                                                 _%g196939196975%_))))
                                        (_%g196938196971%_
                                         _%g196939196975%_))))
                                (_%g196938196971%_ _%g196939196975%_))))
                        (let ((_%symbol196958197046%_
                               (reverse _%symbol196956197011%_))
                              (_%method196959197049%_
                               (reverse _%method196957197013%_)))
                          ((lambda (_%L197052%_ _%L197054%_ _%L197055%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L197052%_
                                        _%L197054%_))
                                     (let ((__tmp202697
                                            (lambda (_%g197073197077%_
                                                     _%g197074197080%_
                                                     _%g197075197082%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L197055%_
                                                                (cons _%g197074197080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g197073197077%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g197075197082%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp202697
                                        '()
                                        _%L197052%_
                                        _%L197054%_)))))
                           _%symbol196958197046%_
                           _%method196959197049%_
                           _%hd196947196992%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop196952197004%_
                                                   _%target196949196998%_
                                                   '()
                                                   '()))
                                                (_%g196938196971%_
                                                 _%g196939196975%_)))))
                                      (_%g196938196971%_ _%g196939196975%_))))
                              (_%g196938196971%_ _%g196939196975%_))))
                      (_%g196938196971%_ _%g196939196975%_)))))
          (_%g196937197085%_ _%$stx196934%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx197090%_)
        (let* ((_%g197094197108%_
                (lambda (_%g197095197104%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197095197104%_))))
               (_%g197093197149%_
                (lambda (_%g197095197112%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197095197112%_))
                      (let ((_%e197099197115%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197095197112%_))))
                        (let ((_%hd197098197119%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197099197115%_)))
                              (_%tl197097197122%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197099197115%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197097197122%_))
                              (let ((_%e197102197125%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197097197122%_))))
                                (let ((_%hd197101197129%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197102197125%_)))
                                      (_%tl197100197132%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197102197125%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197100197132%_))
                                      ((lambda (_%L197135%_)
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
                                                           (cons _%L197135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197101197129%_)
                                      (_%g197094197108%_ _%g197095197112%_))))
                              (_%g197094197108%_ _%g197095197112%_))))
                      (_%g197094197108%_ _%g197095197112%_)))))
          (_%g197093197149%_ _%$stx197090%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx197153%_)
        (let* ((_%g197157197211%_
                (lambda (_%g197158197207%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197158197207%_))))
               (_%g197156197392%_
                (lambda (_%g197158197215%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197158197215%_))
                      (let ((_%e197172197218%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197158197215%_))))
                        (let ((_%hd197171197222%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197172197218%_)))
                              (_%tl197170197225%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197172197218%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197170197225%_))
                              (let ((_%e197175197228%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197170197225%_))))
                                (let ((_%hd197174197232%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197175197228%_)))
                                      (_%tl197173197235%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197175197228%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197173197235%_))
                                      (let ((_%e197178197238%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197173197235%_))))
                                        (let ((_%hd197177197242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197178197238%_)))
                                              (_%tl197176197245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197178197238%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197176197245%_))
                                              (let ((_%e197181197248%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197176197245%_))))
                                                (let ((_%hd197180197252%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197181197248%_)))
                                                      (_%tl197179197255%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197181197248%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197179197255%_))
                                                      (let ((_%e197184197258%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197179197255%_))))
                (let ((_%hd197183197262%_
                       (let () (declare (not safe)) (##car _%e197184197258%_)))
                      (_%tl197182197265%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197184197258%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197182197265%_))
                      (let ((_%e197187197268%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197182197265%_))))
                        (let ((_%hd197186197272%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197187197268%_)))
                              (_%tl197185197275%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197187197268%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197185197275%_))
                              (let ((_%e197190197278%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197185197275%_))))
                                (let ((_%hd197189197282%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197190197278%_)))
                                      (_%tl197188197285%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197190197278%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197188197285%_))
                                      (let ((_%e197193197288%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197188197285%_))))
                                        (let ((_%hd197192197292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197193197288%_)))
                                              (_%tl197191197295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197193197288%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197191197295%_))
                                              (let ((_%e197196197298%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197191197295%_))))
                                                (let ((_%hd197195197302%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197196197298%_)))
                                                      (_%tl197194197305%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197196197298%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197194197305%_))
                                                      (let ((_%e197199197308%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197194197305%_))))
                (let ((_%hd197198197312%_
                       (let () (declare (not safe)) (##car _%e197199197308%_)))
                      (_%tl197197197315%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197199197308%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197197197315%_))
                      (let ((_%e197202197318%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197197197315%_))))
                        (let ((_%hd197201197322%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197202197318%_)))
                              (_%tl197200197325%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197202197318%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197200197325%_))
                              (let ((_%e197205197328%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197200197325%_))))
                                (let ((_%hd197204197332%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197205197328%_)))
                                      (_%tl197203197335%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197205197328%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197203197335%_))
                                      ((lambda (_%L197338%_
                                                _%L197340%_
                                                _%L197341%_
                                                _%L197342%_
                                                _%L197343%_
                                                _%L197344%_
                                                _%L197345%_
                                                _%L197346%_
                                                _%L197347%_
                                                _%L197348%_
                                                _%L197349%_)
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
                                                           (cons _%L197349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L197348%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L197347%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197346%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197345%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L197344%_ '()))
                                           (cons _%L197343%_
                                                 (cons _%L197342%_
                                                       (cons _%L197341%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197340%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L197338%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd197204197332%_
                                       _%hd197201197322%_
                                       _%hd197198197312%_
                                       _%hd197195197302%_
                                       _%hd197192197292%_
                                       _%hd197189197282%_
                                       _%hd197186197272%_
                                       _%hd197183197262%_
                                       _%hd197180197252%_
                                       _%hd197177197242%_
                                       _%hd197174197232%_)
                                      (_%g197157197211%_ _%g197158197215%_))))
                              (_%g197157197211%_ _%g197158197215%_))))
                      (_%g197157197211%_ _%g197158197215%_))))
              (_%g197157197211%_ _%g197158197215%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197157197211%_
                                               _%g197158197215%_))))
                                      (_%g197157197211%_ _%g197158197215%_))))
                              (_%g197157197211%_ _%g197158197215%_))))
                      (_%g197157197211%_ _%g197158197215%_))))
              (_%g197157197211%_ _%g197158197215%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197157197211%_
                                               _%g197158197215%_))))
                                      (_%g197157197211%_ _%g197158197215%_))))
                              (_%g197157197211%_ _%g197158197215%_))))
                      (_%g197157197211%_ _%g197158197215%_)))))
          (_%g197156197392%_ _%$stx197153%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx197396%_)
        (let* ((_%g197400197414%_
                (lambda (_%g197401197410%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197401197410%_))))
               (_%g197399197455%_
                (lambda (_%g197401197418%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197401197418%_))
                      (let ((_%e197405197421%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197401197418%_))))
                        (let ((_%hd197404197425%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197405197421%_)))
                              (_%tl197403197428%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197405197421%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197403197428%_))
                              (let ((_%e197408197431%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197403197428%_))))
                                (let ((_%hd197407197435%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197408197431%_)))
                                      (_%tl197406197438%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197408197431%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197406197438%_))
                                      ((lambda (_%L197441%_)
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
                                                           (cons _%L197441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197407197435%_)
                                      (_%g197400197414%_ _%g197401197418%_))))
                              (_%g197400197414%_ _%g197401197418%_))))
                      (_%g197400197414%_ _%g197401197418%_)))))
          (_%g197399197455%_ _%$stx197396%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx197459%_)
        (let* ((_%g197463197477%_
                (lambda (_%g197464197473%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197464197473%_))))
               (_%g197462197518%_
                (lambda (_%g197464197481%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197464197481%_))
                      (let ((_%e197468197484%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197464197481%_))))
                        (let ((_%hd197467197488%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197468197484%_)))
                              (_%tl197466197491%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197468197484%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197466197491%_))
                              (let ((_%e197471197494%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197466197491%_))))
                                (let ((_%hd197470197498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197471197494%_)))
                                      (_%tl197469197501%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197471197494%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197469197501%_))
                                      ((lambda (_%L197504%_)
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
                                                           (cons _%L197504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197470197498%_)
                                      (_%g197463197477%_ _%g197464197481%_))))
                              (_%g197463197477%_ _%g197464197481%_))))
                      (_%g197463197477%_ _%g197464197481%_)))))
          (_%g197462197518%_ _%$stx197459%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx197522%_)
        (let* ((_%g197526197548%_
                (lambda (_%g197527197544%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197527197544%_))))
               (_%g197525197617%_
                (lambda (_%g197527197552%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197527197552%_))
                      (let ((_%e197533197555%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197527197552%_))))
                        (let ((_%hd197532197559%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197533197555%_)))
                              (_%tl197531197562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197533197555%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197531197562%_))
                              (let ((_%e197536197565%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197531197562%_))))
                                (let ((_%hd197535197569%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197536197565%_)))
                                      (_%tl197534197572%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197536197565%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197534197572%_))
                                      (let ((_%e197539197575%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197534197572%_))))
                                        (let ((_%hd197538197579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197539197575%_)))
                                              (_%tl197537197582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197539197575%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197537197582%_))
                                              (let ((_%e197542197585%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197537197582%_))))
                                                (let ((_%hd197541197589%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197542197585%_)))
                                                      (_%tl197540197592%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197542197585%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197540197592%_))
                                                      ((lambda (_%L197595%_
                                                                _%L197597%_
                                                                _%L197598%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197598%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L197597%_ '()))
                                   (cons _%L197595%_ '())))))
               _%hd197541197589%_
               _%hd197538197579%_
               _%hd197535197569%_)
              (_%g197526197548%_ _%g197527197552%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197526197548%_
                                               _%g197527197552%_))))
                                      (_%g197526197548%_ _%g197527197552%_))))
                              (_%g197526197548%_ _%g197527197552%_))))
                      (_%g197526197548%_ _%g197527197552%_)))))
          (_%g197525197617%_ _%$stx197522%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx197621%_)
        (let* ((_%g197625197647%_
                (lambda (_%g197626197643%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197626197643%_))))
               (_%g197624197716%_
                (lambda (_%g197626197651%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197626197651%_))
                      (let ((_%e197632197654%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197626197651%_))))
                        (let ((_%hd197631197658%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197632197654%_)))
                              (_%tl197630197661%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197632197654%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197630197661%_))
                              (let ((_%e197635197664%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197630197661%_))))
                                (let ((_%hd197634197668%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197635197664%_)))
                                      (_%tl197633197671%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197635197664%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197633197671%_))
                                      (let ((_%e197638197674%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197633197671%_))))
                                        (let ((_%hd197637197678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197638197674%_)))
                                              (_%tl197636197681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197638197674%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197636197681%_))
                                              (let ((_%e197641197684%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197636197681%_))))
                                                (let ((_%hd197640197688%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197641197684%_)))
                                                      (_%tl197639197691%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197641197684%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197639197691%_))
                                                      ((lambda (_%L197694%_
                                                                _%L197696%_
                                                                _%L197697%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197697%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L197696%_ '()))
                                   (cons _%L197694%_ '())))))
               _%hd197640197688%_
               _%hd197637197678%_
               _%hd197634197668%_)
              (_%g197625197647%_ _%g197626197651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197625197647%_
                                               _%g197626197651%_))))
                                      (_%g197625197647%_ _%g197626197651%_))))
                              (_%g197625197647%_ _%g197626197651%_))))
                      (_%g197625197647%_ _%g197626197651%_)))))
          (_%g197624197716%_ _%$stx197621%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx197720%_)
        (let* ((_%g197724197738%_
                (lambda (_%g197725197734%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197725197734%_))))
               (_%g197723197779%_
                (lambda (_%g197725197742%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197725197742%_))
                      (let ((_%e197729197745%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197725197742%_))))
                        (let ((_%hd197728197749%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197729197745%_)))
                              (_%tl197727197752%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197729197745%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197727197752%_))
                              (let ((_%e197732197755%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197727197752%_))))
                                (let ((_%hd197731197759%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197732197755%_)))
                                      (_%tl197730197762%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197732197755%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197730197762%_))
                                      ((lambda (_%L197765%_)
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
                                                           (cons _%L197765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197731197759%_)
                                      (_%g197724197738%_ _%g197725197742%_))))
                              (_%g197724197738%_ _%g197725197742%_))))
                      (_%g197724197738%_ _%g197725197742%_)))))
          (_%g197723197779%_ _%$stx197720%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx197783%_)
        (let* ((_%g197787197805%_
                (lambda (_%g197788197801%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197788197801%_))))
               (_%g197786197860%_
                (lambda (_%g197788197809%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197788197809%_))
                      (let ((_%e197793197812%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197788197809%_))))
                        (let ((_%hd197792197816%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197793197812%_)))
                              (_%tl197791197819%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197793197812%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197791197819%_))
                              (let ((_%e197796197822%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197791197819%_))))
                                (let ((_%hd197795197826%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197796197822%_)))
                                      (_%tl197794197829%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197796197822%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197794197829%_))
                                      (let ((_%e197799197832%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197794197829%_))))
                                        (let ((_%hd197798197836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197799197832%_)))
                                              (_%tl197797197839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197799197832%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197797197839%_))
                                              ((lambda (_%L197842%_
                                                        _%L197844%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197844%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197842%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197798197836%_
                                               _%hd197795197826%_)
                                              (_%g197787197805%_
                                               _%g197788197809%_))))
                                      (_%g197787197805%_ _%g197788197809%_))))
                              (_%g197787197805%_ _%g197788197809%_))))
                      (_%g197787197805%_ _%g197788197809%_)))))
          (_%g197786197860%_ _%$stx197783%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx197864%_)
        (let* ((_%__stx202068202069%_ _%$stx197864%_)
               (_%g197871197932%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202068202069%_)))))
          (let ((_%__kont202071202072%_
                 (lambda (_%L198170%_ _%L198172%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198172%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198170%_ '()))
                                     '())))))
                (_%__kont202073202074%_
                 (lambda (_%L198109%_ _%L198111%_ _%L198112%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198112%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198111%_ '()))
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
                                 (cons _%L198109%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont202075202076%_
                 (lambda (_%L198033%_ _%L198035%_)
                   (cons _%L198035%_ (cons _%L198033%_ (cons '#f '())))))
                (_%__kont202077202078%_
                 (lambda (_%L197983%_ _%L197985%_ _%L197986%_)
                   (cons _%L197986%_
                         (cons _%L197985%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L197983%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202068202069%_))
                (let ((_%e197877198140%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202068202069%_))))
                  (let ((_%tl197875198147%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197877198140%_)))
                        (_%hd197876198144%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197877198140%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197875198147%_))
                        (let ((_%e197880198150%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl197875198147%_))))
                          (let ((_%tl197878198157%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197880198150%_)))
                                (_%hd197879198154%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197880198150%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197878198157%_))
                                (let ((_%e197883198160%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197878198157%_))))
                                  (let ((_%tl197881198167%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197883198160%_)))
                                        (_%hd197882198164%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197883198160%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197881198167%_))
                                        (_%__kont202071202072%_
                                         _%hd197882198164%_
                                         _%hd197879198154%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197881198167%_))
                                            (let ((_%e197898198085%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197881198167%_))))
                                              (let ((_%tl197896198092%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197898198085%_)))
                                                    (_%hd197897198089%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197898198085%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd197897198089%_))
                                                    (let ((_%e197899198095%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd197897198089%_))))
                                                      (if (equal? _%e197899198095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197896198092%_))
                      (let ((_%e197902198099%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197896198092%_))))
                        (let ((_%tl197900198106%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197902198099%_)))
                              (_%hd197901198103%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197902198099%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197900198106%_))
                              (_%__kont202073202074%_
                               _%hd197901198103%_
                               _%hd197882198164%_
                               _%hd197879198154%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd197882198164%_))
                                  (let ((_%e197923197969%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197882198164%_))))
                                    (declare (not safe))
                                    (_%g197871197932%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197871197932%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd197882198164%_))
                          (let ((_%e197923197969%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197882198164%_))))
                            (if (equal? _%e197923197969%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197896198092%_))
                                    (_%__kont202077202078%_
                                     _%hd197897198089%_
                                     _%hd197879198154%_
                                     _%hd197876198144%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197871197932%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g197871197932%_))))
                          (let () (declare (not safe)) (_%g197871197932%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd197882198164%_))
                      (let ((_%e197923197969%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197882198164%_))))
                        (if (equal? _%e197923197969%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197896198092%_))
                                (_%__kont202077202078%_
                                 _%hd197897198089%_
                                 _%hd197879198154%_
                                 _%hd197876198144%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197871197932%_)))
                            (let () (declare (not safe)) (_%g197871197932%_))))
                      (let () (declare (not safe)) (_%g197871197932%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd197882198164%_))
                                                        (let ((_%e197923197969%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd197882198164%_))))
                  (if (equal? _%e197923197969%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197896198092%_))
                          (_%__kont202077202078%_
                           _%hd197897198089%_
                           _%hd197879198154%_
                           _%hd197876198144%_)
                          (let () (declare (not safe)) (_%g197871197932%_)))
                      (let () (declare (not safe)) (_%g197871197932%_))))
                (let () (declare (not safe)) (_%g197871197932%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd197882198164%_))
                                                (let ((_%e197923197969%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd197882198164%_))))
                                                  (declare (not safe))
                                                  (_%g197871197932%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197871197932%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197878198157%_))
                                    (_%__kont202075202076%_
                                     _%hd197879198154%_
                                     _%hd197876198144%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197871197932%_))))))
                        (let () (declare (not safe)) (_%g197871197932%_)))))
                (let () (declare (not safe)) (_%g197871197932%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx198191%_)
        (let* ((_%g198195198224%_
                (lambda (_%g198196198220%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198196198220%_))))
               (_%g198194198333%_
                (lambda (_%g198196198228%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198196198228%_))
                      (let ((_%e198200198231%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198196198228%_))))
                        (let ((_%hd198199198235%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198200198231%_)))
                              (_%tl198198198238%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198200198231%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198198198238%_))
                              (let ((_g202698_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198198198238%_
                                        '0))))
                                (begin
                                  (let ((_g202699_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202698_)
                                               (##vector-length _g202698_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202699_ 2)))
                                        (error "Context expects 2 values"
                                               _g202699_)))
                                  (let ((_%target198201198241%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202698_ 0)))
                                        (_%tl198203198244%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202698_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198203198244%_))
                                        (letrec ((_%loop198204198247%_
                                                  (lambda (_%hd198202198251%_
                                                           _%clause198208198254%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198202198251%_))
                                                        (let ((_%e198205198257%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198202198251%_))))
                  (let ((_%lp-hd198206198261%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198205198257%_)))
                        (_%lp-tl198207198264%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198205198257%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd198206198261%_))
                        (let ((_g202700_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd198206198261%_
                                  '0))))
                          (begin
                            (let ((_g202701_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g202700_)
                                         (##vector-length _g202700_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g202701_ 2)))
                                  (error "Context expects 2 values"
                                         _g202701_)))
                            (let ((_%target198210198267%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202700_ 0)))
                                  (_%tl198212198270%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202700_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198212198270%_))
                                  (letrec ((_%loop198213198273%_
                                            (lambda (_%hd198211198277%_
                                                     _%clause198217198280%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198211198277%_))
                                                  (let ((_%e198214198283%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd198211198277%_))))
                                                    (let ((_%lp-hd198215198287%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198214198283%_)))
                                                          (_%lp-tl198216198290%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198214198283%_))))
                                                      (_%loop198213198273%_
                                                       _%lp-tl198216198290%_
                                                       (cons _%lp-hd198215198287%_
                                                             _%clause198217198280%_))))
                                                  (let ((_%clause198218198293%_
                                                         (reverse _%clause198217198280%_)))
                                                    (_%loop198204198247%_
                                                     _%lp-tl198207198264%_
                                                     (cons _%clause198218198293%_
                                                           _%clause198208198254%_)))))))
                                    (_%loop198213198273%_
                                     _%target198210198267%_
                                     '()))
                                  (_%g198195198224%_ _%g198196198228%_)))))
                        (_%g198195198224%_ _%g198196198228%_))))
                (let ((_%clause198209198297%_
                       (reverse _%clause198208198254%_)))
                  ((lambda (_%L198301%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp202702
                                              (lambda (_%g198316198321%_
                                                       _%g198317198324%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp202703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g198318198327%_ _%g198319198330%_)
                             (cons _%g198318198327%_ _%g198319198330%_))))
                      (declare (not safe))
                      (__foldr1 __tmp202703 '() _%g198316198321%_)))
              _%g198317198324%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp202702
                                          '()
                                          _%L198301%_)))
                                 '())))
                   _%clause198209198297%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198204198247%_
                                           _%target198201198241%_
                                           '()))
                                        (_%g198195198224%_
                                         _%g198196198228%_)))))
                              (_%g198195198224%_ _%g198196198228%_))))
                      (_%g198195198224%_ _%g198196198228%_)))))
          (_%g198194198333%_ _%$stx198191%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx198339%_)
        (let* ((_%g198343198361%_
                (lambda (_%g198344198357%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198344198357%_))))
               (_%g198342198416%_
                (lambda (_%g198344198365%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198344198365%_))
                      (let ((_%e198349198368%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198344198365%_))))
                        (let ((_%hd198348198372%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198349198368%_)))
                              (_%tl198347198375%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198349198368%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198347198375%_))
                              (let ((_%e198352198378%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198347198375%_))))
                                (let ((_%hd198351198382%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198352198378%_)))
                                      (_%tl198350198385%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198352198378%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198350198385%_))
                                      (let ((_%e198355198388%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198350198385%_))))
                                        (let ((_%hd198354198392%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198355198388%_)))
                                              (_%tl198353198395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198355198388%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198353198395%_))
                                              ((lambda (_%L198398%_
                                                        _%L198400%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198400%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198398%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198354198392%_
                                               _%hd198351198382%_)
                                              (_%g198343198361%_
                                               _%g198344198365%_))))
                                      (_%g198343198361%_ _%g198344198365%_))))
                              (_%g198343198361%_ _%g198344198365%_))))
                      (_%g198343198361%_ _%g198344198365%_)))))
          (_%g198342198416%_ _%$stx198339%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx198420%_)
        (let* ((_%g198424198442%_
                (lambda (_%g198425198438%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198425198438%_))))
               (_%g198423198497%_
                (lambda (_%g198425198446%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198425198446%_))
                      (let ((_%e198430198449%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198425198446%_))))
                        (let ((_%hd198429198453%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198430198449%_)))
                              (_%tl198428198456%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198430198449%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198428198456%_))
                              (let ((_%e198433198459%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198428198456%_))))
                                (let ((_%hd198432198463%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198433198459%_)))
                                      (_%tl198431198466%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198433198459%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198431198466%_))
                                      (let ((_%e198436198469%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198431198466%_))))
                                        (let ((_%hd198435198473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198436198469%_)))
                                              (_%tl198434198476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198436198469%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198434198476%_))
                                              ((lambda (_%L198479%_
                                                        _%L198481%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198481%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198479%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198435198473%_
                                               _%hd198432198463%_)
                                              (_%g198424198442%_
                                               _%g198425198446%_))))
                                      (_%g198424198442%_ _%g198425198446%_))))
                              (_%g198424198442%_ _%g198425198446%_))))
                      (_%g198424198442%_ _%g198425198446%_)))))
          (_%g198423198497%_ _%$stx198420%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx198501%_)
        (let* ((_%g198505198534%_
                (lambda (_%g198506198530%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198506198530%_))))
               (_%g198504198634%_
                (lambda (_%g198506198538%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198506198538%_))
                      (let ((_%e198511198541%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198506198538%_))))
                        (let ((_%hd198510198545%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198511198541%_)))
                              (_%tl198509198548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198511198541%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198509198548%_))
                              (let ((_g202704_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198509198548%_
                                        '0))))
                                (begin
                                  (let ((_g202705_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202704_)
                                               (##vector-length _g202704_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202705_ 2)))
                                        (error "Context expects 2 values"
                                               _g202705_)))
                                  (let ((_%target198512198551%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202704_ 0)))
                                        (_%tl198514198554%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202704_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198514198554%_))
                                        (letrec ((_%loop198515198557%_
                                                  (lambda (_%hd198513198561%_
                                                           _%rule198519198564%_
                                                           _%proc198520198566%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198513198561%_))
                                                        (let ((_%e198516198569%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198513198561%_))))
                  (let ((_%lp-hd198517198573%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198516198569%_)))
                        (_%lp-tl198518198576%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198516198569%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd198517198573%_))
                        (let ((_%e198525198579%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd198517198573%_))))
                          (let ((_%hd198524198583%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198525198579%_)))
                                (_%tl198523198586%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198525198579%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198523198586%_))
                                (let ((_%e198528198589%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198523198586%_))))
                                  (let ((_%hd198527198593%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198528198589%_)))
                                        (_%tl198526198596%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198528198589%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198526198596%_))
                                        (_%loop198515198557%_
                                         _%lp-tl198518198576%_
                                         (cons _%hd198527198593%_
                                               _%rule198519198564%_)
                                         (cons _%hd198524198583%_
                                               _%proc198520198566%_))
                                        (_%g198505198534%_
                                         _%g198506198538%_))))
                                (_%g198505198534%_ _%g198506198538%_))))
                        (_%g198505198534%_ _%g198506198538%_))))
                (let ((_%rule198521198599%_ (reverse _%rule198519198564%_))
                      (_%proc198522198602%_ (reverse _%proc198520198566%_)))
                  ((lambda (_%L198605%_ _%L198607%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L198605%_
                                _%L198607%_))
                             (let ((__tmp202706
                                    (lambda (_%g198622198626%_
                                             _%g198623198629%_
                                             _%g198624198631%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g198623198629%_
                                                        (cons _%g198622198626%_
                                                              '())))
                                            _%g198624198631%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202706
                                '()
                                _%L198605%_
                                _%L198607%_)))))
                   _%rule198521198599%_
                   _%proc198522198602%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198515198557%_
                                           _%target198512198551%_
                                           '()
                                           '()))
                                        (_%g198505198534%_
                                         _%g198506198538%_)))))
                              (_%g198505198534%_ _%g198506198538%_))))
                      (_%g198505198534%_ _%g198506198538%_)))))
          (_%g198504198634%_ _%$stx198501%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx198639%_)
        (let* ((_%g198643198661%_
                (lambda (_%g198644198657%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198644198657%_))))
               (_%g198642198716%_
                (lambda (_%g198644198665%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198644198665%_))
                      (let ((_%e198649198668%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198644198665%_))))
                        (let ((_%hd198648198672%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198649198668%_)))
                              (_%tl198647198675%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198649198668%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198647198675%_))
                              (let ((_%e198652198678%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198647198675%_))))
                                (let ((_%hd198651198682%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198652198678%_)))
                                      (_%tl198650198685%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198652198678%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198650198685%_))
                                      (let ((_%e198655198688%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198650198685%_))))
                                        (let ((_%hd198654198692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198655198688%_)))
                                              (_%tl198653198695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198655198688%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198653198695%_))
                                              ((lambda (_%L198698%_
                                                        _%L198700%_)
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
                                                   (cons _%L198700%_ '()))
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
                 (cons _%L198698%_ '())))
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
                                   (cons _%L198700%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198654198692%_
                                               _%hd198651198682%_)
                                              (_%g198643198661%_
                                               _%g198644198665%_))))
                                      (_%g198643198661%_ _%g198644198665%_))))
                              (_%g198643198661%_ _%g198644198665%_))))
                      (_%g198643198661%_ _%g198644198665%_)))))
          (_%g198642198716%_ _%$stx198639%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx198720%_)
        (let* ((_%__stx202186202187%_ _%$stx198720%_)
               (_%g198725198750%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202186202187%_)))))
          (let ((_%__kont202189202190%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202191202192%_
                 (lambda (_%L198797%_ _%L198799%_ _%L198800%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L198800%_ (cons _%L198799%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L198797%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202186202187%_))
                (let ((_%e198729198826%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202186202187%_))))
                  (let ((_%tl198727198833%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198729198826%_)))
                        (_%hd198728198830%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198729198826%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198727198833%_))
                        (_%__kont202189202190%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198727198833%_))
                            (let ((_%e198738198767%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198727198833%_))))
                              (let ((_%tl198736198774%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198738198767%_)))
                                    (_%hd198737198771%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198738198767%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd198737198771%_))
                                    (let ((_%e198741198777%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd198737198771%_))))
                                      (let ((_%tl198739198784%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198741198777%_)))
                                            (_%hd198740198781%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198741198777%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198739198784%_))
                                            (let ((_%e198744198787%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198739198784%_))))
                                              (let ((_%tl198742198794%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198744198787%_)))
                                                    (_%hd198743198791%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198744198787%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl198742198794%_))
                                                    (_%__kont202191202192%_
                                                     _%tl198736198774%_
                                                     _%hd198743198791%_
                                                     _%hd198740198781%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198725198750%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g198725198750%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198725198750%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198725198750%_))))))
                (let () (declare (not safe)) (_%g198725198750%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx198844%_)
        (let* ((_%__stx202230202231%_ _%$stx198844%_)
               (_%g198849198880%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202230202231%_)))))
          (let ((_%__kont202233202234%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202235202236%_
                 (lambda (_%L198947%_ _%L198949%_ _%L198950%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L198950%_
                                           (let ((__tmp202707
                                                  (lambda (_%g198970198973%_
                                                           _%g198971198976%_)
                                                    (cons _%g198970198973%_
                                                          _%g198971198976%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp202707
                                              '()
                                              _%L198949%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L198947%_)
                                     '()))))))
            (let ((_%__match202273202274%_
                   (lambda (_%e198859198887%_
                            _%hd198858198891%_
                            _%tl198857198894%_
                            _%e198862198897%_
                            _%hd198861198901%_
                            _%tl198860198904%_
                            _%e198865198907%_
                            _%hd198864198911%_
                            _%tl198863198914%_
                            _%__splice202237202238%_
                            _%target198866198917%_
                            _%tl198868198920%_)
                     (letrec ((_%loop198869198923%_
                               (lambda (_%hd198867198927%_ _%sig198873198930%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd198867198927%_))
                                     (let ((_%e198870198933%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd198867198927%_))))
                                       (let ((_%lp-tl198872198940%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198870198933%_)))
                                             (_%lp-hd198871198937%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198870198933%_))))
                                         (_%loop198869198923%_
                                          _%lp-tl198872198940%_
                                          (cons _%lp-hd198871198937%_
                                                _%sig198873198930%_))))
                                     (let ((_%sig198874198943%_
                                            (reverse _%sig198873198930%_)))
                                       (_%__kont202235202236%_
                                        _%tl198860198904%_
                                        _%sig198874198943%_
                                        _%hd198864198911%_))))))
                       (_%loop198869198923%_ _%target198866198917%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202230202231%_))
                  (let ((_%e198853198986%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202230202231%_))))
                    (let ((_%tl198851198993%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198853198986%_)))
                          (_%hd198852198990%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198853198986%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198851198993%_))
                          (_%__kont202233202234%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198851198993%_))
                              (let ((_%e198862198897%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198851198993%_))))
                                (let ((_%tl198860198904%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198862198897%_)))
                                      (_%hd198861198901%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198862198897%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198861198901%_))
                                      (let ((_%e198865198907%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198861198901%_))))
                                        (let ((_%tl198863198914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198865198907%_)))
                                              (_%hd198864198911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198865198907%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198863198914%_))
                                              (let ((_%__splice202237202238%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198863198914%_
                                                        '0))))
                                                (let ((_%tl198868198920%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202237202238%_
                                                          '1)))
                                                      (_%target198866198917%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202237202238%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198868198920%_))
                                                      (_%__match202273202274%_
                                                       _%e198853198986%_
                                                       _%hd198852198990%_
                                                       _%tl198851198993%_
                                                       _%e198862198897%_
                                                       _%hd198861198901%_
                                                       _%tl198860198904%_
                                                       _%e198865198907%_
                                                       _%hd198864198911%_
                                                       _%tl198863198914%_
                                                       _%__splice202237202238%_
                                                       _%target198866198917%_
                                                       _%tl198868198920%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198849198880%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198849198880%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198849198880%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198849198880%_))))))
                  (let () (declare (not safe)) (_%g198849198880%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx199005%_)
        (let* ((_%__stx202276202277%_ _%$stx199005%_)
               (_%g199010199057%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202276202277%_)))))
          (let ((_%__kont202279202280%_
                 (lambda (_%L199219%_ _%L199221%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L199221%_
                               (let ((__tmp202708
                                      (lambda (_%g199241199244%_
                                               _%g199242199247%_)
                                        (cons _%g199241199244%_
                                              _%g199242199247%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202708 '() _%L199219%_))))))
                (_%__kont202283202284%_
                 (lambda (_%L199114%_ _%L199116%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L199116%_
                               (let ((__tmp202709
                                      (lambda (_%g199133199136%_
                                               _%g199134199139%_)
                                        (cons _%g199133199136%_
                                              _%g199134199139%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202709 '() _%L199114%_)))))))
            (let* ((_%__match202343202344%_
                    (lambda (_%e199039199064%_
                             _%hd199038199068%_
                             _%tl199037199071%_
                             _%e199042199074%_
                             _%hd199041199078%_
                             _%tl199040199081%_
                             _%__splice202285202286%_
                             _%target199043199084%_
                             _%tl199045199087%_)
                      (letrec ((_%loop199046199090%_
                                (lambda (_%hd199044199094%_
                                         _%sig199050199097%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199044199094%_))
                                      (let ((_%e199047199100%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199044199094%_))))
                                        (let ((_%lp-tl199049199107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199047199100%_)))
                                              (_%lp-hd199048199104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199047199100%_))))
                                          (_%loop199046199090%_
                                           _%lp-tl199049199107%_
                                           (cons _%lp-hd199048199104%_
                                                 _%sig199050199097%_))))
                                      (let ((_%sig199051199110%_
                                             (reverse _%sig199050199097%_)))
                                        (_%__kont202283202284%_
                                         _%sig199051199110%_
                                         _%hd199041199078%_))))))
                        (_%loop199046199090%_ _%target199043199084%_ '()))))
                   (_%__match202335202336%_
                    (lambda (_%e199039199064%_
                             _%hd199038199068%_
                             _%tl199037199071%_
                             _%e199042199074%_
                             _%hd199041199078%_
                             _%tl199040199081%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl199040199081%_))
                          (let ((_%__splice202285202286%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl199040199081%_
                                    '0))))
                            (let ((_%tl199045199087%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202285202286%_
                                      '1)))
                                  (_%target199043199084%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202285202286%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199045199087%_))
                                  (_%__match202343202344%_
                                   _%e199039199064%_
                                   _%hd199038199068%_
                                   _%tl199037199071%_
                                   _%e199042199074%_
                                   _%hd199041199078%_
                                   _%tl199040199081%_
                                   _%__splice202285202286%_
                                   _%target199043199084%_
                                   _%tl199045199087%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g199010199057%_)))))
                          (let () (declare (not safe)) (_%g199010199057%_)))))
                   (_%__match202323202324%_
                    (lambda (_%e199016199149%_
                             _%hd199015199153%_
                             _%tl199014199156%_
                             _%e199019199159%_
                             _%hd199018199163%_
                             _%tl199017199166%_
                             _%e199022199169%_
                             _%hd199021199173%_
                             _%tl199020199176%_
                             _%e199025199179%_
                             _%hd199024199183%_
                             _%tl199023199186%_
                             _%__splice202281202282%_
                             _%target199026199189%_
                             _%tl199028199192%_)
                      (letrec ((_%loop199029199195%_
                                (lambda (_%hd199027199199%_
                                         _%sig199033199202%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199027199199%_))
                                      (let ((_%e199030199205%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199027199199%_))))
                                        (let ((_%lp-tl199032199212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199030199205%_)))
                                              (_%lp-hd199031199209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199030199205%_))))
                                          (_%loop199029199195%_
                                           _%lp-tl199032199212%_
                                           (cons _%lp-hd199031199209%_
                                                 _%sig199033199202%_))))
                                      (let ((_%sig199034199215%_
                                             (reverse _%sig199033199202%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199020199176%_))
                                            (_%__kont202279202280%_
                                             _%sig199034199215%_
                                             _%hd199018199163%_)
                                            (_%__match202335202336%_
                                             _%e199016199149%_
                                             _%hd199015199153%_
                                             _%tl199014199156%_
                                             _%e199019199159%_
                                             _%hd199018199163%_
                                             _%tl199017199166%_)))))))
                        (_%loop199029199195%_ _%target199026199189%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202276202277%_))
                  (let ((_%e199016199149%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202276202277%_))))
                    (let ((_%tl199014199156%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199016199149%_)))
                          (_%hd199015199153%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199016199149%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199014199156%_))
                          (let ((_%e199019199159%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199014199156%_))))
                            (let ((_%tl199017199166%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199019199159%_)))
                                  (_%hd199018199163%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199019199159%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199017199166%_))
                                  (let ((_%e199022199169%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199017199166%_))))
                                    (let ((_%tl199020199176%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199022199169%_)))
                                          (_%hd199021199173%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199022199169%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd199021199173%_))
                                          (let ((_%e199025199179%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd199021199173%_))))
                                            (let ((_%tl199023199186%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199025199179%_)))
                                                  (_%hd199024199183%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199025199179%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd199024199183%_))
                                                  (if (let ((__tmp202710
                                                             |gxc[1]#_g202711_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp202710
                                                         _%hd199024199183%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl199023199186%_))
                                                          (let ((_%__splice202281202282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl199023199186%_ '0))))
                    (let ((_%tl199028199192%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202281202282%_ '1)))
                          (_%target199026199189%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202281202282%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199028199192%_))
                          (_%__match202323202324%_
                           _%e199016199149%_
                           _%hd199015199153%_
                           _%tl199014199156%_
                           _%e199019199159%_
                           _%hd199018199163%_
                           _%tl199017199166%_
                           _%e199022199169%_
                           _%hd199021199173%_
                           _%tl199020199176%_
                           _%e199025199179%_
                           _%hd199024199183%_
                           _%tl199023199186%_
                           _%__splice202281202282%_
                           _%target199026199189%_
                           _%tl199028199192%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl199017199166%_))
                              (let ((_%__splice202285202286%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl199017199166%_
                                        '0))))
                                (let ((_%tl199045199087%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202285202286%_
                                          '1)))
                                      (_%target199043199084%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202285202286%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199045199087%_))
                                      (_%__match202343202344%_
                                       _%e199016199149%_
                                       _%hd199015199153%_
                                       _%tl199014199156%_
                                       _%e199019199159%_
                                       _%hd199018199163%_
                                       _%tl199017199166%_
                                       _%__splice202285202286%_
                                       _%target199043199084%_
                                       _%tl199045199087%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g199010199057%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199010199057%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl199017199166%_))
                      (let ((_%__splice202285202286%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl199017199166%_
                                '0))))
                        (let ((_%tl199045199087%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202285202286%_ '1)))
                              (_%target199043199084%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202285202286%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199045199087%_))
                              (_%__match202343202344%_
                               _%e199016199149%_
                               _%hd199015199153%_
                               _%tl199014199156%_
                               _%e199019199159%_
                               _%hd199018199163%_
                               _%tl199017199166%_
                               _%__splice202285202286%_
                               _%target199043199084%_
                               _%tl199045199087%_)
                              (let ()
                                (declare (not safe))
                                (_%g199010199057%_)))))
                      (let () (declare (not safe)) (_%g199010199057%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl199017199166%_))
                  (let ((_%__splice202285202286%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl199017199166%_ '0))))
                    (let ((_%tl199045199087%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202285202286%_ '1)))
                          (_%target199043199084%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202285202286%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199045199087%_))
                          (_%__match202343202344%_
                           _%e199016199149%_
                           _%hd199015199153%_
                           _%tl199014199156%_
                           _%e199019199159%_
                           _%hd199018199163%_
                           _%tl199017199166%_
                           _%__splice202285202286%_
                           _%target199043199084%_
                           _%tl199045199087%_)
                          (let () (declare (not safe)) (_%g199010199057%_)))))
                  (let () (declare (not safe)) (_%g199010199057%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl199017199166%_))
                                                      (let ((_%__splice202285202286%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl199017199166%_ '0))))
                (let ((_%tl199045199087%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202285202286%_ '1)))
                      (_%target199043199084%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202285202286%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199045199087%_))
                      (_%__match202343202344%_
                       _%e199016199149%_
                       _%hd199015199153%_
                       _%tl199014199156%_
                       _%e199019199159%_
                       _%hd199018199163%_
                       _%tl199017199166%_
                       _%__splice202285202286%_
                       _%target199043199084%_
                       _%tl199045199087%_)
                      (let () (declare (not safe)) (_%g199010199057%_)))))
              (let () (declare (not safe)) (_%g199010199057%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl199017199166%_))
                                              (let ((_%__splice202285202286%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl199017199166%_
                                                        '0))))
                                                (let ((_%tl199045199087%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202285202286%_
                                                          '1)))
                                                      (_%target199043199084%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202285202286%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199045199087%_))
                                                      (_%__match202343202344%_
                                                       _%e199016199149%_
                                                       _%hd199015199153%_
                                                       _%tl199014199156%_
                                                       _%e199019199159%_
                                                       _%hd199018199163%_
                                                       _%tl199017199166%_
                                                       _%__splice202285202286%_
                                                       _%target199043199084%_
                                                       _%tl199045199087%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g199010199057%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199010199057%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199017199166%_))
                                      (let ((_%__splice202285202286%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199017199166%_
                                                '0))))
                                        (let ((_%tl199045199087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202285202286%_
                                                  '1)))
                                              (_%target199043199084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202285202286%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199045199087%_))
                                              (_%__match202343202344%_
                                               _%e199016199149%_
                                               _%hd199015199153%_
                                               _%tl199014199156%_
                                               _%e199019199159%_
                                               _%hd199018199163%_
                                               _%tl199017199166%_
                                               _%__splice202285202286%_
                                               _%target199043199084%_
                                               _%tl199045199087%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g199010199057%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199010199057%_))))))
                          (let () (declare (not safe)) (_%g199010199057%_)))))
                  (let () (declare (not safe)) (_%g199010199057%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx200335%_ _%id200337%_)
        (let ((_%proc200341%_
               (let ((__tmp202712
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200337%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202712))))
          (if (let () (declare (not safe)) (procedure? _%proc200341%_))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx200335%_
                 _%id200337%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx200326%_ _%id200328%_)
        (let ((_%klass200332%_
               (let ((__tmp202713
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200328%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202713))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass200332%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx200326%_
                 _%id200328%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx199576%_ _%proc199578%_ _%sig199579%_)
        (letrec ((_%signature-arity199581%_
                  (lambda (_%args200258%_)
                    (let _%loop200261%_ ((_%rest200264%_ _%args200258%_)
                                         (_%count200266%_ '0))
                      (let* ((_%rest200267200278%_ _%rest200264%_)
                             (_%E200271200284%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest200267200278%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K200274200315%_
                               (lambda (_%rest200312%_)
                                 (let ((__tmp202714
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%count200266%_ '1))))
                                   (declare (not safe))
                                   (_%loop200261%_
                                    _%rest200312%_
                                    __tmp202714))))
                              (_%K200273200304%_ (lambda () _%count200266%_))
                              (_%K200272200292%_
                               (lambda () (cons _%count200266%_ '()))))
                          (let ((_%try-match200269200308%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest200267200278%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K200273200304%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K200272200292%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest200267200278%_))
                                (let* ((_%tl200276200319%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest200267200278%_)))
                                       (_%rest200323%_ _%tl200276200319%_))
                                  (declare (not safe))
                                  (_%K200274200315%_ _%rest200323%_))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match200269200308%_)))))))))
                 (_%make-signature199583%_
                  (lambda (_%args200140%_
                           _%return200142%_
                           _%effect200143%_
                           _%unchecked200144%_)
                    (let ((__tmp202715
                           (lambda (_%g200145200147%_)
                             (let ()
                               (declare (not safe))
                               (|gxc[1]#verify-class!|
                                _%ctx199576%_
                                _%g200145200147%_)))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp202715 _%args200140%_))
                    (let ()
                      (declare (not safe))
                      (|gxc[1]#verify-class!| _%ctx199576%_ _%return200142%_))
                    (if _%unchecked200144%_
                        (let ()
                          (declare (not safe))
                          (|gxc[1]#verify-procedure!|
                           _%ctx199576%_
                           _%unchecked200144%_))
                        '#!void)
                    (let ((_%arity200151%_
                           (let ((__tmp202716
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-map1 gx#stx-e _%args200140%_))))
                             (declare (not safe))
                             (_%signature-arity199581%_ __tmp202716))))
                      (if _%effect200143%_
                          (let ((_%effect200154%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect200143%_))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (list? _%effect200154%_))
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect200154%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx199576%_
                                   _%proc199578%_
                                   _%effect200154%_))))
                          '#!void)
                      (cons _%arity200151%_
                            (cons (let* ((_%g200157200180%_
                                          (lambda (_%g200158200176%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g200158200176%_))))
                                         (_%g200156200254%_
                                          (lambda (_%g200158200184%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g200158200184%_))
                                                (let ((_%e200165200187%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g200158200184%_))))
                                                  (let ((_%hd200164200191%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200165200187%_)))
                                                        (_%tl200163200194%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200165200187%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200163200194%_))
                                                        (let ((_%e200168200197%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl200163200194%_))))
                  (let ((_%hd200167200201%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200168200197%_)))
                        (_%tl200166200204%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200168200197%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200166200204%_))
                        (let ((_%e200171200207%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200166200204%_))))
                          (let ((_%hd200170200211%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200171200207%_)))
                                (_%tl200169200214%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200171200207%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200169200214%_))
                                (let ((_%e200174200217%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200169200214%_))))
                                  (let ((_%hd200173200221%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200174200217%_)))
                                        (_%tl200172200224%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200174200217%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200172200224%_))
                                        ((lambda (_%L200227%_
                                                  _%L200229%_
                                                  _%L200230%_
                                                  _%L200231%_)
                                           (let ()
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
                             (cons _%L200231%_ '()))
                       (cons 'return:
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L200230%_ '()))
                                   (cons 'effect:
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L200229%_ '()))
                                               (cons 'unchecked:
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L200227%_ '()))
                   '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd200173200221%_
                                         _%hd200170200211%_
                                         _%hd200167200201%_
                                         _%hd200164200191%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g200157200180%_
                                           _%g200158200184%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200157200180%_ _%g200158200184%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g200157200180%_ _%g200158200184%_)))))
                (let ()
                  (declare (not safe))
                  (_%g200157200180%_ _%g200158200184%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200157200180%_
                                                   _%g200158200184%_)))))
                                         (__tmp202717
                                          (list _%args200140%_
                                                _%return200142%_
                                                _%effect200143%_
                                                _%unchecked200144%_)))
                                    (declare (not safe))
                                    (_%g200156200254%_ __tmp202717))
                                  '()))))))
          (let ()
            (declare (not safe))
            (|gxc[1]#verify-procedure!| _%ctx199576%_ _%proc199578%_))
          (let* ((_%__stx202354202355%_ _%sig199579%_)
                 (_%g199590199693%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx202354202355%_)))))
            (let ((_%__kont202357202358%_
                   (lambda (_%L200121%_ _%L200123%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature199583%_
                        _%L200123%_
                        _%L200121%_
                        '#f
                        '#f))))
                  (_%__kont202359202360%_
                   (lambda (_%L200072%_ _%L200074%_ _%L200075%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature199583%_
                        _%L200075%_
                        _%L200074%_
                        _%L200072%_
                        '#f))))
                  (_%__kont202361202362%_
                   (lambda (_%L199996%_ _%L199998%_ _%L199999%_)
                     (let ((__tmp202718
                            (let ((__tmp202719
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc199578%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp202719))))
                       (declare (not safe))
                       (_%make-signature199583%_
                        _%L199999%_
                        _%L199998%_
                        _%L199996%_
                        __tmp202718))))
                  (_%__kont202363202364%_
                   (lambda (_%L199902%_ _%L199904%_ _%L199905%_ _%L199906%_)
                     (let ((__tmp202720
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L199902%_))))
                       (declare (not safe))
                       (_%make-signature199583%_
                        _%L199906%_
                        _%L199905%_
                        '#f
                        __tmp202720))))
                  (_%__kont202365202366%_
                   (lambda (_%L199809%_ _%L199811%_)
                     (let ((__tmp202721
                            (let ((__tmp202722
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc199578%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp202722))))
                       (declare (not safe))
                       (_%make-signature199583%_
                        _%L199811%_
                        _%L199809%_
                        '#f
                        __tmp202721))))
                  (_%__kont202367202368%_
                   (lambda (_%L199744%_ _%L199746%_ _%L199747%_)
                     (let ((__tmp202723
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L199744%_))))
                       (declare (not safe))
                       (_%make-signature199583%_
                        _%L199747%_
                        _%L199746%_
                        '#f
                        __tmp202723)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202354202355%_))
                  (let ((_%e199596200101%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202354202355%_))))
                    (let ((_%tl199594200108%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199596200101%_)))
                          (_%hd199595200105%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199596200101%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199594200108%_))
                          (let ((_%e199599200111%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199594200108%_))))
                            (let ((_%tl199597200118%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199599200111%_)))
                                  (_%hd199598200115%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199599200111%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199597200118%_))
                                  (_%__kont202357202358%_
                                   _%hd199598200115%_
                                   _%hd199595200105%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199597200118%_))
                                      (let ((_%e199611200048%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199597200118%_))))
                                        (let ((_%tl199609200055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199611200048%_)))
                                              (_%hd199610200052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199611200048%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd199610200052%_))
                                              (let ((_%e199612200058%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd199610200052%_))))
                                                (if (equal? _%e199612200058%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199609200055%_))
                                                        (let ((_%e199615200062%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl199609200055%_))))
                  (let ((_%tl199613200069%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199615200062%_)))
                        (_%hd199614200066%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199615200062%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl199613200069%_))
                        (_%__kont202359202360%_
                         _%hd199614200066%_
                         _%hd199598200115%_
                         _%hd199595200105%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199613200069%_))
                            (let ((_%e199634199982%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl199613200069%_))))
                              (let ((_%tl199632199989%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199634199982%_)))
                                    (_%hd199633199986%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199634199982%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd199633199986%_))
                                    (let ((_%e199635199992%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199633199986%_))))
                                      (if (equal? _%e199635199992%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199632199989%_))
                                              (_%__kont202361202362%_
                                               _%hd199614200066%_
                                               _%hd199598200115%_
                                               _%hd199595200105%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199632199989%_))
                                                  (let ((_%e199659199892%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199632199989%_))))
                                                    (let ((_%tl199657199899%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199659199892%_)))
                                                          (_%hd199658199896%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199659199892%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199657199899%_))
                                                          (_%__kont202363202364%_
                                                           _%hd199658199896%_
                                                           _%hd199614200066%_
                                                           _%hd199598200115%_
                                                           _%hd199595200105%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g199590199693%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199590199693%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199590199693%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199590199693%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g199590199693%_))))))
                (let () (declare (not safe)) (_%g199590199693%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e199612200058%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl199609200055%_))
                                                            (_%__kont202365202366%_
                                                             _%hd199598200115%_
                                                             _%hd199595200105%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl199609200055%_))
                        (let ((_%e199687199734%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199609200055%_))))
                          (let ((_%tl199685199741%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199687199734%_)))
                                (_%hd199686199738%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199687199734%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199685199741%_))
                                (_%__kont202367202368%_
                                 _%hd199686199738%_
                                 _%hd199598200115%_
                                 _%hd199595200105%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g199590199693%_)))))
                        (let () (declare (not safe)) (_%g199590199693%_))))
                (let () (declare (not safe)) (_%g199590199693%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199590199693%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199590199693%_))))))
                          (let () (declare (not safe)) (_%g199590199693%_)))))
                  (let () (declare (not safe)) (_%g199590199693%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig199256%_)
        (let* ((_%g199259199325%_
                (lambda (_%g199260199321%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199260199321%_))))
               (_%g199258199572%_
                (lambda (_%g199260199329%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199260199329%_))
                      (let ((_%e199267199332%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199260199329%_))))
                        (let ((_%hd199266199336%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199267199332%_)))
                              (_%tl199265199339%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199267199332%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199265199339%_))
                              (let ((_%e199270199342%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199265199339%_))))
                                (let ((_%hd199269199346%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199270199342%_)))
                                      (_%tl199268199349%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199270199342%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd199269199346%_))
                                      (let ((_%e199271199352%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd199269199346%_))))
                                        (if (equal? _%e199271199352%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199268199349%_))
                                                (let ((_%e199274199356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl199268199349%_))))
                                                  (let ((_%hd199273199360%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199274199356%_)))
                                                        (_%tl199272199363%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199274199356%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199273199360%_))
                                                        (let ((_%e199277199366%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd199273199360%_))))
                  (let ((_%hd199276199370%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199277199366%_)))
                        (_%tl199275199373%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199277199366%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd199276199370%_))
                        (if (let ((__tmp202724 |gxc[1]#_g202725_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp202724
                               _%hd199276199370%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199275199373%_))
                                (let ((_%e199280199376%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199275199373%_))))
                                  (let ((_%hd199279199380%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199280199376%_)))
                                        (_%tl199278199383%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199280199376%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199278199383%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199272199363%_))
                                            (let ((_%e199283199386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl199272199363%_))))
                                              (let ((_%hd199282199390%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199283199386%_)))
                                                    (_%tl199281199393%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199283199386%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd199282199390%_))
                                                    (let ((_%e199284199396%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd199282199390%_))))
                                                      (if (equal? _%e199284199396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl199281199393%_))
                      (let ((_%e199287199400%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl199281199393%_))))
                        (let ((_%hd199286199404%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199287199400%_)))
                              (_%tl199285199407%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199287199400%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199286199404%_))
                              (let ((_%e199290199410%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd199286199404%_))))
                                (let ((_%hd199289199414%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199290199410%_)))
                                      (_%tl199288199417%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199290199410%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199289199414%_))
                                      (if (let ((__tmp202726
                                                 |gxc[1]#_g202727_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp202726
                                             _%hd199289199414%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199288199417%_))
                                              (let ((_%e199293199420%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl199288199417%_))))
                                                (let ((_%hd199292199424%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199293199420%_)))
                                                      (_%tl199291199427%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199293199420%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199291199427%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199285199407%_))
                                                          (let ((_%e199296199430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl199285199407%_))))
                    (let ((_%hd199295199434%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199296199430%_)))
                          (_%tl199294199437%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199296199430%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd199295199434%_))
                          (let ((_%e199297199440%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199295199434%_))))
                            (if (equal? _%e199297199440%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199294199437%_))
                                    (let ((_%e199300199444%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl199294199437%_))))
                                      (let ((_%hd199299199448%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199300199444%_)))
                                            (_%tl199298199451%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199300199444%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199299199448%_))
                                            (let ((_%e199303199454%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd199299199448%_))))
                                              (let ((_%hd199302199458%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199303199454%_)))
                                                    (_%tl199301199461%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199303199454%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199302199458%_))
                                                    (if (let ((__tmp202728
                                                               |gxc[1]#_g202729_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp202728
                                                           _%hd199302199458%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199301199461%_))
                                                            (let ((_%e199306199464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl199301199461%_))))
                      (let ((_%hd199305199468%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199306199464%_)))
                            (_%tl199304199471%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199306199464%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199304199471%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199298199451%_))
                                (let ((_%e199309199474%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199298199451%_))))
                                  (let ((_%hd199308199478%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199309199474%_)))
                                        (_%tl199307199481%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199309199474%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd199308199478%_))
                                        (let ((_%e199310199484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199308199478%_))))
                                          (if (equal? _%e199310199484%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199307199481%_))
                                                  (let ((_%e199313199488%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199307199481%_))))
                                                    (let ((_%hd199312199492%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199313199488%_)))
                                                          (_%tl199311199495%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199313199488%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199312199492%_))
                                                          (let ((_%e199316199498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd199312199492%_))))
                    (let ((_%hd199315199502%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199316199498%_)))
                          (_%tl199314199505%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199316199498%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd199315199502%_))
                          (if (let ((__tmp202730 |gxc[1]#_g202731_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp202730
                                 _%hd199315199502%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199314199505%_))
                                  (let ((_%e199319199508%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199314199505%_))))
                                    (let ((_%hd199318199512%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199319199508%_)))
                                          (_%tl199317199515%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199319199508%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199317199515%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199311199495%_))
                                              ((lambda (_%L199518%_
                                                        _%L199520%_
                                                        _%L199521%_
                                                        _%L199522%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L199518%_))
                                                     (cons _%L199518%_
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
                                                 (cons _%L199521%_ '()))
                                           '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#f))
                                               _%hd199318199512%_
                                               _%hd199305199468%_
                                               _%hd199292199424%_
                                               _%hd199279199380%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g199259199325%_
                                                 _%g199260199329%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199259199325%_
                                             _%g199260199329%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199259199325%_ _%g199260199329%_)))
                              (let ()
                                (declare (not safe))
                                (_%g199259199325%_ _%g199260199329%_)))
                          (let ()
                            (declare (not safe))
                            (_%g199259199325%_ _%g199260199329%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g199259199325%_ _%g199260199329%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199259199325%_
                                                     _%g199260199329%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199259199325%_
                                                 _%g199260199329%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199259199325%_
                                           _%g199260199329%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199259199325%_ _%g199260199329%_)))
                            (let ()
                              (declare (not safe))
                              (_%g199259199325%_ _%g199260199329%_)))))
                    (let ()
                      (declare (not safe))
                      (_%g199259199325%_ _%g199260199329%_)))
                (let ()
                  (declare (not safe))
                  (_%g199259199325%_ _%g199260199329%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199259199325%_
                                                       _%g199260199329%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199259199325%_
                                               _%g199260199329%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199259199325%_ _%g199260199329%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g199259199325%_ _%g199260199329%_))))
                          (let ()
                            (declare (not safe))
                            (_%g199259199325%_ _%g199260199329%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g199259199325%_ _%g199260199329%_)))
              (let ()
                (declare (not safe))
                (_%g199259199325%_ _%g199260199329%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199259199325%_
                                                 _%g199260199329%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199259199325%_
                                             _%g199260199329%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199259199325%_
                                         _%g199260199329%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199259199325%_ _%g199260199329%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g199259199325%_ _%g199260199329%_)))
                  (let ()
                    (declare (not safe))
                    (_%g199259199325%_ _%g199260199329%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199259199325%_
                                                       _%g199260199329%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199259199325%_
                                               _%g199260199329%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199259199325%_
                                           _%g199260199329%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199259199325%_ _%g199260199329%_)))
                            (let ()
                              (declare (not safe))
                              (_%g199259199325%_ _%g199260199329%_)))
                        (let ()
                          (declare (not safe))
                          (_%g199259199325%_ _%g199260199329%_)))))
                (let ()
                  (declare (not safe))
                  (_%g199259199325%_ _%g199260199329%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199259199325%_
                                                   _%g199260199329%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199259199325%_
                                               _%g199260199329%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199259199325%_
                                         _%g199260199329%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199259199325%_ _%g199260199329%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g199259199325%_ _%g199260199329%_))))))
          (declare (not safe))
          (_%g199258199572%_ _%sig199256%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx200344%_)
        (let* ((_%g200347200365%_
                (lambda (_%g200348200361%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200348200361%_))))
               (_%g200346200420%_
                (lambda (_%g200348200369%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200348200369%_))
                      (let ((_%e200353200372%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200348200369%_))))
                        (let ((_%hd200352200376%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200353200372%_)))
                              (_%tl200351200379%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200353200372%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200351200379%_))
                              (let ((_%e200356200382%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200351200379%_))))
                                (let ((_%hd200355200386%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200356200382%_)))
                                      (_%tl200354200389%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200356200382%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200354200389%_))
                                      (let ((_%e200359200392%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200354200389%_))))
                                        (let ((_%hd200358200396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200359200392%_)))
                                              (_%tl200357200399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200359200392%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200357200399%_))
                                              ((lambda (_%L200402%_
                                                        _%L200404%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200404%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200402%_)))
                                                     (begin
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-procedure!|
                                                          _%stx200344%_
                                                          _%L200404%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-class!|
                                                          _%stx200344%_
                                                          _%L200402%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L200404%_
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
                                                   (cons _%L200402%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200347200365%_
                                                      _%g200348200369%_)))
                                               _%hd200358200396%_
                                               _%hd200355200386%_)
                                              (_%g200347200365%_
                                               _%g200348200369%_))))
                                      (_%g200347200365%_ _%g200348200369%_))))
                              (_%g200347200365%_ _%g200348200369%_))))
                      (_%g200347200365%_ _%g200348200369%_)))))
          (_%g200346200420%_ _%stx200344%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx200424%_)
        (let* ((_%g200427200451%_
                (lambda (_%g200428200447%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200428200447%_))))
               (_%g200426200734%_
                (lambda (_%g200428200455%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200428200455%_))
                      (let ((_%e200433200458%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200428200455%_))))
                        (let ((_%hd200432200462%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200433200458%_)))
                              (_%tl200431200465%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200433200458%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200431200465%_))
                              (let ((_%e200436200468%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200431200465%_))))
                                (let ((_%hd200435200472%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200436200468%_)))
                                      (_%tl200434200475%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200436200468%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200434200475%_))
                                      (let ((_g202732_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200434200475%_
                                                '0))))
                                        (begin
                                          (let ((_g202733_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202732_)
                                                       (##vector-length
                                                        _g202732_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202733_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202733_)))
                                          (let ((_%target200437200478%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202732_ 0)))
                                                (_%tl200439200481%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202732_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200439200481%_))
                                                (letrec ((_%loop200440200484%_
                                                          (lambda (_%hd200438200488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature200444200491%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200438200488%_))
                        (let ((_%e200441200494%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200438200488%_))))
                          (let ((_%lp-hd200442200498%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200441200494%_)))
                                (_%lp-tl200443200501%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200441200494%_))))
                            (_%loop200440200484%_
                             _%lp-tl200443200501%_
                             (cons _%lp-hd200442200498%_
                                   _%signature200444200491%_))))
                        (let ((_%signature200445200504%_
                               (reverse _%signature200444200491%_)))
                          ((lambda (_%L200508%_ _%L200510%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200510%_))
                                 (let* ((_%g200528200543%_
                                         (lambda (_%g200529200539%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200529200539%_))))
                                        (_%g200527200722%_
                                         (lambda (_%g200529200547%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g200529200547%_))
                                               (let ((_%e200534200550%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g200529200547%_))))
                                                 (let ((_%hd200533200554%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200534200550%_)))
                                                       (_%tl200532200557%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200534200550%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200532200557%_))
                                                       (let ((_%e200537200560%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl200532200557%_))))
                 (let ((_%hd200536200564%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200537200560%_)))
                       (_%tl200535200567%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200537200560%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl200535200567%_))
                       ((lambda (_%L200570%_ _%L200572%_)
                          (let ()
                            (let* ((_%g200588200596%_
                                    (lambda (_%g200589200592%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g200589200592%_))))
                                   (_%g200587200718%_
                                    (lambda (_%g200589200600%_)
                                      ((lambda (_%L200603%_)
                                         (let ()
                                           (let* ((_%unchecked200616%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (|gxc[1]#signature->unchecked-signature|
                                                      _%L200570%_)))
                                                  (_%g200619200627%_
                                                   (lambda (_%g200620200623%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g200620200623%_))))
                                                  (_%g200618200650%_
                                                   (lambda (_%g200620200631%_)
                                                     ((lambda (_%L200634%_)
                                                        (let ()
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (cons _%L200603%_ (cons _%L200634%_ '())))))
              _%g200620200631%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g200618200650%_
                                              (if _%unchecked200616%_
                                                  (let* ((_%g200654200669%_
                                                          (lambda (_%g200655200665%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g200655200665%_))))
                                                         (_%g200653200714%_
                                                          (lambda (_%g200655200673%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g200655200673%_))
                        (let ((_%e200660200676%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%g200655200673%_))))
                          (let ((_%hd200659200680%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200660200676%_)))
                                (_%tl200658200683%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200660200676%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200658200683%_))
                                (let ((_%e200663200686%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200658200683%_))))
                                  (let ((_%hd200662200690%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200663200686%_)))
                                        (_%tl200661200693%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200663200686%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200661200693%_))
                                        ((lambda (_%L200696%_ _%L200698%_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type))
                                                   (cons _%L200698%_
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L200572%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons _%L200696%_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd200662200690%_
                                         _%hd200659200680%_)
                                        (_%g200654200669%_
                                         _%g200655200673%_))))
                                (_%g200654200669%_ _%g200655200673%_))))
                        (_%g200654200669%_ _%g200655200673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g200653200714%_
                                                     _%unchecked200616%_))
                                                  '(begin))))))
                                       _%g200589200600%_))))
                              (_%g200587200718%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'declare-type))
                                     (cons _%L200510%_
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!primitive-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200572%_ '()))
                     (cons '#f (cons 'signature: (cons _%L200570%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                        _%hd200536200564%_
                        _%hd200533200554%_)
                       (_%g200528200543%_ _%g200529200547%_))))
               (_%g200528200543%_ _%g200529200547%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200528200543%_
                                                _%g200529200547%_)))))
                                   (_%g200527200722%_
                                    (let ((__tmp202734
                                           (let ((__tmp202735
                                                  (lambda (_%g200725200728%_
                                                           _%g200726200731%_)
                                                    (cons _%g200725200728%_
                                                          _%g200726200731%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp202735
                                              '()
                                              _%L200508%_))))
                                      (declare (not safe))
                                      (|gxc[1]#parse-signature|
                                       _%stx200424%_
                                       _%L200510%_
                                       __tmp202734))))
                                 (_%g200427200451%_ _%g200428200455%_)))
                           _%signature200445200504%_
                           _%hd200435200472%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200440200484%_
                                                   _%target200437200478%_
                                                   '()))
                                                (_%g200427200451%_
                                                 _%g200428200455%_)))))
                                      (_%g200427200451%_ _%g200428200455%_))))
                              (_%g200427200451%_ _%g200428200455%_))))
                      (_%g200427200451%_ _%g200428200455%_)))))
          (_%g200426200734%_ _%stx200424%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx200739%_)
        (let* ((_%g200742200766%_
                (lambda (_%g200743200762%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200743200762%_))))
               (_%g200741201580%_
                (lambda (_%g200743200770%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200743200770%_))
                      (let ((_%e200748200773%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200743200770%_))))
                        (let ((_%hd200747200777%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200748200773%_)))
                              (_%tl200746200780%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200748200773%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200746200780%_))
                              (let ((_%e200751200783%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200746200780%_))))
                                (let ((_%hd200750200787%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200751200783%_)))
                                      (_%tl200749200790%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200751200783%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200749200790%_))
                                      (let ((_g202736_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200749200790%_
                                                '0))))
                                        (begin
                                          (let ((_g202737_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202736_)
                                                       (##vector-length
                                                        _g202736_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202737_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202737_)))
                                          (let ((_%target200752200793%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202736_ 0)))
                                                (_%tl200754200796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202736_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200754200796%_))
                                                (letrec ((_%loop200755200799%_
                                                          (lambda (_%hd200753200803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature200759200806%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200753200803%_))
                        (let ((_%e200756200809%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200753200803%_))))
                          (let ((_%lp-hd200757200813%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200756200809%_)))
                                (_%lp-tl200758200816%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200756200809%_))))
                            (_%loop200755200799%_
                             _%lp-tl200758200816%_
                             (cons _%lp-hd200757200813%_
                                   _%case-signature200759200806%_))))
                        (let ((_%case-signature200760200819%_
                               (reverse _%case-signature200759200806%_)))
                          ((lambda (_%L200823%_ _%L200825%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200825%_))
                                 (let* ((_%signatures200856%_
                                         (map (lambda (_%g200842200844%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (|gxc[1]#parse-signature|
                                                   _%stx200739%_
                                                   _%L200825%_
                                                   _%g200842200844%_)))
                                              (let ((__tmp202738
                                                     (lambda (_%g200847200850%_
                                                              _%g200848200853%_)
                                                       (cons _%g200847200850%_
                                                             _%g200848200853%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp202738
                                                 '()
                                                 _%L200823%_))))
                                        (_%g200859200885%_
                                         (lambda (_%g200860200881%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200860200881%_))))
                                        (_%g200858201576%_
                                         (lambda (_%g200860200889%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g200860200889%_))
                                               (let ((_g202739_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g200860200889%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g202740_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g202739_)
                        (##vector-length _g202739_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g202740_ 2)))
                 (error "Context expects 2 values" _g202740_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target200863200892%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202739_
                                                             0)))
                                                         (_%tl200865200895%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202739_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200865200895%_))
                                                         (letrec ((_%loop200866200898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd200864200902%_
                                    _%sig200870200905%_
                                    _%arity200871200907%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd200864200902%_))
                                 (let ((_%e200867200910%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd200864200902%_))))
                                   (let ((_%lp-hd200868200914%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200867200910%_)))
                                         (_%lp-tl200869200917%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200867200910%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd200868200914%_))
                                         (let ((_%e200876200920%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd200868200914%_))))
                                           (let ((_%hd200875200924%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200876200920%_)))
                                                 (_%tl200874200927%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200876200920%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200874200927%_))
                                                 (let ((_%e200879200930%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200874200927%_))))
                                                   (let ((_%hd200878200934%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200879200930%_)))
                                                         (_%tl200877200937%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200879200930%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200877200937%_))
                                                         (_%loop200866200898%_
                                                          _%lp-tl200869200917%_
                                                          (cons _%hd200878200934%_
                                                                _%sig200870200905%_)
                                                          (cons _%hd200875200924%_
                                                                _%arity200871200907%_))
                                                         (_%g200859200885%_
                                                          _%g200860200889%_))))
                                                 (_%g200859200885%_
                                                  _%g200860200889%_))))
                                         (_%g200859200885%_
                                          _%g200860200889%_))))
                                 (let ((_%sig200872200940%_
                                        (reverse _%sig200870200905%_))
                                       (_%arity200873200943%_
                                        (reverse _%arity200871200907%_)))
                                   ((lambda (_%L200946%_ _%L200948%_)
                                      (let ()
                                        (let* ((_%g200965200973%_
                                                (lambda (_%g200966200969%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g200966200969%_))))
                                               (_%g200964201561%_
                                                (lambda (_%g200966200977%_)
                                                  ((lambda (_%L200980%_)
                                                     (let ()
                                                       (let* ((_%g200993201001%_
                                                               (lambda (_%g200994200997%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g200994200997%_))))
                      (_%g200992201023%_
                       (lambda (_%g200994201005%_)
                         ((lambda (_%L201008%_)
                            (let ()
                              (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'begin))
                                    (cons _%L200980%_
                                          (cons _%L201008%_ '())))))
                          _%g200994201005%_))))
                 (_%g200992201023%_
                  (let ((_g202741_
                         (let _%loop201027%_ ((_%rest201030%_
                                               _%signatures200856%_)
                                              (_%unchecked-proc201032%_ '#f)
                                              (_%unchecked-clauses201033%_
                                               '()))
                           (let* ((_%rest201034201042%_ _%rest201030%_)
                                  (_%else201036201054%_
                                   (lambda ()
                                     (values _%unchecked-proc201032%_
                                             (reverse!
                                              _%unchecked-clauses201033%_))))
                                  (_%K201038201426%_
                                   (lambda (_%rest201058%_ _%hd201060%_)
                                     (let* ((_%g201062201135%_
                                             (lambda (_%g201063201131%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g201063201131%_))))
                                            (_%g201061201422%_
                                             (lambda (_%g201063201139%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g201063201139%_))
                                                   (let ((_%e201071201142%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%g201063201139%_))))
                                                     (let ((_%hd201070201146%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201071201142%_)))
                                                           (_%tl201069201149%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201071201142%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl201069201149%_))
                                                           (let ((_%e201074201152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl201069201149%_))))
                     (let ((_%hd201073201156%_
                            (let ()
                              (declare (not safe))
                              (##car _%e201074201152%_)))
                           (_%tl201072201159%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e201074201152%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd201073201156%_))
                           (let ((_%e201077201162%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%hd201073201156%_))))
                             (let ((_%hd201076201166%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e201077201162%_)))
                                   (_%tl201075201169%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e201077201162%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl201075201169%_))
                                   (let ((_%e201080201172%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl201075201169%_))))
                                     (let ((_%hd201079201176%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201080201172%_)))
                                           (_%tl201078201179%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201080201172%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-datum?
                                              _%hd201079201176%_))
                                           (let ((_%e201081201182%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd201079201176%_))))
                                             (if (equal? _%e201081201182%_
                                                         'arguments:)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl201078201179%_))
                                                     (let ((_%e201084201186%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%tl201078201179%_))))
                                                       (let ((_%hd201083201190%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e201084201186%_)))
                     (_%tl201082201193%_
                      (let () (declare (not safe)) (##cdr _%e201084201186%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd201083201190%_))
                     (let ((_%e201087201196%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%hd201083201190%_))))
                       (let ((_%hd201086201200%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201087201196%_)))
                             (_%tl201085201203%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201087201196%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%hd201086201200%_))
                             (if (let ((__tmp202743 |gxc[1]#_g202744_|))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    __tmp202743
                                    _%hd201086201200%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201085201203%_))
                                     (let ((_%e201090201206%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201085201203%_))))
                                       (let ((_%hd201089201210%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201090201206%_)))
                                             (_%tl201088201213%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201090201206%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl201088201213%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl201082201193%_))
                                                 (let ((_%e201093201216%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl201082201193%_))))
                                                   (let ((_%hd201092201220%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201093201216%_)))
                                                         (_%tl201091201223%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201093201216%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-datum?
                                                            _%hd201092201220%_))
                                                         (let ((_%e201094201226%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd201092201220%_))))
                   (if (equal? _%e201094201226%_ 'return:)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl201091201223%_))
                           (let ((_%e201097201230%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%tl201091201223%_))))
                             (let ((_%hd201096201234%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e201097201230%_)))
                                   (_%tl201095201237%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e201097201230%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd201096201234%_))
                                   (let ((_%e201100201240%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%hd201096201234%_))))
                                     (let ((_%hd201099201244%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201100201240%_)))
                                           (_%tl201098201247%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201100201240%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd201099201244%_))
                                           (if (let ((__tmp202745
                                                      |gxc[1]#_g202746_|))
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  __tmp202745
                                                  _%hd201099201244%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl201098201247%_))
                                                   (let ((_%e201103201250%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl201098201247%_))))
                                                     (let ((_%hd201102201254%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201103201250%_)))
                                                           (_%tl201101201257%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201103201250%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl201101201257%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl201095201237%_))
                       (let ((_%e201106201260%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl201095201237%_))))
                         (let ((_%hd201105201264%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201106201260%_)))
                               (_%tl201104201267%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201106201260%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd201105201264%_))
                               (let ((_%e201107201270%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd201105201264%_))))
                                 (if (equal? _%e201107201270%_ 'effect:)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl201104201267%_))
                                         (let ((_%e201110201274%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%tl201104201267%_))))
                                           (let ((_%hd201109201278%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201110201274%_)))
                                                 (_%tl201108201281%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201110201274%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd201109201278%_))
                                                 (let ((_%e201113201284%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%hd201109201278%_))))
                                                   (let ((_%hd201112201288%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201113201284%_)))
                                                         (_%tl201111201291%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201113201284%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd201112201288%_))
                                                         (if (let ((__tmp202747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |gxc[1]#_g202748_|))
                       (declare (not safe))
                       (gx#free-identifier=? __tmp202747 _%hd201112201288%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl201111201291%_))
                         (let ((_%e201116201294%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl201111201291%_))))
                           (let ((_%hd201115201298%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e201116201294%_)))
                                 (_%tl201114201301%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e201116201294%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl201114201301%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201108201281%_))
                                     (let ((_%e201119201304%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201108201281%_))))
                                       (let ((_%hd201118201308%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201119201304%_)))
                                             (_%tl201117201311%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201119201304%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%hd201118201308%_))
                                             (let ((_%e201120201314%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd201118201308%_))))
                                               (if (equal? _%e201120201314%_
                                                           'unchecked:)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl201117201311%_))
                                                       (let ((_%e201123201318%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl201117201311%_))))
                 (let ((_%hd201122201322%_
                        (let ()
                          (declare (not safe))
                          (##car _%e201123201318%_)))
                       (_%tl201121201325%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e201123201318%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd201122201322%_))
                       (let ((_%e201126201328%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd201122201322%_))))
                         (let ((_%hd201125201332%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201126201328%_)))
                               (_%tl201124201335%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201126201328%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%hd201125201332%_))
                               (if (let ((__tmp202749 |gxc[1]#_g202750_|))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      __tmp202749
                                      _%hd201125201332%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl201124201335%_))
                                       (let ((_%e201129201338%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#syntax-e
                                                 _%tl201124201335%_))))
                                         (let ((_%hd201128201342%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e201129201338%_)))
                                               (_%tl201127201345%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e201129201338%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl201127201345%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl201121201325%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl201072201159%_))
                                                       ((lambda (_%L201348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L201350%_
                         _%L201351%_
                         _%L201352%_
                         _%L201353%_)
                  (let ((_%clause201414%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0
                                  '#f
                                  'make-!primitive-lambda))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201353%_ '()))
                                     (cons '#f
                                           (cons 'signature:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L201351%_ '()))
                                 '())))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (_%unchecked201416%_
                         (let () (declare (not safe)) (gx#stx-e _%L201348%_))))
                    (_%loop201027%_
                     _%rest201058%_
                     (let ((_%$e201418%_ _%unchecked201416%_))
                       (if _%$e201418%_ _%$e201418%_ _%unchecked-proc201032%_))
                     (cons _%clause201414%_ _%unchecked-clauses201033%_))))
                _%hd201128201342%_
                _%hd201115201298%_
                _%hd201102201254%_
                _%hd201089201210%_
                _%hd201070201146%_)
               (_%g201062201135%_ _%g201063201139%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201062201135%_
                                                    _%g201063201139%_))
                                               (_%g201062201135%_
                                                _%g201063201139%_))))
                                       (_%g201062201135%_ _%g201063201139%_))
                                   (_%g201062201135%_ _%g201063201139%_))
                               (_%g201062201135%_ _%g201063201139%_))))
                       (_%g201062201135%_ _%g201063201139%_))))
               (_%g201062201135%_ _%g201063201139%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201062201135%_
                                                    _%g201063201139%_)))
                                             (_%g201062201135%_
                                              _%g201063201139%_))))
                                     (_%g201062201135%_ _%g201063201139%_))
                                 (_%g201062201135%_ _%g201063201139%_))))
                         (_%g201062201135%_ _%g201063201139%_))
                     (_%g201062201135%_ _%g201063201139%_))
                 (_%g201062201135%_ _%g201063201139%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g201062201135%_
                                                  _%g201063201139%_))))
                                         (_%g201062201135%_ _%g201063201139%_))
                                     (_%g201062201135%_ _%g201063201139%_)))
                               (_%g201062201135%_ _%g201063201139%_))))
                       (_%g201062201135%_ _%g201063201139%_))
                   (_%g201062201135%_ _%g201063201139%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201062201135%_
                                                    _%g201063201139%_))
                                               (_%g201062201135%_
                                                _%g201063201139%_))
                                           (_%g201062201135%_
                                            _%g201063201139%_))))
                                   (_%g201062201135%_ _%g201063201139%_))))
                           (_%g201062201135%_ _%g201063201139%_))
                       (_%g201062201135%_ _%g201063201139%_)))
                 (_%g201062201135%_ _%g201063201139%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g201062201135%_
                                                  _%g201063201139%_))
                                             (_%g201062201135%_
                                              _%g201063201139%_))))
                                     (_%g201062201135%_ _%g201063201139%_))
                                 (_%g201062201135%_ _%g201063201139%_))
                             (_%g201062201135%_ _%g201063201139%_))))
                     (_%g201062201135%_ _%g201063201139%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201062201135%_
                                                      _%g201063201139%_))
                                                 (_%g201062201135%_
                                                  _%g201063201139%_)))
                                           (_%g201062201135%_
                                            _%g201063201139%_))))
                                   (_%g201062201135%_ _%g201063201139%_))))
                           (_%g201062201135%_ _%g201063201139%_))))
                   (_%g201062201135%_ _%g201063201139%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201062201135%_
                                                    _%g201063201139%_)))))
                                       (_%g201061201422%_ _%hd201060%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest201034201042%_))
                                 (let ((_%hd201039201430%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest201034201042%_)))
                                       (_%tl201040201433%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest201034201042%_))))
                                   (let* ((_%hd201436%_ _%hd201039201430%_)
                                          (_%rest201439%_ _%tl201040201433%_))
                                     (_%K201038201426%_
                                      _%rest201439%_
                                      _%hd201436%_)))
                                 (_%else201036201054%_))))))
                    (begin
                      (let ((_g202742_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g202741_)
                                   (##vector-length _g202741_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g202742_ 2)))
                            (error "Context expects 2 values" _g202742_)))
                      (let ((_%unchecked-proc201442%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202741_ 0)))
                            (_%unchecked-clauses201444%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202741_ 1))))
                        (if _%unchecked-proc201442%_
                            (let* ((_%g201446201470%_
                                    (lambda (_%g201447201466%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g201447201466%_))))
                                   (_%g201445201557%_
                                    (lambda (_%g201447201474%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%g201447201474%_))
                                          (let ((_%e201452201477%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%g201447201474%_))))
                                            (let ((_%hd201451201481%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201452201477%_)))
                                                  (_%tl201450201484%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201452201477%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201450201484%_))
                                                  (let ((_%e201455201487%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201450201484%_))))
                                                    (let ((_%hd201454201491%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201455201487%_)))
                                                          (_%tl201453201494%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201455201487%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%hd201454201491%_))
                                                          (let ((_g202751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%hd201454201491%_ '0))))
                    (begin
                      (let ((_g202752_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g202751_)
                                   (##vector-length _g202751_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g202752_ 2)))
                            (error "Context expects 2 values" _g202752_)))
                      (let ((_%target201456201497%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202751_ 0)))
                            (_%tl201458201500%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202751_ 1))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201458201500%_))
                            (letrec ((_%loop201459201503%_
                                      (lambda (_%hd201457201507%_
                                               _%clause201463201510%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd201457201507%_))
                                            (let ((_%e201460201513%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd201457201507%_))))
                                              (let ((_%lp-hd201461201517%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201460201513%_)))
                                                    (_%lp-tl201462201520%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201460201513%_))))
                                                (_%loop201459201503%_
                                                 _%lp-tl201462201520%_
                                                 (cons _%lp-hd201461201517%_
                                                       _%clause201463201510%_))))
                                            (let ((_%clause201464201523%_
                                                   (reverse _%clause201463201510%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl201453201494%_))
                                                  ((lambda (_%L201527%_
                                                            _%L201529%_)
                                                     (let ()
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L201529%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-case-lambda))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '@list))
                                                   (let ((__tmp202753
                                                          (lambda (_%g201548201551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g201549201554%_)
                    (cons _%g201548201551%_ _%g201549201554%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp202753
                                                      '()
                                                      _%L201527%_)))
                                             '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%clause201464201523%_
                                                   _%hd201451201481%_)
                                                  (_%g201446201470%_
                                                   _%g201447201474%_)))))))
                              (_%loop201459201503%_
                               _%target201456201497%_
                               '()))
                            (_%g201446201470%_ _%g201447201474%_)))))
                  (_%g201446201470%_ _%g201447201474%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g201446201470%_
                                                   _%g201447201474%_))))
                                          (_%g201446201470%_
                                           _%g201447201474%_)))))
                              (_%g201445201557%_
                               (list _%unchecked-proc201442%_
                                     _%unchecked-clauses201444%_)))
                            '(begin)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g200966200977%_))))
                                          (_%g200964201561%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'declare-type))
                                                 (cons _%L200825%_
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
                                            _%L200946%_
                                            _%L200948%_))
                                         (let ((__tmp202754
                                                (lambda (_%g201564201568%_
                                                         _%g201565201571%_
                                                         _%g201566201573%_)
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%g201565201571%_ '()))
                            (cons '#f
                                  (cons 'signature:
                                        (cons _%g201564201568%_ '())))))
                _%g201566201573%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp202754
                                            '()
                                            _%L200946%_
                                            _%L200948%_))))
                                 '()))
                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig200872200940%_
                                    _%arity200873200943%_))))))
                   (_%loop200866200898%_ _%target200863200892%_ '() '()))
                 (_%g200859200885%_ _%g200860200889%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200859200885%_
                                                _%g200860200889%_)))))
                                   (_%g200858201576%_ _%signatures200856%_))
                                 (_%g200742200766%_ _%g200743200770%_)))
                           _%case-signature200760200819%_
                           _%hd200750200787%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200755200799%_
                                                   _%target200752200793%_
                                                   '()))
                                                (_%g200742200766%_
                                                 _%g200743200770%_)))))
                                      (_%g200742200766%_ _%g200743200770%_))))
                              (_%g200742200766%_ _%g200743200770%_))))
                      (_%g200742200766%_ _%g200743200770%_)))))
          (_%g200741201580%_ _%stx200739%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx201588%_)
        (let* ((_%__stx202570202571%_ _%$stx201588%_)
               (_%g201594201654%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202570202571%_)))))
          (let ((_%__kont202573202574%_
                 (lambda (_%L201876%_ _%L201878%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201878%_ '()))
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
                                                       (cons _%L201878%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201876%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont202575202576%_
                 (lambda (_%L201801%_ _%L201803%_ _%L201804%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201804%_ '()))
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
                                                       (cons _%L201804%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201803%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201801%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont202577202578%_
                 (lambda (_%L201715%_ _%L201717%_ _%L201718%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201718%_ '()))
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
                                                       (cons _%L201718%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201717%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201715%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202570202571%_))
                (let ((_%e201600201832%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202570202571%_))))
                  (let ((_%tl201598201839%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201600201832%_)))
                        (_%hd201599201836%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201600201832%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl201598201839%_))
                        (let ((_%e201603201842%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl201598201839%_))))
                          (let ((_%tl201601201849%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201603201842%_)))
                                (_%hd201602201846%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201603201842%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd201602201846%_))
                                (let ((_%e201604201852%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd201602201846%_))))
                                  (if (equal? _%e201604201852%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201601201849%_))
                                          (let ((_%e201607201856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl201601201849%_))))
                                            (let ((_%tl201605201863%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201607201856%_)))
                                                  (_%hd201606201860%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201607201856%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201605201863%_))
                                                  (let ((_%e201610201866%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201605201863%_))))
                                                    (let ((_%tl201608201873%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201610201866%_)))
                                                          (_%hd201609201870%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201610201866%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201608201873%_))
                                                          (_%__kont202573202574%_
                                                           _%hd201609201870%_
                                                           _%hd201606201860%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201594201654%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201594201654%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201594201654%_)))
                                      (if (equal? _%e201604201852%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201601201849%_))
                                              (let ((_%e201623201771%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201601201849%_))))
                                                (let ((_%tl201621201778%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201623201771%_)))
                                                      (_%hd201622201775%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201623201771%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201621201778%_))
                                                      (let ((_%e201626201781%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl201621201778%_))))
                (let ((_%tl201624201788%_
                       (let () (declare (not safe)) (##cdr _%e201626201781%_)))
                      (_%hd201625201785%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201626201781%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201624201788%_))
                      (let ((_%e201629201791%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201624201788%_))))
                        (let ((_%tl201627201798%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201629201791%_)))
                              (_%hd201628201795%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201629201791%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201627201798%_))
                              (_%__kont202575202576%_
                               _%hd201628201795%_
                               _%hd201625201785%_
                               _%hd201622201775%_)
                              (let ()
                                (declare (not safe))
                                (_%g201594201654%_)))))
                      (let () (declare (not safe)) (_%g201594201654%_)))))
              (let () (declare (not safe)) (_%g201594201654%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g201594201654%_)))
                                          (if (equal? _%e201604201852%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201601201849%_))
                                                  (let ((_%e201642201685%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201601201849%_))))
                                                    (let ((_%tl201640201692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201642201685%_)))
                                                          (_%hd201641201689%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201642201685%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201640201692%_))
                                                          (let ((_%e201645201695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl201640201692%_))))
                    (let ((_%tl201643201702%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201645201695%_)))
                          (_%hd201644201699%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201645201695%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201643201702%_))
                          (let ((_%e201648201705%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201643201702%_))))
                            (let ((_%tl201646201712%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201648201705%_)))
                                  (_%hd201647201709%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201648201705%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201646201712%_))
                                  (_%__kont202577202578%_
                                   _%hd201647201709%_
                                   _%hd201644201699%_
                                   _%hd201641201689%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g201594201654%_)))))
                          (let () (declare (not safe)) (_%g201594201654%_)))))
                  (let () (declare (not safe)) (_%g201594201654%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201594201654%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201594201654%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g201594201654%_)))))
                        (let () (declare (not safe)) (_%g201594201654%_)))))
                (let () (declare (not safe)) (_%g201594201654%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx201900%_)
        (let* ((_%g201904201924%_
                (lambda (_%g201905201920%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201905201920%_))))
               (_%g201903201995%_
                (lambda (_%g201905201928%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201905201928%_))
                      (let ((_%e201909201931%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201905201928%_))))
                        (let ((_%hd201908201935%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201909201931%_)))
                              (_%tl201907201938%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201909201931%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201907201938%_))
                              (let ((_g202755_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201907201938%_
                                        '0))))
                                (begin
                                  (let ((_g202756_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202755_)
                                               (##vector-length _g202755_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202756_ 2)))
                                        (error "Context expects 2 values"
                                               _g202756_)))
                                  (let ((_%target201910201941%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202755_ 0)))
                                        (_%tl201912201944%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202755_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201912201944%_))
                                        (letrec ((_%loop201913201947%_
                                                  (lambda (_%hd201911201951%_
                                                           _%decl201917201954%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201911201951%_))
                                                        (let ((_%e201914201957%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201911201951%_))))
                  (let ((_%lp-hd201915201961%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201914201957%_)))
                        (_%lp-tl201916201964%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201914201957%_))))
                    (_%loop201913201947%_
                     _%lp-tl201916201964%_
                     (cons _%lp-hd201915201961%_ _%decl201917201954%_))))
                (let ((_%decl201918201967%_ (reverse _%decl201917201954%_)))
                  ((lambda (_%L201971%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp202757
                                  (lambda (_%g201986201989%_ _%g201987201992%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g201986201989%_)
                                          _%g201987201992%_))))
                             (declare (not safe))
                             (__foldr1 __tmp202757 '() _%L201971%_))))
                   _%decl201918201967%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201913201947%_
                                           _%target201910201941%_
                                           '()))
                                        (_%g201904201924%_
                                         _%g201905201928%_)))))
                              (_%g201904201924%_ _%g201905201928%_))))
                      (_%g201904201924%_ _%g201905201928%_)))))
          (_%g201903201995%_ _%$stx201900%_))))))
