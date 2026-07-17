(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g277129_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277136_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277138_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277140_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277142_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277144_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277156_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277158_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277160_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277162_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g277164_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx270587%_)
        (let* ((_%$%g270591270609%_
                (lambda (_%$%g270592270605%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g270592270605%_))))
               (_%$%g270590270664%_
                (lambda (_%$%g270592270613%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g270592270613%_))
                      (let ((_%$%e270595270616%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g270592270613%_))))
                        (let ((_%$%hd270596270620%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270595270616%_)))
                              (_%$%tl270597270623%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270595270616%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl270597270623%_))
                              (let ((_%$%e270598270626%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl270597270623%_))))
                                (let ((_%$%hd270599270630%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e270598270626%_)))
                                      (_%$%tl270600270633%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e270598270626%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl270600270633%_))
                                      (let ((_%$%e270601270636%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl270600270633%_))))
                                        (let ((_%$%hd270602270640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e270601270636%_)))
                                              (_%$%tl270603270643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e270601270636%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl270603270643%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd270599270630%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-type!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd270599270630%_ '()))
                      (cons _%$%hd270602270640%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g270591270609%_
                                                   _%$%g270592270613%_))
                                              (_%$%g270591270609%_
                                               _%$%g270592270613%_))))
                                      (_%$%g270591270609%_
                                       _%$%g270592270613%_))))
                              (_%$%g270591270609%_ _%$%g270592270613%_))))
                      (_%$%g270591270609%_ _%$%g270592270613%_)))))
          (_%$%g270590270664%_ _%$stx270587%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx270668%_)
        (let* ((_%$%g270672270690%_
                (lambda (_%$%g270673270686%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g270673270686%_))))
               (_%$%g270671270745%_
                (lambda (_%$%g270673270694%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g270673270694%_))
                      (let ((_%$%e270676270697%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g270673270694%_))))
                        (let ((_%$%hd270677270701%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270676270697%_)))
                              (_%$%tl270678270704%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270676270697%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl270678270704%_))
                              (let ((_%$%e270679270707%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl270678270704%_))))
                                (let ((_%$%hd270680270711%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e270679270707%_)))
                                      (_%$%tl270681270714%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e270679270707%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl270681270714%_))
                                      (let ((_%$%e270682270717%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl270681270714%_))))
                                        (let ((_%$%hd270683270721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e270682270717%_)))
                                              (_%$%tl270684270724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e270682270717%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl270684270724%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd270680270711%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-class!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd270680270711%_ '()))
                      (cons _%$%hd270683270721%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g270672270690%_
                                                   _%$%g270673270694%_))
                                              (_%$%g270672270690%_
                                               _%$%g270673270694%_))))
                                      (_%$%g270672270690%_
                                       _%$%g270673270694%_))))
                              (_%$%g270672270690%_ _%$%g270673270694%_))))
                      (_%$%g270672270690%_ _%$%g270673270694%_)))))
          (_%$%g270671270745%_ _%$stx270668%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx270749%_)
        (let* ((_%$%g270753270782%_
                (lambda (_%$%g270754270778%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g270754270778%_))))
               (_%$%g270752270878%_
                (lambda (_%$%g270754270786%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g270754270786%_))
                      (let ((_%$%e270757270789%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g270754270786%_))))
                        (let ((_%$%hd270758270793%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270757270789%_)))
                              (_%$%tl270759270796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270757270789%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl270759270796%_))
                              (let ((_g277107_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl270759270796%_
                                        '0))))
                                (begin
                                  (let ((_g277108_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g277107_)
                                               (##values-length _g277107_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g277108_ 2)))
                                        (error "Context expects 2 values"
                                               _g277108_)))
                                  (let ((_%$%target270760270799%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g277107_ 0)))
                                        (_%$%tl270762270802%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g277107_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl270762270802%_))
                                        (letrec ((_%$%loop270763270805%_
                                                  (lambda (_%$%hd270761270809%_
                                                           _%$%type270767270812%_
                                                           _%$%symbol270768270813%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd270761270809%_))
                                                        (let ((_%$%e270764270815%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd270761270809%_))))
                  (let ((_%$%lp-hd270765270819%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e270764270815%_)))
                        (_%$%lp-tl270766270822%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e270764270815%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd270765270819%_))
                        (let ((_%$%e270771270825%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd270765270819%_))))
                          (let ((_%$%hd270772270829%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e270771270825%_)))
                                (_%$%tl270773270832%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e270771270825%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl270773270832%_))
                                (let ((_%$%e270774270835%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl270773270832%_))))
                                  (let ((_%$%hd270775270839%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e270774270835%_)))
                                        (_%$%tl270776270842%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e270774270835%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl270776270842%_))
                                        (_%$%loop270763270805%_
                                         _%$%lp-tl270766270822%_
                                         (cons _%$%hd270775270839%_
                                               _%$%type270767270812%_)
                                         (cons _%$%hd270772270829%_
                                               _%$%symbol270768270813%_))
                                        (_%$%g270753270782%_
                                         _%$%g270754270786%_))))
                                (_%$%g270753270782%_ _%$%g270754270786%_))))
                        (_%$%g270753270782%_ _%$%g270754270786%_))))
                (let ((_%$%type270769270845%_ (reverse _%$%type270767270812%_))
                      (_%$%symbol270770270847%_
                       (reverse _%$%symbol270768270813%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%type270769270845%_
                             _%$%symbol270770270847%_))
                          (let ((__tmp277109
                                 (lambda (_%$%g270866270870%_
                                          _%$%g270867270873%_
                                          _%$%g270868270875%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%$%g270867270873%_
                                                     (cons _%$%g270866270870%_
                                                           '())))
                                         _%$%g270868270875%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp277109
                             '()
                             _%$%type270769270845%_
                             _%$%symbol270770270847%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop270763270805%_
                                           _%$%target270760270799%_
                                           '()
                                           '()))
                                        (_%$%g270753270782%_
                                         _%$%g270754270786%_)))))
                              (_%$%g270753270782%_ _%$%g270754270786%_))))
                      (_%$%g270753270782%_ _%$%g270754270786%_)))))
          (_%$%g270752270878%_ _%$stx270749%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx270883%_)
        (let* ((_%__stx276418276419%_ _%$stx270883%_)
               (_%$%g270888270930%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx276418276419%_)))))
          (let ((_%__kont276421276422%_
                 (lambda (_%$%g270890271058%_
                          _%$%g270891271060%_
                          _%$%g270892271061%_
                          _%$%g270893271062%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g270893271062%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g270892271061%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%g270891271060%_
                                                       '()))
                                           (cons _%$%g270890271058%_ '())))))))
                (_%__kont276423276424%_
                 (lambda (_%$%g270909270977%_
                          _%$%g270910270979%_
                          _%$%g270911270980%_
                          _%$%g270912270981%_)
                   (cons _%$%g270912270981%_
                         (cons _%$%g270911270980%_
                               (cons _%$%g270910270979%_
                                     (cons _%$%g270909270977%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match276457276458%_
                   (lambda (_%$%e270894271008%_
                            _%$%hd270895271012%_
                            _%$%tl270896271015%_
                            _%$%e270897271018%_
                            _%$%hd270898271022%_
                            _%$%tl270899271025%_
                            _%$%e270900271028%_
                            _%$%hd270901271032%_
                            _%$%tl270902271035%_
                            _%$%e270903271038%_
                            _%$%hd270904271042%_
                            _%$%tl270905271045%_
                            _%$%e270906271048%_
                            _%$%hd270907271052%_
                            _%$%tl270908271055%_)
                     (let ((_%$%g270890271058%_ _%$%hd270907271052%_)
                           (_%$%g270891271060%_ _%$%hd270904271042%_)
                           (_%$%g270892271061%_ _%$%hd270901271032%_)
                           (_%$%g270893271062%_ _%$%hd270898271022%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g270893271062%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g270892271061%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g270891271060%_)))
                           (_%__kont276421276422%_
                            _%$%g270890271058%_
                            _%$%g270891271060%_
                            _%$%g270892271061%_
                            _%$%g270893271062%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g270888270930%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx276418276419%_))
                  (let ((_%$%e270894271008%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx276418276419%_))))
                    (let ((_%$%tl270896271015%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e270894271008%_)))
                          (_%$%hd270895271012%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e270894271008%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl270896271015%_))
                          (let ((_%$%e270897271018%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl270896271015%_))))
                            (let ((_%$%tl270899271025%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e270897271018%_)))
                                  (_%$%hd270898271022%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e270897271018%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl270899271025%_))
                                  (let ((_%$%e270900271028%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl270899271025%_))))
                                    (let ((_%$%tl270902271035%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e270900271028%_)))
                                          (_%$%hd270901271032%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e270900271028%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl270902271035%_))
                                          (let ((_%$%e270903271038%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl270902271035%_))))
                                            (let ((_%$%tl270905271045%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e270903271038%_)))
                                                  (_%$%hd270904271042%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e270903271038%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl270905271045%_))
                                                  (let ((_%$%e270906271048%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl270905271045%_))))
                                                    (let ((_%$%tl270908271055%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e270906271048%_)))
                                                          (_%$%hd270907271052%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e270906271048%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl270908271055%_))
                                                          (_%__match276457276458%_
                                                           _%$%e270894271008%_
                                                           _%$%hd270895271012%_
                                                           _%$%tl270896271015%_
                                                           _%$%e270897271018%_
                                                           _%$%hd270898271022%_
                                                           _%$%tl270899271025%_
                                                           _%$%e270900271028%_
                                                           _%$%hd270901271032%_
                                                           _%$%tl270902271035%_
                                                           _%$%e270903271038%_
                                                           _%$%hd270904271042%_
                                                           _%$%tl270905271045%_
                                                           _%$%e270906271048%_
                                                           _%$%hd270907271052%_
                                                           _%$%tl270908271055%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g270888270930%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl270905271045%_))
                                                      (_%__kont276423276424%_
                                                       _%$%hd270904271042%_
                                                       _%$%hd270901271032%_
                                                       _%$%hd270898271022%_
                                                       _%$%hd270895271012%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g270888270930%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g270888270930%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g270888270930%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g270888270930%_)))))
                  (let () (declare (not safe)) (_%$%g270888270930%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx271087%_)
        (let* ((_%$%g271091271126%_
                (lambda (_%$%g271092271122%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271092271122%_))))
               (_%$%g271090271239%_
                (lambda (_%$%g271092271130%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271092271130%_))
                      (let ((_%$%e271096271133%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271092271130%_))))
                        (let ((_%$%hd271097271137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271096271133%_)))
                              (_%$%tl271098271140%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271096271133%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl271098271140%_))
                              (let ((_g277110_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl271098271140%_
                                        '0))))
                                (begin
                                  (let ((_g277111_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g277110_)
                                               (##values-length _g277110_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g277111_ 2)))
                                        (error "Context expects 2 values"
                                               _g277111_)))
                                  (let ((_%$%target271099271143%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g277110_ 0)))
                                        (_%$%tl271101271146%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g277110_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl271101271146%_))
                                        (letrec ((_%$%loop271102271149%_
                                                  (lambda (_%$%hd271100271153%_
                                                           _%$%symbol271106271156%_
                                                           _%$%method271107271157%_
                                                           _%$%type-t271108271158%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd271100271153%_))
                                                        (let ((_%$%e271103271160%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd271100271153%_))))
                  (let ((_%$%lp-hd271104271164%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e271103271160%_)))
                        (_%$%lp-tl271105271167%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e271103271160%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd271104271164%_))
                        (let ((_%$%e271112271170%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd271104271164%_))))
                          (let ((_%$%hd271113271174%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e271112271170%_)))
                                (_%$%tl271114271177%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e271112271170%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl271114271177%_))
                                (let ((_%$%e271115271180%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl271114271177%_))))
                                  (let ((_%$%hd271116271184%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e271115271180%_)))
                                        (_%$%tl271117271187%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e271115271180%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl271117271187%_))
                                        (let ((_%$%e271118271190%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl271117271187%_))))
                                          (let ((_%$%hd271119271194%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e271118271190%_)))
                                                (_%$%tl271120271197%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e271118271190%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl271120271197%_))
                                                (_%$%loop271102271149%_
                                                 _%$%lp-tl271105271167%_
                                                 (cons _%$%hd271119271194%_
                                                       _%$%symbol271106271156%_)
                                                 (cons _%$%hd271116271184%_
                                                       _%$%method271107271157%_)
                                                 (cons _%$%hd271113271174%_
                                                       _%$%type-t271108271158%_))
                                                (_%$%g271091271126%_
                                                 _%$%g271092271130%_))))
                                        (_%$%g271091271126%_
                                         _%$%g271092271130%_))))
                                (_%$%g271091271126%_ _%$%g271092271130%_))))
                        (_%$%g271091271126%_ _%$%g271092271130%_))))
                (let ((_%$%symbol271109271200%_
                       (reverse _%$%symbol271106271156%_))
                      (_%$%method271110271202%_
                       (reverse _%$%method271107271157%_))
                      (_%$%type-t271111271203%_
                       (reverse _%$%type-t271108271158%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%symbol271109271200%_
                             _%$%method271110271202%_
                             _%$%type-t271111271203%_))
                          (let ((__tmp277112
                                 (lambda (_%$%g271224271229%_
                                          _%$%g271225271232%_
                                          _%$%g271226271234%_
                                          _%$%g271227271236%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-method))
                                               (cons _%$%g271226271234%_
                                                     (cons _%$%g271225271232%_
                                                           (cons _%$%g271224271229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%$%g271227271236%_))))
                            (declare (not safe))
                            (__foldr*
                             __tmp277112
                             '()
                             _%$%symbol271109271200%_
                             _%$%method271110271202%_
                             _%$%type-t271111271203%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop271102271149%_
                                           _%$%target271099271143%_
                                           '()
                                           '()
                                           '()))
                                        (_%$%g271091271126%_
                                         _%$%g271092271130%_)))))
                              (_%$%g271091271126%_ _%$%g271092271130%_))))
                      (_%$%g271091271126%_ _%$%g271092271130%_)))))
          (_%$%g271090271239%_ _%$stx271087%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx271244%_)
        (let* ((_%$%g271248271281%_
                (lambda (_%$%g271249271277%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271249271277%_))))
               (_%$%g271247271391%_
                (lambda (_%$%g271249271285%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271249271285%_))
                      (let ((_%$%e271253271288%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271249271285%_))))
                        (let ((_%$%hd271254271292%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271253271288%_)))
                              (_%$%tl271255271295%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271253271288%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271255271295%_))
                              (let ((_%$%e271256271298%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271255271295%_))))
                                (let ((_%$%hd271257271302%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271256271298%_)))
                                      (_%$%tl271258271305%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271256271298%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl271258271305%_))
                                      (let ((_g277113_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl271258271305%_
                                                '0))))
                                        (begin
                                          (let ((_g277114_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g277113_)
                                                       (##values-length
                                                        _g277113_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g277114_ 2)))
                                                (error "Context expects 2 values"
                                                       _g277114_)))
                                          (let ((_%$%target271259271308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g277113_ 0)))
                                                (_%$%tl271261271311%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g277113_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl271261271311%_))
                                                (letrec ((_%$%loop271262271314%_
                                                          (lambda (_%$%hd271260271318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%symbol271266271321%_
                           _%$%method271267271322%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd271260271318%_))
                        (let ((_%$%e271263271324%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd271260271318%_))))
                          (let ((_%$%lp-hd271264271328%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e271263271324%_)))
                                (_%$%lp-tl271265271331%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e271263271324%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd271264271328%_))
                                (let ((_%$%e271270271334%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e
                                          _%$%lp-hd271264271328%_))))
                                  (let ((_%$%hd271271271338%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e271270271334%_)))
                                        (_%$%tl271272271341%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e271270271334%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl271272271341%_))
                                        (let ((_%$%e271273271344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl271272271341%_))))
                                          (let ((_%$%hd271274271348%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e271273271344%_)))
                                                (_%$%tl271275271351%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e271273271344%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl271275271351%_))
                                                (_%$%loop271262271314%_
                                                 _%$%lp-tl271265271331%_
                                                 (cons _%$%hd271274271348%_
                                                       _%$%symbol271266271321%_)
                                                 (cons _%$%hd271271271338%_
                                                       _%$%method271267271322%_))
                                                (_%$%g271248271281%_
                                                 _%$%g271249271285%_))))
                                        (_%$%g271248271281%_
                                         _%$%g271249271285%_))))
                                (_%$%g271248271281%_ _%$%g271249271285%_))))
                        (let ((_%$%symbol271268271354%_
                               (reverse _%$%symbol271266271321%_))
                              (_%$%method271269271356%_
                               (reverse _%$%method271267271322%_)))
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'begin))
                                (begin
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-check-splice-targets
                                     _%$%symbol271268271354%_
                                     _%$%method271269271356%_))
                                  (let ((__tmp277115
                                         (lambda (_%$%g271379271383%_
                                                  _%$%g271380271386%_
                                                  _%$%g271381271388%_)
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method))
                                                       (cons _%$%hd271257271302%_
                                                             (cons _%$%g271380271386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g271379271383%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%g271381271388%_))))
                                    (declare (not safe))
                                    (foldr__1
                                     __tmp277115
                                     '()
                                     _%$%symbol271268271354%_
                                     _%$%method271269271356%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop271262271314%_
                                                   _%$%target271259271308%_
                                                   '()
                                                   '()))
                                                (_%$%g271248271281%_
                                                 _%$%g271249271285%_)))))
                                      (_%$%g271248271281%_
                                       _%$%g271249271285%_))))
                              (_%$%g271248271281%_ _%$%g271249271285%_))))
                      (_%$%g271248271281%_ _%$%g271249271285%_)))))
          (_%$%g271247271391%_ _%$stx271244%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx271396%_)
        (let* ((_%$%g271400271414%_
                (lambda (_%$%g271401271410%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271401271410%_))))
               (_%$%g271399271455%_
                (lambda (_%$%g271401271418%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271401271418%_))
                      (let ((_%$%e271403271421%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271401271418%_))))
                        (let ((_%$%hd271404271425%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271403271421%_)))
                              (_%$%tl271405271428%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271403271421%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271405271428%_))
                              (let ((_%$%e271406271431%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271405271428%_))))
                                (let ((_%$%hd271407271435%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271406271431%_)))
                                      (_%$%tl271408271438%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271406271431%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl271408271438%_))
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
                                                        (cons _%$%hd271407271435%_
                                                              '()))
                                                  '()))
                                      (_%$%g271400271414%_
                                       _%$%g271401271418%_))))
                              (_%$%g271400271414%_ _%$%g271401271418%_))))
                      (_%$%g271400271414%_ _%$%g271401271418%_)))))
          (_%$%g271399271455%_ _%$stx271396%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx271459%_)
        (let* ((_%$%g271463271517%_
                (lambda (_%$%g271464271513%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271464271513%_))))
               (_%$%g271462271698%_
                (lambda (_%$%g271464271521%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271464271521%_))
                      (let ((_%$%e271476271524%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271464271521%_))))
                        (let ((_%$%hd271477271528%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271476271524%_)))
                              (_%$%tl271478271531%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271476271524%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271478271531%_))
                              (let ((_%$%e271479271534%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271478271531%_))))
                                (let ((_%$%hd271480271538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271479271534%_)))
                                      (_%$%tl271481271541%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271479271534%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl271481271541%_))
                                      (let ((_%$%e271482271544%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl271481271541%_))))
                                        (let ((_%$%hd271483271548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e271482271544%_)))
                                              (_%$%tl271484271551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e271482271544%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl271484271551%_))
                                              (let ((_%$%e271485271554%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl271484271551%_))))
                                                (let ((_%$%hd271486271558%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e271485271554%_)))
                                                      (_%$%tl271487271561%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e271485271554%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl271487271561%_))
                                                      (let ((_%$%e271488271564%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl271487271561%_))))
                (let ((_%$%hd271489271568%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e271488271564%_)))
                      (_%$%tl271490271571%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e271488271564%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl271490271571%_))
                      (let ((_%$%e271491271574%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl271490271571%_))))
                        (let ((_%$%hd271492271578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271491271574%_)))
                              (_%$%tl271493271581%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271491271574%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271493271581%_))
                              (let ((_%$%e271494271584%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271493271581%_))))
                                (let ((_%$%hd271495271588%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271494271584%_)))
                                      (_%$%tl271496271591%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271494271584%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl271496271591%_))
                                      (let ((_%$%e271497271594%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl271496271591%_))))
                                        (let ((_%$%hd271498271598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e271497271594%_)))
                                              (_%$%tl271499271601%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e271497271594%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl271499271601%_))
                                              (let ((_%$%e271500271604%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl271499271601%_))))
                                                (let ((_%$%hd271501271608%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e271500271604%_)))
                                                      (_%$%tl271502271611%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e271500271604%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl271502271611%_))
                                                      (let ((_%$%e271503271614%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl271502271611%_))))
                (let ((_%$%hd271504271618%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e271503271614%_)))
                      (_%$%tl271505271621%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e271503271614%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl271505271621%_))
                      (let ((_%$%e271506271624%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl271505271621%_))))
                        (let ((_%$%hd271507271628%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271506271624%_)))
                              (_%$%tl271508271631%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271506271624%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271508271631%_))
                              (let ((_%$%e271509271634%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271508271631%_))))
                                (let ((_%$%hd271510271638%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271509271634%_)))
                                      (_%$%tl271511271641%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271509271634%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl271511271641%_))
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
                                                        (cons _%$%hd271480271538%_
                                                              '()))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'quote))
                      (cons _%$%hd271483271548%_ '()))
                (cons (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd271486271558%_ '()))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%$%hd271489271568%_ '()))
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote))
                                        (cons _%$%hd271492271578%_ '()))
                                  (cons (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote))
                                              (cons _%$%hd271495271588%_ '()))
                                        (cons _%$%hd271498271598%_
                                              (cons _%$%hd271501271608%_
                                                    (cons _%$%hd271504271618%_
                                                          (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd271507271628%_ '()))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd271510271638%_ '()))
                              '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g271463271517%_
                                       _%$%g271464271521%_))))
                              (_%$%g271463271517%_ _%$%g271464271521%_))))
                      (_%$%g271463271517%_ _%$%g271464271521%_))))
              (_%$%g271463271517%_ _%$%g271464271521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g271463271517%_
                                               _%$%g271464271521%_))))
                                      (_%$%g271463271517%_
                                       _%$%g271464271521%_))))
                              (_%$%g271463271517%_ _%$%g271464271521%_))))
                      (_%$%g271463271517%_ _%$%g271464271521%_))))
              (_%$%g271463271517%_ _%$%g271464271521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g271463271517%_
                                               _%$%g271464271521%_))))
                                      (_%$%g271463271517%_
                                       _%$%g271464271521%_))))
                              (_%$%g271463271517%_ _%$%g271464271521%_))))
                      (_%$%g271463271517%_ _%$%g271464271521%_)))))
          (_%$%g271462271698%_ _%$stx271459%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx271702%_)
        (let* ((_%$%g271706271720%_
                (lambda (_%$%g271707271716%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271707271716%_))))
               (_%$%g271705271761%_
                (lambda (_%$%g271707271724%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271707271724%_))
                      (let ((_%$%e271709271727%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271707271724%_))))
                        (let ((_%$%hd271710271731%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271709271727%_)))
                              (_%$%tl271711271734%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271709271727%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271711271734%_))
                              (let ((_%$%e271712271737%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271711271734%_))))
                                (let ((_%$%hd271713271741%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271712271737%_)))
                                      (_%$%tl271714271744%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271712271737%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl271714271744%_))
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
                                                        (cons _%$%hd271713271741%_
                                                              '()))
                                                  '()))
                                      (_%$%g271706271720%_
                                       _%$%g271707271724%_))))
                              (_%$%g271706271720%_ _%$%g271707271724%_))))
                      (_%$%g271706271720%_ _%$%g271707271724%_)))))
          (_%$%g271705271761%_ _%$stx271702%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx271765%_)
        (let* ((_%$%g271769271783%_
                (lambda (_%$%g271770271779%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271770271779%_))))
               (_%$%g271768271824%_
                (lambda (_%$%g271770271787%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271770271787%_))
                      (let ((_%$%e271772271790%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271770271787%_))))
                        (let ((_%$%hd271773271794%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271772271790%_)))
                              (_%$%tl271774271797%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271772271790%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271774271797%_))
                              (let ((_%$%e271775271800%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271774271797%_))))
                                (let ((_%$%hd271776271804%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271775271800%_)))
                                      (_%$%tl271777271807%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271775271800%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl271777271807%_))
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
                                                        (cons _%$%hd271776271804%_
                                                              '()))
                                                  '()))
                                      (_%$%g271769271783%_
                                       _%$%g271770271787%_))))
                              (_%$%g271769271783%_ _%$%g271770271787%_))))
                      (_%$%g271769271783%_ _%$%g271770271787%_)))))
          (_%$%g271768271824%_ _%$stx271765%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx271828%_)
        (let* ((_%$%g271832271854%_
                (lambda (_%$%g271833271850%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271833271850%_))))
               (_%$%g271831271923%_
                (lambda (_%$%g271833271858%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271833271858%_))
                      (let ((_%$%e271837271861%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271833271858%_))))
                        (let ((_%$%hd271838271865%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271837271861%_)))
                              (_%$%tl271839271868%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271837271861%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271839271868%_))
                              (let ((_%$%e271840271871%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271839271868%_))))
                                (let ((_%$%hd271841271875%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271840271871%_)))
                                      (_%$%tl271842271878%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271840271871%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl271842271878%_))
                                      (let ((_%$%e271843271881%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl271842271878%_))))
                                        (let ((_%$%hd271844271885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e271843271881%_)))
                                              (_%$%tl271845271888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e271843271881%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl271845271888%_))
                                              (let ((_%$%e271846271891%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl271845271888%_))))
                                                (let ((_%$%hd271847271895%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e271846271891%_)))
                                                      (_%$%tl271848271898%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e271846271891%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl271848271898%_))
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
                                (cons _%$%hd271841271875%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd271844271885%_ '()))
                                (cons _%$%hd271847271895%_ '()))))
              (_%$%g271832271854%_ _%$%g271833271858%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g271832271854%_
                                               _%$%g271833271858%_))))
                                      (_%$%g271832271854%_
                                       _%$%g271833271858%_))))
                              (_%$%g271832271854%_ _%$%g271833271858%_))))
                      (_%$%g271832271854%_ _%$%g271833271858%_)))))
          (_%$%g271831271923%_ _%$stx271828%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx271927%_)
        (let* ((_%$%g271931271953%_
                (lambda (_%$%g271932271949%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271932271949%_))))
               (_%$%g271930272022%_
                (lambda (_%$%g271932271957%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271932271957%_))
                      (let ((_%$%e271936271960%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271932271957%_))))
                        (let ((_%$%hd271937271964%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271936271960%_)))
                              (_%$%tl271938271967%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271936271960%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271938271967%_))
                              (let ((_%$%e271939271970%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271938271967%_))))
                                (let ((_%$%hd271940271974%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271939271970%_)))
                                      (_%$%tl271941271977%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271939271970%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl271941271977%_))
                                      (let ((_%$%e271942271980%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl271941271977%_))))
                                        (let ((_%$%hd271943271984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e271942271980%_)))
                                              (_%$%tl271944271987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e271942271980%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl271944271987%_))
                                              (let ((_%$%e271945271990%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl271944271987%_))))
                                                (let ((_%$%hd271946271994%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e271945271990%_)))
                                                      (_%$%tl271947271997%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e271945271990%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl271947271997%_))
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
                                (cons _%$%hd271940271974%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd271943271984%_ '()))
                                (cons _%$%hd271946271994%_ '()))))
              (_%$%g271931271953%_ _%$%g271932271957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g271931271953%_
                                               _%$%g271932271957%_))))
                                      (_%$%g271931271953%_
                                       _%$%g271932271957%_))))
                              (_%$%g271931271953%_ _%$%g271932271957%_))))
                      (_%$%g271931271953%_ _%$%g271932271957%_)))))
          (_%$%g271930272022%_ _%$stx271927%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx272026%_)
        (let* ((_%$%g272030272044%_
                (lambda (_%$%g272031272040%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g272031272040%_))))
               (_%$%g272029272085%_
                (lambda (_%$%g272031272048%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g272031272048%_))
                      (let ((_%$%e272033272051%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g272031272048%_))))
                        (let ((_%$%hd272034272055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272033272051%_)))
                              (_%$%tl272035272058%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272033272051%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl272035272058%_))
                              (let ((_%$%e272036272061%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl272035272058%_))))
                                (let ((_%$%hd272037272065%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e272036272061%_)))
                                      (_%$%tl272038272068%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e272036272061%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl272038272068%_))
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
                                                        (cons _%$%hd272037272065%_
                                                              '()))
                                                  '()))
                                      (_%$%g272030272044%_
                                       _%$%g272031272048%_))))
                              (_%$%g272030272044%_ _%$%g272031272048%_))))
                      (_%$%g272030272044%_ _%$%g272031272048%_)))))
          (_%$%g272029272085%_ _%$stx272026%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx272089%_)
        (let* ((_%$%g272093272111%_
                (lambda (_%$%g272094272107%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g272094272107%_))))
               (_%$%g272092272166%_
                (lambda (_%$%g272094272115%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g272094272115%_))
                      (let ((_%$%e272097272118%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g272094272115%_))))
                        (let ((_%$%hd272098272122%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272097272118%_)))
                              (_%$%tl272099272125%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272097272118%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl272099272125%_))
                              (let ((_%$%e272100272128%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl272099272125%_))))
                                (let ((_%$%hd272101272132%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e272100272128%_)))
                                      (_%$%tl272102272135%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e272100272128%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl272102272135%_))
                                      (let ((_%$%e272103272138%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl272102272135%_))))
                                        (let ((_%$%hd272104272142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e272103272138%_)))
                                              (_%$%tl272105272145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e272103272138%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl272105272145%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!interface))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd272101272132%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd272104272142%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g272093272111%_
                                               _%$%g272094272115%_))))
                                      (_%$%g272093272111%_
                                       _%$%g272094272115%_))))
                              (_%$%g272093272111%_ _%$%g272094272115%_))))
                      (_%$%g272093272111%_ _%$%g272094272115%_)))))
          (_%$%g272092272166%_ _%$stx272089%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx272170%_)
        (let* ((_%__stx276486276487%_ _%$stx272170%_)
               (_%$%g272177272238%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx276486276487%_)))))
          (let ((_%__kont276489276490%_
                 (lambda (_%$%g272179272476%_ _%$%g272180272478%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g272180272478%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g272179272476%_ '()))
                                     '())))))
                (_%__kont276491276492%_
                 (lambda (_%$%g272190272415%_
                          _%$%g272191272417%_
                          _%$%g272192272418%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g272192272418%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g272191272417%_ '()))
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
                                 (cons _%$%g272190272415%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont276493276494%_
                 (lambda (_%$%g272209272339%_ _%$%g272210272341%_)
                   (cons _%$%g272210272341%_
                         (cons _%$%g272209272339%_ (cons '#f '())))))
                (_%__kont276495276496%_
                 (lambda (_%$%g272217272289%_
                          _%$%g272218272291%_
                          _%$%g272219272292%_)
                   (cons _%$%g272219272292%_
                         (cons _%$%g272218272291%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%$%g272217272289%_
                                                 '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx276486276487%_))
                (let ((_%$%e272181272446%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx276486276487%_))))
                  (let ((_%$%tl272183272453%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e272181272446%_)))
                        (_%$%hd272182272450%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e272181272446%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl272183272453%_))
                        (let ((_%$%e272184272456%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl272183272453%_))))
                          (let ((_%$%tl272186272463%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e272184272456%_)))
                                (_%$%hd272185272460%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e272184272456%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl272186272463%_))
                                (let ((_%$%e272187272466%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl272186272463%_))))
                                  (let ((_%$%tl272189272473%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e272187272466%_)))
                                        (_%$%hd272188272470%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e272187272466%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl272189272473%_))
                                        (_%__kont276489276490%_
                                         _%$%hd272188272470%_
                                         _%$%hd272185272460%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl272189272473%_))
                                            (let ((_%$%e272202272391%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl272189272473%_))))
                                              (let ((_%$%tl272204272398%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e272202272391%_)))
                                                    (_%$%hd272203272395%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e272202272391%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd272203272395%_))
                                                    (let ((_%$%e272205272401%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd272203272395%_))))
                                                      (if (equal? _%$%e272205272401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl272204272398%_))
                      (let ((_%$%e272206272405%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl272204272398%_))))
                        (let ((_%$%tl272208272412%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272206272405%_)))
                              (_%$%hd272207272409%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272206272405%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl272208272412%_))
                              (_%__kont276491276492%_
                               _%$%hd272207272409%_
                               _%$%hd272188272470%_
                               _%$%hd272185272460%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%$%hd272188272470%_))
                                  (let ((_%$%e272229272275%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd272188272470%_))))
                                    (declare (not safe))
                                    (_%$%g272177272238%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g272177272238%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd272188272470%_))
                          (let ((_%$%e272229272275%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd272188272470%_))))
                            (if (equal? _%$%e272229272275%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl272204272398%_))
                                    (_%__kont276495276496%_
                                     _%$%hd272203272395%_
                                     _%$%hd272185272460%_
                                     _%$%hd272182272450%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g272177272238%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g272177272238%_))))
                          (let () (declare (not safe)) (_%$%g272177272238%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd272188272470%_))
                      (let ((_%$%e272229272275%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd272188272470%_))))
                        (if (equal? _%$%e272229272275%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl272204272398%_))
                                (_%__kont276495276496%_
                                 _%$%hd272203272395%_
                                 _%$%hd272185272460%_
                                 _%$%hd272182272450%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g272177272238%_)))
                            (let ()
                              (declare (not safe))
                              (_%$%g272177272238%_))))
                      (let () (declare (not safe)) (_%$%g272177272238%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%$%hd272188272470%_))
                                                        (let ((_%$%e272229272275%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd272188272470%_))))
                  (if (equal? _%$%e272229272275%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl272204272398%_))
                          (_%__kont276495276496%_
                           _%$%hd272203272395%_
                           _%$%hd272185272460%_
                           _%$%hd272182272450%_)
                          (let () (declare (not safe)) (_%$%g272177272238%_)))
                      (let () (declare (not safe)) (_%$%g272177272238%_))))
                (let () (declare (not safe)) (_%$%g272177272238%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%$%hd272188272470%_))
                                                (let ((_%$%e272229272275%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd272188272470%_))))
                                                  (declare (not safe))
                                                  (_%$%g272177272238%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g272177272238%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl272186272463%_))
                                    (_%__kont276493276494%_
                                     _%$%hd272185272460%_
                                     _%$%hd272182272450%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g272177272238%_))))))
                        (let () (declare (not safe)) (_%$%g272177272238%_)))))
                (let () (declare (not safe)) (_%$%g272177272238%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx272497%_)
        (let* ((_%$%g272501272530%_
                (lambda (_%$%g272502272526%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g272502272526%_))))
               (_%$%g272500272635%_
                (lambda (_%$%g272502272534%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g272502272534%_))
                      (let ((_%$%e272504272537%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g272502272534%_))))
                        (let ((_%$%hd272505272541%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272504272537%_)))
                              (_%$%tl272506272544%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272504272537%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl272506272544%_))
                              (let ((_g277116_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl272506272544%_
                                        '0))))
                                (begin
                                  (let ((_g277117_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g277116_)
                                               (##values-length _g277116_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g277117_ 2)))
                                        (error "Context expects 2 values"
                                               _g277117_)))
                                  (let ((_%$%target272507272547%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g277116_ 0)))
                                        (_%$%tl272509272550%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g277116_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl272509272550%_))
                                        (letrec ((_%$%loop272510272553%_
                                                  (lambda (_%$%hd272508272557%_
                                                           _%$%clause272514272560%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd272508272557%_))
                                                        (let ((_%$%e272511272562%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd272508272557%_))))
                  (let ((_%$%lp-hd272512272566%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e272511272562%_)))
                        (_%$%lp-tl272513272569%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e272511272562%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%lp-hd272512272566%_))
                        (let ((_g277118_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%$%lp-hd272512272566%_
                                  '0))))
                          (begin
                            (let ((_g277119_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g277118_)
                                         (##values-length _g277118_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g277119_ 2)))
                                  (error "Context expects 2 values"
                                         _g277119_)))
                            (let ((_%$%target272516272572%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g277118_ 0)))
                                  (_%$%tl272518272575%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g277118_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl272518272575%_))
                                  (letrec ((_%$%loop272519272578%_
                                            (lambda (_%$%hd272517272582%_
                                                     _%$%clause272523272585%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd272517272582%_))
                                                  (let ((_%$%e272520272587%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd272517272582%_))))
                                                    (let ((_%$%lp-hd272521272591%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e272520272587%_)))
                                                          (_%$%lp-tl272522272594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e272520272587%_))))
                                                      (_%$%loop272519272578%_
                                                       _%$%lp-tl272522272594%_
                                                       (cons _%$%lp-hd272521272591%_
                                                             _%$%clause272523272585%_))))
                                                  (let ((_%$%clause272524272597%_
                                                         (reverse _%$%clause272523272585%_)))
                                                    (_%$%loop272510272553%_
                                                     _%$%lp-tl272513272569%_
                                                     (cons _%$%clause272524272597%_
                                                           _%$%clause272514272560%_)))))))
                                    (_%$%loop272519272578%_
                                     _%$%target272516272572%_
                                     '()))
                                  (_%$%g272501272530%_ _%$%g272502272534%_)))))
                        (_%$%g272501272530%_ _%$%g272502272534%_))))
                (let ((_%$%clause272515272600%_
                       (reverse _%$%clause272514272560%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f '@list))
                                    (let ((__tmp277120
                                           (lambda (_%$%g272618272623%_
                                                    _%$%g272619272626%_)
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '@lambda))
                                                         (let ((__tmp277121
                                                                (lambda (_%$%g272620272629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g272621272632%_)
                          (cons _%$%g272620272629%_ _%$%g272621272632%_))))
                   (declare (not safe))
                   (foldr__0 __tmp277121 '() _%$%g272618272623%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%g272619272626%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp277120
                                       '()
                                       _%$%clause272515272600%_)))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop272510272553%_
                                           _%$%target272507272547%_
                                           '()))
                                        (_%$%g272501272530%_
                                         _%$%g272502272534%_)))))
                              (_%$%g272501272530%_ _%$%g272502272534%_))))
                      (_%$%g272501272530%_ _%$%g272502272534%_)))))
          (_%$%g272500272635%_ _%$stx272497%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx272641%_)
        (let* ((_%$%g272645272663%_
                (lambda (_%$%g272646272659%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g272646272659%_))))
               (_%$%g272644272718%_
                (lambda (_%$%g272646272667%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g272646272667%_))
                      (let ((_%$%e272649272670%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g272646272667%_))))
                        (let ((_%$%hd272650272674%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272649272670%_)))
                              (_%$%tl272651272677%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272649272670%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl272651272677%_))
                              (let ((_%$%e272652272680%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl272651272677%_))))
                                (let ((_%$%hd272653272684%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e272652272680%_)))
                                      (_%$%tl272654272687%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e272652272680%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl272654272687%_))
                                      (let ((_%$%e272655272690%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl272654272687%_))))
                                        (let ((_%$%hd272656272694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e272655272690%_)))
                                              (_%$%tl272657272697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e272655272690%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl272657272697%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd272653272684%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd272656272694%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g272645272663%_
                                               _%$%g272646272667%_))))
                                      (_%$%g272645272663%_
                                       _%$%g272646272667%_))))
                              (_%$%g272645272663%_ _%$%g272646272667%_))))
                      (_%$%g272645272663%_ _%$%g272646272667%_)))))
          (_%$%g272644272718%_ _%$stx272641%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx272722%_)
        (let* ((_%$%g272726272744%_
                (lambda (_%$%g272727272740%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g272727272740%_))))
               (_%$%g272725272799%_
                (lambda (_%$%g272727272748%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g272727272748%_))
                      (let ((_%$%e272730272751%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g272727272748%_))))
                        (let ((_%$%hd272731272755%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272730272751%_)))
                              (_%$%tl272732272758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272730272751%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl272732272758%_))
                              (let ((_%$%e272733272761%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl272732272758%_))))
                                (let ((_%$%hd272734272765%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e272733272761%_)))
                                      (_%$%tl272735272768%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e272733272761%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl272735272768%_))
                                      (let ((_%$%e272736272771%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl272735272768%_))))
                                        (let ((_%$%hd272737272775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e272736272771%_)))
                                              (_%$%tl272738272778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e272736272771%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl272738272778%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda-primary))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd272734272765%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd272737272775%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g272726272744%_
                                               _%$%g272727272748%_))))
                                      (_%$%g272726272744%_
                                       _%$%g272727272748%_))))
                              (_%$%g272726272744%_ _%$%g272727272748%_))))
                      (_%$%g272726272744%_ _%$%g272727272748%_)))))
          (_%$%g272725272799%_ _%$stx272722%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx272803%_)
        (let* ((_%$%g272807272836%_
                (lambda (_%$%g272808272832%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g272808272832%_))))
               (_%$%g272806272932%_
                (lambda (_%$%g272808272840%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g272808272840%_))
                      (let ((_%$%e272811272843%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g272808272840%_))))
                        (let ((_%$%hd272812272847%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272811272843%_)))
                              (_%$%tl272813272850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272811272843%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl272813272850%_))
                              (let ((_g277122_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl272813272850%_
                                        '0))))
                                (begin
                                  (let ((_g277123_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g277122_)
                                               (##values-length _g277122_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g277123_ 2)))
                                        (error "Context expects 2 values"
                                               _g277123_)))
                                  (let ((_%$%target272814272853%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g277122_ 0)))
                                        (_%$%tl272816272856%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g277122_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl272816272856%_))
                                        (letrec ((_%$%loop272817272859%_
                                                  (lambda (_%$%hd272815272863%_
                                                           _%$%rule272821272866%_
                                                           _%$%proc272822272867%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd272815272863%_))
                                                        (let ((_%$%e272818272869%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd272815272863%_))))
                  (let ((_%$%lp-hd272819272873%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e272818272869%_)))
                        (_%$%lp-tl272820272876%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e272818272869%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd272819272873%_))
                        (let ((_%$%e272825272879%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd272819272873%_))))
                          (let ((_%$%hd272826272883%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e272825272879%_)))
                                (_%$%tl272827272886%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e272825272879%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl272827272886%_))
                                (let ((_%$%e272828272889%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl272827272886%_))))
                                  (let ((_%$%hd272829272893%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e272828272889%_)))
                                        (_%$%tl272830272896%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e272828272889%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl272830272896%_))
                                        (_%$%loop272817272859%_
                                         _%$%lp-tl272820272876%_
                                         (cons _%$%hd272829272893%_
                                               _%$%rule272821272866%_)
                                         (cons _%$%hd272826272883%_
                                               _%$%proc272822272867%_))
                                        (_%$%g272807272836%_
                                         _%$%g272808272840%_))))
                                (_%$%g272807272836%_ _%$%g272808272840%_))))
                        (_%$%g272807272836%_ _%$%g272808272840%_))))
                (let ((_%$%rule272823272899%_ (reverse _%$%rule272821272866%_))
                      (_%$%proc272824272901%_
                       (reverse _%$%proc272822272867%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%rule272823272899%_
                             _%$%proc272824272901%_))
                          (let ((__tmp277124
                                 (lambda (_%$%g272920272924%_
                                          _%$%g272921272927%_
                                          _%$%g272922272929%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-inline-rule!))
                                               (cons _%$%g272921272927%_
                                                     (cons _%$%g272920272924%_
                                                           '())))
                                         _%$%g272922272929%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp277124
                             '()
                             _%$%rule272823272899%_
                             _%$%proc272824272901%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop272817272859%_
                                           _%$%target272814272853%_
                                           '()
                                           '()))
                                        (_%$%g272807272836%_
                                         _%$%g272808272840%_)))))
                              (_%$%g272807272836%_ _%$%g272808272840%_))))
                      (_%$%g272807272836%_ _%$%g272808272840%_)))))
          (_%$%g272806272932%_ _%$stx272803%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx272937%_)
        (let* ((_%$%g272941272959%_
                (lambda (_%$%g272942272955%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g272942272955%_))))
               (_%$%g272940273014%_
                (lambda (_%$%g272942272963%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g272942272963%_))
                      (let ((_%$%e272945272966%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g272942272963%_))))
                        (let ((_%$%hd272946272970%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272945272966%_)))
                              (_%$%tl272947272973%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272945272966%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl272947272973%_))
                              (let ((_%$%e272948272976%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl272947272973%_))))
                                (let ((_%$%hd272949272980%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e272948272976%_)))
                                      (_%$%tl272950272983%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e272948272976%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl272950272983%_))
                                      (let ((_%$%e272951272986%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl272950272983%_))))
                                        (let ((_%$%hd272952272990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e272951272986%_)))
                                              (_%$%tl272953272993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e272951272986%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl272953272993%_))
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
                                                (cons _%$%hd272949272980%_
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
              (cons _%$%hd272952272990%_ '())))
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
                                (cons _%$%hd272949272980%_ '()))
                          (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g272941272959%_
                                               _%$%g272942272963%_))))
                                      (_%$%g272941272959%_
                                       _%$%g272942272963%_))))
                              (_%$%g272941272959%_ _%$%g272942272963%_))))
                      (_%$%g272941272959%_ _%$%g272942272963%_)))))
          (_%$%g272940273014%_ _%$stx272937%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx273018%_)
        (let* ((_%__stx276604276605%_ _%$stx273018%_)
               (_%$%g273023273048%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx276604276605%_)))))
          (let ((_%__kont276607276608%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont276609276610%_
                 (lambda (_%$%g273028273095%_
                          _%$%g273029273097%_
                          _%$%g273030273098%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%$%g273030273098%_
                                           (cons _%$%g273029273097%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%$%g273028273095%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx276604276605%_))
                (let ((_%$%e273025273124%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx276604276605%_))))
                  (let ((_%$%tl273027273131%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e273025273124%_)))
                        (_%$%hd273026273128%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e273025273124%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl273027273131%_))
                        (_%__kont276607276608%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl273027273131%_))
                            (let ((_%$%e273034273065%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl273027273131%_))))
                              (let ((_%$%tl273036273072%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e273034273065%_)))
                                    (_%$%hd273035273069%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e273034273065%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd273035273069%_))
                                    (let ((_%$%e273037273075%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd273035273069%_))))
                                      (let ((_%$%tl273039273082%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e273037273075%_)))
                                            (_%$%hd273038273079%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e273037273075%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl273039273082%_))
                                            (let ((_%$%e273040273085%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl273039273082%_))))
                                              (let ((_%$%tl273042273092%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e273040273085%_)))
                                                    (_%$%hd273041273089%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e273040273085%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl273042273092%_))
                                                    (_%__kont276609276610%_
                                                     _%$%tl273036273072%_
                                                     _%$%hd273041273089%_
                                                     _%$%hd273038273079%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g273023273048%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g273023273048%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g273023273048%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g273023273048%_))))))
                (let () (declare (not safe)) (_%$%g273023273048%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx273142%_)
        (let* ((_%__stx276648276649%_ _%$stx273142%_)
               (_%$%g273147273178%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx276648276649%_)))))
          (let ((_%__kont276651276652%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont276653276654%_
                 (lambda (_%$%g273152273243%_
                          _%$%g273153273245%_
                          _%$%g273154273246%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%$%g273154273246%_
                                           (let ((__tmp277125
                                                  (lambda (_%$%g273266273269%_
                                                           _%$%g273267273272%_)
                                                    (cons _%$%g273266273269%_
                                                          _%$%g273267273272%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp277125
                                              '()
                                              _%$%g273153273245%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%$%g273152273243%_)
                                     '()))))))
            (let ((_%__match276691276692%_
                   (lambda (_%$%e273155273185%_
                            _%$%hd273156273189%_
                            _%$%tl273157273192%_
                            _%$%e273158273195%_
                            _%$%hd273159273199%_
                            _%$%tl273160273202%_
                            _%$%e273161273205%_
                            _%$%hd273162273209%_
                            _%$%tl273163273212%_
                            _%__splice276655276656%_
                            _%$%target273164273215%_
                            _%$%tl273166273218%_)
                     (letrec ((_%$%loop273167273221%_
                               (lambda (_%$%hd273165273225%_
                                        _%$%sig273171273228%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd273165273225%_))
                                     (let ((_%$%e273168273230%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%hd273165273225%_))))
                                       (let ((_%$%lp-tl273170273237%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e273168273230%_)))
                                             (_%$%lp-hd273169273234%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e273168273230%_))))
                                         (_%$%loop273167273221%_
                                          _%$%lp-tl273170273237%_
                                          (cons _%$%lp-hd273169273234%_
                                                _%$%sig273171273228%_))))
                                     (let ((_%$%sig273172273240%_
                                            (reverse _%$%sig273171273228%_)))
                                       (_%__kont276653276654%_
                                        _%$%tl273160273202%_
                                        _%$%sig273172273240%_
                                        _%$%hd273162273209%_))))))
                       (_%$%loop273167273221%_
                        _%$%target273164273215%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx276648276649%_))
                  (let ((_%$%e273149273282%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx276648276649%_))))
                    (let ((_%$%tl273151273289%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e273149273282%_)))
                          (_%$%hd273150273286%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e273149273282%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl273151273289%_))
                          (_%__kont276651276652%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl273151273289%_))
                              (let ((_%$%e273158273195%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl273151273289%_))))
                                (let ((_%$%tl273160273202%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e273158273195%_)))
                                      (_%$%hd273159273199%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e273158273195%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd273159273199%_))
                                      (let ((_%$%e273161273205%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd273159273199%_))))
                                        (let ((_%$%tl273163273212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e273161273205%_)))
                                              (_%$%hd273162273209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e273161273205%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl273163273212%_))
                                              (let ((_%__splice276655276656%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl273163273212%_
                                                        '0))))
                                                (let ((_%$%tl273166273218%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice276655276656%_
                                                          '1)))
                                                      (_%$%target273164273215%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice276655276656%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl273166273218%_))
                                                      (_%__match276691276692%_
                                                       _%$%e273149273282%_
                                                       _%$%hd273150273286%_
                                                       _%$%tl273151273289%_
                                                       _%$%e273158273195%_
                                                       _%$%hd273159273199%_
                                                       _%$%tl273160273202%_
                                                       _%$%e273161273205%_
                                                       _%$%hd273162273209%_
                                                       _%$%tl273163273212%_
                                                       _%__splice276655276656%_
                                                       _%$%target273164273215%_
                                                       _%$%tl273166273218%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g273147273178%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g273147273178%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g273147273178%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g273147273178%_))))))
                  (let () (declare (not safe)) (_%$%g273147273178%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx273301%_)
        (let* ((_%__stx276694276695%_ _%$stx273301%_)
               (_%$%g273306273353%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx276694276695%_)))))
          (let ((_%__kont276697276698%_
                 (lambda (_%$%g273308273511%_ _%$%g273309273513%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%$%g273309273513%_
                               (let ((__tmp277126
                                      (lambda (_%$%g273533273536%_
                                               _%$%g273534273539%_)
                                        (cons _%$%g273533273536%_
                                              _%$%g273534273539%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp277126
                                  '()
                                  _%$%g273308273511%_))))))
                (_%__kont276701276702%_
                 (lambda (_%$%g273331273408%_ _%$%g273332273410%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%$%g273332273410%_
                               (let ((__tmp277127
                                      (lambda (_%$%g273427273430%_
                                               _%$%g273428273433%_)
                                        (cons _%$%g273427273430%_
                                              _%$%g273428273433%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp277127
                                  '()
                                  _%$%g273331273408%_)))))))
            (let* ((_%__match276761276762%_
                    (lambda (_%$%e273333273360%_
                             _%$%hd273334273364%_
                             _%$%tl273335273367%_
                             _%$%e273336273370%_
                             _%$%hd273337273374%_
                             _%$%tl273338273377%_
                             _%__splice276703276704%_
                             _%$%target273339273380%_
                             _%$%tl273341273383%_)
                      (letrec ((_%$%loop273342273386%_
                                (lambda (_%$%hd273340273390%_
                                         _%$%sig273346273393%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd273340273390%_))
                                      (let ((_%$%e273343273395%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd273340273390%_))))
                                        (let ((_%$%lp-tl273345273402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e273343273395%_)))
                                              (_%$%lp-hd273344273399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e273343273395%_))))
                                          (_%$%loop273342273386%_
                                           _%$%lp-tl273345273402%_
                                           (cons _%$%lp-hd273344273399%_
                                                 _%$%sig273346273393%_))))
                                      (let ((_%$%sig273347273405%_
                                             (reverse _%$%sig273346273393%_)))
                                        (_%__kont276701276702%_
                                         _%$%sig273347273405%_
                                         _%$%hd273337273374%_))))))
                        (_%$%loop273342273386%_
                         _%$%target273339273380%_
                         '()))))
                   (_%__match276753276754%_
                    (lambda (_%$%e273333273360%_
                             _%$%hd273334273364%_
                             _%$%tl273335273367%_
                             _%$%e273336273370%_
                             _%$%hd273337273374%_
                             _%$%tl273338273377%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl273338273377%_))
                          (let ((_%__splice276703276704%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl273338273377%_
                                    '0))))
                            (let ((_%$%tl273341273383%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276703276704%_
                                      '1)))
                                  (_%$%target273339273380%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276703276704%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl273341273383%_))
                                  (_%__match276761276762%_
                                   _%$%e273333273360%_
                                   _%$%hd273334273364%_
                                   _%$%tl273335273367%_
                                   _%$%e273336273370%_
                                   _%$%hd273337273374%_
                                   _%$%tl273338273377%_
                                   _%__splice276703276704%_
                                   _%$%target273339273380%_
                                   _%$%tl273341273383%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g273306273353%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g273306273353%_)))))
                   (_%__match276741276742%_
                    (lambda (_%$%e273310273443%_
                             _%$%hd273311273447%_
                             _%$%tl273312273450%_
                             _%$%e273313273453%_
                             _%$%hd273314273457%_
                             _%$%tl273315273460%_
                             _%$%e273316273463%_
                             _%$%hd273317273467%_
                             _%$%tl273318273470%_
                             _%$%e273319273473%_
                             _%$%hd273320273477%_
                             _%$%tl273321273480%_
                             _%__splice276699276700%_
                             _%$%target273322273483%_
                             _%$%tl273324273486%_)
                      (letrec ((_%$%loop273325273489%_
                                (lambda (_%$%hd273323273493%_
                                         _%$%sig273329273496%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd273323273493%_))
                                      (let ((_%$%e273326273498%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd273323273493%_))))
                                        (let ((_%$%lp-tl273328273505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e273326273498%_)))
                                              (_%$%lp-hd273327273502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e273326273498%_))))
                                          (_%$%loop273325273489%_
                                           _%$%lp-tl273328273505%_
                                           (cons _%$%lp-hd273327273502%_
                                                 _%$%sig273329273496%_))))
                                      (let ((_%$%sig273330273508%_
                                             (reverse _%$%sig273329273496%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl273318273470%_))
                                            (_%__kont276697276698%_
                                             _%$%sig273330273508%_
                                             _%$%hd273314273457%_)
                                            (_%__match276753276754%_
                                             _%$%e273310273443%_
                                             _%$%hd273311273447%_
                                             _%$%tl273312273450%_
                                             _%$%e273313273453%_
                                             _%$%hd273314273457%_
                                             _%$%tl273315273460%_)))))))
                        (_%$%loop273325273489%_
                         _%$%target273322273483%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx276694276695%_))
                  (let ((_%$%e273310273443%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx276694276695%_))))
                    (let ((_%$%tl273312273450%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e273310273443%_)))
                          (_%$%hd273311273447%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e273310273443%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl273312273450%_))
                          (let ((_%$%e273313273453%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl273312273450%_))))
                            (let ((_%$%tl273315273460%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e273313273453%_)))
                                  (_%$%hd273314273457%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e273313273453%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl273315273460%_))
                                  (let ((_%$%e273316273463%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl273315273460%_))))
                                    (let ((_%$%tl273318273470%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e273316273463%_)))
                                          (_%$%hd273317273467%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e273316273463%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%hd273317273467%_))
                                          (let ((_%$%e273319273473%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%hd273317273467%_))))
                                            (let ((_%$%tl273321273480%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e273319273473%_)))
                                                  (_%$%hd273320273477%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e273319273473%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd273320273477%_))
                                                  (if (let ((__tmp277128
                                                             |gxc[1]#_g277129_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp277128
                                                         _%$%hd273320273477%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%$%tl273321273480%_))
                                                          (let ((_%__splice276699276700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl273321273480%_
                            '0))))
                    (let ((_%$%tl273324273486%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276699276700%_ '1)))
                          (_%$%target273322273483%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276699276700%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl273324273486%_))
                          (_%__match276741276742%_
                           _%$%e273310273443%_
                           _%$%hd273311273447%_
                           _%$%tl273312273450%_
                           _%$%e273313273453%_
                           _%$%hd273314273457%_
                           _%$%tl273315273460%_
                           _%$%e273316273463%_
                           _%$%hd273317273467%_
                           _%$%tl273318273470%_
                           _%$%e273319273473%_
                           _%$%hd273320273477%_
                           _%$%tl273321273480%_
                           _%__splice276699276700%_
                           _%$%target273322273483%_
                           _%$%tl273324273486%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl273315273460%_))
                              (let ((_%__splice276703276704%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%$%tl273315273460%_
                                        '0))))
                                (let ((_%$%tl273341273383%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice276703276704%_
                                          '1)))
                                      (_%$%target273339273380%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice276703276704%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl273341273383%_))
                                      (_%__match276761276762%_
                                       _%$%e273310273443%_
                                       _%$%hd273311273447%_
                                       _%$%tl273312273450%_
                                       _%$%e273313273453%_
                                       _%$%hd273314273457%_
                                       _%$%tl273315273460%_
                                       _%__splice276703276704%_
                                       _%$%target273339273380%_
                                       _%$%tl273341273383%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g273306273353%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g273306273353%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl273315273460%_))
                      (let ((_%__splice276703276704%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl273315273460%_
                                '0))))
                        (let ((_%$%tl273341273383%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276703276704%_ '1)))
                              (_%$%target273339273380%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276703276704%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl273341273383%_))
                              (_%__match276761276762%_
                               _%$%e273310273443%_
                               _%$%hd273311273447%_
                               _%$%tl273312273450%_
                               _%$%e273313273453%_
                               _%$%hd273314273457%_
                               _%$%tl273315273460%_
                               _%__splice276703276704%_
                               _%$%target273339273380%_
                               _%$%tl273341273383%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g273306273353%_)))))
                      (let () (declare (not safe)) (_%$%g273306273353%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl273315273460%_))
                  (let ((_%__splice276703276704%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl273315273460%_
                            '0))))
                    (let ((_%$%tl273341273383%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276703276704%_ '1)))
                          (_%$%target273339273380%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276703276704%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl273341273383%_))
                          (_%__match276761276762%_
                           _%$%e273310273443%_
                           _%$%hd273311273447%_
                           _%$%tl273312273450%_
                           _%$%e273313273453%_
                           _%$%hd273314273457%_
                           _%$%tl273315273460%_
                           _%__splice276703276704%_
                           _%$%target273339273380%_
                           _%$%tl273341273383%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g273306273353%_)))))
                  (let () (declare (not safe)) (_%$%g273306273353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl273315273460%_))
                                                      (let ((_%__splice276703276704%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl273315273460%_
                        '0))))
                (let ((_%$%tl273341273383%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice276703276704%_ '1)))
                      (_%$%target273339273380%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice276703276704%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl273341273383%_))
                      (_%__match276761276762%_
                       _%$%e273310273443%_
                       _%$%hd273311273447%_
                       _%$%tl273312273450%_
                       _%$%e273313273453%_
                       _%$%hd273314273457%_
                       _%$%tl273315273460%_
                       _%__splice276703276704%_
                       _%$%target273339273380%_
                       _%$%tl273341273383%_)
                      (let () (declare (not safe)) (_%$%g273306273353%_)))))
              (let () (declare (not safe)) (_%$%g273306273353%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl273315273460%_))
                                              (let ((_%__splice276703276704%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl273315273460%_
                                                        '0))))
                                                (let ((_%$%tl273341273383%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice276703276704%_
                                                          '1)))
                                                      (_%$%target273339273380%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice276703276704%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl273341273383%_))
                                                      (_%__match276761276762%_
                                                       _%$%e273310273443%_
                                                       _%$%hd273311273447%_
                                                       _%$%tl273312273450%_
                                                       _%$%e273313273453%_
                                                       _%$%hd273314273457%_
                                                       _%$%tl273315273460%_
                                                       _%__splice276703276704%_
                                                       _%$%target273339273380%_
                                                       _%$%tl273341273383%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g273306273353%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g273306273353%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl273315273460%_))
                                      (let ((_%__splice276703276704%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl273315273460%_
                                                '0))))
                                        (let ((_%$%tl273341273383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice276703276704%_
                                                  '1)))
                                              (_%$%target273339273380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice276703276704%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl273341273383%_))
                                              (_%__match276761276762%_
                                               _%$%e273310273443%_
                                               _%$%hd273311273447%_
                                               _%$%tl273312273450%_
                                               _%$%e273313273453%_
                                               _%$%hd273314273457%_
                                               _%$%tl273315273460%_
                                               _%__splice276703276704%_
                                               _%$%target273339273380%_
                                               _%$%tl273341273383%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g273306273353%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g273306273353%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g273306273353%_)))))
                  (let () (declare (not safe)) (_%$%g273306273353%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx274696%_ _%id274698%_)
        (let ((_%proc274702%_
               (let ((__tmp277130
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id274698%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp277130))))
          (if (procedure? _%proc274702%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx274696%_
                 _%id274698%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx274687%_ _%id274689%_)
        (let ((_%klass274693%_
               (let ((__tmp277131
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id274689%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp277131))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass274693%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx274687%_
                 _%id274689%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx273937%_ _%proc273939%_ _%sig273940%_)
        (letrec ((_%signature-arity273942%_
                  (lambda (_%args274619%_)
                    (let _%loop274622%_ ((_%rest274625%_ _%args274619%_)
                                         (_%count274627%_ '0))
                      (let* ((_%$%rest274628274639%_ _%rest274625%_)
                             (_%$%E274632274645%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%rest274628274639%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%$%K274635274676%_
                               (lambda (_%rest274673%_)
                                 (_%loop274622%_
                                  _%rest274673%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count274627%_ '1)))))
                              (_%$%K274634274665%_ (lambda () _%count274627%_))
                              (_%$%K274633274653%_
                               (lambda () (cons _%count274627%_ '()))))
                          (let ((_%$%try-match274630274669%_
                                 (lambda ()
                                   (if (null? _%$%rest274628274639%_)
                                       (_%$%K274634274665%_)
                                       (_%$%K274633274653%_)))))
                            (if (pair? _%$%rest274628274639%_)
                                (let* ((_%$%tl274637274680%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest274628274639%_)))
                                       (_%rest274684%_ _%$%tl274637274680%_))
                                  (_%$%K274635274676%_ _%rest274684%_))
                                (_%$%try-match274630274669%_))))))))
                 (_%make-signature273944%_
                  (lambda (_%args274501%_
                           _%return274503%_
                           _%effect274504%_
                           _%unchecked274505%_)
                    (let ((__tmp277132
                           (lambda (_%$%g274506274508%_)
                             (|gxc[1]#verify-class!|
                              _%ctx273937%_
                              _%$%g274506274508%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp277132 _%args274501%_))
                    (|gxc[1]#verify-class!| _%ctx273937%_ _%return274503%_)
                    (if _%unchecked274505%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx273937%_
                         _%unchecked274505%_)
                        '#!void)
                    (let ((_%arity274512%_
                           (_%signature-arity273942%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args274501%_)))))
                      (if _%effect274504%_
                          (let ((_%effect274515%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect274504%_))))
                            (if (and (list? _%effect274515%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect274515%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx273937%_
                                   _%proc273939%_
                                   _%effect274515%_))))
                          '#!void)
                      (cons _%arity274512%_
                            (cons (let* ((_%$%g274518274541%_
                                          (lambda (_%$%g274519274537%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g274519274537%_))))
                                         (_%$%g274517274615%_
                                          (lambda (_%$%g274519274545%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g274519274545%_))
                                                (let ((_%$%e274524274548%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%g274519274545%_))))
                                                  (let ((_%$%hd274525274552%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e274524274548%_)))
                                                        (_%$%tl274526274555%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e274524274548%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl274526274555%_))
                                                        (let ((_%$%e274527274558%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl274526274555%_))))
                  (let ((_%$%hd274528274562%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e274527274558%_)))
                        (_%$%tl274529274565%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e274527274558%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl274529274565%_))
                        (let ((_%$%e274530274568%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl274529274565%_))))
                          (let ((_%$%hd274531274572%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e274530274568%_)))
                                (_%$%tl274532274575%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e274530274568%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl274532274575%_))
                                (let ((_%$%e274533274578%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl274532274575%_))))
                                  (let ((_%$%hd274534274582%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e274533274578%_)))
                                        (_%$%tl274535274585%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e274533274578%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl274535274585%_))
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
                        (cons _%$%hd274525274552%_ '()))
                  (cons 'return:
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd274528274562%_ '()))
                              (cons 'effect:
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd274531274572%_
                                                      '()))
                                          (cons 'unchecked:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%$%hd274534274582%_
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
                                        (_%$%g274518274541%_
                                         _%$%g274519274545%_))))
                                (_%$%g274518274541%_ _%$%g274519274545%_))))
                        (_%$%g274518274541%_ _%$%g274519274545%_))))
                (_%$%g274518274541%_ _%$%g274519274545%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g274518274541%_
                                                 _%$%g274519274545%_)))))
                                    (_%$%g274517274615%_
                                     (list _%args274501%_
                                           _%return274503%_
                                           _%effect274504%_
                                           _%unchecked274505%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx273937%_ _%proc273939%_)
          (let* ((_%__stx276772276773%_ _%sig273940%_)
                 (_%$%g273951274054%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx276772276773%_)))))
            (let ((_%__kont276775276776%_
                   (lambda (_%$%g273953274482%_ _%$%g273954274484%_)
                     (_%make-signature273944%_
                      _%$%g273954274484%_
                      _%$%g273953274482%_
                      '#f
                      '#f)))
                  (_%__kont276777276778%_
                   (lambda (_%$%g273961274433%_
                            _%$%g273962274435%_
                            _%$%g273963274436%_)
                     (_%make-signature273944%_
                      _%$%g273963274436%_
                      _%$%g273962274435%_
                      _%$%g273961274433%_
                      '#f)))
                  (_%__kont276779276780%_
                   (lambda (_%$%g273977274357%_
                            _%$%g273978274359%_
                            _%$%g273979274360%_)
                     (_%make-signature273944%_
                      _%$%g273979274360%_
                      _%$%g273978274359%_
                      _%$%g273977274357%_
                      (let ((__tmp277133
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc273939%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp277133)))))
                  (_%__kont276781276782%_
                   (lambda (_%$%g273997274263%_
                            _%$%g273998274265%_
                            _%$%g273999274266%_
                            _%$%g274000274267%_)
                     (_%make-signature273944%_
                      _%$%g274000274267%_
                      _%$%g273999274266%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g273997274263%_)))))
                  (_%__kont276783276784%_
                   (lambda (_%$%g274021274170%_ _%$%g274022274172%_)
                     (_%make-signature273944%_
                      _%$%g274022274172%_
                      _%$%g274021274170%_
                      '#f
                      (let ((__tmp277134
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc273939%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp277134)))))
                  (_%__kont276785276786%_
                   (lambda (_%$%g274033274105%_
                            _%$%g274034274107%_
                            _%$%g274035274108%_)
                     (_%make-signature273944%_
                      _%$%g274035274108%_
                      _%$%g274034274107%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g274033274105%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx276772276773%_))
                  (let ((_%$%e273955274462%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx276772276773%_))))
                    (let ((_%$%tl273957274469%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e273955274462%_)))
                          (_%$%hd273956274466%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e273955274462%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl273957274469%_))
                          (let ((_%$%e273958274472%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl273957274469%_))))
                            (let ((_%$%tl273960274479%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e273958274472%_)))
                                  (_%$%hd273959274476%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e273958274472%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl273960274479%_))
                                  (_%__kont276775276776%_
                                   _%$%hd273959274476%_
                                   _%$%hd273956274466%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl273960274479%_))
                                      (let ((_%$%e273970274409%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl273960274479%_))))
                                        (let ((_%$%tl273972274416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e273970274409%_)))
                                              (_%$%hd273971274413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e273970274409%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd273971274413%_))
                                              (let ((_%$%e273973274419%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd273971274413%_))))
                                                (if (equal? _%$%e273973274419%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl273972274416%_))
                                                        (let ((_%$%e273974274423%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl273972274416%_))))
                  (let ((_%$%tl273976274430%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e273974274423%_)))
                        (_%$%hd273975274427%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e273974274423%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl273976274430%_))
                        (_%__kont276777276778%_
                         _%$%hd273975274427%_
                         _%$%hd273959274476%_
                         _%$%hd273956274466%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl273976274430%_))
                            (let ((_%$%e273993274343%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl273976274430%_))))
                              (let ((_%$%tl273995274350%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e273993274343%_)))
                                    (_%$%hd273994274347%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e273993274343%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%$%hd273994274347%_))
                                    (let ((_%$%e273996274353%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd273994274347%_))))
                                      (if (equal? _%$%e273996274353%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl273995274350%_))
                                              (_%__kont276779276780%_
                                               _%$%hd273975274427%_
                                               _%$%hd273959274476%_
                                               _%$%hd273956274466%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl273995274350%_))
                                                  (let ((_%$%e274018274253%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl273995274350%_))))
                                                    (let ((_%$%tl274020274260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e274018274253%_)))
                                                          (_%$%hd274019274257%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e274018274253%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl274020274260%_))
                                                          (_%__kont276781276782%_
                                                           _%$%hd274019274257%_
                                                           _%$%hd273975274427%_
                                                           _%$%hd273959274476%_
                                                           _%$%hd273956274466%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g273951274054%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g273951274054%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g273951274054%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g273951274054%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g273951274054%_))))))
                (let () (declare (not safe)) (_%$%g273951274054%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%$%e273973274419%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl273972274416%_))
                                                            (_%__kont276783276784%_
                                                             _%$%hd273959274476%_
                                                             _%$%hd273956274466%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl273972274416%_))
                        (let ((_%$%e274046274095%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl273972274416%_))))
                          (let ((_%$%tl274048274102%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e274046274095%_)))
                                (_%$%hd274047274099%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e274046274095%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl274048274102%_))
                                (_%__kont276785276786%_
                                 _%$%hd274047274099%_
                                 _%$%hd273959274476%_
                                 _%$%hd273956274466%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g273951274054%_)))))
                        (let () (declare (not safe)) (_%$%g273951274054%_))))
                (let () (declare (not safe)) (_%$%g273951274054%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g273951274054%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g273951274054%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g273951274054%_)))))
                  (let () (declare (not safe)) (_%$%g273951274054%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig273548%_)
        (let* ((_%$%g273551273631%_
                (lambda (_%$%g273552273627%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g273552273627%_))))
               (_%$%g273550273933%_
                (lambda (_%$%g273552273635%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g273552273635%_))
                      (let ((_%$%e273558273638%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g273552273635%_))))
                        (let ((_%$%hd273559273642%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e273558273638%_)))
                              (_%$%tl273560273645%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e273558273638%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl273560273645%_))
                              (let ((_%$%e273561273648%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl273560273645%_))))
                                (let ((_%$%hd273562273652%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e273561273648%_)))
                                      (_%$%tl273563273655%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e273561273648%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%$%hd273562273652%_))
                                      (let ((_%$%e273564273658%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd273562273652%_))))
                                        (if (equal? _%$%e273564273658%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl273563273655%_))
                                                (let ((_%$%e273565273662%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl273563273655%_))))
                                                  (let ((_%$%hd273566273666%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e273565273662%_)))
                                                        (_%$%tl273567273669%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e273565273662%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd273566273666%_))
                                                        (let ((_%$%e273568273672%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd273566273666%_))))
                  (let ((_%$%hd273569273676%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e273568273672%_)))
                        (_%$%tl273570273679%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e273568273672%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd273569273676%_))
                        (if (let ((__tmp277135 |gxc[1]#_g277136_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp277135
                               _%$%hd273569273676%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl273570273679%_))
                                (let ((_%$%e273571273682%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl273570273679%_))))
                                  (let ((_%$%hd273572273686%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e273571273682%_)))
                                        (_%$%tl273573273689%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e273571273682%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl273573273689%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl273567273669%_))
                                            (let ((_%$%e273574273692%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl273567273669%_))))
                                              (let ((_%$%hd273575273696%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e273574273692%_)))
                                                    (_%$%tl273576273699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e273574273692%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd273575273696%_))
                                                    (let ((_%$%e273577273702%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd273575273696%_))))
                                                      (if (equal? _%$%e273577273702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl273576273699%_))
                      (let ((_%$%e273578273706%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl273576273699%_))))
                        (let ((_%$%hd273579273710%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e273578273706%_)))
                              (_%$%tl273580273713%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e273578273706%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd273579273710%_))
                              (let ((_%$%e273581273716%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd273579273710%_))))
                                (let ((_%$%hd273582273720%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e273581273716%_)))
                                      (_%$%tl273583273723%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e273581273716%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd273582273720%_))
                                      (if (let ((__tmp277137
                                                 |gxc[1]#_g277138_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp277137
                                             _%$%hd273582273720%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl273583273723%_))
                                              (let ((_%$%e273584273726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl273583273723%_))))
                                                (let ((_%$%hd273585273730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e273584273726%_)))
                                                      (_%$%tl273586273733%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e273584273726%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl273586273733%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl273580273713%_))
                                                          (let ((_%$%e273587273736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl273580273713%_))))
                    (let ((_%$%hd273588273740%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e273587273736%_)))
                          (_%$%tl273589273743%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e273587273736%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd273588273740%_))
                          (let ((_%$%e273590273746%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd273588273740%_))))
                            (if (equal? _%$%e273590273746%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl273589273743%_))
                                    (let ((_%$%e273591273750%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl273589273743%_))))
                                      (let ((_%$%hd273592273754%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e273591273750%_)))
                                            (_%$%tl273593273757%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e273591273750%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd273592273754%_))
                                            (let ((_%$%e273594273760%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%hd273592273754%_))))
                                              (let ((_%$%hd273595273764%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e273594273760%_)))
                                                    (_%$%tl273596273767%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e273594273760%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd273595273764%_))
                                                    (if (let ((__tmp277139
                                                               |gxc[1]#_g277140_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp277139
                                                           _%$%hd273595273764%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl273596273767%_))
                                                            (let ((_%$%e273597273770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%$%tl273596273767%_))))
                      (let ((_%$%hd273598273774%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e273597273770%_)))
                            (_%$%tl273599273777%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e273597273770%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl273599273777%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl273593273757%_))
                                (let ((_%$%e273600273780%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl273593273757%_))))
                                  (let ((_%$%hd273601273784%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e273600273780%_)))
                                        (_%$%tl273602273787%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e273600273780%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%$%hd273601273784%_))
                                        (let ((_%$%e273603273790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd273601273784%_))))
                                          (if (equal? _%$%e273603273790%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl273602273787%_))
                                                  (let ((_%$%e273604273794%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl273602273787%_))))
                                                    (let ((_%$%hd273605273798%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e273604273794%_)))
                                                          (_%$%tl273606273801%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e273604273794%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd273605273798%_))
                                                          (let ((_%$%e273607273804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%hd273605273798%_))))
                    (let ((_%$%hd273608273808%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e273607273804%_)))
                          (_%$%tl273609273811%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e273607273804%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd273608273808%_))
                          (if (let ((__tmp277141 |gxc[1]#_g277142_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp277141
                                 _%$%hd273608273808%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl273609273811%_))
                                  (let ((_%$%e273610273814%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl273609273811%_))))
                                    (let ((_%$%hd273611273818%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e273610273814%_)))
                                          (_%$%tl273612273821%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e273610273814%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl273612273821%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl273606273801%_))
                                              (let ((_%$%e273613273824%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl273606273801%_))))
                                                (let ((_%$%hd273614273828%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e273613273824%_)))
                                                      (_%$%tl273615273831%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e273613273824%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%$%hd273614273828%_))
                                                      (let ((_%$%e273616273834%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd273614273828%_))))
                (if (equal? _%$%e273616273834%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl273615273831%_))
                        (let ((_%$%e273617273838%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl273615273831%_))))
                          (let ((_%$%hd273618273842%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e273617273838%_)))
                                (_%$%tl273619273845%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e273617273838%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd273618273842%_))
                                (let ((_%$%e273620273848%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%hd273618273842%_))))
                                  (let ((_%$%hd273621273852%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e273620273848%_)))
                                        (_%$%tl273622273855%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e273620273848%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd273621273852%_))
                                        (if (let ((__tmp277143
                                                   |gxc[1]#_g277144_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp277143
                                               _%$%hd273621273852%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl273622273855%_))
                                                (let ((_%$%e273623273858%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl273622273855%_))))
                                                  (let ((_%$%hd273624273862%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e273623273858%_)))
                                                        (_%$%tl273625273865%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e273623273858%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl273625273865%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl273619273845%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd273611273818%_))
                        (cons _%$%hd273611273818%_
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
                                                            (cons _%$%hd273585273730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd273624273862%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '#f)
                    (_%$%g273551273631%_ _%$%g273552273635%_))
                (_%$%g273551273631%_ _%$%g273552273635%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g273551273631%_
                                                 _%$%g273552273635%_))
                                            (_%$%g273551273631%_
                                             _%$%g273552273635%_))
                                        (_%$%g273551273631%_
                                         _%$%g273552273635%_))))
                                (_%$%g273551273631%_ _%$%g273552273635%_))))
                        (_%$%g273551273631%_ _%$%g273552273635%_))
                    (_%$%g273551273631%_ _%$%g273552273635%_)))
              (_%$%g273551273631%_ _%$%g273552273635%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g273551273631%_
                                               _%$%g273552273635%_))
                                          (_%$%g273551273631%_
                                           _%$%g273552273635%_))))
                                  (_%$%g273551273631%_ _%$%g273552273635%_))
                              (_%$%g273551273631%_ _%$%g273552273635%_))
                          (_%$%g273551273631%_ _%$%g273552273635%_))))
                  (_%$%g273551273631%_ _%$%g273552273635%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g273551273631%_
                                                   _%$%g273552273635%_))
                                              (_%$%g273551273631%_
                                               _%$%g273552273635%_)))
                                        (_%$%g273551273631%_
                                         _%$%g273552273635%_))))
                                (_%$%g273551273631%_ _%$%g273552273635%_))
                            (_%$%g273551273631%_ _%$%g273552273635%_))))
                    (_%$%g273551273631%_ _%$%g273552273635%_))
                (_%$%g273551273631%_ _%$%g273552273635%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g273551273631%_
                                                     _%$%g273552273635%_))))
                                            (_%$%g273551273631%_
                                             _%$%g273552273635%_))))
                                    (_%$%g273551273631%_ _%$%g273552273635%_))
                                (_%$%g273551273631%_ _%$%g273552273635%_)))
                          (_%$%g273551273631%_ _%$%g273552273635%_))))
                  (_%$%g273551273631%_ _%$%g273552273635%_))
              (_%$%g273551273631%_ _%$%g273552273635%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g273551273631%_
                                               _%$%g273552273635%_))
                                          (_%$%g273551273631%_
                                           _%$%g273552273635%_))
                                      (_%$%g273551273631%_
                                       _%$%g273552273635%_))))
                              (_%$%g273551273631%_ _%$%g273552273635%_))))
                      (_%$%g273551273631%_ _%$%g273552273635%_))
                  (_%$%g273551273631%_ _%$%g273552273635%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g273551273631%_
                                                     _%$%g273552273635%_))))
                                            (_%$%g273551273631%_
                                             _%$%g273552273635%_))
                                        (_%$%g273551273631%_
                                         _%$%g273552273635%_))))
                                (_%$%g273551273631%_ _%$%g273552273635%_))
                            (_%$%g273551273631%_ _%$%g273552273635%_))
                        (_%$%g273551273631%_ _%$%g273552273635%_))))
                (_%$%g273551273631%_ _%$%g273552273635%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g273551273631%_
                                                 _%$%g273552273635%_))
                                            (_%$%g273551273631%_
                                             _%$%g273552273635%_)))
                                      (_%$%g273551273631%_
                                       _%$%g273552273635%_))))
                              (_%$%g273551273631%_ _%$%g273552273635%_))))
                      (_%$%g273551273631%_ _%$%g273552273635%_)))))
          (_%$%g273550273933%_ _%sig273548%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx274705%_)
        (let* ((_%$%g274708274726%_
                (lambda (_%$%g274709274722%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274709274722%_))))
               (_%$%g274707274781%_
                (lambda (_%$%g274709274730%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274709274730%_))
                      (let ((_%$%e274712274733%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274709274730%_))))
                        (let ((_%$%hd274713274737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274712274733%_)))
                              (_%$%tl274714274740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274712274733%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl274714274740%_))
                              (let ((_%$%e274715274743%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl274714274740%_))))
                                (let ((_%$%hd274716274747%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e274715274743%_)))
                                      (_%$%tl274717274750%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e274715274743%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl274717274750%_))
                                      (let ((_%$%e274718274753%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl274717274750%_))))
                                        (let ((_%$%hd274719274757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e274718274753%_)))
                                              (_%$%tl274720274760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e274718274753%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl274720274760%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd274716274747%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd274719274757%_)))
                                                  (begin
                                                    (|gxc[1]#verify-procedure!|
                                                     _%stx274705%_
                                                     _%$%hd274716274747%_)
                                                    (|gxc[1]#verify-class!|
                                                     _%stx274705%_
                                                     _%$%hd274719274757%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-type))
                                                          (cons _%$%hd274716274747%_
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
                                                (cons _%$%hd274719274757%_
                                                      '()))
                                          '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g274708274726%_
                                                   _%$%g274709274730%_))
                                              (_%$%g274708274726%_
                                               _%$%g274709274730%_))))
                                      (_%$%g274708274726%_
                                       _%$%g274709274730%_))))
                              (_%$%g274708274726%_ _%$%g274709274730%_))))
                      (_%$%g274708274726%_ _%$%g274709274730%_)))))
          (_%$%g274707274781%_ _%stx274705%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx274785%_)
        (let* ((_%$%g274788274812%_
                (lambda (_%$%g274789274808%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274789274808%_))))
               (_%$%g274787275093%_
                (lambda (_%$%g274789274816%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274789274816%_))
                      (let ((_%$%e274792274819%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274789274816%_))))
                        (let ((_%$%hd274793274823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274792274819%_)))
                              (_%$%tl274794274826%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274792274819%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl274794274826%_))
                              (let ((_%$%e274795274829%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl274794274826%_))))
                                (let ((_%$%hd274796274833%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e274795274829%_)))
                                      (_%$%tl274797274836%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e274795274829%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl274797274836%_))
                                      (let ((_g277145_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl274797274836%_
                                                '0))))
                                        (begin
                                          (let ((_g277146_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g277145_)
                                                       (##values-length
                                                        _g277145_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g277146_ 2)))
                                                (error "Context expects 2 values"
                                                       _g277146_)))
                                          (let ((_%$%target274798274839%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g277145_ 0)))
                                                (_%$%tl274800274842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g277145_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl274800274842%_))
                                                (letrec ((_%$%loop274801274845%_
                                                          (lambda (_%$%hd274799274849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%signature274805274852%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd274799274849%_))
                        (let ((_%$%e274802274854%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd274799274849%_))))
                          (let ((_%$%lp-hd274803274858%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e274802274854%_)))
                                (_%$%lp-tl274804274861%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e274802274854%_))))
                            (_%$%loop274801274845%_
                             _%$%lp-tl274804274861%_
                             (cons _%$%lp-hd274803274858%_
                                   _%$%signature274805274852%_))))
                        (let ((_%$%signature274806274864%_
                               (reverse _%$%signature274805274852%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd274796274833%_))
                              (let* ((_%$%g274887274902%_
                                      (lambda (_%$%g274888274898%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g274888274898%_))))
                                     (_%$%g274886275081%_
                                      (lambda (_%$%g274888274906%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%g274888274906%_))
                                            (let ((_%$%e274891274909%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%g274888274906%_))))
                                              (let ((_%$%hd274892274913%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e274891274909%_)))
                                                    (_%$%tl274893274916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e274891274909%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl274893274916%_))
                                                    (let ((_%$%e274894274919%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl274893274916%_))))
                                                      (let ((_%$%hd274895274923%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e274894274919%_)))
                    (_%$%tl274896274926%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e274894274919%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl274896274926%_))
                    (let* ((_%$%g274947274955%_
                            (lambda (_%$%g274948274951%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g274948274951%_))))
                           (_%$%g274946275077%_
                            (lambda (_%$%g274948274959%_)
                              (let* ((_%unchecked274975%_
                                      (|gxc[1]#signature->unchecked-signature|
                                       _%$%hd274895274923%_))
                                     (_%$%g274978274986%_
                                      (lambda (_%$%g274979274982%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g274979274982%_))))
                                     (_%$%g274977275009%_
                                      (lambda (_%$%g274979274990%_)
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'begin))
                                              (cons _%$%g274948274959%_
                                                    (cons _%$%g274979274990%_
                                                          '()))))))
                                (_%$%g274977275009%_
                                 (if _%unchecked274975%_
                                     (let* ((_%$%g275013275028%_
                                             (lambda (_%$%g275014275024%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g275014275024%_))))
                                            (_%$%g275012275073%_
                                             (lambda (_%$%g275014275032%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g275014275032%_))
                                                   (let ((_%$%e275017275035%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%$%g275014275032%_))))
                                                     (let ((_%$%hd275018275039%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e275017275035%_)))
                                                           (_%$%tl275019275042%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e275017275035%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl275019275042%_))
                                                           (let ((_%$%e275020275045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%$%tl275019275042%_))))
                     (let ((_%$%hd275021275049%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e275020275045%_)))
                           (_%$%tl275022275052%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e275020275045%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl275022275052%_))
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'declare-type))
                                 (cons _%$%hd275018275039%_
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-!primitive-lambda))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%$%hd274892274913%_ '()))
                 (cons '#f
                       (cons 'signature: (cons _%$%hd275021275049%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (_%$%g275013275028%_ _%$%g275014275032%_))))
                   (_%$%g275013275028%_ _%$%g275014275032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g275013275028%_
                                                    _%$%g275014275032%_)))))
                                       (_%$%g275012275073%_
                                        _%unchecked274975%_))
                                     '(begin)))))))
                      (_%$%g274946275077%_
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'declare-type))
                             (cons _%$%hd274796274833%_
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
                                                           (cons _%$%hd274892274913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons 'signature:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%hd274895274923%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                    (_%$%g274887274902%_ _%$%g274888274906%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g274887274902%_
                                                     _%$%g274888274906%_))))
                                            (_%$%g274887274902%_
                                             _%$%g274888274906%_)))))
                                (_%$%g274886275081%_
                                 (|gxc[1]#parse-signature|
                                  _%stx274785%_
                                  _%$%hd274796274833%_
                                  (let ((__tmp277147
                                         (lambda (_%$%g275084275087%_
                                                  _%$%g275085275090%_)
                                           (cons _%$%g275084275087%_
                                                 _%$%g275085275090%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp277147
                                     '()
                                     _%$%signature274806274864%_)))))
                              (_%$%g274788274812%_ _%$%g274789274816%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop274801274845%_
                                                   _%$%target274798274839%_
                                                   '()))
                                                (_%$%g274788274812%_
                                                 _%$%g274789274816%_)))))
                                      (_%$%g274788274812%_
                                       _%$%g274789274816%_))))
                              (_%$%g274788274812%_ _%$%g274789274816%_))))
                      (_%$%g274788274812%_ _%$%g274789274816%_)))))
          (_%$%g274787275093%_ _%stx274785%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx275098%_)
        (let* ((_%$%g275101275125%_
                (lambda (_%$%g275102275121%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275102275121%_))))
               (_%$%g275100276000%_
                (lambda (_%$%g275102275129%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275102275129%_))
                      (let ((_%$%e275105275132%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275102275129%_))))
                        (let ((_%$%hd275106275136%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275105275132%_)))
                              (_%$%tl275107275139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275105275132%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275107275139%_))
                              (let ((_%$%e275108275142%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275107275139%_))))
                                (let ((_%$%hd275109275146%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275108275142%_)))
                                      (_%$%tl275110275149%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275108275142%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl275110275149%_))
                                      (let ((_g277148_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl275110275149%_
                                                '0))))
                                        (begin
                                          (let ((_g277149_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g277148_)
                                                       (##values-length
                                                        _g277148_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g277149_ 2)))
                                                (error "Context expects 2 values"
                                                       _g277149_)))
                                          (let ((_%$%target275111275152%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g277148_ 0)))
                                                (_%$%tl275113275155%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g277148_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl275113275155%_))
                                                (letrec ((_%$%loop275114275158%_
                                                          (lambda (_%$%hd275112275162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%case-signature275118275165%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd275112275162%_))
                        (let ((_%$%e275115275167%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd275112275162%_))))
                          (let ((_%$%lp-hd275116275171%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e275115275167%_)))
                                (_%$%lp-tl275117275174%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e275115275167%_))))
                            (_%$%loop275114275158%_
                             _%$%lp-tl275117275174%_
                             (cons _%$%lp-hd275116275171%_
                                   _%$%case-signature275118275165%_))))
                        (let ((_%$%case-signature275119275177%_
                               (reverse _%$%case-signature275118275165%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd275109275146%_))
                              (let* ((_%signatures275213%_
                                      (map (lambda (_%$%g275199275201%_)
                                             (|gxc[1]#parse-signature|
                                              _%stx275098%_
                                              _%$%hd275109275146%_
                                              _%$%g275199275201%_))
                                           (let ((__tmp277150
                                                  (lambda (_%$%g275204275207%_
                                                           _%$%g275205275210%_)
                                                    (cons _%$%g275204275207%_
                                                          _%$%g275205275210%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp277150
                                              '()
                                              _%$%case-signature275119275177%_))))
                                     (_%$%g275216275242%_
                                      (lambda (_%$%g275217275238%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g275217275238%_))))
                                     (_%$%g275215275996%_
                                      (lambda (_%$%g275217275246%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g275217275246%_))
                                            (let ((_g277151_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g275217275246%_
                                                      '0))))
                                              (begin
                                                (let ((_g277152_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g277151_)
                                                             (##values-length
                                                              _g277151_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g277152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g277152_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target275220275249%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g277151_
                                                          0)))
                                                      (_%$%tl275222275252%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g277151_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl275222275252%_))
                                                      (letrec ((_%$%loop275223275255%_
                                                                (lambda (_%$%hd275221275259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%sig275227275262%_
                                 _%$%arity275228275263%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd275221275259%_))
                              (let ((_%$%e275224275265%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd275221275259%_))))
                                (let ((_%$%lp-hd275225275269%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275224275265%_)))
                                      (_%$%lp-tl275226275272%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275224275265%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%lp-hd275225275269%_))
                                      (let ((_%$%e275231275275%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%lp-hd275225275269%_))))
                                        (let ((_%$%hd275232275279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275231275275%_)))
                                              (_%$%tl275233275282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275231275275%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl275233275282%_))
                                              (let ((_%$%e275234275285%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl275233275282%_))))
                                                (let ((_%$%hd275235275289%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e275234275285%_)))
                                                      (_%$%tl275236275292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e275234275285%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl275236275292%_))
                                                      (_%$%loop275223275255%_
                                                       _%$%lp-tl275226275272%_
                                                       (cons _%$%hd275235275289%_
                                                             _%$%sig275227275262%_)
                                                       (cons _%$%hd275232275279%_
                                                             _%$%arity275228275263%_))
                                                      (_%$%g275216275242%_
                                                       _%$%g275217275246%_))))
                                              (_%$%g275216275242%_
                                               _%$%g275217275246%_))))
                                      (_%$%g275216275242%_
                                       _%$%g275217275246%_))))
                              (let ((_%$%sig275229275295%_
                                     (reverse _%$%sig275227275262%_))
                                    (_%$%arity275230275297%_
                                     (reverse _%$%arity275228275263%_)))
                                (let* ((_%$%g275318275326%_
                                        (lambda (_%$%g275319275322%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g275319275322%_))))
                                       (_%$%g275317275981%_
                                        (lambda (_%$%g275319275330%_)
                                          (let* ((_%$%g275346275354%_
                                                  (lambda (_%$%g275347275350%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g275347275350%_))))
                                                 (_%$%g275345275376%_
                                                  (lambda (_%$%g275347275358%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%$%g275319275330%_
                                                                (cons _%$%g275347275358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g275345275376%_
                                             (let ((_g277153_
                                                    (let _%loop275380%_ ((_%rest275383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%signatures275213%_)
                                 (_%unchecked-proc275385%_ '#f)
                                 (_%unchecked-clauses275386%_ '()))
              (let* ((_%$%rest275387275395%_ _%rest275383%_)
                     (_%$%else275389275407%_
                      (lambda ()
                        (values _%unchecked-proc275385%_
                                (reverse! _%unchecked-clauses275386%_))))
                     (_%$%K275391275848%_
                      (lambda (_%rest275411%_ _%hd275413%_)
                        (let* ((_%$%g275415275502%_
                                (lambda (_%$%g275416275498%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g275416275498%_))))
                               (_%$%g275414275844%_
                                (lambda (_%$%g275416275506%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%g275416275506%_))
                                      (let ((_%$%e275423275509%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%g275416275506%_))))
                                        (let ((_%$%hd275424275513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275423275509%_)))
                                              (_%$%tl275425275516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275423275509%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl275425275516%_))
                                              (let ((_%$%e275426275519%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl275425275516%_))))
                                                (let ((_%$%hd275427275523%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e275426275519%_)))
                                                      (_%$%tl275428275526%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e275426275519%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd275427275523%_))
                                                      (let ((_%$%e275429275529%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%hd275427275523%_))))
                (let ((_%$%hd275430275533%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e275429275529%_)))
                      (_%$%tl275431275536%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e275429275529%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl275431275536%_))
                      (let ((_%$%e275432275539%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl275431275536%_))))
                        (let ((_%$%hd275433275543%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275432275539%_)))
                              (_%$%tl275434275546%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275432275539%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-datum? _%$%hd275433275543%_))
                              (let ((_%$%e275435275549%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd275433275543%_))))
                                (if (equal? _%$%e275435275549%_ 'arguments:)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl275434275546%_))
                                        (let ((_%$%e275436275553%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl275434275546%_))))
                                          (let ((_%$%hd275437275557%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e275436275553%_)))
                                                (_%$%tl275438275560%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e275436275553%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd275437275557%_))
                                                (let ((_%$%e275439275563%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%hd275437275557%_))))
                                                  (let ((_%$%hd275440275567%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e275439275563%_)))
                                                        (_%$%tl275441275570%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e275439275563%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd275440275567%_))
                                                        (if (let ((__tmp277155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gxc[1]#_g277156_|))
                      (declare (not safe))
                      (gx#free-identifier=? __tmp277155 _%$%hd275440275567%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl275441275570%_))
                        (let ((_%$%e275442275573%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl275441275570%_))))
                          (let ((_%$%hd275443275577%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e275442275573%_)))
                                (_%$%tl275444275580%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e275442275573%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl275444275580%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl275438275560%_))
                                    (let ((_%$%e275445275583%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl275438275560%_))))
                                      (let ((_%$%hd275446275587%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e275445275583%_)))
                                            (_%$%tl275447275590%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e275445275583%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-datum?
                                               _%$%hd275446275587%_))
                                            (let ((_%$%e275448275593%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd275446275587%_))))
                                              (if (equal? _%$%e275448275593%_
                                                          'return:)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl275447275590%_))
                                                      (let ((_%$%e275449275597%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl275447275590%_))))
                (let ((_%$%hd275450275601%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e275449275597%_)))
                      (_%$%tl275451275604%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e275449275597%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd275450275601%_))
                      (let ((_%$%e275452275607%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%hd275450275601%_))))
                        (let ((_%$%hd275453275611%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275452275607%_)))
                              (_%$%tl275454275614%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275452275607%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd275453275611%_))
                              (if (let ((__tmp277157 |gxc[1]#_g277158_|))
                                    (declare (not safe))
                                    (gx#free-identifier=?
                                     __tmp277157
                                     _%$%hd275453275611%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl275454275614%_))
                                      (let ((_%$%e275455275617%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl275454275614%_))))
                                        (let ((_%$%hd275456275621%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275455275617%_)))
                                              (_%$%tl275457275624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275455275617%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl275457275624%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl275451275604%_))
                                                  (let ((_%$%e275458275627%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl275451275604%_))))
                                                    (let ((_%$%hd275459275631%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e275458275627%_)))
                                                          (_%$%tl275460275634%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e275458275627%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-datum?
                                                             _%$%hd275459275631%_))
                                                          (let ((_%$%e275461275637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd275459275631%_))))
                    (if (equal? _%$%e275461275637%_ 'effect:)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl275460275634%_))
                            (let ((_%$%e275462275641%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl275460275634%_))))
                              (let ((_%$%hd275463275645%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e275462275641%_)))
                                    (_%$%tl275464275648%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e275462275641%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd275463275645%_))
                                    (let ((_%$%e275465275651%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd275463275645%_))))
                                      (let ((_%$%hd275466275655%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e275465275651%_)))
                                            (_%$%tl275467275658%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e275465275651%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd275466275655%_))
                                            (if (let ((__tmp277159
                                                       |gxc[1]#_g277160_|))
                                                  (declare (not safe))
                                                  (gx#free-identifier=?
                                                   __tmp277159
                                                   _%$%hd275466275655%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl275467275658%_))
                                                    (let ((_%$%e275468275661%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl275467275658%_))))
                                                      (let ((_%$%hd275469275665%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e275468275661%_)))
                    (_%$%tl275470275668%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e275468275661%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl275470275668%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl275464275648%_))
                        (let ((_%$%e275471275671%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl275464275648%_))))
                          (let ((_%$%hd275472275675%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e275471275671%_)))
                                (_%$%tl275473275678%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e275471275671%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd275472275675%_))
                                (let ((_%$%e275474275681%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd275472275675%_))))
                                  (if (equal? _%$%e275474275681%_ 'unchecked:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl275473275678%_))
                                          (let ((_%$%e275475275685%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl275473275678%_))))
                                            (let ((_%$%hd275476275689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e275475275685%_)))
                                                  (_%$%tl275477275692%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e275475275685%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd275476275689%_))
                                                  (let ((_%$%e275478275695%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd275476275689%_))))
                                                    (let ((_%$%hd275479275699%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e275478275695%_)))
                                                          (_%$%tl275480275702%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e275478275695%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd275479275699%_))
                                                          (if (let ((__tmp277161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             |gxc[1]#_g277162_|))
                        (declare (not safe))
                        (gx#free-identifier=?
                         __tmp277161
                         _%$%hd275479275699%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl275480275702%_))
                          (let ((_%$%e275481275705%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl275480275702%_))))
                            (let ((_%$%hd275482275709%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e275481275705%_)))
                                  (_%$%tl275483275712%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e275481275705%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl275483275712%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl275477275692%_))
                                      (let ((_%$%e275484275715%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl275477275692%_))))
                                        (let ((_%$%hd275485275719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275484275715%_)))
                                              (_%$%tl275486275722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275484275715%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd275485275719%_))
                                              (let ((_%$%e275487275725%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd275485275719%_))))
                                                (if (equal? _%$%e275487275725%_
                                                            'origin:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl275486275722%_))
                                                        (let ((_%$%e275488275729%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl275486275722%_))))
                  (let ((_%$%hd275489275733%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e275488275729%_)))
                        (_%$%tl275490275736%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e275488275729%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd275489275733%_))
                        (let ((_%$%e275491275739%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd275489275733%_))))
                          (let ((_%$%hd275492275743%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e275491275739%_)))
                                (_%$%tl275493275746%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e275491275739%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd275492275743%_))
                                (if (let ((__tmp277163 |gxc[1]#_g277164_|))
                                      (declare (not safe))
                                      (gx#free-identifier=?
                                       __tmp277163
                                       _%$%hd275492275743%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl275493275746%_))
                                        (let ((_%$%e275494275749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl275493275746%_))))
                                          (let ((_%$%hd275495275753%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e275494275749%_)))
                                                (_%$%tl275496275756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e275494275749%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl275496275756%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl275490275736%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl275428275526%_))
                                                        (let ((_%clause275836%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%$%hd275424275513%_ '()))
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
                                     (cons _%$%hd275456275621%_ '()))
                               (cons 'origin:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%hd275495275753%_
                                                       '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                      (_%unchecked275838%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%$%hd275482275709%_))))
                  (_%loop275380%_
                   _%rest275411%_
                   (let ((_%$e275840%_ _%unchecked275838%_))
                     (if _%$e275840%_ _%$e275840%_ _%unchecked-proc275385%_))
                   (cons _%clause275836%_ _%unchecked-clauses275386%_)))
                (_%$%g275415275502%_ _%$%g275416275506%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g275415275502%_
                                                     _%$%g275416275506%_))
                                                (_%$%g275415275502%_
                                                 _%$%g275416275506%_))))
                                        (_%$%g275415275502%_
                                         _%$%g275416275506%_))
                                    (_%$%g275415275502%_ _%$%g275416275506%_))
                                (_%$%g275415275502%_ _%$%g275416275506%_))))
                        (_%$%g275415275502%_ _%$%g275416275506%_))))
                (_%$%g275415275502%_ _%$%g275416275506%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g275415275502%_
                                                     _%$%g275416275506%_)))
                                              (_%$%g275415275502%_
                                               _%$%g275416275506%_))))
                                      (_%$%g275415275502%_
                                       _%$%g275416275506%_))
                                  (_%$%g275415275502%_ _%$%g275416275506%_))))
                          (_%$%g275415275502%_ _%$%g275416275506%_))
                      (_%$%g275415275502%_ _%$%g275416275506%_))
                  (_%$%g275415275502%_ _%$%g275416275506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g275415275502%_
                                                   _%$%g275416275506%_))))
                                          (_%$%g275415275502%_
                                           _%$%g275416275506%_))
                                      (_%$%g275415275502%_
                                       _%$%g275416275506%_)))
                                (_%$%g275415275502%_ _%$%g275416275506%_))))
                        (_%$%g275415275502%_ _%$%g275416275506%_))
                    (_%$%g275415275502%_ _%$%g275416275506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g275415275502%_
                                                     _%$%g275416275506%_))
                                                (_%$%g275415275502%_
                                                 _%$%g275416275506%_))
                                            (_%$%g275415275502%_
                                             _%$%g275416275506%_))))
                                    (_%$%g275415275502%_
                                     _%$%g275416275506%_))))
                            (_%$%g275415275502%_ _%$%g275416275506%_))
                        (_%$%g275415275502%_ _%$%g275416275506%_)))
                  (_%$%g275415275502%_ _%$%g275416275506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g275415275502%_
                                                   _%$%g275416275506%_))
                                              (_%$%g275415275502%_
                                               _%$%g275416275506%_))))
                                      (_%$%g275415275502%_
                                       _%$%g275416275506%_))
                                  (_%$%g275415275502%_ _%$%g275416275506%_))
                              (_%$%g275415275502%_ _%$%g275416275506%_))))
                      (_%$%g275415275502%_ _%$%g275416275506%_))))
              (_%$%g275415275502%_ _%$%g275416275506%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g275415275502%_
                                                   _%$%g275416275506%_)))
                                            (_%$%g275415275502%_
                                             _%$%g275416275506%_))))
                                    (_%$%g275415275502%_ _%$%g275416275506%_))
                                (_%$%g275415275502%_ _%$%g275416275506%_))))
                        (_%$%g275415275502%_ _%$%g275416275506%_))
                    (_%$%g275415275502%_ _%$%g275416275506%_))
                (_%$%g275415275502%_ _%$%g275416275506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g275415275502%_
                                                 _%$%g275416275506%_))))
                                        (_%$%g275415275502%_
                                         _%$%g275416275506%_))
                                    (_%$%g275415275502%_ _%$%g275416275506%_)))
                              (_%$%g275415275502%_ _%$%g275416275506%_))))
                      (_%$%g275415275502%_ _%$%g275416275506%_))))
              (_%$%g275415275502%_ _%$%g275416275506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g275415275502%_
                                               _%$%g275416275506%_))))
                                      (_%$%g275415275502%_
                                       _%$%g275416275506%_)))))
                          (_%$%g275414275844%_ _%hd275413%_)))))
                (if (pair? _%$%rest275387275395%_)
                    (let ((_%$%hd275392275852%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest275387275395%_)))
                          (_%$%tl275393275855%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest275387275395%_))))
                      (let* ((_%hd275858%_ _%$%hd275392275852%_)
                             (_%rest275861%_ _%$%tl275393275855%_))
                        (_%$%K275391275848%_ _%rest275861%_ _%hd275858%_)))
                    (_%$%else275389275407%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 (let ((_g277154_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g277153_)
                                                              (##values-length
                                                               _g277153_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g277154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g277154_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%unchecked-proc275864%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g277153_
                                                           0)))
                                                       (_%unchecked-clauses275866%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g277153_
                                                           1))))
                                                   (if _%unchecked-proc275864%_
                                                       (let* ((_%$%g275868275892%_
                                                               (lambda (_%$%g275869275888%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g275869275888%_))))
                      (_%$%g275867275977%_
                       (lambda (_%$%g275869275896%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%g275869275896%_))
                             (let ((_%$%e275872275899%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%$%g275869275896%_))))
                               (let ((_%$%hd275873275903%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e275872275899%_)))
                                     (_%$%tl275874275906%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e275872275899%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%tl275874275906%_))
                                     (let ((_%$%e275875275909%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%tl275874275906%_))))
                                       (let ((_%$%hd275876275913%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e275875275909%_)))
                                             (_%$%tl275877275916%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e275875275909%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair/null?
                                                _%$%hd275876275913%_))
                                             (let ((_g277165_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-split-splice
                                                       _%$%hd275876275913%_
                                                       '0))))
                                               (begin
                                                 (let ((_g277166_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g277165_)
                                                              (##values-length
                                                               _g277165_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g277166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g277166_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$%target275878275919%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g277165_
                                                           0)))
                                                       (_%$%tl275880275922%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g277165_
                                                           1))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl275880275922%_))
                                                       (letrec ((_%$%loop275881275925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%hd275879275929%_
                                  _%$%clause275885275932%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd275879275929%_))
                               (let ((_%$%e275882275934%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%$%hd275879275929%_))))
                                 (let ((_%$%lp-hd275883275938%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e275882275934%_)))
                                       (_%$%lp-tl275884275941%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e275882275934%_))))
                                   (_%$%loop275881275925%_
                                    _%$%lp-tl275884275941%_
                                    (cons _%$%lp-hd275883275938%_
                                          _%$%clause275885275932%_))))
                               (let ((_%$%clause275886275944%_
                                      (reverse _%$%clause275885275932%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl275877275916%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-type))
                                           (cons _%$%hd275873275903%_
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!primitive-case-lambda))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))
                                 (let ((__tmp277167
                                        (lambda (_%$%g275968275971%_
                                                 _%$%g275969275974%_)
                                          (cons _%$%g275968275971%_
                                                _%$%g275969275974%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp277167
                                    '()
                                    _%$%clause275886275944%_)))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%g275868275892%_
                                      _%$%g275869275896%_)))))))
                 (_%$%loop275881275925%_ _%$%target275878275919%_ '()))
               (_%$%g275868275892%_ _%$%g275869275896%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g275868275892%_
                                              _%$%g275869275896%_))))
                                     (_%$%g275868275892%_
                                      _%$%g275869275896%_))))
                             (_%$%g275868275892%_ _%$%g275869275896%_)))))
                 (_%$%g275867275977%_
                  (list _%unchecked-proc275864%_ _%unchecked-clauses275866%_)))
               '(begin))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g275317275981%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'declare-type))
                                         (cons _%$%hd275109275146%_
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
                                    _%$%sig275229275295%_
                                    _%$%arity275230275297%_))
                                 (let ((__tmp277168
                                        (lambda (_%$%g275984275988%_
                                                 _%$%g275985275991%_
                                                 _%$%g275986275993%_)
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!primitive-lambda))
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote))
                          (cons _%$%g275985275991%_ '()))
                    (cons '#f
                          (cons 'signature: (cons _%$%g275984275988%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%g275986275993%_))))
                                   (declare (not safe))
                                   (foldr__1
                                    __tmp277168
                                    '()
                                    _%$%sig275229275295%_
                                    _%$%arity275230275297%_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))))))
                (_%$%loop275223275255%_ _%$%target275220275249%_ '() '()))
              (_%$%g275216275242%_ _%$%g275217275246%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g275216275242%_
                                             _%$%g275217275246%_)))))
                                (_%$%g275215275996%_ _%signatures275213%_))
                              (_%$%g275101275125%_ _%$%g275102275129%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop275114275158%_
                                                   _%$%target275111275152%_
                                                   '()))
                                                (_%$%g275101275125%_
                                                 _%$%g275102275129%_)))))
                                      (_%$%g275101275125%_
                                       _%$%g275102275129%_))))
                              (_%$%g275101275125%_ _%$%g275102275129%_))))
                      (_%$%g275101275125%_ _%$%g275102275129%_)))))
          (_%$%g275100276000%_ _%stx275098%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx276008%_)
        (let* ((_%__stx276988276989%_ _%$stx276008%_)
               (_%$%g276014276074%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx276988276989%_)))))
          (let ((_%__kont276991276992%_
                 (lambda (_%$%g276016276296%_ _%$%g276017276298%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g276017276298%_ '()))
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
                                                       (cons _%$%g276017276298%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g276016276296%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont276993276994%_
                 (lambda (_%$%g276031276221%_
                          _%$%g276032276223%_
                          _%$%g276033276224%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g276033276224%_ '()))
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
                                                       (cons _%$%g276033276224%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g276032276223%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g276031276221%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont276995276996%_
                 (lambda (_%$%g276050276135%_
                          _%$%g276051276137%_
                          _%$%g276052276138%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g276052276138%_ '()))
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
                                                       (cons _%$%g276052276138%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g276051276137%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g276050276135%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx276988276989%_))
                (let ((_%$%e276018276252%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx276988276989%_))))
                  (let ((_%$%tl276020276259%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e276018276252%_)))
                        (_%$%hd276019276256%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e276018276252%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl276020276259%_))
                        (let ((_%$%e276021276262%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl276020276259%_))))
                          (let ((_%$%tl276023276269%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e276021276262%_)))
                                (_%$%hd276022276266%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e276021276262%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd276022276266%_))
                                (let ((_%$%e276024276272%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd276022276266%_))))
                                  (if (equal? _%$%e276024276272%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl276023276269%_))
                                          (let ((_%$%e276025276276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl276023276269%_))))
                                            (let ((_%$%tl276027276283%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e276025276276%_)))
                                                  (_%$%hd276026276280%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e276025276276%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl276027276283%_))
                                                  (let ((_%$%e276028276286%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl276027276283%_))))
                                                    (let ((_%$%tl276030276293%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e276028276286%_)))
                                                          (_%$%hd276029276290%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e276028276286%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl276030276293%_))
                                                          (_%__kont276991276992%_
                                                           _%$%hd276029276290%_
                                                           _%$%hd276026276280%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g276014276074%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g276014276074%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g276014276074%_)))
                                      (if (equal? _%$%e276024276272%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl276023276269%_))
                                              (let ((_%$%e276041276191%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl276023276269%_))))
                                                (let ((_%$%tl276043276198%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e276041276191%_)))
                                                      (_%$%hd276042276195%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e276041276191%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl276043276198%_))
                                                      (let ((_%$%e276044276201%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl276043276198%_))))
                (let ((_%$%tl276046276208%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e276044276201%_)))
                      (_%$%hd276045276205%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e276044276201%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl276046276208%_))
                      (let ((_%$%e276047276211%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl276046276208%_))))
                        (let ((_%$%tl276049276218%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276047276211%_)))
                              (_%$%hd276048276215%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276047276211%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl276049276218%_))
                              (_%__kont276993276994%_
                               _%$%hd276048276215%_
                               _%$%hd276045276205%_
                               _%$%hd276042276195%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g276014276074%_)))))
                      (let () (declare (not safe)) (_%$%g276014276074%_)))))
              (let () (declare (not safe)) (_%$%g276014276074%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g276014276074%_)))
                                          (if (equal? _%$%e276024276272%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl276023276269%_))
                                                  (let ((_%$%e276060276105%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl276023276269%_))))
                                                    (let ((_%$%tl276062276112%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e276060276105%_)))
                                                          (_%$%hd276061276109%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e276060276105%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl276062276112%_))
                                                          (let ((_%$%e276063276115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl276062276112%_))))
                    (let ((_%$%tl276065276122%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e276063276115%_)))
                          (_%$%hd276064276119%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e276063276115%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl276065276122%_))
                          (let ((_%$%e276066276125%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl276065276122%_))))
                            (let ((_%$%tl276068276132%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e276066276125%_)))
                                  (_%$%hd276067276129%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e276066276125%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl276068276132%_))
                                  (_%__kont276995276996%_
                                   _%$%hd276067276129%_
                                   _%$%hd276064276119%_
                                   _%$%hd276061276109%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g276014276074%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g276014276074%_)))))
                  (let () (declare (not safe)) (_%$%g276014276074%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g276014276074%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g276014276074%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g276014276074%_)))))
                        (let () (declare (not safe)) (_%$%g276014276074%_)))))
                (let () (declare (not safe)) (_%$%g276014276074%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx276320%_)
        (let* ((_%$%g276324276344%_
                (lambda (_%$%g276325276340%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276325276340%_))))
               (_%$%g276323276413%_
                (lambda (_%$%g276325276348%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276325276348%_))
                      (let ((_%$%e276327276351%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276325276348%_))))
                        (let ((_%$%hd276328276355%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276327276351%_)))
                              (_%$%tl276329276358%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276327276351%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl276329276358%_))
                              (let ((_g277169_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl276329276358%_
                                        '0))))
                                (begin
                                  (let ((_g277170_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g277169_)
                                               (##values-length _g277169_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g277170_ 2)))
                                        (error "Context expects 2 values"
                                               _g277170_)))
                                  (let ((_%$%target276330276361%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g277169_ 0)))
                                        (_%$%tl276332276364%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g277169_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl276332276364%_))
                                        (letrec ((_%$%loop276333276367%_
                                                  (lambda (_%$%hd276331276371%_
                                                           _%$%decl276337276374%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd276331276371%_))
                                                        (let ((_%$%e276334276376%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd276331276371%_))))
                  (let ((_%$%lp-hd276335276380%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e276334276376%_)))
                        (_%$%lp-tl276336276383%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e276334276376%_))))
                    (_%$%loop276333276367%_
                     _%$%lp-tl276336276383%_
                     (cons _%$%lp-hd276335276380%_ _%$%decl276337276374%_))))
                (let ((_%$%decl276338276386%_
                       (reverse _%$%decl276337276374%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (let ((__tmp277171
                               (lambda (_%$%g276404276407%_
                                        _%$%g276405276410%_)
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-builtin-class))
                                             _%$%g276404276407%_)
                                       _%$%g276405276410%_))))
                          (declare (not safe))
                          (foldr__0
                           __tmp277171
                           '()
                           _%$%decl276338276386%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop276333276367%_
                                           _%$%target276330276361%_
                                           '()))
                                        (_%$%g276324276344%_
                                         _%$%g276325276348%_)))))
                              (_%$%g276324276344%_ _%$%g276325276348%_))))
                      (_%$%g276324276344%_ _%$%g276325276348%_)))))
          (_%$%g276323276413%_ _%$stx276320%_))))))
