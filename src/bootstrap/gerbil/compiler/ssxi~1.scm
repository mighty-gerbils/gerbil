(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g272855_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g272862_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g272864_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g272866_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g272868_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g272870_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g272882_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g272884_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g272886_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g272888_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g272890_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx266313%_)
        (let* ((_%$%g266317266335%_
                (lambda (_%$%g266318266331%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g266318266331%_))))
               (_%$%g266316266390%_
                (lambda (_%$%g266318266339%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g266318266339%_))
                      (let ((_%$%e266321266342%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g266318266339%_))))
                        (let ((_%$%hd266322266346%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e266321266342%_)))
                              (_%$%tl266323266349%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e266321266342%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl266323266349%_))
                              (let ((_%$%e266324266352%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl266323266349%_))))
                                (let ((_%$%hd266325266356%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e266324266352%_)))
                                      (_%$%tl266326266359%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e266324266352%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl266326266359%_))
                                      (let ((_%$%e266327266362%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl266326266359%_))))
                                        (let ((_%$%hd266328266366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e266327266362%_)))
                                              (_%$%tl266329266369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e266327266362%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl266329266369%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd266325266356%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-type!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd266325266356%_ '()))
                      (cons _%$%hd266328266366%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g266317266335%_
                                                   _%$%g266318266339%_))
                                              (_%$%g266317266335%_
                                               _%$%g266318266339%_))))
                                      (_%$%g266317266335%_
                                       _%$%g266318266339%_))))
                              (_%$%g266317266335%_ _%$%g266318266339%_))))
                      (_%$%g266317266335%_ _%$%g266318266339%_)))))
          (_%$%g266316266390%_ _%$stx266313%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx266394%_)
        (let* ((_%$%g266398266416%_
                (lambda (_%$%g266399266412%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g266399266412%_))))
               (_%$%g266397266471%_
                (lambda (_%$%g266399266420%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g266399266420%_))
                      (let ((_%$%e266402266423%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g266399266420%_))))
                        (let ((_%$%hd266403266427%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e266402266423%_)))
                              (_%$%tl266404266430%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e266402266423%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl266404266430%_))
                              (let ((_%$%e266405266433%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl266404266430%_))))
                                (let ((_%$%hd266406266437%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e266405266433%_)))
                                      (_%$%tl266407266440%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e266405266433%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl266407266440%_))
                                      (let ((_%$%e266408266443%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl266407266440%_))))
                                        (let ((_%$%hd266409266447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e266408266443%_)))
                                              (_%$%tl266410266450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e266408266443%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl266410266450%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd266406266437%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-class!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd266406266437%_ '()))
                      (cons _%$%hd266409266447%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g266398266416%_
                                                   _%$%g266399266420%_))
                                              (_%$%g266398266416%_
                                               _%$%g266399266420%_))))
                                      (_%$%g266398266416%_
                                       _%$%g266399266420%_))))
                              (_%$%g266398266416%_ _%$%g266399266420%_))))
                      (_%$%g266398266416%_ _%$%g266399266420%_)))))
          (_%$%g266397266471%_ _%$stx266394%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx266475%_)
        (let* ((_%$%g266479266508%_
                (lambda (_%$%g266480266504%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g266480266504%_))))
               (_%$%g266478266604%_
                (lambda (_%$%g266480266512%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g266480266512%_))
                      (let ((_%$%e266483266515%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g266480266512%_))))
                        (let ((_%$%hd266484266519%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e266483266515%_)))
                              (_%$%tl266485266522%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e266483266515%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl266485266522%_))
                              (let ((_g272833_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl266485266522%_
                                        '0))))
                                (begin
                                  (let ((_g272834_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g272833_)
                                               (##values-length _g272833_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g272834_ 2)))
                                        (error "Context expects 2 values"
                                               _g272834_)))
                                  (let ((_%$%target266486266525%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g272833_ 0)))
                                        (_%$%tl266488266528%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g272833_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl266488266528%_))
                                        (letrec ((_%$%loop266489266531%_
                                                  (lambda (_%$%hd266487266535%_
                                                           _%$%type266493266538%_
                                                           _%$%symbol266494266539%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd266487266535%_))
                                                        (let ((_%$%e266490266541%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd266487266535%_))))
                  (let ((_%$%lp-hd266491266545%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e266490266541%_)))
                        (_%$%lp-tl266492266548%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e266490266541%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd266491266545%_))
                        (let ((_%$%e266497266551%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd266491266545%_))))
                          (let ((_%$%hd266498266555%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e266497266551%_)))
                                (_%$%tl266499266558%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e266497266551%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl266499266558%_))
                                (let ((_%$%e266500266561%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl266499266558%_))))
                                  (let ((_%$%hd266501266565%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e266500266561%_)))
                                        (_%$%tl266502266568%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e266500266561%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl266502266568%_))
                                        (_%$%loop266489266531%_
                                         _%$%lp-tl266492266548%_
                                         (cons _%$%hd266501266565%_
                                               _%$%type266493266538%_)
                                         (cons _%$%hd266498266555%_
                                               _%$%symbol266494266539%_))
                                        (_%$%g266479266508%_
                                         _%$%g266480266512%_))))
                                (_%$%g266479266508%_ _%$%g266480266512%_))))
                        (_%$%g266479266508%_ _%$%g266480266512%_))))
                (let ((_%$%type266495266571%_ (reverse _%$%type266493266538%_))
                      (_%$%symbol266496266573%_
                       (reverse _%$%symbol266494266539%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%type266495266571%_
                             _%$%symbol266496266573%_))
                          (let ((__tmp272835
                                 (lambda (_%$%g266592266596%_
                                          _%$%g266593266599%_
                                          _%$%g266594266601%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%$%g266593266599%_
                                                     (cons _%$%g266592266596%_
                                                           '())))
                                         _%$%g266594266601%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp272835
                             '()
                             _%$%type266495266571%_
                             _%$%symbol266496266573%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop266489266531%_
                                           _%$%target266486266525%_
                                           '()
                                           '()))
                                        (_%$%g266479266508%_
                                         _%$%g266480266512%_)))))
                              (_%$%g266479266508%_ _%$%g266480266512%_))))
                      (_%$%g266479266508%_ _%$%g266480266512%_)))))
          (_%$%g266478266604%_ _%$stx266475%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx266609%_)
        (let* ((_%__stx272144272145%_ _%$stx266609%_)
               (_%$%g266614266656%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx272144272145%_)))))
          (let ((_%__kont272147272148%_
                 (lambda (_%$%g266616266784%_
                          _%$%g266617266786%_
                          _%$%g266618266787%_
                          _%$%g266619266788%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g266619266788%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g266618266787%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%g266617266786%_
                                                       '()))
                                           (cons _%$%g266616266784%_ '())))))))
                (_%__kont272149272150%_
                 (lambda (_%$%g266635266703%_
                          _%$%g266636266705%_
                          _%$%g266637266706%_
                          _%$%g266638266707%_)
                   (cons _%$%g266638266707%_
                         (cons _%$%g266637266706%_
                               (cons _%$%g266636266705%_
                                     (cons _%$%g266635266703%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match272183272184%_
                   (lambda (_%$%e266620266734%_
                            _%$%hd266621266738%_
                            _%$%tl266622266741%_
                            _%$%e266623266744%_
                            _%$%hd266624266748%_
                            _%$%tl266625266751%_
                            _%$%e266626266754%_
                            _%$%hd266627266758%_
                            _%$%tl266628266761%_
                            _%$%e266629266764%_
                            _%$%hd266630266768%_
                            _%$%tl266631266771%_
                            _%$%e266632266774%_
                            _%$%hd266633266778%_
                            _%$%tl266634266781%_)
                     (let ((_%$%g266616266784%_ _%$%hd266633266778%_)
                           (_%$%g266617266786%_ _%$%hd266630266768%_)
                           (_%$%g266618266787%_ _%$%hd266627266758%_)
                           (_%$%g266619266788%_ _%$%hd266624266748%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g266619266788%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g266618266787%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g266617266786%_)))
                           (_%__kont272147272148%_
                            _%$%g266616266784%_
                            _%$%g266617266786%_
                            _%$%g266618266787%_
                            _%$%g266619266788%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g266614266656%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx272144272145%_))
                  (let ((_%$%e266620266734%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx272144272145%_))))
                    (let ((_%$%tl266622266741%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e266620266734%_)))
                          (_%$%hd266621266738%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e266620266734%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl266622266741%_))
                          (let ((_%$%e266623266744%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl266622266741%_))))
                            (let ((_%$%tl266625266751%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e266623266744%_)))
                                  (_%$%hd266624266748%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e266623266744%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl266625266751%_))
                                  (let ((_%$%e266626266754%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl266625266751%_))))
                                    (let ((_%$%tl266628266761%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e266626266754%_)))
                                          (_%$%hd266627266758%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e266626266754%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl266628266761%_))
                                          (let ((_%$%e266629266764%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl266628266761%_))))
                                            (let ((_%$%tl266631266771%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e266629266764%_)))
                                                  (_%$%hd266630266768%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e266629266764%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl266631266771%_))
                                                  (let ((_%$%e266632266774%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl266631266771%_))))
                                                    (let ((_%$%tl266634266781%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e266632266774%_)))
                                                          (_%$%hd266633266778%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e266632266774%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl266634266781%_))
                                                          (_%__match272183272184%_
                                                           _%$%e266620266734%_
                                                           _%$%hd266621266738%_
                                                           _%$%tl266622266741%_
                                                           _%$%e266623266744%_
                                                           _%$%hd266624266748%_
                                                           _%$%tl266625266751%_
                                                           _%$%e266626266754%_
                                                           _%$%hd266627266758%_
                                                           _%$%tl266628266761%_
                                                           _%$%e266629266764%_
                                                           _%$%hd266630266768%_
                                                           _%$%tl266631266771%_
                                                           _%$%e266632266774%_
                                                           _%$%hd266633266778%_
                                                           _%$%tl266634266781%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g266614266656%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl266631266771%_))
                                                      (_%__kont272149272150%_
                                                       _%$%hd266630266768%_
                                                       _%$%hd266627266758%_
                                                       _%$%hd266624266748%_
                                                       _%$%hd266621266738%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g266614266656%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g266614266656%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g266614266656%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g266614266656%_)))))
                  (let () (declare (not safe)) (_%$%g266614266656%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx266813%_)
        (let* ((_%$%g266817266852%_
                (lambda (_%$%g266818266848%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g266818266848%_))))
               (_%$%g266816266965%_
                (lambda (_%$%g266818266856%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g266818266856%_))
                      (let ((_%$%e266822266859%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g266818266856%_))))
                        (let ((_%$%hd266823266863%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e266822266859%_)))
                              (_%$%tl266824266866%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e266822266859%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl266824266866%_))
                              (let ((_g272836_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl266824266866%_
                                        '0))))
                                (begin
                                  (let ((_g272837_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g272836_)
                                               (##values-length _g272836_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g272837_ 2)))
                                        (error "Context expects 2 values"
                                               _g272837_)))
                                  (let ((_%$%target266825266869%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g272836_ 0)))
                                        (_%$%tl266827266872%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g272836_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl266827266872%_))
                                        (letrec ((_%$%loop266828266875%_
                                                  (lambda (_%$%hd266826266879%_
                                                           _%$%symbol266832266882%_
                                                           _%$%method266833266883%_
                                                           _%$%type-t266834266884%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd266826266879%_))
                                                        (let ((_%$%e266829266886%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd266826266879%_))))
                  (let ((_%$%lp-hd266830266890%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e266829266886%_)))
                        (_%$%lp-tl266831266893%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e266829266886%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd266830266890%_))
                        (let ((_%$%e266838266896%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd266830266890%_))))
                          (let ((_%$%hd266839266900%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e266838266896%_)))
                                (_%$%tl266840266903%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e266838266896%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl266840266903%_))
                                (let ((_%$%e266841266906%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl266840266903%_))))
                                  (let ((_%$%hd266842266910%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e266841266906%_)))
                                        (_%$%tl266843266913%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e266841266906%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl266843266913%_))
                                        (let ((_%$%e266844266916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl266843266913%_))))
                                          (let ((_%$%hd266845266920%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e266844266916%_)))
                                                (_%$%tl266846266923%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e266844266916%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl266846266923%_))
                                                (_%$%loop266828266875%_
                                                 _%$%lp-tl266831266893%_
                                                 (cons _%$%hd266845266920%_
                                                       _%$%symbol266832266882%_)
                                                 (cons _%$%hd266842266910%_
                                                       _%$%method266833266883%_)
                                                 (cons _%$%hd266839266900%_
                                                       _%$%type-t266834266884%_))
                                                (_%$%g266817266852%_
                                                 _%$%g266818266856%_))))
                                        (_%$%g266817266852%_
                                         _%$%g266818266856%_))))
                                (_%$%g266817266852%_ _%$%g266818266856%_))))
                        (_%$%g266817266852%_ _%$%g266818266856%_))))
                (let ((_%$%symbol266835266926%_
                       (reverse _%$%symbol266832266882%_))
                      (_%$%method266836266928%_
                       (reverse _%$%method266833266883%_))
                      (_%$%type-t266837266929%_
                       (reverse _%$%type-t266834266884%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%symbol266835266926%_
                             _%$%method266836266928%_
                             _%$%type-t266837266929%_))
                          (let ((__tmp272838
                                 (lambda (_%$%g266950266955%_
                                          _%$%g266951266958%_
                                          _%$%g266952266960%_
                                          _%$%g266953266962%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-method))
                                               (cons _%$%g266952266960%_
                                                     (cons _%$%g266951266958%_
                                                           (cons _%$%g266950266955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%$%g266953266962%_))))
                            (declare (not safe))
                            (__foldr*
                             __tmp272838
                             '()
                             _%$%symbol266835266926%_
                             _%$%method266836266928%_
                             _%$%type-t266837266929%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop266828266875%_
                                           _%$%target266825266869%_
                                           '()
                                           '()
                                           '()))
                                        (_%$%g266817266852%_
                                         _%$%g266818266856%_)))))
                              (_%$%g266817266852%_ _%$%g266818266856%_))))
                      (_%$%g266817266852%_ _%$%g266818266856%_)))))
          (_%$%g266816266965%_ _%$stx266813%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx266970%_)
        (let* ((_%$%g266974267007%_
                (lambda (_%$%g266975267003%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g266975267003%_))))
               (_%$%g266973267117%_
                (lambda (_%$%g266975267011%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g266975267011%_))
                      (let ((_%$%e266979267014%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g266975267011%_))))
                        (let ((_%$%hd266980267018%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e266979267014%_)))
                              (_%$%tl266981267021%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e266979267014%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl266981267021%_))
                              (let ((_%$%e266982267024%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl266981267021%_))))
                                (let ((_%$%hd266983267028%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e266982267024%_)))
                                      (_%$%tl266984267031%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e266982267024%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl266984267031%_))
                                      (let ((_g272839_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl266984267031%_
                                                '0))))
                                        (begin
                                          (let ((_g272840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g272839_)
                                                       (##values-length
                                                        _g272839_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g272840_ 2)))
                                                (error "Context expects 2 values"
                                                       _g272840_)))
                                          (let ((_%$%target266985267034%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g272839_ 0)))
                                                (_%$%tl266987267037%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g272839_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl266987267037%_))
                                                (letrec ((_%$%loop266988267040%_
                                                          (lambda (_%$%hd266986267044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%symbol266992267047%_
                           _%$%method266993267048%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd266986267044%_))
                        (let ((_%$%e266989267050%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd266986267044%_))))
                          (let ((_%$%lp-hd266990267054%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e266989267050%_)))
                                (_%$%lp-tl266991267057%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e266989267050%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd266990267054%_))
                                (let ((_%$%e266996267060%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e
                                          _%$%lp-hd266990267054%_))))
                                  (let ((_%$%hd266997267064%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e266996267060%_)))
                                        (_%$%tl266998267067%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e266996267060%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl266998267067%_))
                                        (let ((_%$%e266999267070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl266998267067%_))))
                                          (let ((_%$%hd267000267074%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e266999267070%_)))
                                                (_%$%tl267001267077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e266999267070%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl267001267077%_))
                                                (_%$%loop266988267040%_
                                                 _%$%lp-tl266991267057%_
                                                 (cons _%$%hd267000267074%_
                                                       _%$%symbol266992267047%_)
                                                 (cons _%$%hd266997267064%_
                                                       _%$%method266993267048%_))
                                                (_%$%g266974267007%_
                                                 _%$%g266975267011%_))))
                                        (_%$%g266974267007%_
                                         _%$%g266975267011%_))))
                                (_%$%g266974267007%_ _%$%g266975267011%_))))
                        (let ((_%$%symbol266994267080%_
                               (reverse _%$%symbol266992267047%_))
                              (_%$%method266995267082%_
                               (reverse _%$%method266993267048%_)))
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'begin))
                                (begin
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-check-splice-targets
                                     _%$%symbol266994267080%_
                                     _%$%method266995267082%_))
                                  (let ((__tmp272841
                                         (lambda (_%$%g267105267109%_
                                                  _%$%g267106267112%_
                                                  _%$%g267107267114%_)
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method))
                                                       (cons _%$%hd266983267028%_
                                                             (cons _%$%g267106267112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g267105267109%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%g267107267114%_))))
                                    (declare (not safe))
                                    (foldr__1
                                     __tmp272841
                                     '()
                                     _%$%symbol266994267080%_
                                     _%$%method266995267082%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop266988267040%_
                                                   _%$%target266985267034%_
                                                   '()
                                                   '()))
                                                (_%$%g266974267007%_
                                                 _%$%g266975267011%_)))))
                                      (_%$%g266974267007%_
                                       _%$%g266975267011%_))))
                              (_%$%g266974267007%_ _%$%g266975267011%_))))
                      (_%$%g266974267007%_ _%$%g266975267011%_)))))
          (_%$%g266973267117%_ _%$stx266970%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx267122%_)
        (let* ((_%$%g267126267140%_
                (lambda (_%$%g267127267136%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267127267136%_))))
               (_%$%g267125267181%_
                (lambda (_%$%g267127267144%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267127267144%_))
                      (let ((_%$%e267129267147%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g267127267144%_))))
                        (let ((_%$%hd267130267151%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267129267147%_)))
                              (_%$%tl267131267154%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267129267147%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl267131267154%_))
                              (let ((_%$%e267132267157%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl267131267154%_))))
                                (let ((_%$%hd267133267161%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267132267157%_)))
                                      (_%$%tl267134267164%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267132267157%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl267134267164%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!alias))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd267133267161%_
                                                              '()))
                                                  '()))
                                      (_%$%g267126267140%_
                                       _%$%g267127267144%_))))
                              (_%$%g267126267140%_ _%$%g267127267144%_))))
                      (_%$%g267126267140%_ _%$%g267127267144%_)))))
          (_%$%g267125267181%_ _%$stx267122%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx267185%_)
        (let* ((_%$%g267189267243%_
                (lambda (_%$%g267190267239%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267190267239%_))))
               (_%$%g267188267424%_
                (lambda (_%$%g267190267247%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267190267247%_))
                      (let ((_%$%e267202267250%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g267190267247%_))))
                        (let ((_%$%hd267203267254%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267202267250%_)))
                              (_%$%tl267204267257%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267202267250%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl267204267257%_))
                              (let ((_%$%e267205267260%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl267204267257%_))))
                                (let ((_%$%hd267206267264%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267205267260%_)))
                                      (_%$%tl267207267267%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267205267260%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl267207267267%_))
                                      (let ((_%$%e267208267270%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl267207267267%_))))
                                        (let ((_%$%hd267209267274%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e267208267270%_)))
                                              (_%$%tl267210267277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e267208267270%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl267210267277%_))
                                              (let ((_%$%e267211267280%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl267210267277%_))))
                                                (let ((_%$%hd267212267284%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e267211267280%_)))
                                                      (_%$%tl267213267287%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e267211267280%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl267213267287%_))
                                                      (let ((_%$%e267214267290%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl267213267287%_))))
                (let ((_%$%hd267215267294%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e267214267290%_)))
                      (_%$%tl267216267297%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e267214267290%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl267216267297%_))
                      (let ((_%$%e267217267300%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl267216267297%_))))
                        (let ((_%$%hd267218267304%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267217267300%_)))
                              (_%$%tl267219267307%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267217267300%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl267219267307%_))
                              (let ((_%$%e267220267310%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl267219267307%_))))
                                (let ((_%$%hd267221267314%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267220267310%_)))
                                      (_%$%tl267222267317%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267220267310%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl267222267317%_))
                                      (let ((_%$%e267223267320%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl267222267317%_))))
                                        (let ((_%$%hd267224267324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e267223267320%_)))
                                              (_%$%tl267225267327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e267223267320%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl267225267327%_))
                                              (let ((_%$%e267226267330%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl267225267327%_))))
                                                (let ((_%$%hd267227267334%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e267226267330%_)))
                                                      (_%$%tl267228267337%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e267226267330%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl267228267337%_))
                                                      (let ((_%$%e267229267340%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl267228267337%_))))
                (let ((_%$%hd267230267344%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e267229267340%_)))
                      (_%$%tl267231267347%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e267229267340%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl267231267347%_))
                      (let ((_%$%e267232267350%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl267231267347%_))))
                        (let ((_%$%hd267233267354%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267232267350%_)))
                              (_%$%tl267234267357%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267232267350%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl267234267357%_))
                              (let ((_%$%e267235267360%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl267234267357%_))))
                                (let ((_%$%hd267236267364%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267235267360%_)))
                                      (_%$%tl267237267367%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267235267360%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl267237267367%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!class))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd267206267264%_
                                                              '()))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'quote))
                      (cons _%$%hd267209267274%_ '()))
                (cons (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd267212267284%_ '()))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%$%hd267215267294%_ '()))
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote))
                                        (cons _%$%hd267218267304%_ '()))
                                  (cons (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote))
                                              (cons _%$%hd267221267314%_ '()))
                                        (cons _%$%hd267224267324%_
                                              (cons _%$%hd267227267334%_
                                                    (cons _%$%hd267230267344%_
                                                          (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd267233267354%_ '()))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd267236267364%_ '()))
                              '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g267189267243%_
                                       _%$%g267190267247%_))))
                              (_%$%g267189267243%_ _%$%g267190267247%_))))
                      (_%$%g267189267243%_ _%$%g267190267247%_))))
              (_%$%g267189267243%_ _%$%g267190267247%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g267189267243%_
                                               _%$%g267190267247%_))))
                                      (_%$%g267189267243%_
                                       _%$%g267190267247%_))))
                              (_%$%g267189267243%_ _%$%g267190267247%_))))
                      (_%$%g267189267243%_ _%$%g267190267247%_))))
              (_%$%g267189267243%_ _%$%g267190267247%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g267189267243%_
                                               _%$%g267190267247%_))))
                                      (_%$%g267189267243%_
                                       _%$%g267190267247%_))))
                              (_%$%g267189267243%_ _%$%g267190267247%_))))
                      (_%$%g267189267243%_ _%$%g267190267247%_)))))
          (_%$%g267188267424%_ _%$stx267185%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx267428%_)
        (let* ((_%$%g267432267446%_
                (lambda (_%$%g267433267442%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267433267442%_))))
               (_%$%g267431267487%_
                (lambda (_%$%g267433267450%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267433267450%_))
                      (let ((_%$%e267435267453%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g267433267450%_))))
                        (let ((_%$%hd267436267457%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267435267453%_)))
                              (_%$%tl267437267460%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267435267453%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl267437267460%_))
                              (let ((_%$%e267438267463%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl267437267460%_))))
                                (let ((_%$%hd267439267467%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267438267463%_)))
                                      (_%$%tl267440267470%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267438267463%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl267440267470%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!predicate))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd267439267467%_
                                                              '()))
                                                  '()))
                                      (_%$%g267432267446%_
                                       _%$%g267433267450%_))))
                              (_%$%g267432267446%_ _%$%g267433267450%_))))
                      (_%$%g267432267446%_ _%$%g267433267450%_)))))
          (_%$%g267431267487%_ _%$stx267428%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx267491%_)
        (let* ((_%$%g267495267509%_
                (lambda (_%$%g267496267505%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267496267505%_))))
               (_%$%g267494267550%_
                (lambda (_%$%g267496267513%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267496267513%_))
                      (let ((_%$%e267498267516%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g267496267513%_))))
                        (let ((_%$%hd267499267520%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267498267516%_)))
                              (_%$%tl267500267523%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267498267516%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl267500267523%_))
                              (let ((_%$%e267501267526%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl267500267523%_))))
                                (let ((_%$%hd267502267530%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267501267526%_)))
                                      (_%$%tl267503267533%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267501267526%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl267503267533%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!constructor))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd267502267530%_
                                                              '()))
                                                  '()))
                                      (_%$%g267495267509%_
                                       _%$%g267496267513%_))))
                              (_%$%g267495267509%_ _%$%g267496267513%_))))
                      (_%$%g267495267509%_ _%$%g267496267513%_)))))
          (_%$%g267494267550%_ _%$stx267491%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx267554%_)
        (let* ((_%$%g267558267580%_
                (lambda (_%$%g267559267576%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267559267576%_))))
               (_%$%g267557267649%_
                (lambda (_%$%g267559267584%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267559267584%_))
                      (let ((_%$%e267563267587%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g267559267584%_))))
                        (let ((_%$%hd267564267591%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267563267587%_)))
                              (_%$%tl267565267594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267563267587%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl267565267594%_))
                              (let ((_%$%e267566267597%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl267565267594%_))))
                                (let ((_%$%hd267567267601%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267566267597%_)))
                                      (_%$%tl267568267604%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267566267597%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl267568267604%_))
                                      (let ((_%$%e267569267607%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl267568267604%_))))
                                        (let ((_%$%hd267570267611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e267569267607%_)))
                                              (_%$%tl267571267614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e267569267607%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl267571267614%_))
                                              (let ((_%$%e267572267617%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl267571267614%_))))
                                                (let ((_%$%hd267573267621%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e267572267617%_)))
                                                      (_%$%tl267574267624%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e267572267617%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl267574267624%_))
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!accessor))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd267567267601%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd267570267611%_ '()))
                                (cons _%$%hd267573267621%_ '()))))
              (_%$%g267558267580%_ _%$%g267559267584%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g267558267580%_
                                               _%$%g267559267584%_))))
                                      (_%$%g267558267580%_
                                       _%$%g267559267584%_))))
                              (_%$%g267558267580%_ _%$%g267559267584%_))))
                      (_%$%g267558267580%_ _%$%g267559267584%_)))))
          (_%$%g267557267649%_ _%$stx267554%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx267653%_)
        (let* ((_%$%g267657267679%_
                (lambda (_%$%g267658267675%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267658267675%_))))
               (_%$%g267656267748%_
                (lambda (_%$%g267658267683%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267658267683%_))
                      (let ((_%$%e267662267686%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g267658267683%_))))
                        (let ((_%$%hd267663267690%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267662267686%_)))
                              (_%$%tl267664267693%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267662267686%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl267664267693%_))
                              (let ((_%$%e267665267696%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl267664267693%_))))
                                (let ((_%$%hd267666267700%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267665267696%_)))
                                      (_%$%tl267667267703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267665267696%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl267667267703%_))
                                      (let ((_%$%e267668267706%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl267667267703%_))))
                                        (let ((_%$%hd267669267710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e267668267706%_)))
                                              (_%$%tl267670267713%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e267668267706%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl267670267713%_))
                                              (let ((_%$%e267671267716%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl267670267713%_))))
                                                (let ((_%$%hd267672267720%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e267671267716%_)))
                                                      (_%$%tl267673267723%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e267671267716%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl267673267723%_))
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!mutator))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd267666267700%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd267669267710%_ '()))
                                (cons _%$%hd267672267720%_ '()))))
              (_%$%g267657267679%_ _%$%g267658267683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g267657267679%_
                                               _%$%g267658267683%_))))
                                      (_%$%g267657267679%_
                                       _%$%g267658267683%_))))
                              (_%$%g267657267679%_ _%$%g267658267683%_))))
                      (_%$%g267657267679%_ _%$%g267658267683%_)))))
          (_%$%g267656267748%_ _%$stx267653%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx267752%_)
        (let* ((_%$%g267756267770%_
                (lambda (_%$%g267757267766%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267757267766%_))))
               (_%$%g267755267811%_
                (lambda (_%$%g267757267774%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267757267774%_))
                      (let ((_%$%e267759267777%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g267757267774%_))))
                        (let ((_%$%hd267760267781%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267759267777%_)))
                              (_%$%tl267761267784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267759267777%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl267761267784%_))
                              (let ((_%$%e267762267787%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl267761267784%_))))
                                (let ((_%$%hd267763267791%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267762267787%_)))
                                      (_%$%tl267764267794%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267762267787%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl267764267794%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!primitive-predicate))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd267763267791%_
                                                              '()))
                                                  '()))
                                      (_%$%g267756267770%_
                                       _%$%g267757267774%_))))
                              (_%$%g267756267770%_ _%$%g267757267774%_))))
                      (_%$%g267756267770%_ _%$%g267757267774%_)))))
          (_%$%g267755267811%_ _%$stx267752%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx267815%_)
        (let* ((_%$%g267819267837%_
                (lambda (_%$%g267820267833%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267820267833%_))))
               (_%$%g267818267892%_
                (lambda (_%$%g267820267841%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267820267841%_))
                      (let ((_%$%e267823267844%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g267820267841%_))))
                        (let ((_%$%hd267824267848%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267823267844%_)))
                              (_%$%tl267825267851%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267823267844%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl267825267851%_))
                              (let ((_%$%e267826267854%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl267825267851%_))))
                                (let ((_%$%hd267827267858%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267826267854%_)))
                                      (_%$%tl267828267861%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267826267854%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl267828267861%_))
                                      (let ((_%$%e267829267864%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl267828267861%_))))
                                        (let ((_%$%hd267830267868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e267829267864%_)))
                                              (_%$%tl267831267871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e267829267864%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl267831267871%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!interface))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd267827267858%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd267830267868%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g267819267837%_
                                               _%$%g267820267841%_))))
                                      (_%$%g267819267837%_
                                       _%$%g267820267841%_))))
                              (_%$%g267819267837%_ _%$%g267820267841%_))))
                      (_%$%g267819267837%_ _%$%g267820267841%_)))))
          (_%$%g267818267892%_ _%$stx267815%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx267896%_)
        (let* ((_%__stx272212272213%_ _%$stx267896%_)
               (_%$%g267903267964%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx272212272213%_)))))
          (let ((_%__kont272215272216%_
                 (lambda (_%$%g267905268202%_ _%$%g267906268204%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g267906268204%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g267905268202%_ '()))
                                     '())))))
                (_%__kont272217272218%_
                 (lambda (_%$%g267916268141%_
                          _%$%g267917268143%_
                          _%$%g267918268144%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g267918268144%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g267917268143%_ '()))
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
                                 (cons _%$%g267916268141%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont272219272220%_
                 (lambda (_%$%g267935268065%_ _%$%g267936268067%_)
                   (cons _%$%g267936268067%_
                         (cons _%$%g267935268065%_ (cons '#f '())))))
                (_%__kont272221272222%_
                 (lambda (_%$%g267943268015%_
                          _%$%g267944268017%_
                          _%$%g267945268018%_)
                   (cons _%$%g267945268018%_
                         (cons _%$%g267944268017%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%$%g267943268015%_
                                                 '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx272212272213%_))
                (let ((_%$%e267907268172%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx272212272213%_))))
                  (let ((_%$%tl267909268179%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e267907268172%_)))
                        (_%$%hd267908268176%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e267907268172%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl267909268179%_))
                        (let ((_%$%e267910268182%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl267909268179%_))))
                          (let ((_%$%tl267912268189%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e267910268182%_)))
                                (_%$%hd267911268186%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e267910268182%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl267912268189%_))
                                (let ((_%$%e267913268192%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl267912268189%_))))
                                  (let ((_%$%tl267915268199%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e267913268192%_)))
                                        (_%$%hd267914268196%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e267913268192%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl267915268199%_))
                                        (_%__kont272215272216%_
                                         _%$%hd267914268196%_
                                         _%$%hd267911268186%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl267915268199%_))
                                            (let ((_%$%e267928268117%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl267915268199%_))))
                                              (let ((_%$%tl267930268124%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e267928268117%_)))
                                                    (_%$%hd267929268121%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e267928268117%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd267929268121%_))
                                                    (let ((_%$%e267931268127%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd267929268121%_))))
                                                      (if (equal? _%$%e267931268127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl267930268124%_))
                      (let ((_%$%e267932268131%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl267930268124%_))))
                        (let ((_%$%tl267934268138%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267932268131%_)))
                              (_%$%hd267933268135%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267932268131%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl267934268138%_))
                              (_%__kont272217272218%_
                               _%$%hd267933268135%_
                               _%$%hd267914268196%_
                               _%$%hd267911268186%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%$%hd267914268196%_))
                                  (let ((_%$%e267955268001%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd267914268196%_))))
                                    (declare (not safe))
                                    (_%$%g267903267964%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g267903267964%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd267914268196%_))
                          (let ((_%$%e267955268001%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd267914268196%_))))
                            (if (equal? _%$%e267955268001%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl267930268124%_))
                                    (_%__kont272221272222%_
                                     _%$%hd267929268121%_
                                     _%$%hd267911268186%_
                                     _%$%hd267908268176%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g267903267964%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g267903267964%_))))
                          (let () (declare (not safe)) (_%$%g267903267964%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd267914268196%_))
                      (let ((_%$%e267955268001%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd267914268196%_))))
                        (if (equal? _%$%e267955268001%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl267930268124%_))
                                (_%__kont272221272222%_
                                 _%$%hd267929268121%_
                                 _%$%hd267911268186%_
                                 _%$%hd267908268176%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g267903267964%_)))
                            (let ()
                              (declare (not safe))
                              (_%$%g267903267964%_))))
                      (let () (declare (not safe)) (_%$%g267903267964%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%$%hd267914268196%_))
                                                        (let ((_%$%e267955268001%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd267914268196%_))))
                  (if (equal? _%$%e267955268001%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl267930268124%_))
                          (_%__kont272221272222%_
                           _%$%hd267929268121%_
                           _%$%hd267911268186%_
                           _%$%hd267908268176%_)
                          (let () (declare (not safe)) (_%$%g267903267964%_)))
                      (let () (declare (not safe)) (_%$%g267903267964%_))))
                (let () (declare (not safe)) (_%$%g267903267964%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%$%hd267914268196%_))
                                                (let ((_%$%e267955268001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd267914268196%_))))
                                                  (declare (not safe))
                                                  (_%$%g267903267964%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g267903267964%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl267912268189%_))
                                    (_%__kont272219272220%_
                                     _%$%hd267911268186%_
                                     _%$%hd267908268176%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g267903267964%_))))))
                        (let () (declare (not safe)) (_%$%g267903267964%_)))))
                (let () (declare (not safe)) (_%$%g267903267964%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx268223%_)
        (let* ((_%$%g268227268256%_
                (lambda (_%$%g268228268252%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268228268252%_))))
               (_%$%g268226268361%_
                (lambda (_%$%g268228268260%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268228268260%_))
                      (let ((_%$%e268230268263%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g268228268260%_))))
                        (let ((_%$%hd268231268267%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268230268263%_)))
                              (_%$%tl268232268270%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268230268263%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl268232268270%_))
                              (let ((_g272842_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl268232268270%_
                                        '0))))
                                (begin
                                  (let ((_g272843_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g272842_)
                                               (##values-length _g272842_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g272843_ 2)))
                                        (error "Context expects 2 values"
                                               _g272843_)))
                                  (let ((_%$%target268233268273%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g272842_ 0)))
                                        (_%$%tl268235268276%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g272842_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl268235268276%_))
                                        (letrec ((_%$%loop268236268279%_
                                                  (lambda (_%$%hd268234268283%_
                                                           _%$%clause268240268286%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd268234268283%_))
                                                        (let ((_%$%e268237268288%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd268234268283%_))))
                  (let ((_%$%lp-hd268238268292%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e268237268288%_)))
                        (_%$%lp-tl268239268295%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e268237268288%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%lp-hd268238268292%_))
                        (let ((_g272844_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%$%lp-hd268238268292%_
                                  '0))))
                          (begin
                            (let ((_g272845_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g272844_)
                                         (##values-length _g272844_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g272845_ 2)))
                                  (error "Context expects 2 values"
                                         _g272845_)))
                            (let ((_%$%target268242268298%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g272844_ 0)))
                                  (_%$%tl268244268301%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g272844_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl268244268301%_))
                                  (letrec ((_%$%loop268245268304%_
                                            (lambda (_%$%hd268243268308%_
                                                     _%$%clause268249268311%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd268243268308%_))
                                                  (let ((_%$%e268246268313%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd268243268308%_))))
                                                    (let ((_%$%lp-hd268247268317%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e268246268313%_)))
                                                          (_%$%lp-tl268248268320%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e268246268313%_))))
                                                      (_%$%loop268245268304%_
                                                       _%$%lp-tl268248268320%_
                                                       (cons _%$%lp-hd268247268317%_
                                                             _%$%clause268249268311%_))))
                                                  (let ((_%$%clause268250268323%_
                                                         (reverse _%$%clause268249268311%_)))
                                                    (_%$%loop268236268279%_
                                                     _%$%lp-tl268239268295%_
                                                     (cons _%$%clause268250268323%_
                                                           _%$%clause268240268286%_)))))))
                                    (_%$%loop268245268304%_
                                     _%$%target268242268298%_
                                     '()))
                                  (_%$%g268227268256%_ _%$%g268228268260%_)))))
                        (_%$%g268227268256%_ _%$%g268228268260%_))))
                (let ((_%$%clause268241268326%_
                       (reverse _%$%clause268240268286%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f '@list))
                                    (let ((__tmp272846
                                           (lambda (_%$%g268344268349%_
                                                    _%$%g268345268352%_)
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '@lambda))
                                                         (let ((__tmp272847
                                                                (lambda (_%$%g268346268355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g268347268358%_)
                          (cons _%$%g268346268355%_ _%$%g268347268358%_))))
                   (declare (not safe))
                   (foldr__0 __tmp272847 '() _%$%g268344268349%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%g268345268352%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp272846
                                       '()
                                       _%$%clause268241268326%_)))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop268236268279%_
                                           _%$%target268233268273%_
                                           '()))
                                        (_%$%g268227268256%_
                                         _%$%g268228268260%_)))))
                              (_%$%g268227268256%_ _%$%g268228268260%_))))
                      (_%$%g268227268256%_ _%$%g268228268260%_)))))
          (_%$%g268226268361%_ _%$stx268223%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx268367%_)
        (let* ((_%$%g268371268389%_
                (lambda (_%$%g268372268385%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268372268385%_))))
               (_%$%g268370268444%_
                (lambda (_%$%g268372268393%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268372268393%_))
                      (let ((_%$%e268375268396%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g268372268393%_))))
                        (let ((_%$%hd268376268400%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268375268396%_)))
                              (_%$%tl268377268403%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268375268396%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl268377268403%_))
                              (let ((_%$%e268378268406%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl268377268403%_))))
                                (let ((_%$%hd268379268410%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e268378268406%_)))
                                      (_%$%tl268380268413%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e268378268406%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl268380268413%_))
                                      (let ((_%$%e268381268416%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl268380268413%_))))
                                        (let ((_%$%hd268382268420%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268381268416%_)))
                                              (_%$%tl268383268423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268381268416%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl268383268423%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd268379268410%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd268382268420%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g268371268389%_
                                               _%$%g268372268393%_))))
                                      (_%$%g268371268389%_
                                       _%$%g268372268393%_))))
                              (_%$%g268371268389%_ _%$%g268372268393%_))))
                      (_%$%g268371268389%_ _%$%g268372268393%_)))))
          (_%$%g268370268444%_ _%$stx268367%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx268448%_)
        (let* ((_%$%g268452268470%_
                (lambda (_%$%g268453268466%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268453268466%_))))
               (_%$%g268451268525%_
                (lambda (_%$%g268453268474%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268453268474%_))
                      (let ((_%$%e268456268477%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g268453268474%_))))
                        (let ((_%$%hd268457268481%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268456268477%_)))
                              (_%$%tl268458268484%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268456268477%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl268458268484%_))
                              (let ((_%$%e268459268487%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl268458268484%_))))
                                (let ((_%$%hd268460268491%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e268459268487%_)))
                                      (_%$%tl268461268494%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e268459268487%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl268461268494%_))
                                      (let ((_%$%e268462268497%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl268461268494%_))))
                                        (let ((_%$%hd268463268501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268462268497%_)))
                                              (_%$%tl268464268504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268462268497%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl268464268504%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda-primary))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd268460268491%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd268463268501%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g268452268470%_
                                               _%$%g268453268474%_))))
                                      (_%$%g268452268470%_
                                       _%$%g268453268474%_))))
                              (_%$%g268452268470%_ _%$%g268453268474%_))))
                      (_%$%g268452268470%_ _%$%g268453268474%_)))))
          (_%$%g268451268525%_ _%$stx268448%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx268529%_)
        (let* ((_%$%g268533268562%_
                (lambda (_%$%g268534268558%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268534268558%_))))
               (_%$%g268532268658%_
                (lambda (_%$%g268534268566%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268534268566%_))
                      (let ((_%$%e268537268569%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g268534268566%_))))
                        (let ((_%$%hd268538268573%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268537268569%_)))
                              (_%$%tl268539268576%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268537268569%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl268539268576%_))
                              (let ((_g272848_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl268539268576%_
                                        '0))))
                                (begin
                                  (let ((_g272849_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g272848_)
                                               (##values-length _g272848_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g272849_ 2)))
                                        (error "Context expects 2 values"
                                               _g272849_)))
                                  (let ((_%$%target268540268579%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g272848_ 0)))
                                        (_%$%tl268542268582%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g272848_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl268542268582%_))
                                        (letrec ((_%$%loop268543268585%_
                                                  (lambda (_%$%hd268541268589%_
                                                           _%$%rule268547268592%_
                                                           _%$%proc268548268593%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd268541268589%_))
                                                        (let ((_%$%e268544268595%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd268541268589%_))))
                  (let ((_%$%lp-hd268545268599%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e268544268595%_)))
                        (_%$%lp-tl268546268602%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e268544268595%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd268545268599%_))
                        (let ((_%$%e268551268605%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd268545268599%_))))
                          (let ((_%$%hd268552268609%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e268551268605%_)))
                                (_%$%tl268553268612%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e268551268605%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl268553268612%_))
                                (let ((_%$%e268554268615%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl268553268612%_))))
                                  (let ((_%$%hd268555268619%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e268554268615%_)))
                                        (_%$%tl268556268622%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e268554268615%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl268556268622%_))
                                        (_%$%loop268543268585%_
                                         _%$%lp-tl268546268602%_
                                         (cons _%$%hd268555268619%_
                                               _%$%rule268547268592%_)
                                         (cons _%$%hd268552268609%_
                                               _%$%proc268548268593%_))
                                        (_%$%g268533268562%_
                                         _%$%g268534268566%_))))
                                (_%$%g268533268562%_ _%$%g268534268566%_))))
                        (_%$%g268533268562%_ _%$%g268534268566%_))))
                (let ((_%$%rule268549268625%_ (reverse _%$%rule268547268592%_))
                      (_%$%proc268550268627%_
                       (reverse _%$%proc268548268593%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%rule268549268625%_
                             _%$%proc268550268627%_))
                          (let ((__tmp272850
                                 (lambda (_%$%g268646268650%_
                                          _%$%g268647268653%_
                                          _%$%g268648268655%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-inline-rule!))
                                               (cons _%$%g268647268653%_
                                                     (cons _%$%g268646268650%_
                                                           '())))
                                         _%$%g268648268655%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp272850
                             '()
                             _%$%rule268549268625%_
                             _%$%proc268550268627%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop268543268585%_
                                           _%$%target268540268579%_
                                           '()
                                           '()))
                                        (_%$%g268533268562%_
                                         _%$%g268534268566%_)))))
                              (_%$%g268533268562%_ _%$%g268534268566%_))))
                      (_%$%g268533268562%_ _%$%g268534268566%_)))))
          (_%$%g268532268658%_ _%$stx268529%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx268663%_)
        (let* ((_%$%g268667268685%_
                (lambda (_%$%g268668268681%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268668268681%_))))
               (_%$%g268666268740%_
                (lambda (_%$%g268668268689%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268668268689%_))
                      (let ((_%$%e268671268692%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g268668268689%_))))
                        (let ((_%$%hd268672268696%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268671268692%_)))
                              (_%$%tl268673268699%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268671268692%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl268673268699%_))
                              (let ((_%$%e268674268702%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl268673268699%_))))
                                (let ((_%$%hd268675268706%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e268674268702%_)))
                                      (_%$%tl268676268709%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e268674268702%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl268676268709%_))
                                      (let ((_%$%e268677268712%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl268676268709%_))))
                                        (let ((_%$%hd268678268716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268677268712%_)))
                                              (_%$%tl268679268719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268677268712%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl268679268719%_))
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
                                                (cons _%$%hd268675268706%_
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
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '!lambda-inline))
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'type))
                          '()))
              (cons _%$%hd268678268716%_ '())))
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
                                (cons _%$%hd268675268706%_ '()))
                          (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g268667268685%_
                                               _%$%g268668268689%_))))
                                      (_%$%g268667268685%_
                                       _%$%g268668268689%_))))
                              (_%$%g268667268685%_ _%$%g268668268689%_))))
                      (_%$%g268667268685%_ _%$%g268668268689%_)))))
          (_%$%g268666268740%_ _%$stx268663%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx268744%_)
        (let* ((_%__stx272330272331%_ _%$stx268744%_)
               (_%$%g268749268774%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx272330272331%_)))))
          (let ((_%__kont272333272334%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont272335272336%_
                 (lambda (_%$%g268754268821%_
                          _%$%g268755268823%_
                          _%$%g268756268824%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%$%g268756268824%_
                                           (cons _%$%g268755268823%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%$%g268754268821%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx272330272331%_))
                (let ((_%$%e268751268850%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx272330272331%_))))
                  (let ((_%$%tl268753268857%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e268751268850%_)))
                        (_%$%hd268752268854%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e268751268850%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl268753268857%_))
                        (_%__kont272333272334%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl268753268857%_))
                            (let ((_%$%e268760268791%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl268753268857%_))))
                              (let ((_%$%tl268762268798%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e268760268791%_)))
                                    (_%$%hd268761268795%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e268760268791%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd268761268795%_))
                                    (let ((_%$%e268763268801%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd268761268795%_))))
                                      (let ((_%$%tl268765268808%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e268763268801%_)))
                                            (_%$%hd268764268805%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e268763268801%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl268765268808%_))
                                            (let ((_%$%e268766268811%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl268765268808%_))))
                                              (let ((_%$%tl268768268818%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e268766268811%_)))
                                                    (_%$%hd268767268815%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e268766268811%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl268768268818%_))
                                                    (_%__kont272335272336%_
                                                     _%$%tl268762268798%_
                                                     _%$%hd268767268815%_
                                                     _%$%hd268764268805%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g268749268774%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g268749268774%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g268749268774%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g268749268774%_))))))
                (let () (declare (not safe)) (_%$%g268749268774%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx268868%_)
        (let* ((_%__stx272374272375%_ _%$stx268868%_)
               (_%$%g268873268904%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx272374272375%_)))))
          (let ((_%__kont272377272378%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont272379272380%_
                 (lambda (_%$%g268878268969%_
                          _%$%g268879268971%_
                          _%$%g268880268972%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%$%g268880268972%_
                                           (let ((__tmp272851
                                                  (lambda (_%$%g268992268995%_
                                                           _%$%g268993268998%_)
                                                    (cons _%$%g268992268995%_
                                                          _%$%g268993268998%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp272851
                                              '()
                                              _%$%g268879268971%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%$%g268878268969%_)
                                     '()))))))
            (let ((_%__match272417272418%_
                   (lambda (_%$%e268881268911%_
                            _%$%hd268882268915%_
                            _%$%tl268883268918%_
                            _%$%e268884268921%_
                            _%$%hd268885268925%_
                            _%$%tl268886268928%_
                            _%$%e268887268931%_
                            _%$%hd268888268935%_
                            _%$%tl268889268938%_
                            _%__splice272381272382%_
                            _%$%target268890268941%_
                            _%$%tl268892268944%_)
                     (letrec ((_%$%loop268893268947%_
                               (lambda (_%$%hd268891268951%_
                                        _%$%sig268897268954%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd268891268951%_))
                                     (let ((_%$%e268894268956%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%hd268891268951%_))))
                                       (let ((_%$%lp-tl268896268963%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e268894268956%_)))
                                             (_%$%lp-hd268895268960%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e268894268956%_))))
                                         (_%$%loop268893268947%_
                                          _%$%lp-tl268896268963%_
                                          (cons _%$%lp-hd268895268960%_
                                                _%$%sig268897268954%_))))
                                     (let ((_%$%sig268898268966%_
                                            (reverse _%$%sig268897268954%_)))
                                       (_%__kont272379272380%_
                                        _%$%tl268886268928%_
                                        _%$%sig268898268966%_
                                        _%$%hd268888268935%_))))))
                       (_%$%loop268893268947%_
                        _%$%target268890268941%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx272374272375%_))
                  (let ((_%$%e268875269008%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx272374272375%_))))
                    (let ((_%$%tl268877269015%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e268875269008%_)))
                          (_%$%hd268876269012%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e268875269008%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl268877269015%_))
                          (_%__kont272377272378%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl268877269015%_))
                              (let ((_%$%e268884268921%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl268877269015%_))))
                                (let ((_%$%tl268886268928%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e268884268921%_)))
                                      (_%$%hd268885268925%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e268884268921%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd268885268925%_))
                                      (let ((_%$%e268887268931%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd268885268925%_))))
                                        (let ((_%$%tl268889268938%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268887268931%_)))
                                              (_%$%hd268888268935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268887268931%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl268889268938%_))
                                              (let ((_%__splice272381272382%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl268889268938%_
                                                        '0))))
                                                (let ((_%$%tl268892268944%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice272381272382%_
                                                          '1)))
                                                      (_%$%target268890268941%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice272381272382%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl268892268944%_))
                                                      (_%__match272417272418%_
                                                       _%$%e268875269008%_
                                                       _%$%hd268876269012%_
                                                       _%$%tl268877269015%_
                                                       _%$%e268884268921%_
                                                       _%$%hd268885268925%_
                                                       _%$%tl268886268928%_
                                                       _%$%e268887268931%_
                                                       _%$%hd268888268935%_
                                                       _%$%tl268889268938%_
                                                       _%__splice272381272382%_
                                                       _%$%target268890268941%_
                                                       _%$%tl268892268944%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g268873268904%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g268873268904%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g268873268904%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g268873268904%_))))))
                  (let () (declare (not safe)) (_%$%g268873268904%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx269027%_)
        (let* ((_%__stx272420272421%_ _%$stx269027%_)
               (_%$%g269032269079%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx272420272421%_)))))
          (let ((_%__kont272423272424%_
                 (lambda (_%$%g269034269237%_ _%$%g269035269239%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%$%g269035269239%_
                               (let ((__tmp272852
                                      (lambda (_%$%g269259269262%_
                                               _%$%g269260269265%_)
                                        (cons _%$%g269259269262%_
                                              _%$%g269260269265%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp272852
                                  '()
                                  _%$%g269034269237%_))))))
                (_%__kont272427272428%_
                 (lambda (_%$%g269057269134%_ _%$%g269058269136%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%$%g269058269136%_
                               (let ((__tmp272853
                                      (lambda (_%$%g269153269156%_
                                               _%$%g269154269159%_)
                                        (cons _%$%g269153269156%_
                                              _%$%g269154269159%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp272853
                                  '()
                                  _%$%g269057269134%_)))))))
            (let* ((_%__match272487272488%_
                    (lambda (_%$%e269059269086%_
                             _%$%hd269060269090%_
                             _%$%tl269061269093%_
                             _%$%e269062269096%_
                             _%$%hd269063269100%_
                             _%$%tl269064269103%_
                             _%__splice272429272430%_
                             _%$%target269065269106%_
                             _%$%tl269067269109%_)
                      (letrec ((_%$%loop269068269112%_
                                (lambda (_%$%hd269066269116%_
                                         _%$%sig269072269119%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd269066269116%_))
                                      (let ((_%$%e269069269121%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd269066269116%_))))
                                        (let ((_%$%lp-tl269071269128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e269069269121%_)))
                                              (_%$%lp-hd269070269125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e269069269121%_))))
                                          (_%$%loop269068269112%_
                                           _%$%lp-tl269071269128%_
                                           (cons _%$%lp-hd269070269125%_
                                                 _%$%sig269072269119%_))))
                                      (let ((_%$%sig269073269131%_
                                             (reverse _%$%sig269072269119%_)))
                                        (_%__kont272427272428%_
                                         _%$%sig269073269131%_
                                         _%$%hd269063269100%_))))))
                        (_%$%loop269068269112%_
                         _%$%target269065269106%_
                         '()))))
                   (_%__match272479272480%_
                    (lambda (_%$%e269059269086%_
                             _%$%hd269060269090%_
                             _%$%tl269061269093%_
                             _%$%e269062269096%_
                             _%$%hd269063269100%_
                             _%$%tl269064269103%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl269064269103%_))
                          (let ((_%__splice272429272430%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl269064269103%_
                                    '0))))
                            (let ((_%$%tl269067269109%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice272429272430%_
                                      '1)))
                                  (_%$%target269065269106%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice272429272430%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl269067269109%_))
                                  (_%__match272487272488%_
                                   _%$%e269059269086%_
                                   _%$%hd269060269090%_
                                   _%$%tl269061269093%_
                                   _%$%e269062269096%_
                                   _%$%hd269063269100%_
                                   _%$%tl269064269103%_
                                   _%__splice272429272430%_
                                   _%$%target269065269106%_
                                   _%$%tl269067269109%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g269032269079%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g269032269079%_)))))
                   (_%__match272467272468%_
                    (lambda (_%$%e269036269169%_
                             _%$%hd269037269173%_
                             _%$%tl269038269176%_
                             _%$%e269039269179%_
                             _%$%hd269040269183%_
                             _%$%tl269041269186%_
                             _%$%e269042269189%_
                             _%$%hd269043269193%_
                             _%$%tl269044269196%_
                             _%$%e269045269199%_
                             _%$%hd269046269203%_
                             _%$%tl269047269206%_
                             _%__splice272425272426%_
                             _%$%target269048269209%_
                             _%$%tl269050269212%_)
                      (letrec ((_%$%loop269051269215%_
                                (lambda (_%$%hd269049269219%_
                                         _%$%sig269055269222%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd269049269219%_))
                                      (let ((_%$%e269052269224%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd269049269219%_))))
                                        (let ((_%$%lp-tl269054269231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e269052269224%_)))
                                              (_%$%lp-hd269053269228%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e269052269224%_))))
                                          (_%$%loop269051269215%_
                                           _%$%lp-tl269054269231%_
                                           (cons _%$%lp-hd269053269228%_
                                                 _%$%sig269055269222%_))))
                                      (let ((_%$%sig269056269234%_
                                             (reverse _%$%sig269055269222%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl269044269196%_))
                                            (_%__kont272423272424%_
                                             _%$%sig269056269234%_
                                             _%$%hd269040269183%_)
                                            (_%__match272479272480%_
                                             _%$%e269036269169%_
                                             _%$%hd269037269173%_
                                             _%$%tl269038269176%_
                                             _%$%e269039269179%_
                                             _%$%hd269040269183%_
                                             _%$%tl269041269186%_)))))))
                        (_%$%loop269051269215%_
                         _%$%target269048269209%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx272420272421%_))
                  (let ((_%$%e269036269169%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx272420272421%_))))
                    (let ((_%$%tl269038269176%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e269036269169%_)))
                          (_%$%hd269037269173%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e269036269169%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl269038269176%_))
                          (let ((_%$%e269039269179%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl269038269176%_))))
                            (let ((_%$%tl269041269186%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e269039269179%_)))
                                  (_%$%hd269040269183%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e269039269179%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl269041269186%_))
                                  (let ((_%$%e269042269189%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl269041269186%_))))
                                    (let ((_%$%tl269044269196%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e269042269189%_)))
                                          (_%$%hd269043269193%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e269042269189%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%hd269043269193%_))
                                          (let ((_%$%e269045269199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%hd269043269193%_))))
                                            (let ((_%$%tl269047269206%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e269045269199%_)))
                                                  (_%$%hd269046269203%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e269045269199%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd269046269203%_))
                                                  (if (let ((__tmp272854
                                                             |gxc[1]#_g272855_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp272854
                                                         _%$%hd269046269203%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%$%tl269047269206%_))
                                                          (let ((_%__splice272425272426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl269047269206%_
                            '0))))
                    (let ((_%$%tl269050269212%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice272425272426%_ '1)))
                          (_%$%target269048269209%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice272425272426%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl269050269212%_))
                          (_%__match272467272468%_
                           _%$%e269036269169%_
                           _%$%hd269037269173%_
                           _%$%tl269038269176%_
                           _%$%e269039269179%_
                           _%$%hd269040269183%_
                           _%$%tl269041269186%_
                           _%$%e269042269189%_
                           _%$%hd269043269193%_
                           _%$%tl269044269196%_
                           _%$%e269045269199%_
                           _%$%hd269046269203%_
                           _%$%tl269047269206%_
                           _%__splice272425272426%_
                           _%$%target269048269209%_
                           _%$%tl269050269212%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl269041269186%_))
                              (let ((_%__splice272429272430%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%$%tl269041269186%_
                                        '0))))
                                (let ((_%$%tl269067269109%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice272429272430%_
                                          '1)))
                                      (_%$%target269065269106%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice272429272430%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl269067269109%_))
                                      (_%__match272487272488%_
                                       _%$%e269036269169%_
                                       _%$%hd269037269173%_
                                       _%$%tl269038269176%_
                                       _%$%e269039269179%_
                                       _%$%hd269040269183%_
                                       _%$%tl269041269186%_
                                       _%__splice272429272430%_
                                       _%$%target269065269106%_
                                       _%$%tl269067269109%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g269032269079%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g269032269079%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl269041269186%_))
                      (let ((_%__splice272429272430%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl269041269186%_
                                '0))))
                        (let ((_%$%tl269067269109%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice272429272430%_ '1)))
                              (_%$%target269065269106%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice272429272430%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl269067269109%_))
                              (_%__match272487272488%_
                               _%$%e269036269169%_
                               _%$%hd269037269173%_
                               _%$%tl269038269176%_
                               _%$%e269039269179%_
                               _%$%hd269040269183%_
                               _%$%tl269041269186%_
                               _%__splice272429272430%_
                               _%$%target269065269106%_
                               _%$%tl269067269109%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g269032269079%_)))))
                      (let () (declare (not safe)) (_%$%g269032269079%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl269041269186%_))
                  (let ((_%__splice272429272430%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl269041269186%_
                            '0))))
                    (let ((_%$%tl269067269109%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice272429272430%_ '1)))
                          (_%$%target269065269106%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice272429272430%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl269067269109%_))
                          (_%__match272487272488%_
                           _%$%e269036269169%_
                           _%$%hd269037269173%_
                           _%$%tl269038269176%_
                           _%$%e269039269179%_
                           _%$%hd269040269183%_
                           _%$%tl269041269186%_
                           _%__splice272429272430%_
                           _%$%target269065269106%_
                           _%$%tl269067269109%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g269032269079%_)))))
                  (let () (declare (not safe)) (_%$%g269032269079%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl269041269186%_))
                                                      (let ((_%__splice272429272430%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl269041269186%_
                        '0))))
                (let ((_%$%tl269067269109%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice272429272430%_ '1)))
                      (_%$%target269065269106%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice272429272430%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl269067269109%_))
                      (_%__match272487272488%_
                       _%$%e269036269169%_
                       _%$%hd269037269173%_
                       _%$%tl269038269176%_
                       _%$%e269039269179%_
                       _%$%hd269040269183%_
                       _%$%tl269041269186%_
                       _%__splice272429272430%_
                       _%$%target269065269106%_
                       _%$%tl269067269109%_)
                      (let () (declare (not safe)) (_%$%g269032269079%_)))))
              (let () (declare (not safe)) (_%$%g269032269079%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl269041269186%_))
                                              (let ((_%__splice272429272430%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl269041269186%_
                                                        '0))))
                                                (let ((_%$%tl269067269109%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice272429272430%_
                                                          '1)))
                                                      (_%$%target269065269106%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice272429272430%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl269067269109%_))
                                                      (_%__match272487272488%_
                                                       _%$%e269036269169%_
                                                       _%$%hd269037269173%_
                                                       _%$%tl269038269176%_
                                                       _%$%e269039269179%_
                                                       _%$%hd269040269183%_
                                                       _%$%tl269041269186%_
                                                       _%__splice272429272430%_
                                                       _%$%target269065269106%_
                                                       _%$%tl269067269109%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g269032269079%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g269032269079%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl269041269186%_))
                                      (let ((_%__splice272429272430%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl269041269186%_
                                                '0))))
                                        (let ((_%$%tl269067269109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice272429272430%_
                                                  '1)))
                                              (_%$%target269065269106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice272429272430%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl269067269109%_))
                                              (_%__match272487272488%_
                                               _%$%e269036269169%_
                                               _%$%hd269037269173%_
                                               _%$%tl269038269176%_
                                               _%$%e269039269179%_
                                               _%$%hd269040269183%_
                                               _%$%tl269041269186%_
                                               _%__splice272429272430%_
                                               _%$%target269065269106%_
                                               _%$%tl269067269109%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g269032269079%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g269032269079%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g269032269079%_)))))
                  (let () (declare (not safe)) (_%$%g269032269079%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx270422%_ _%id270424%_)
        (let ((_%proc270428%_
               (let ((__tmp272856
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id270424%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp272856))))
          (if (procedure? _%proc270428%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx270422%_
                 _%id270424%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx270413%_ _%id270415%_)
        (let ((_%klass270419%_
               (let ((__tmp272857
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id270415%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp272857))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass270419%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx270413%_
                 _%id270415%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx269663%_ _%proc269665%_ _%sig269666%_)
        (letrec ((_%signature-arity269668%_
                  (lambda (_%args270345%_)
                    (let _%loop270348%_ ((_%rest270351%_ _%args270345%_)
                                         (_%count270353%_ '0))
                      (let* ((_%$%rest270354270365%_ _%rest270351%_)
                             (_%$%E270358270371%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%rest270354270365%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%$%K270361270402%_
                               (lambda (_%rest270399%_)
                                 (_%loop270348%_
                                  _%rest270399%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count270353%_ '1)))))
                              (_%$%K270360270391%_ (lambda () _%count270353%_))
                              (_%$%K270359270379%_
                               (lambda () (cons _%count270353%_ '()))))
                          (let ((_%$%try-match270356270395%_
                                 (lambda ()
                                   (if (null? _%$%rest270354270365%_)
                                       (_%$%K270360270391%_)
                                       (_%$%K270359270379%_)))))
                            (if (pair? _%$%rest270354270365%_)
                                (let* ((_%$%tl270363270406%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest270354270365%_)))
                                       (_%rest270410%_ _%$%tl270363270406%_))
                                  (_%$%K270361270402%_ _%rest270410%_))
                                (_%$%try-match270356270395%_))))))))
                 (_%make-signature269670%_
                  (lambda (_%args270227%_
                           _%return270229%_
                           _%effect270230%_
                           _%unchecked270231%_)
                    (let ((__tmp272858
                           (lambda (_%$%g270232270234%_)
                             (|gxc[1]#verify-class!|
                              _%ctx269663%_
                              _%$%g270232270234%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp272858 _%args270227%_))
                    (|gxc[1]#verify-class!| _%ctx269663%_ _%return270229%_)
                    (if _%unchecked270231%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx269663%_
                         _%unchecked270231%_)
                        '#!void)
                    (let ((_%arity270238%_
                           (_%signature-arity269668%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args270227%_)))))
                      (if _%effect270230%_
                          (let ((_%effect270241%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect270230%_))))
                            (if (and (list? _%effect270241%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect270241%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx269663%_
                                   _%proc269665%_
                                   _%effect270241%_))))
                          '#!void)
                      (cons _%arity270238%_
                            (cons (let* ((_%$%g270244270267%_
                                          (lambda (_%$%g270245270263%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g270245270263%_))))
                                         (_%$%g270243270341%_
                                          (lambda (_%$%g270245270271%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g270245270271%_))
                                                (let ((_%$%e270250270274%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%g270245270271%_))))
                                                  (let ((_%$%hd270251270278%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e270250270274%_)))
                                                        (_%$%tl270252270281%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e270250270274%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl270252270281%_))
                                                        (let ((_%$%e270253270284%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl270252270281%_))))
                  (let ((_%$%hd270254270288%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e270253270284%_)))
                        (_%$%tl270255270291%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e270253270284%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl270255270291%_))
                        (let ((_%$%e270256270294%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl270255270291%_))))
                          (let ((_%$%hd270257270298%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e270256270294%_)))
                                (_%$%tl270258270301%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e270256270294%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl270258270301%_))
                                (let ((_%$%e270259270304%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl270258270301%_))))
                                  (let ((_%$%hd270260270308%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e270259270304%_)))
                                        (_%$%tl270261270311%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e270259270304%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl270261270311%_))
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
                        (cons _%$%hd270251270278%_ '()))
                  (cons 'return:
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd270254270288%_ '()))
                              (cons 'effect:
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd270257270298%_
                                                      '()))
                                          (cons 'unchecked:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%$%hd270260270308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'builtin))
                                      '()))
                          '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%g270244270267%_
                                         _%$%g270245270271%_))))
                                (_%$%g270244270267%_ _%$%g270245270271%_))))
                        (_%$%g270244270267%_ _%$%g270245270271%_))))
                (_%$%g270244270267%_ _%$%g270245270271%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g270244270267%_
                                                 _%$%g270245270271%_)))))
                                    (_%$%g270243270341%_
                                     (list _%args270227%_
                                           _%return270229%_
                                           _%effect270230%_
                                           _%unchecked270231%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx269663%_ _%proc269665%_)
          (let* ((_%__stx272498272499%_ _%sig269666%_)
                 (_%$%g269677269780%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx272498272499%_)))))
            (let ((_%__kont272501272502%_
                   (lambda (_%$%g269679270208%_ _%$%g269680270210%_)
                     (_%make-signature269670%_
                      _%$%g269680270210%_
                      _%$%g269679270208%_
                      '#f
                      '#f)))
                  (_%__kont272503272504%_
                   (lambda (_%$%g269687270159%_
                            _%$%g269688270161%_
                            _%$%g269689270162%_)
                     (_%make-signature269670%_
                      _%$%g269689270162%_
                      _%$%g269688270161%_
                      _%$%g269687270159%_
                      '#f)))
                  (_%__kont272505272506%_
                   (lambda (_%$%g269703270083%_
                            _%$%g269704270085%_
                            _%$%g269705270086%_)
                     (_%make-signature269670%_
                      _%$%g269705270086%_
                      _%$%g269704270085%_
                      _%$%g269703270083%_
                      (let ((__tmp272859
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc269665%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp272859)))))
                  (_%__kont272507272508%_
                   (lambda (_%$%g269723269989%_
                            _%$%g269724269991%_
                            _%$%g269725269992%_
                            _%$%g269726269993%_)
                     (_%make-signature269670%_
                      _%$%g269726269993%_
                      _%$%g269725269992%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g269723269989%_)))))
                  (_%__kont272509272510%_
                   (lambda (_%$%g269747269896%_ _%$%g269748269898%_)
                     (_%make-signature269670%_
                      _%$%g269748269898%_
                      _%$%g269747269896%_
                      '#f
                      (let ((__tmp272860
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc269665%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp272860)))))
                  (_%__kont272511272512%_
                   (lambda (_%$%g269759269831%_
                            _%$%g269760269833%_
                            _%$%g269761269834%_)
                     (_%make-signature269670%_
                      _%$%g269761269834%_
                      _%$%g269760269833%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g269759269831%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx272498272499%_))
                  (let ((_%$%e269681270188%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx272498272499%_))))
                    (let ((_%$%tl269683270195%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e269681270188%_)))
                          (_%$%hd269682270192%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e269681270188%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl269683270195%_))
                          (let ((_%$%e269684270198%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl269683270195%_))))
                            (let ((_%$%tl269686270205%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e269684270198%_)))
                                  (_%$%hd269685270202%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e269684270198%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl269686270205%_))
                                  (_%__kont272501272502%_
                                   _%$%hd269685270202%_
                                   _%$%hd269682270192%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl269686270205%_))
                                      (let ((_%$%e269696270135%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl269686270205%_))))
                                        (let ((_%$%tl269698270142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e269696270135%_)))
                                              (_%$%hd269697270139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e269696270135%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd269697270139%_))
                                              (let ((_%$%e269699270145%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd269697270139%_))))
                                                (if (equal? _%$%e269699270145%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl269698270142%_))
                                                        (let ((_%$%e269700270149%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl269698270142%_))))
                  (let ((_%$%tl269702270156%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e269700270149%_)))
                        (_%$%hd269701270153%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e269700270149%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl269702270156%_))
                        (_%__kont272503272504%_
                         _%$%hd269701270153%_
                         _%$%hd269685270202%_
                         _%$%hd269682270192%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl269702270156%_))
                            (let ((_%$%e269719270069%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl269702270156%_))))
                              (let ((_%$%tl269721270076%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e269719270069%_)))
                                    (_%$%hd269720270073%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e269719270069%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%$%hd269720270073%_))
                                    (let ((_%$%e269722270079%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd269720270073%_))))
                                      (if (equal? _%$%e269722270079%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl269721270076%_))
                                              (_%__kont272505272506%_
                                               _%$%hd269701270153%_
                                               _%$%hd269685270202%_
                                               _%$%hd269682270192%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl269721270076%_))
                                                  (let ((_%$%e269744269979%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl269721270076%_))))
                                                    (let ((_%$%tl269746269986%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e269744269979%_)))
                                                          (_%$%hd269745269983%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e269744269979%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl269746269986%_))
                                                          (_%__kont272507272508%_
                                                           _%$%hd269745269983%_
                                                           _%$%hd269701270153%_
                                                           _%$%hd269685270202%_
                                                           _%$%hd269682270192%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g269677269780%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g269677269780%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g269677269780%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g269677269780%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g269677269780%_))))))
                (let () (declare (not safe)) (_%$%g269677269780%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%$%e269699270145%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl269698270142%_))
                                                            (_%__kont272509272510%_
                                                             _%$%hd269685270202%_
                                                             _%$%hd269682270192%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl269698270142%_))
                        (let ((_%$%e269772269821%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl269698270142%_))))
                          (let ((_%$%tl269774269828%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e269772269821%_)))
                                (_%$%hd269773269825%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e269772269821%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl269774269828%_))
                                (_%__kont272511272512%_
                                 _%$%hd269773269825%_
                                 _%$%hd269685270202%_
                                 _%$%hd269682270192%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g269677269780%_)))))
                        (let () (declare (not safe)) (_%$%g269677269780%_))))
                (let () (declare (not safe)) (_%$%g269677269780%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g269677269780%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g269677269780%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g269677269780%_)))))
                  (let () (declare (not safe)) (_%$%g269677269780%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig269274%_)
        (let* ((_%$%g269277269357%_
                (lambda (_%$%g269278269353%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g269278269353%_))))
               (_%$%g269276269659%_
                (lambda (_%$%g269278269361%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g269278269361%_))
                      (let ((_%$%e269284269364%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g269278269361%_))))
                        (let ((_%$%hd269285269368%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269284269364%_)))
                              (_%$%tl269286269371%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269284269364%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl269286269371%_))
                              (let ((_%$%e269287269374%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl269286269371%_))))
                                (let ((_%$%hd269288269378%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e269287269374%_)))
                                      (_%$%tl269289269381%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e269287269374%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%$%hd269288269378%_))
                                      (let ((_%$%e269290269384%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd269288269378%_))))
                                        (if (equal? _%$%e269290269384%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl269289269381%_))
                                                (let ((_%$%e269291269388%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl269289269381%_))))
                                                  (let ((_%$%hd269292269392%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e269291269388%_)))
                                                        (_%$%tl269293269395%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e269291269388%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd269292269392%_))
                                                        (let ((_%$%e269294269398%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd269292269392%_))))
                  (let ((_%$%hd269295269402%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e269294269398%_)))
                        (_%$%tl269296269405%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e269294269398%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd269295269402%_))
                        (if (let ((__tmp272861 |gxc[1]#_g272862_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp272861
                               _%$%hd269295269402%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl269296269405%_))
                                (let ((_%$%e269297269408%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl269296269405%_))))
                                  (let ((_%$%hd269298269412%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e269297269408%_)))
                                        (_%$%tl269299269415%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e269297269408%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl269299269415%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl269293269395%_))
                                            (let ((_%$%e269300269418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl269293269395%_))))
                                              (let ((_%$%hd269301269422%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e269300269418%_)))
                                                    (_%$%tl269302269425%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e269300269418%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd269301269422%_))
                                                    (let ((_%$%e269303269428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd269301269422%_))))
                                                      (if (equal? _%$%e269303269428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl269302269425%_))
                      (let ((_%$%e269304269432%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl269302269425%_))))
                        (let ((_%$%hd269305269436%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269304269432%_)))
                              (_%$%tl269306269439%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269304269432%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd269305269436%_))
                              (let ((_%$%e269307269442%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd269305269436%_))))
                                (let ((_%$%hd269308269446%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e269307269442%_)))
                                      (_%$%tl269309269449%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e269307269442%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd269308269446%_))
                                      (if (let ((__tmp272863
                                                 |gxc[1]#_g272864_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp272863
                                             _%$%hd269308269446%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl269309269449%_))
                                              (let ((_%$%e269310269452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl269309269449%_))))
                                                (let ((_%$%hd269311269456%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e269310269452%_)))
                                                      (_%$%tl269312269459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e269310269452%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl269312269459%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl269306269439%_))
                                                          (let ((_%$%e269313269462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl269306269439%_))))
                    (let ((_%$%hd269314269466%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e269313269462%_)))
                          (_%$%tl269315269469%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e269313269462%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd269314269466%_))
                          (let ((_%$%e269316269472%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd269314269466%_))))
                            (if (equal? _%$%e269316269472%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl269315269469%_))
                                    (let ((_%$%e269317269476%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl269315269469%_))))
                                      (let ((_%$%hd269318269480%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e269317269476%_)))
                                            (_%$%tl269319269483%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e269317269476%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd269318269480%_))
                                            (let ((_%$%e269320269486%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%hd269318269480%_))))
                                              (let ((_%$%hd269321269490%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e269320269486%_)))
                                                    (_%$%tl269322269493%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e269320269486%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd269321269490%_))
                                                    (if (let ((__tmp272865
                                                               |gxc[1]#_g272866_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp272865
                                                           _%$%hd269321269490%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl269322269493%_))
                                                            (let ((_%$%e269323269496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%$%tl269322269493%_))))
                      (let ((_%$%hd269324269500%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e269323269496%_)))
                            (_%$%tl269325269503%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e269323269496%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl269325269503%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl269319269483%_))
                                (let ((_%$%e269326269506%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl269319269483%_))))
                                  (let ((_%$%hd269327269510%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e269326269506%_)))
                                        (_%$%tl269328269513%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e269326269506%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%$%hd269327269510%_))
                                        (let ((_%$%e269329269516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd269327269510%_))))
                                          (if (equal? _%$%e269329269516%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl269328269513%_))
                                                  (let ((_%$%e269330269520%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl269328269513%_))))
                                                    (let ((_%$%hd269331269524%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e269330269520%_)))
                                                          (_%$%tl269332269527%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e269330269520%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd269331269524%_))
                                                          (let ((_%$%e269333269530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%hd269331269524%_))))
                    (let ((_%$%hd269334269534%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e269333269530%_)))
                          (_%$%tl269335269537%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e269333269530%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd269334269534%_))
                          (if (let ((__tmp272867 |gxc[1]#_g272868_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp272867
                                 _%$%hd269334269534%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl269335269537%_))
                                  (let ((_%$%e269336269540%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl269335269537%_))))
                                    (let ((_%$%hd269337269544%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e269336269540%_)))
                                          (_%$%tl269338269547%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e269336269540%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl269338269547%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl269332269527%_))
                                              (let ((_%$%e269339269550%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl269332269527%_))))
                                                (let ((_%$%hd269340269554%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e269339269550%_)))
                                                      (_%$%tl269341269557%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e269339269550%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%$%hd269340269554%_))
                                                      (let ((_%$%e269342269560%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd269340269554%_))))
                (if (equal? _%$%e269342269560%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl269341269557%_))
                        (let ((_%$%e269343269564%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl269341269557%_))))
                          (let ((_%$%hd269344269568%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e269343269564%_)))
                                (_%$%tl269345269571%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e269343269564%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd269344269568%_))
                                (let ((_%$%e269346269574%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%hd269344269568%_))))
                                  (let ((_%$%hd269347269578%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e269346269574%_)))
                                        (_%$%tl269348269581%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e269346269574%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd269347269578%_))
                                        (if (let ((__tmp272869
                                                   |gxc[1]#_g272870_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp272869
                                               _%$%hd269347269578%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl269348269581%_))
                                                (let ((_%$%e269349269584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl269348269581%_))))
                                                  (let ((_%$%hd269350269588%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e269349269584%_)))
                                                        (_%$%tl269351269591%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e269349269584%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl269351269591%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl269345269571%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd269337269544%_))
                        (cons _%$%hd269337269544%_
                              (cons (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'make-!signature))
                                          (cons 'return:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%$%hd269311269456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd269350269588%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '#f)
                    (_%$%g269277269357%_ _%$%g269278269361%_))
                (_%$%g269277269357%_ _%$%g269278269361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g269277269357%_
                                                 _%$%g269278269361%_))
                                            (_%$%g269277269357%_
                                             _%$%g269278269361%_))
                                        (_%$%g269277269357%_
                                         _%$%g269278269361%_))))
                                (_%$%g269277269357%_ _%$%g269278269361%_))))
                        (_%$%g269277269357%_ _%$%g269278269361%_))
                    (_%$%g269277269357%_ _%$%g269278269361%_)))
              (_%$%g269277269357%_ _%$%g269278269361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g269277269357%_
                                               _%$%g269278269361%_))
                                          (_%$%g269277269357%_
                                           _%$%g269278269361%_))))
                                  (_%$%g269277269357%_ _%$%g269278269361%_))
                              (_%$%g269277269357%_ _%$%g269278269361%_))
                          (_%$%g269277269357%_ _%$%g269278269361%_))))
                  (_%$%g269277269357%_ _%$%g269278269361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g269277269357%_
                                                   _%$%g269278269361%_))
                                              (_%$%g269277269357%_
                                               _%$%g269278269361%_)))
                                        (_%$%g269277269357%_
                                         _%$%g269278269361%_))))
                                (_%$%g269277269357%_ _%$%g269278269361%_))
                            (_%$%g269277269357%_ _%$%g269278269361%_))))
                    (_%$%g269277269357%_ _%$%g269278269361%_))
                (_%$%g269277269357%_ _%$%g269278269361%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g269277269357%_
                                                     _%$%g269278269361%_))))
                                            (_%$%g269277269357%_
                                             _%$%g269278269361%_))))
                                    (_%$%g269277269357%_ _%$%g269278269361%_))
                                (_%$%g269277269357%_ _%$%g269278269361%_)))
                          (_%$%g269277269357%_ _%$%g269278269361%_))))
                  (_%$%g269277269357%_ _%$%g269278269361%_))
              (_%$%g269277269357%_ _%$%g269278269361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g269277269357%_
                                               _%$%g269278269361%_))
                                          (_%$%g269277269357%_
                                           _%$%g269278269361%_))
                                      (_%$%g269277269357%_
                                       _%$%g269278269361%_))))
                              (_%$%g269277269357%_ _%$%g269278269361%_))))
                      (_%$%g269277269357%_ _%$%g269278269361%_))
                  (_%$%g269277269357%_ _%$%g269278269361%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g269277269357%_
                                                     _%$%g269278269361%_))))
                                            (_%$%g269277269357%_
                                             _%$%g269278269361%_))
                                        (_%$%g269277269357%_
                                         _%$%g269278269361%_))))
                                (_%$%g269277269357%_ _%$%g269278269361%_))
                            (_%$%g269277269357%_ _%$%g269278269361%_))
                        (_%$%g269277269357%_ _%$%g269278269361%_))))
                (_%$%g269277269357%_ _%$%g269278269361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g269277269357%_
                                                 _%$%g269278269361%_))
                                            (_%$%g269277269357%_
                                             _%$%g269278269361%_)))
                                      (_%$%g269277269357%_
                                       _%$%g269278269361%_))))
                              (_%$%g269277269357%_ _%$%g269278269361%_))))
                      (_%$%g269277269357%_ _%$%g269278269361%_)))))
          (_%$%g269276269659%_ _%sig269274%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx270431%_)
        (let* ((_%$%g270434270452%_
                (lambda (_%$%g270435270448%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g270435270448%_))))
               (_%$%g270433270507%_
                (lambda (_%$%g270435270456%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g270435270456%_))
                      (let ((_%$%e270438270459%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g270435270456%_))))
                        (let ((_%$%hd270439270463%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270438270459%_)))
                              (_%$%tl270440270466%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270438270459%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl270440270466%_))
                              (let ((_%$%e270441270469%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl270440270466%_))))
                                (let ((_%$%hd270442270473%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e270441270469%_)))
                                      (_%$%tl270443270476%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e270441270469%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl270443270476%_))
                                      (let ((_%$%e270444270479%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl270443270476%_))))
                                        (let ((_%$%hd270445270483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e270444270479%_)))
                                              (_%$%tl270446270486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e270444270479%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl270446270486%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd270442270473%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd270445270483%_)))
                                                  (begin
                                                    (|gxc[1]#verify-procedure!|
                                                     _%stx270431%_
                                                     _%$%hd270442270473%_)
                                                    (|gxc[1]#verify-class!|
                                                     _%stx270431%_
                                                     _%$%hd270445270483%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-type))
                                                          (cons _%$%hd270442270473%_
                                                                (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'make-!primitive-predicate))
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd270445270483%_
                                                      '()))
                                          '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g270434270452%_
                                                   _%$%g270435270456%_))
                                              (_%$%g270434270452%_
                                               _%$%g270435270456%_))))
                                      (_%$%g270434270452%_
                                       _%$%g270435270456%_))))
                              (_%$%g270434270452%_ _%$%g270435270456%_))))
                      (_%$%g270434270452%_ _%$%g270435270456%_)))))
          (_%$%g270433270507%_ _%stx270431%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx270511%_)
        (let* ((_%$%g270514270538%_
                (lambda (_%$%g270515270534%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g270515270534%_))))
               (_%$%g270513270819%_
                (lambda (_%$%g270515270542%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g270515270542%_))
                      (let ((_%$%e270518270545%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g270515270542%_))))
                        (let ((_%$%hd270519270549%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270518270545%_)))
                              (_%$%tl270520270552%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270518270545%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl270520270552%_))
                              (let ((_%$%e270521270555%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl270520270552%_))))
                                (let ((_%$%hd270522270559%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e270521270555%_)))
                                      (_%$%tl270523270562%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e270521270555%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl270523270562%_))
                                      (let ((_g272871_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl270523270562%_
                                                '0))))
                                        (begin
                                          (let ((_g272872_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g272871_)
                                                       (##values-length
                                                        _g272871_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g272872_ 2)))
                                                (error "Context expects 2 values"
                                                       _g272872_)))
                                          (let ((_%$%target270524270565%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g272871_ 0)))
                                                (_%$%tl270526270568%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g272871_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl270526270568%_))
                                                (letrec ((_%$%loop270527270571%_
                                                          (lambda (_%$%hd270525270575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%signature270531270578%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd270525270575%_))
                        (let ((_%$%e270528270580%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd270525270575%_))))
                          (let ((_%$%lp-hd270529270584%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e270528270580%_)))
                                (_%$%lp-tl270530270587%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e270528270580%_))))
                            (_%$%loop270527270571%_
                             _%$%lp-tl270530270587%_
                             (cons _%$%lp-hd270529270584%_
                                   _%$%signature270531270578%_))))
                        (let ((_%$%signature270532270590%_
                               (reverse _%$%signature270531270578%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd270522270559%_))
                              (let* ((_%$%g270613270628%_
                                      (lambda (_%$%g270614270624%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g270614270624%_))))
                                     (_%$%g270612270807%_
                                      (lambda (_%$%g270614270632%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%g270614270632%_))
                                            (let ((_%$%e270617270635%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%g270614270632%_))))
                                              (let ((_%$%hd270618270639%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e270617270635%_)))
                                                    (_%$%tl270619270642%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e270617270635%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl270619270642%_))
                                                    (let ((_%$%e270620270645%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl270619270642%_))))
                                                      (let ((_%$%hd270621270649%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e270620270645%_)))
                    (_%$%tl270622270652%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e270620270645%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl270622270652%_))
                    (let* ((_%$%g270673270681%_
                            (lambda (_%$%g270674270677%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g270674270677%_))))
                           (_%$%g270672270803%_
                            (lambda (_%$%g270674270685%_)
                              (let* ((_%unchecked270701%_
                                      (|gxc[1]#signature->unchecked-signature|
                                       _%$%hd270621270649%_))
                                     (_%$%g270704270712%_
                                      (lambda (_%$%g270705270708%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g270705270708%_))))
                                     (_%$%g270703270735%_
                                      (lambda (_%$%g270705270716%_)
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'begin))
                                              (cons _%$%g270674270685%_
                                                    (cons _%$%g270705270716%_
                                                          '()))))))
                                (_%$%g270703270735%_
                                 (if _%unchecked270701%_
                                     (let* ((_%$%g270739270754%_
                                             (lambda (_%$%g270740270750%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g270740270750%_))))
                                            (_%$%g270738270799%_
                                             (lambda (_%$%g270740270758%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g270740270758%_))
                                                   (let ((_%$%e270743270761%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%$%g270740270758%_))))
                                                     (let ((_%$%hd270744270765%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e270743270761%_)))
                                                           (_%$%tl270745270768%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e270743270761%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl270745270768%_))
                                                           (let ((_%$%e270746270771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%$%tl270745270768%_))))
                     (let ((_%$%hd270747270775%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e270746270771%_)))
                           (_%$%tl270748270778%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e270746270771%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl270748270778%_))
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'declare-type))
                                 (cons _%$%hd270744270765%_
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-!primitive-lambda))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%$%hd270618270639%_ '()))
                 (cons '#f
                       (cons 'signature: (cons _%$%hd270747270775%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (_%$%g270739270754%_ _%$%g270740270758%_))))
                   (_%$%g270739270754%_ _%$%g270740270758%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g270739270754%_
                                                    _%$%g270740270758%_)))))
                                       (_%$%g270738270799%_
                                        _%unchecked270701%_))
                                     '(begin)))))))
                      (_%$%g270672270803%_
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'declare-type))
                             (cons _%$%hd270522270559%_
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-lambda))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%$%hd270618270639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons 'signature:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%hd270621270649%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                    (_%$%g270613270628%_ _%$%g270614270632%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g270613270628%_
                                                     _%$%g270614270632%_))))
                                            (_%$%g270613270628%_
                                             _%$%g270614270632%_)))))
                                (_%$%g270612270807%_
                                 (|gxc[1]#parse-signature|
                                  _%stx270511%_
                                  _%$%hd270522270559%_
                                  (let ((__tmp272873
                                         (lambda (_%$%g270810270813%_
                                                  _%$%g270811270816%_)
                                           (cons _%$%g270810270813%_
                                                 _%$%g270811270816%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp272873
                                     '()
                                     _%$%signature270532270590%_)))))
                              (_%$%g270514270538%_ _%$%g270515270542%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop270527270571%_
                                                   _%$%target270524270565%_
                                                   '()))
                                                (_%$%g270514270538%_
                                                 _%$%g270515270542%_)))))
                                      (_%$%g270514270538%_
                                       _%$%g270515270542%_))))
                              (_%$%g270514270538%_ _%$%g270515270542%_))))
                      (_%$%g270514270538%_ _%$%g270515270542%_)))))
          (_%$%g270513270819%_ _%stx270511%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx270824%_)
        (let* ((_%$%g270827270851%_
                (lambda (_%$%g270828270847%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g270828270847%_))))
               (_%$%g270826271726%_
                (lambda (_%$%g270828270855%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g270828270855%_))
                      (let ((_%$%e270831270858%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g270828270855%_))))
                        (let ((_%$%hd270832270862%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270831270858%_)))
                              (_%$%tl270833270865%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270831270858%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl270833270865%_))
                              (let ((_%$%e270834270868%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl270833270865%_))))
                                (let ((_%$%hd270835270872%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e270834270868%_)))
                                      (_%$%tl270836270875%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e270834270868%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl270836270875%_))
                                      (let ((_g272874_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl270836270875%_
                                                '0))))
                                        (begin
                                          (let ((_g272875_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g272874_)
                                                       (##values-length
                                                        _g272874_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g272875_ 2)))
                                                (error "Context expects 2 values"
                                                       _g272875_)))
                                          (let ((_%$%target270837270878%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g272874_ 0)))
                                                (_%$%tl270839270881%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g272874_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl270839270881%_))
                                                (letrec ((_%$%loop270840270884%_
                                                          (lambda (_%$%hd270838270888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%case-signature270844270891%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd270838270888%_))
                        (let ((_%$%e270841270893%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd270838270888%_))))
                          (let ((_%$%lp-hd270842270897%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e270841270893%_)))
                                (_%$%lp-tl270843270900%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e270841270893%_))))
                            (_%$%loop270840270884%_
                             _%$%lp-tl270843270900%_
                             (cons _%$%lp-hd270842270897%_
                                   _%$%case-signature270844270891%_))))
                        (let ((_%$%case-signature270845270903%_
                               (reverse _%$%case-signature270844270891%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd270835270872%_))
                              (let* ((_%signatures270939%_
                                      (map (lambda (_%$%g270925270927%_)
                                             (|gxc[1]#parse-signature|
                                              _%stx270824%_
                                              _%$%hd270835270872%_
                                              _%$%g270925270927%_))
                                           (let ((__tmp272876
                                                  (lambda (_%$%g270930270933%_
                                                           _%$%g270931270936%_)
                                                    (cons _%$%g270930270933%_
                                                          _%$%g270931270936%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp272876
                                              '()
                                              _%$%case-signature270845270903%_))))
                                     (_%$%g270942270968%_
                                      (lambda (_%$%g270943270964%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g270943270964%_))))
                                     (_%$%g270941271722%_
                                      (lambda (_%$%g270943270972%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g270943270972%_))
                                            (let ((_g272877_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g270943270972%_
                                                      '0))))
                                              (begin
                                                (let ((_g272878_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g272877_)
                                                             (##values-length
                                                              _g272877_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g272878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g272878_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target270946270975%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g272877_
                                                          0)))
                                                      (_%$%tl270948270978%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g272877_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl270948270978%_))
                                                      (letrec ((_%$%loop270949270981%_
                                                                (lambda (_%$%hd270947270985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%sig270953270988%_
                                 _%$%arity270954270989%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd270947270985%_))
                              (let ((_%$%e270950270991%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd270947270985%_))))
                                (let ((_%$%lp-hd270951270995%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e270950270991%_)))
                                      (_%$%lp-tl270952270998%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e270950270991%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%lp-hd270951270995%_))
                                      (let ((_%$%e270957271001%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%lp-hd270951270995%_))))
                                        (let ((_%$%hd270958271005%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e270957271001%_)))
                                              (_%$%tl270959271008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e270957271001%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl270959271008%_))
                                              (let ((_%$%e270960271011%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl270959271008%_))))
                                                (let ((_%$%hd270961271015%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e270960271011%_)))
                                                      (_%$%tl270962271018%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e270960271011%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl270962271018%_))
                                                      (_%$%loop270949270981%_
                                                       _%$%lp-tl270952270998%_
                                                       (cons _%$%hd270961271015%_
                                                             _%$%sig270953270988%_)
                                                       (cons _%$%hd270958271005%_
                                                             _%$%arity270954270989%_))
                                                      (_%$%g270942270968%_
                                                       _%$%g270943270972%_))))
                                              (_%$%g270942270968%_
                                               _%$%g270943270972%_))))
                                      (_%$%g270942270968%_
                                       _%$%g270943270972%_))))
                              (let ((_%$%sig270955271021%_
                                     (reverse _%$%sig270953270988%_))
                                    (_%$%arity270956271023%_
                                     (reverse _%$%arity270954270989%_)))
                                (let* ((_%$%g271044271052%_
                                        (lambda (_%$%g271045271048%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g271045271048%_))))
                                       (_%$%g271043271707%_
                                        (lambda (_%$%g271045271056%_)
                                          (let* ((_%$%g271072271080%_
                                                  (lambda (_%$%g271073271076%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g271073271076%_))))
                                                 (_%$%g271071271102%_
                                                  (lambda (_%$%g271073271084%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%$%g271045271056%_
                                                                (cons _%$%g271073271084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g271071271102%_
                                             (let ((_g272879_
                                                    (let _%loop271106%_ ((_%rest271109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%signatures270939%_)
                                 (_%unchecked-proc271111%_ '#f)
                                 (_%unchecked-clauses271112%_ '()))
              (let* ((_%$%rest271113271121%_ _%rest271109%_)
                     (_%$%else271115271133%_
                      (lambda ()
                        (values _%unchecked-proc271111%_
                                (reverse! _%unchecked-clauses271112%_))))
                     (_%$%K271117271574%_
                      (lambda (_%rest271137%_ _%hd271139%_)
                        (let* ((_%$%g271141271228%_
                                (lambda (_%$%g271142271224%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g271142271224%_))))
                               (_%$%g271140271570%_
                                (lambda (_%$%g271142271232%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%g271142271232%_))
                                      (let ((_%$%e271149271235%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%g271142271232%_))))
                                        (let ((_%$%hd271150271239%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e271149271235%_)))
                                              (_%$%tl271151271242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e271149271235%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl271151271242%_))
                                              (let ((_%$%e271152271245%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl271151271242%_))))
                                                (let ((_%$%hd271153271249%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e271152271245%_)))
                                                      (_%$%tl271154271252%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e271152271245%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd271153271249%_))
                                                      (let ((_%$%e271155271255%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%hd271153271249%_))))
                (let ((_%$%hd271156271259%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e271155271255%_)))
                      (_%$%tl271157271262%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e271155271255%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl271157271262%_))
                      (let ((_%$%e271158271265%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl271157271262%_))))
                        (let ((_%$%hd271159271269%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271158271265%_)))
                              (_%$%tl271160271272%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271158271265%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-datum? _%$%hd271159271269%_))
                              (let ((_%$%e271161271275%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd271159271269%_))))
                                (if (equal? _%$%e271161271275%_ 'arguments:)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl271160271272%_))
                                        (let ((_%$%e271162271279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl271160271272%_))))
                                          (let ((_%$%hd271163271283%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e271162271279%_)))
                                                (_%$%tl271164271286%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e271162271279%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd271163271283%_))
                                                (let ((_%$%e271165271289%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%hd271163271283%_))))
                                                  (let ((_%$%hd271166271293%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e271165271289%_)))
                                                        (_%$%tl271167271296%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e271165271289%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd271166271293%_))
                                                        (if (let ((__tmp272881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gxc[1]#_g272882_|))
                      (declare (not safe))
                      (gx#free-identifier=? __tmp272881 _%$%hd271166271293%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl271167271296%_))
                        (let ((_%$%e271168271299%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl271167271296%_))))
                          (let ((_%$%hd271169271303%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e271168271299%_)))
                                (_%$%tl271170271306%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e271168271299%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl271170271306%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl271164271286%_))
                                    (let ((_%$%e271171271309%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl271164271286%_))))
                                      (let ((_%$%hd271172271313%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e271171271309%_)))
                                            (_%$%tl271173271316%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e271171271309%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-datum?
                                               _%$%hd271172271313%_))
                                            (let ((_%$%e271174271319%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd271172271313%_))))
                                              (if (equal? _%$%e271174271319%_
                                                          'return:)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl271173271316%_))
                                                      (let ((_%$%e271175271323%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl271173271316%_))))
                (let ((_%$%hd271176271327%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e271175271323%_)))
                      (_%$%tl271177271330%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e271175271323%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd271176271327%_))
                      (let ((_%$%e271178271333%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%hd271176271327%_))))
                        (let ((_%$%hd271179271337%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271178271333%_)))
                              (_%$%tl271180271340%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271178271333%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd271179271337%_))
                              (if (let ((__tmp272883 |gxc[1]#_g272884_|))
                                    (declare (not safe))
                                    (gx#free-identifier=?
                                     __tmp272883
                                     _%$%hd271179271337%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl271180271340%_))
                                      (let ((_%$%e271181271343%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl271180271340%_))))
                                        (let ((_%$%hd271182271347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e271181271343%_)))
                                              (_%$%tl271183271350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e271181271343%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl271183271350%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl271177271330%_))
                                                  (let ((_%$%e271184271353%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl271177271330%_))))
                                                    (let ((_%$%hd271185271357%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e271184271353%_)))
                                                          (_%$%tl271186271360%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e271184271353%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-datum?
                                                             _%$%hd271185271357%_))
                                                          (let ((_%$%e271187271363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd271185271357%_))))
                    (if (equal? _%$%e271187271363%_ 'effect:)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl271186271360%_))
                            (let ((_%$%e271188271367%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl271186271360%_))))
                              (let ((_%$%hd271189271371%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e271188271367%_)))
                                    (_%$%tl271190271374%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e271188271367%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd271189271371%_))
                                    (let ((_%$%e271191271377%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd271189271371%_))))
                                      (let ((_%$%hd271192271381%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e271191271377%_)))
                                            (_%$%tl271193271384%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e271191271377%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd271192271381%_))
                                            (if (let ((__tmp272885
                                                       |gxc[1]#_g272886_|))
                                                  (declare (not safe))
                                                  (gx#free-identifier=?
                                                   __tmp272885
                                                   _%$%hd271192271381%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl271193271384%_))
                                                    (let ((_%$%e271194271387%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl271193271384%_))))
                                                      (let ((_%$%hd271195271391%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e271194271387%_)))
                    (_%$%tl271196271394%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e271194271387%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl271196271394%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl271190271374%_))
                        (let ((_%$%e271197271397%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl271190271374%_))))
                          (let ((_%$%hd271198271401%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e271197271397%_)))
                                (_%$%tl271199271404%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e271197271397%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd271198271401%_))
                                (let ((_%$%e271200271407%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd271198271401%_))))
                                  (if (equal? _%$%e271200271407%_ 'unchecked:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl271199271404%_))
                                          (let ((_%$%e271201271411%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl271199271404%_))))
                                            (let ((_%$%hd271202271415%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e271201271411%_)))
                                                  (_%$%tl271203271418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e271201271411%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd271202271415%_))
                                                  (let ((_%$%e271204271421%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd271202271415%_))))
                                                    (let ((_%$%hd271205271425%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e271204271421%_)))
                                                          (_%$%tl271206271428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e271204271421%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd271205271425%_))
                                                          (if (let ((__tmp272887
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             |gxc[1]#_g272888_|))
                        (declare (not safe))
                        (gx#free-identifier=?
                         __tmp272887
                         _%$%hd271205271425%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl271206271428%_))
                          (let ((_%$%e271207271431%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl271206271428%_))))
                            (let ((_%$%hd271208271435%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e271207271431%_)))
                                  (_%$%tl271209271438%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e271207271431%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl271209271438%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl271203271418%_))
                                      (let ((_%$%e271210271441%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl271203271418%_))))
                                        (let ((_%$%hd271211271445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e271210271441%_)))
                                              (_%$%tl271212271448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e271210271441%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd271211271445%_))
                                              (let ((_%$%e271213271451%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd271211271445%_))))
                                                (if (equal? _%$%e271213271451%_
                                                            'origin:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl271212271448%_))
                                                        (let ((_%$%e271214271455%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl271212271448%_))))
                  (let ((_%$%hd271215271459%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e271214271455%_)))
                        (_%$%tl271216271462%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e271214271455%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd271215271459%_))
                        (let ((_%$%e271217271465%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd271215271459%_))))
                          (let ((_%$%hd271218271469%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e271217271465%_)))
                                (_%$%tl271219271472%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e271217271465%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd271218271469%_))
                                (if (let ((__tmp272889 |gxc[1]#_g272890_|))
                                      (declare (not safe))
                                      (gx#free-identifier=?
                                       __tmp272889
                                       _%$%hd271218271469%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl271219271472%_))
                                        (let ((_%$%e271220271475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl271219271472%_))))
                                          (let ((_%$%hd271221271479%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e271220271475%_)))
                                                (_%$%tl271222271482%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e271220271475%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl271222271482%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl271216271462%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl271154271252%_))
                                                        (let ((_%clause271562%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%$%hd271150271239%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'make-!signature))
                                                           (cons 'return:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%hd271182271347%_ '()))
                               (cons 'origin:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%hd271221271479%_
                                                       '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                      (_%unchecked271564%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%$%hd271208271435%_))))
                  (_%loop271106%_
                   _%rest271137%_
                   (let ((_%$e271566%_ _%unchecked271564%_))
                     (if _%$e271566%_ _%$e271566%_ _%unchecked-proc271111%_))
                   (cons _%clause271562%_ _%unchecked-clauses271112%_)))
                (_%$%g271141271228%_ _%$%g271142271232%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g271141271228%_
                                                     _%$%g271142271232%_))
                                                (_%$%g271141271228%_
                                                 _%$%g271142271232%_))))
                                        (_%$%g271141271228%_
                                         _%$%g271142271232%_))
                                    (_%$%g271141271228%_ _%$%g271142271232%_))
                                (_%$%g271141271228%_ _%$%g271142271232%_))))
                        (_%$%g271141271228%_ _%$%g271142271232%_))))
                (_%$%g271141271228%_ _%$%g271142271232%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g271141271228%_
                                                     _%$%g271142271232%_)))
                                              (_%$%g271141271228%_
                                               _%$%g271142271232%_))))
                                      (_%$%g271141271228%_
                                       _%$%g271142271232%_))
                                  (_%$%g271141271228%_ _%$%g271142271232%_))))
                          (_%$%g271141271228%_ _%$%g271142271232%_))
                      (_%$%g271141271228%_ _%$%g271142271232%_))
                  (_%$%g271141271228%_ _%$%g271142271232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g271141271228%_
                                                   _%$%g271142271232%_))))
                                          (_%$%g271141271228%_
                                           _%$%g271142271232%_))
                                      (_%$%g271141271228%_
                                       _%$%g271142271232%_)))
                                (_%$%g271141271228%_ _%$%g271142271232%_))))
                        (_%$%g271141271228%_ _%$%g271142271232%_))
                    (_%$%g271141271228%_ _%$%g271142271232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g271141271228%_
                                                     _%$%g271142271232%_))
                                                (_%$%g271141271228%_
                                                 _%$%g271142271232%_))
                                            (_%$%g271141271228%_
                                             _%$%g271142271232%_))))
                                    (_%$%g271141271228%_
                                     _%$%g271142271232%_))))
                            (_%$%g271141271228%_ _%$%g271142271232%_))
                        (_%$%g271141271228%_ _%$%g271142271232%_)))
                  (_%$%g271141271228%_ _%$%g271142271232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g271141271228%_
                                                   _%$%g271142271232%_))
                                              (_%$%g271141271228%_
                                               _%$%g271142271232%_))))
                                      (_%$%g271141271228%_
                                       _%$%g271142271232%_))
                                  (_%$%g271141271228%_ _%$%g271142271232%_))
                              (_%$%g271141271228%_ _%$%g271142271232%_))))
                      (_%$%g271141271228%_ _%$%g271142271232%_))))
              (_%$%g271141271228%_ _%$%g271142271232%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g271141271228%_
                                                   _%$%g271142271232%_)))
                                            (_%$%g271141271228%_
                                             _%$%g271142271232%_))))
                                    (_%$%g271141271228%_ _%$%g271142271232%_))
                                (_%$%g271141271228%_ _%$%g271142271232%_))))
                        (_%$%g271141271228%_ _%$%g271142271232%_))
                    (_%$%g271141271228%_ _%$%g271142271232%_))
                (_%$%g271141271228%_ _%$%g271142271232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g271141271228%_
                                                 _%$%g271142271232%_))))
                                        (_%$%g271141271228%_
                                         _%$%g271142271232%_))
                                    (_%$%g271141271228%_ _%$%g271142271232%_)))
                              (_%$%g271141271228%_ _%$%g271142271232%_))))
                      (_%$%g271141271228%_ _%$%g271142271232%_))))
              (_%$%g271141271228%_ _%$%g271142271232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g271141271228%_
                                               _%$%g271142271232%_))))
                                      (_%$%g271141271228%_
                                       _%$%g271142271232%_)))))
                          (_%$%g271140271570%_ _%hd271139%_)))))
                (if (pair? _%$%rest271113271121%_)
                    (let ((_%$%hd271118271578%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest271113271121%_)))
                          (_%$%tl271119271581%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest271113271121%_))))
                      (let* ((_%hd271584%_ _%$%hd271118271578%_)
                             (_%rest271587%_ _%$%tl271119271581%_))
                        (_%$%K271117271574%_ _%rest271587%_ _%hd271584%_)))
                    (_%$%else271115271133%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 (let ((_g272880_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g272879_)
                                                              (##values-length
                                                               _g272879_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g272880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g272880_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%unchecked-proc271590%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g272879_
                                                           0)))
                                                       (_%unchecked-clauses271592%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g272879_
                                                           1))))
                                                   (if _%unchecked-proc271590%_
                                                       (let* ((_%$%g271594271618%_
                                                               (lambda (_%$%g271595271614%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g271595271614%_))))
                      (_%$%g271593271703%_
                       (lambda (_%$%g271595271622%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%g271595271622%_))
                             (let ((_%$%e271598271625%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%$%g271595271622%_))))
                               (let ((_%$%hd271599271629%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e271598271625%_)))
                                     (_%$%tl271600271632%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e271598271625%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%tl271600271632%_))
                                     (let ((_%$%e271601271635%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%tl271600271632%_))))
                                       (let ((_%$%hd271602271639%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e271601271635%_)))
                                             (_%$%tl271603271642%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e271601271635%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair/null?
                                                _%$%hd271602271639%_))
                                             (let ((_g272891_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-split-splice
                                                       _%$%hd271602271639%_
                                                       '0))))
                                               (begin
                                                 (let ((_g272892_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g272891_)
                                                              (##values-length
                                                               _g272891_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g272892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g272892_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$%target271604271645%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g272891_
                                                           0)))
                                                       (_%$%tl271606271648%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g272891_
                                                           1))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl271606271648%_))
                                                       (letrec ((_%$%loop271607271651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%hd271605271655%_
                                  _%$%clause271611271658%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd271605271655%_))
                               (let ((_%$%e271608271660%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%$%hd271605271655%_))))
                                 (let ((_%$%lp-hd271609271664%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e271608271660%_)))
                                       (_%$%lp-tl271610271667%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e271608271660%_))))
                                   (_%$%loop271607271651%_
                                    _%$%lp-tl271610271667%_
                                    (cons _%$%lp-hd271609271664%_
                                          _%$%clause271611271658%_))))
                               (let ((_%$%clause271612271670%_
                                      (reverse _%$%clause271611271658%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl271603271642%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-type))
                                           (cons _%$%hd271599271629%_
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!primitive-case-lambda))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))
                                 (let ((__tmp272893
                                        (lambda (_%$%g271694271697%_
                                                 _%$%g271695271700%_)
                                          (cons _%$%g271694271697%_
                                                _%$%g271695271700%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp272893
                                    '()
                                    _%$%clause271612271670%_)))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%g271594271618%_
                                      _%$%g271595271622%_)))))))
                 (_%$%loop271607271651%_ _%$%target271604271645%_ '()))
               (_%$%g271594271618%_ _%$%g271595271622%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g271594271618%_
                                              _%$%g271595271622%_))))
                                     (_%$%g271594271618%_
                                      _%$%g271595271622%_))))
                             (_%$%g271594271618%_ _%$%g271595271622%_)))))
                 (_%$%g271593271703%_
                  (list _%unchecked-proc271590%_ _%unchecked-clauses271592%_)))
               '(begin))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g271043271707%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'declare-type))
                                         (cons _%$%hd270835270872%_
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'make-!primitive-case-lambda))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '@list))
                               (begin
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-check-splice-targets
                                    _%$%sig270955271021%_
                                    _%$%arity270956271023%_))
                                 (let ((__tmp272894
                                        (lambda (_%$%g271710271714%_
                                                 _%$%g271711271717%_
                                                 _%$%g271712271719%_)
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!primitive-lambda))
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote))
                          (cons _%$%g271711271717%_ '()))
                    (cons '#f
                          (cons 'signature: (cons _%$%g271710271714%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%g271712271719%_))))
                                   (declare (not safe))
                                   (foldr__1
                                    __tmp272894
                                    '()
                                    _%$%sig270955271021%_
                                    _%$%arity270956271023%_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))))))
                (_%$%loop270949270981%_ _%$%target270946270975%_ '() '()))
              (_%$%g270942270968%_ _%$%g270943270972%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g270942270968%_
                                             _%$%g270943270972%_)))))
                                (_%$%g270941271722%_ _%signatures270939%_))
                              (_%$%g270827270851%_ _%$%g270828270855%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop270840270884%_
                                                   _%$%target270837270878%_
                                                   '()))
                                                (_%$%g270827270851%_
                                                 _%$%g270828270855%_)))))
                                      (_%$%g270827270851%_
                                       _%$%g270828270855%_))))
                              (_%$%g270827270851%_ _%$%g270828270855%_))))
                      (_%$%g270827270851%_ _%$%g270828270855%_)))))
          (_%$%g270826271726%_ _%stx270824%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx271734%_)
        (let* ((_%__stx272714272715%_ _%$stx271734%_)
               (_%$%g271740271800%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx272714272715%_)))))
          (let ((_%__kont272717272718%_
                 (lambda (_%$%g271742272022%_ _%$%g271743272024%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g271743272024%_ '()))
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
                                                       (cons _%$%g271743272024%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g271742272022%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont272719272720%_
                 (lambda (_%$%g271757271947%_
                          _%$%g271758271949%_
                          _%$%g271759271950%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g271759271950%_ '()))
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
                                                       (cons _%$%g271759271950%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g271758271949%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g271757271947%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont272721272722%_
                 (lambda (_%$%g271776271861%_
                          _%$%g271777271863%_
                          _%$%g271778271864%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g271778271864%_ '()))
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
                                                       (cons _%$%g271778271864%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g271777271863%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g271776271861%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx272714272715%_))
                (let ((_%$%e271744271978%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx272714272715%_))))
                  (let ((_%$%tl271746271985%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e271744271978%_)))
                        (_%$%hd271745271982%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e271744271978%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl271746271985%_))
                        (let ((_%$%e271747271988%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl271746271985%_))))
                          (let ((_%$%tl271749271995%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e271747271988%_)))
                                (_%$%hd271748271992%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e271747271988%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd271748271992%_))
                                (let ((_%$%e271750271998%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd271748271992%_))))
                                  (if (equal? _%$%e271750271998%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl271749271995%_))
                                          (let ((_%$%e271751272002%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl271749271995%_))))
                                            (let ((_%$%tl271753272009%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e271751272002%_)))
                                                  (_%$%hd271752272006%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e271751272002%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl271753272009%_))
                                                  (let ((_%$%e271754272012%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl271753272009%_))))
                                                    (let ((_%$%tl271756272019%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e271754272012%_)))
                                                          (_%$%hd271755272016%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e271754272012%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl271756272019%_))
                                                          (_%__kont272717272718%_
                                                           _%$%hd271755272016%_
                                                           _%$%hd271752272006%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g271740271800%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g271740271800%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g271740271800%_)))
                                      (if (equal? _%$%e271750271998%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl271749271995%_))
                                              (let ((_%$%e271767271917%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl271749271995%_))))
                                                (let ((_%$%tl271769271924%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e271767271917%_)))
                                                      (_%$%hd271768271921%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e271767271917%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl271769271924%_))
                                                      (let ((_%$%e271770271927%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl271769271924%_))))
                (let ((_%$%tl271772271934%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e271770271927%_)))
                      (_%$%hd271771271931%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e271770271927%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl271772271934%_))
                      (let ((_%$%e271773271937%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl271772271934%_))))
                        (let ((_%$%tl271775271944%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271773271937%_)))
                              (_%$%hd271774271941%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271773271937%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl271775271944%_))
                              (_%__kont272719272720%_
                               _%$%hd271774271941%_
                               _%$%hd271771271931%_
                               _%$%hd271768271921%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g271740271800%_)))))
                      (let () (declare (not safe)) (_%$%g271740271800%_)))))
              (let () (declare (not safe)) (_%$%g271740271800%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g271740271800%_)))
                                          (if (equal? _%$%e271750271998%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl271749271995%_))
                                                  (let ((_%$%e271786271831%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl271749271995%_))))
                                                    (let ((_%$%tl271788271838%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e271786271831%_)))
                                                          (_%$%hd271787271835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e271786271831%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl271788271838%_))
                                                          (let ((_%$%e271789271841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl271788271838%_))))
                    (let ((_%$%tl271791271848%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e271789271841%_)))
                          (_%$%hd271790271845%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e271789271841%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl271791271848%_))
                          (let ((_%$%e271792271851%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl271791271848%_))))
                            (let ((_%$%tl271794271858%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e271792271851%_)))
                                  (_%$%hd271793271855%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e271792271851%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl271794271858%_))
                                  (_%__kont272721272722%_
                                   _%$%hd271793271855%_
                                   _%$%hd271790271845%_
                                   _%$%hd271787271835%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g271740271800%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g271740271800%_)))))
                  (let () (declare (not safe)) (_%$%g271740271800%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g271740271800%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g271740271800%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g271740271800%_)))))
                        (let () (declare (not safe)) (_%$%g271740271800%_)))))
                (let () (declare (not safe)) (_%$%g271740271800%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx272046%_)
        (let* ((_%$%g272050272070%_
                (lambda (_%$%g272051272066%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g272051272066%_))))
               (_%$%g272049272139%_
                (lambda (_%$%g272051272074%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g272051272074%_))
                      (let ((_%$%e272053272077%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g272051272074%_))))
                        (let ((_%$%hd272054272081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272053272077%_)))
                              (_%$%tl272055272084%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272053272077%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl272055272084%_))
                              (let ((_g272895_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl272055272084%_
                                        '0))))
                                (begin
                                  (let ((_g272896_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g272895_)
                                               (##values-length _g272895_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g272896_ 2)))
                                        (error "Context expects 2 values"
                                               _g272896_)))
                                  (let ((_%$%target272056272087%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g272895_ 0)))
                                        (_%$%tl272058272090%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g272895_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl272058272090%_))
                                        (letrec ((_%$%loop272059272093%_
                                                  (lambda (_%$%hd272057272097%_
                                                           _%$%decl272063272100%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd272057272097%_))
                                                        (let ((_%$%e272060272102%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd272057272097%_))))
                  (let ((_%$%lp-hd272061272106%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e272060272102%_)))
                        (_%$%lp-tl272062272109%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e272060272102%_))))
                    (_%$%loop272059272093%_
                     _%$%lp-tl272062272109%_
                     (cons _%$%lp-hd272061272106%_ _%$%decl272063272100%_))))
                (let ((_%$%decl272064272112%_
                       (reverse _%$%decl272063272100%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (let ((__tmp272897
                               (lambda (_%$%g272130272133%_
                                        _%$%g272131272136%_)
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-builtin-class))
                                             _%$%g272130272133%_)
                                       _%$%g272131272136%_))))
                          (declare (not safe))
                          (foldr__0
                           __tmp272897
                           '()
                           _%$%decl272064272112%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop272059272093%_
                                           _%$%target272056272087%_
                                           '()))
                                        (_%$%g272050272070%_
                                         _%$%g272051272074%_)))))
                              (_%$%g272050272070%_ _%$%g272051272074%_))))
                      (_%$%g272050272070%_ _%$%g272051272074%_)))))
          (_%$%g272049272139%_ _%$stx272046%_))))))
