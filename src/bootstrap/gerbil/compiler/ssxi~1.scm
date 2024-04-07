(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g202740_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202754_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202756_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202758_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202760_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202773_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202775_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202777_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202779_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx196296%_)
        (let* ((_%g196300196318%_
                (lambda (_%g196301196314%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196301196314%_))))
               (_%g196299196373%_
                (lambda (_%g196301196322%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196301196322%_))
                      (let ((_%e196306196325%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196301196322%_))))
                        (let ((_%hd196305196329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196306196325%_)))
                              (_%tl196304196332%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196306196325%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196304196332%_))
                              (let ((_%e196309196335%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196304196332%_))))
                                (let ((_%hd196308196339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196309196335%_)))
                                      (_%tl196307196342%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196309196335%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196307196342%_))
                                      (let ((_%e196312196345%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196307196342%_))))
                                        (let ((_%hd196311196349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196312196345%_)))
                                              (_%tl196310196352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196312196345%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196310196352%_))
                                              ((lambda (_%L196355%_
                                                        _%L196357%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196357%_))
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
                               (cons _%L196357%_ '()))
                         (cons _%L196355%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196300196318%_
                                                      _%g196301196322%_)))
                                               _%hd196311196349%_
                                               _%hd196308196339%_)
                                              (_%g196300196318%_
                                               _%g196301196322%_))))
                                      (_%g196300196318%_ _%g196301196322%_))))
                              (_%g196300196318%_ _%g196301196322%_))))
                      (_%g196300196318%_ _%g196301196322%_)))))
          (_%g196299196373%_ _%$stx196296%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx196377%_)
        (let* ((_%g196381196399%_
                (lambda (_%g196382196395%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196382196395%_))))
               (_%g196380196454%_
                (lambda (_%g196382196403%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196382196403%_))
                      (let ((_%e196387196406%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196382196403%_))))
                        (let ((_%hd196386196410%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196387196406%_)))
                              (_%tl196385196413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196387196406%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196385196413%_))
                              (let ((_%e196390196416%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196385196413%_))))
                                (let ((_%hd196389196420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196390196416%_)))
                                      (_%tl196388196423%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196390196416%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196388196423%_))
                                      (let ((_%e196393196426%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196388196423%_))))
                                        (let ((_%hd196392196430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196393196426%_)))
                                              (_%tl196391196433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196393196426%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196391196433%_))
                                              ((lambda (_%L196436%_
                                                        _%L196438%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196438%_))
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
                               (cons _%L196438%_ '()))
                         (cons _%L196436%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196381196399%_
                                                      _%g196382196403%_)))
                                               _%hd196392196430%_
                                               _%hd196389196420%_)
                                              (_%g196381196399%_
                                               _%g196382196403%_))))
                                      (_%g196381196399%_ _%g196382196403%_))))
                              (_%g196381196399%_ _%g196382196403%_))))
                      (_%g196381196399%_ _%g196382196403%_)))))
          (_%g196380196454%_ _%$stx196377%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx196458%_)
        (let* ((_%g196462196491%_
                (lambda (_%g196463196487%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196463196487%_))))
               (_%g196461196591%_
                (lambda (_%g196463196495%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196463196495%_))
                      (let ((_%e196468196498%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196463196495%_))))
                        (let ((_%hd196467196502%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196468196498%_)))
                              (_%tl196466196505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196468196498%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196466196505%_))
                              (let ((_g202718_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196466196505%_
                                        '0))))
                                (begin
                                  (let ((_g202719_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202718_)
                                               (##vector-length _g202718_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202719_ 2)))
                                        (error "Context expects 2 values"
                                               _g202719_)))
                                  (let ((_%target196469196508%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202718_ 0)))
                                        (_%tl196471196511%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202718_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196471196511%_))
                                        (letrec ((_%loop196472196514%_
                                                  (lambda (_%hd196470196518%_
                                                           _%type196476196521%_
                                                           _%symbol196477196523%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196470196518%_))
                                                        (let ((_%e196473196526%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196470196518%_))))
                  (let ((_%lp-hd196474196530%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196473196526%_)))
                        (_%lp-tl196475196533%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196473196526%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196474196530%_))
                        (let ((_%e196482196536%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196474196530%_))))
                          (let ((_%hd196481196540%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196482196536%_)))
                                (_%tl196480196543%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196482196536%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196480196543%_))
                                (let ((_%e196485196546%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196480196543%_))))
                                  (let ((_%hd196484196550%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196485196546%_)))
                                        (_%tl196483196553%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196485196546%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196483196553%_))
                                        (_%loop196472196514%_
                                         _%lp-tl196475196533%_
                                         (cons _%hd196484196550%_
                                               _%type196476196521%_)
                                         (cons _%hd196481196540%_
                                               _%symbol196477196523%_))
                                        (_%g196462196491%_
                                         _%g196463196495%_))))
                                (_%g196462196491%_ _%g196463196495%_))))
                        (_%g196462196491%_ _%g196463196495%_))))
                (let ((_%type196478196556%_ (reverse _%type196476196521%_))
                      (_%symbol196479196559%_
                       (reverse _%symbol196477196523%_)))
                  ((lambda (_%L196562%_ _%L196564%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196562%_
                                _%L196564%_))
                             (let ((__tmp202720
                                    (lambda (_%g196579196583%_
                                             _%g196580196586%_
                                             _%g196581196588%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g196580196586%_
                                                        (cons _%g196579196583%_
                                                              '())))
                                            _%g196581196588%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202720
                                '()
                                _%L196562%_
                                _%L196564%_)))))
                   _%type196478196556%_
                   _%symbol196479196559%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196472196514%_
                                           _%target196469196508%_
                                           '()
                                           '()))
                                        (_%g196462196491%_
                                         _%g196463196495%_)))))
                              (_%g196462196491%_ _%g196463196495%_))))
                      (_%g196462196491%_ _%g196463196495%_)))))
          (_%g196461196591%_ _%$stx196458%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx196596%_)
        (let* ((_%__stx202029202030%_ _%$stx196596%_)
               (_%g196601196643%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202029202030%_)))))
          (let ((_%__kont202032202033%_
                 (lambda (_%L196771%_ _%L196773%_ _%L196774%_ _%L196775%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196775%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196774%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L196773%_ '()))
                                           (cons _%L196771%_ '())))))))
                (_%__kont202034202035%_
                 (lambda (_%L196690%_ _%L196692%_ _%L196693%_ _%L196694%_)
                   (cons _%L196694%_
                         (cons _%L196693%_
                               (cons _%L196692%_
                                     (cons _%L196690%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match202068202069%_
                   (lambda (_%e196609196721%_
                            _%hd196608196725%_
                            _%tl196607196728%_
                            _%e196612196731%_
                            _%hd196611196735%_
                            _%tl196610196738%_
                            _%e196615196741%_
                            _%hd196614196745%_
                            _%tl196613196748%_
                            _%e196618196751%_
                            _%hd196617196755%_
                            _%tl196616196758%_
                            _%e196621196761%_
                            _%hd196620196765%_
                            _%tl196619196768%_)
                     (let ((_%L196771%_ _%hd196620196765%_)
                           (_%L196773%_ _%hd196617196755%_)
                           (_%L196774%_ _%hd196614196745%_)
                           (_%L196775%_ _%hd196611196735%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196775%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196774%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196773%_)))
                           (_%__kont202032202033%_
                            _%L196771%_
                            _%L196773%_
                            _%L196774%_
                            _%L196775%_)
                           (let ()
                             (declare (not safe))
                             (_%g196601196643%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202029202030%_))
                  (let ((_%e196609196721%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202029202030%_))))
                    (let ((_%tl196607196728%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196609196721%_)))
                          (_%hd196608196725%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196609196721%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196607196728%_))
                          (let ((_%e196612196731%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl196607196728%_))))
                            (let ((_%tl196610196738%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196612196731%_)))
                                  (_%hd196611196735%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196612196731%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196610196738%_))
                                  (let ((_%e196615196741%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl196610196738%_))))
                                    (let ((_%tl196613196748%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196615196741%_)))
                                          (_%hd196614196745%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196615196741%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196613196748%_))
                                          (let ((_%e196618196751%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl196613196748%_))))
                                            (let ((_%tl196616196758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196618196751%_)))
                                                  (_%hd196617196755%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196618196751%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196616196758%_))
                                                  (let ((_%e196621196761%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl196616196758%_))))
                                                    (let ((_%tl196619196768%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196621196761%_)))
                                                          (_%hd196620196765%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196621196761%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196619196768%_))
                                                          (_%__match202068202069%_
                                                           _%e196609196721%_
                                                           _%hd196608196725%_
                                                           _%tl196607196728%_
                                                           _%e196612196731%_
                                                           _%hd196611196735%_
                                                           _%tl196610196738%_
                                                           _%e196615196741%_
                                                           _%hd196614196745%_
                                                           _%tl196613196748%_
                                                           _%e196618196751%_
                                                           _%hd196617196755%_
                                                           _%tl196616196758%_
                                                           _%e196621196761%_
                                                           _%hd196620196765%_
                                                           _%tl196619196768%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g196601196643%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196616196758%_))
                                                      (_%__kont202034202035%_
                                                       _%hd196617196755%_
                                                       _%hd196614196745%_
                                                       _%hd196611196735%_
                                                       _%hd196608196725%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g196601196643%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g196601196643%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g196601196643%_)))))
                          (let () (declare (not safe)) (_%g196601196643%_)))))
                  (let () (declare (not safe)) (_%g196601196643%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx196800%_)
        (let* ((_%g196804196839%_
                (lambda (_%g196805196835%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196805196835%_))))
               (_%g196803196958%_
                (lambda (_%g196805196843%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196805196843%_))
                      (let ((_%e196811196846%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196805196843%_))))
                        (let ((_%hd196810196850%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196811196846%_)))
                              (_%tl196809196853%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196811196846%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196809196853%_))
                              (let ((_g202721_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196809196853%_
                                        '0))))
                                (begin
                                  (let ((_g202722_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202721_)
                                               (##vector-length _g202721_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202722_ 2)))
                                        (error "Context expects 2 values"
                                               _g202722_)))
                                  (let ((_%target196812196856%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202721_ 0)))
                                        (_%tl196814196859%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202721_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196814196859%_))
                                        (letrec ((_%loop196815196862%_
                                                  (lambda (_%hd196813196866%_
                                                           _%symbol196819196869%_
                                                           _%method196820196871%_
                                                           _%type-t196821196873%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196813196866%_))
                                                        (let ((_%e196816196876%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196813196866%_))))
                  (let ((_%lp-hd196817196880%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196816196876%_)))
                        (_%lp-tl196818196883%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196816196876%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196817196880%_))
                        (let ((_%e196827196886%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196817196880%_))))
                          (let ((_%hd196826196890%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196827196886%_)))
                                (_%tl196825196893%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196827196886%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196825196893%_))
                                (let ((_%e196830196896%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196825196893%_))))
                                  (let ((_%hd196829196900%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196830196896%_)))
                                        (_%tl196828196903%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196830196896%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196828196903%_))
                                        (let ((_%e196833196906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196828196903%_))))
                                          (let ((_%hd196832196910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196833196906%_)))
                                                (_%tl196831196913%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196833196906%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196831196913%_))
                                                (_%loop196815196862%_
                                                 _%lp-tl196818196883%_
                                                 (cons _%hd196832196910%_
                                                       _%symbol196819196869%_)
                                                 (cons _%hd196829196900%_
                                                       _%method196820196871%_)
                                                 (cons _%hd196826196890%_
                                                       _%type-t196821196873%_))
                                                (_%g196804196839%_
                                                 _%g196805196843%_))))
                                        (_%g196804196839%_
                                         _%g196805196843%_))))
                                (_%g196804196839%_ _%g196805196843%_))))
                        (_%g196804196839%_ _%g196805196843%_))))
                (let ((_%symbol196822196916%_ (reverse _%symbol196819196869%_))
                      (_%method196823196919%_ (reverse _%method196820196871%_))
                      (_%type-t196824196921%_
                       (reverse _%type-t196821196873%_)))
                  ((lambda (_%L196924%_ _%L196926%_ _%L196927%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196924%_
                                _%L196926%_
                                _%L196927%_))
                             (let ((__tmp202723
                                    (lambda (_%g196943196948%_
                                             _%g196944196951%_
                                             _%g196945196953%_
                                             _%g196946196955%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g196945196953%_
                                                        (cons _%g196944196951%_
                                                              (cons _%g196943196948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g196946196955%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp202723
                                '()
                                _%L196924%_
                                _%L196926%_
                                _%L196927%_)))))
                   _%symbol196822196916%_
                   _%method196823196919%_
                   _%type-t196824196921%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196815196862%_
                                           _%target196812196856%_
                                           '()
                                           '()
                                           '()))
                                        (_%g196804196839%_
                                         _%g196805196843%_)))))
                              (_%g196804196839%_ _%g196805196843%_))))
                      (_%g196804196839%_ _%g196805196843%_)))))
          (_%g196803196958%_ _%$stx196800%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx196963%_)
        (let* ((_%g196967197000%_
                (lambda (_%g196968196996%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196968196996%_))))
               (_%g196966197114%_
                (lambda (_%g196968197004%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196968197004%_))
                      (let ((_%e196974197007%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196968197004%_))))
                        (let ((_%hd196973197011%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196974197007%_)))
                              (_%tl196972197014%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196974197007%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196972197014%_))
                              (let ((_%e196977197017%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196972197014%_))))
                                (let ((_%hd196976197021%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196977197017%_)))
                                      (_%tl196975197024%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196977197017%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196975197024%_))
                                      (let ((_g202724_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196975197024%_
                                                '0))))
                                        (begin
                                          (let ((_g202725_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202724_)
                                                       (##vector-length
                                                        _g202724_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202725_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202725_)))
                                          (let ((_%target196978197027%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202724_ 0)))
                                                (_%tl196980197030%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202724_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196980197030%_))
                                                (letrec ((_%loop196981197033%_
                                                          (lambda (_%hd196979197037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol196985197040%_
                           _%method196986197042%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd196979197037%_))
                        (let ((_%e196982197045%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd196979197037%_))))
                          (let ((_%lp-hd196983197049%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196982197045%_)))
                                (_%lp-tl196984197052%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196982197045%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd196983197049%_))
                                (let ((_%e196991197055%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd196983197049%_))))
                                  (let ((_%hd196990197059%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196991197055%_)))
                                        (_%tl196989197062%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196991197055%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196989197062%_))
                                        (let ((_%e196994197065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196989197062%_))))
                                          (let ((_%hd196993197069%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196994197065%_)))
                                                (_%tl196992197072%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196994197065%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196992197072%_))
                                                (_%loop196981197033%_
                                                 _%lp-tl196984197052%_
                                                 (cons _%hd196993197069%_
                                                       _%symbol196985197040%_)
                                                 (cons _%hd196990197059%_
                                                       _%method196986197042%_))
                                                (_%g196967197000%_
                                                 _%g196968197004%_))))
                                        (_%g196967197000%_
                                         _%g196968197004%_))))
                                (_%g196967197000%_ _%g196968197004%_))))
                        (let ((_%symbol196987197075%_
                               (reverse _%symbol196985197040%_))
                              (_%method196988197078%_
                               (reverse _%method196986197042%_)))
                          ((lambda (_%L197081%_ _%L197083%_ _%L197084%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L197081%_
                                        _%L197083%_))
                                     (let ((__tmp202726
                                            (lambda (_%g197102197106%_
                                                     _%g197103197109%_
                                                     _%g197104197111%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L197084%_
                                                                (cons _%g197103197109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g197102197106%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g197104197111%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp202726
                                        '()
                                        _%L197081%_
                                        _%L197083%_)))))
                           _%symbol196987197075%_
                           _%method196988197078%_
                           _%hd196976197021%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop196981197033%_
                                                   _%target196978197027%_
                                                   '()
                                                   '()))
                                                (_%g196967197000%_
                                                 _%g196968197004%_)))))
                                      (_%g196967197000%_ _%g196968197004%_))))
                              (_%g196967197000%_ _%g196968197004%_))))
                      (_%g196967197000%_ _%g196968197004%_)))))
          (_%g196966197114%_ _%$stx196963%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx197119%_)
        (let* ((_%g197123197137%_
                (lambda (_%g197124197133%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197124197133%_))))
               (_%g197122197178%_
                (lambda (_%g197124197141%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197124197141%_))
                      (let ((_%e197128197144%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197124197141%_))))
                        (let ((_%hd197127197148%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197128197144%_)))
                              (_%tl197126197151%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197128197144%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197126197151%_))
                              (let ((_%e197131197154%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197126197151%_))))
                                (let ((_%hd197130197158%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197131197154%_)))
                                      (_%tl197129197161%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197131197154%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197129197161%_))
                                      ((lambda (_%L197164%_)
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
                                                           (cons _%L197164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197130197158%_)
                                      (_%g197123197137%_ _%g197124197141%_))))
                              (_%g197123197137%_ _%g197124197141%_))))
                      (_%g197123197137%_ _%g197124197141%_)))))
          (_%g197122197178%_ _%$stx197119%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx197182%_)
        (let* ((_%g197186197240%_
                (lambda (_%g197187197236%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197187197236%_))))
               (_%g197185197421%_
                (lambda (_%g197187197244%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197187197244%_))
                      (let ((_%e197201197247%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197187197244%_))))
                        (let ((_%hd197200197251%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197201197247%_)))
                              (_%tl197199197254%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197201197247%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197199197254%_))
                              (let ((_%e197204197257%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197199197254%_))))
                                (let ((_%hd197203197261%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197204197257%_)))
                                      (_%tl197202197264%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197204197257%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197202197264%_))
                                      (let ((_%e197207197267%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197202197264%_))))
                                        (let ((_%hd197206197271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197207197267%_)))
                                              (_%tl197205197274%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197207197267%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197205197274%_))
                                              (let ((_%e197210197277%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197205197274%_))))
                                                (let ((_%hd197209197281%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197210197277%_)))
                                                      (_%tl197208197284%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197210197277%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197208197284%_))
                                                      (let ((_%e197213197287%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197208197284%_))))
                (let ((_%hd197212197291%_
                       (let () (declare (not safe)) (##car _%e197213197287%_)))
                      (_%tl197211197294%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197213197287%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197211197294%_))
                      (let ((_%e197216197297%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197211197294%_))))
                        (let ((_%hd197215197301%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197216197297%_)))
                              (_%tl197214197304%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197216197297%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197214197304%_))
                              (let ((_%e197219197307%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197214197304%_))))
                                (let ((_%hd197218197311%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197219197307%_)))
                                      (_%tl197217197314%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197219197307%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197217197314%_))
                                      (let ((_%e197222197317%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197217197314%_))))
                                        (let ((_%hd197221197321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197222197317%_)))
                                              (_%tl197220197324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197222197317%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197220197324%_))
                                              (let ((_%e197225197327%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197220197324%_))))
                                                (let ((_%hd197224197331%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197225197327%_)))
                                                      (_%tl197223197334%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197225197327%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197223197334%_))
                                                      (let ((_%e197228197337%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197223197334%_))))
                (let ((_%hd197227197341%_
                       (let () (declare (not safe)) (##car _%e197228197337%_)))
                      (_%tl197226197344%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197228197337%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197226197344%_))
                      (let ((_%e197231197347%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197226197344%_))))
                        (let ((_%hd197230197351%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197231197347%_)))
                              (_%tl197229197354%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197231197347%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197229197354%_))
                              (let ((_%e197234197357%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197229197354%_))))
                                (let ((_%hd197233197361%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197234197357%_)))
                                      (_%tl197232197364%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197234197357%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197232197364%_))
                                      ((lambda (_%L197367%_
                                                _%L197369%_
                                                _%L197370%_
                                                _%L197371%_
                                                _%L197372%_
                                                _%L197373%_
                                                _%L197374%_
                                                _%L197375%_
                                                _%L197376%_
                                                _%L197377%_
                                                _%L197378%_)
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
                                                           (cons _%L197378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L197377%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L197376%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197375%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197374%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L197373%_ '()))
                                           (cons _%L197372%_
                                                 (cons _%L197371%_
                                                       (cons _%L197370%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197369%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L197367%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd197233197361%_
                                       _%hd197230197351%_
                                       _%hd197227197341%_
                                       _%hd197224197331%_
                                       _%hd197221197321%_
                                       _%hd197218197311%_
                                       _%hd197215197301%_
                                       _%hd197212197291%_
                                       _%hd197209197281%_
                                       _%hd197206197271%_
                                       _%hd197203197261%_)
                                      (_%g197186197240%_ _%g197187197244%_))))
                              (_%g197186197240%_ _%g197187197244%_))))
                      (_%g197186197240%_ _%g197187197244%_))))
              (_%g197186197240%_ _%g197187197244%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197186197240%_
                                               _%g197187197244%_))))
                                      (_%g197186197240%_ _%g197187197244%_))))
                              (_%g197186197240%_ _%g197187197244%_))))
                      (_%g197186197240%_ _%g197187197244%_))))
              (_%g197186197240%_ _%g197187197244%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197186197240%_
                                               _%g197187197244%_))))
                                      (_%g197186197240%_ _%g197187197244%_))))
                              (_%g197186197240%_ _%g197187197244%_))))
                      (_%g197186197240%_ _%g197187197244%_)))))
          (_%g197185197421%_ _%$stx197182%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx197425%_)
        (let* ((_%g197429197443%_
                (lambda (_%g197430197439%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197430197439%_))))
               (_%g197428197484%_
                (lambda (_%g197430197447%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197430197447%_))
                      (let ((_%e197434197450%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197430197447%_))))
                        (let ((_%hd197433197454%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197434197450%_)))
                              (_%tl197432197457%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197434197450%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197432197457%_))
                              (let ((_%e197437197460%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197432197457%_))))
                                (let ((_%hd197436197464%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197437197460%_)))
                                      (_%tl197435197467%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197437197460%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197435197467%_))
                                      ((lambda (_%L197470%_)
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
                                                           (cons _%L197470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197436197464%_)
                                      (_%g197429197443%_ _%g197430197447%_))))
                              (_%g197429197443%_ _%g197430197447%_))))
                      (_%g197429197443%_ _%g197430197447%_)))))
          (_%g197428197484%_ _%$stx197425%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx197488%_)
        (let* ((_%g197492197506%_
                (lambda (_%g197493197502%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197493197502%_))))
               (_%g197491197547%_
                (lambda (_%g197493197510%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197493197510%_))
                      (let ((_%e197497197513%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197493197510%_))))
                        (let ((_%hd197496197517%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197497197513%_)))
                              (_%tl197495197520%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197497197513%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197495197520%_))
                              (let ((_%e197500197523%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197495197520%_))))
                                (let ((_%hd197499197527%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197500197523%_)))
                                      (_%tl197498197530%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197500197523%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197498197530%_))
                                      ((lambda (_%L197533%_)
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
                                                           (cons _%L197533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197499197527%_)
                                      (_%g197492197506%_ _%g197493197510%_))))
                              (_%g197492197506%_ _%g197493197510%_))))
                      (_%g197492197506%_ _%g197493197510%_)))))
          (_%g197491197547%_ _%$stx197488%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx197551%_)
        (let* ((_%g197555197577%_
                (lambda (_%g197556197573%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197556197573%_))))
               (_%g197554197646%_
                (lambda (_%g197556197581%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197556197581%_))
                      (let ((_%e197562197584%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197556197581%_))))
                        (let ((_%hd197561197588%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197562197584%_)))
                              (_%tl197560197591%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197562197584%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197560197591%_))
                              (let ((_%e197565197594%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197560197591%_))))
                                (let ((_%hd197564197598%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197565197594%_)))
                                      (_%tl197563197601%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197565197594%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197563197601%_))
                                      (let ((_%e197568197604%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197563197601%_))))
                                        (let ((_%hd197567197608%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197568197604%_)))
                                              (_%tl197566197611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197568197604%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197566197611%_))
                                              (let ((_%e197571197614%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197566197611%_))))
                                                (let ((_%hd197570197618%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197571197614%_)))
                                                      (_%tl197569197621%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197571197614%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197569197621%_))
                                                      ((lambda (_%L197624%_
                                                                _%L197626%_
                                                                _%L197627%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197627%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L197626%_ '()))
                                   (cons _%L197624%_ '())))))
               _%hd197570197618%_
               _%hd197567197608%_
               _%hd197564197598%_)
              (_%g197555197577%_ _%g197556197581%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197555197577%_
                                               _%g197556197581%_))))
                                      (_%g197555197577%_ _%g197556197581%_))))
                              (_%g197555197577%_ _%g197556197581%_))))
                      (_%g197555197577%_ _%g197556197581%_)))))
          (_%g197554197646%_ _%$stx197551%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx197650%_)
        (let* ((_%g197654197676%_
                (lambda (_%g197655197672%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197655197672%_))))
               (_%g197653197745%_
                (lambda (_%g197655197680%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197655197680%_))
                      (let ((_%e197661197683%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197655197680%_))))
                        (let ((_%hd197660197687%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197661197683%_)))
                              (_%tl197659197690%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197661197683%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197659197690%_))
                              (let ((_%e197664197693%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197659197690%_))))
                                (let ((_%hd197663197697%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197664197693%_)))
                                      (_%tl197662197700%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197664197693%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197662197700%_))
                                      (let ((_%e197667197703%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197662197700%_))))
                                        (let ((_%hd197666197707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197667197703%_)))
                                              (_%tl197665197710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197667197703%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197665197710%_))
                                              (let ((_%e197670197713%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197665197710%_))))
                                                (let ((_%hd197669197717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197670197713%_)))
                                                      (_%tl197668197720%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197670197713%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197668197720%_))
                                                      ((lambda (_%L197723%_
                                                                _%L197725%_
                                                                _%L197726%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197726%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L197725%_ '()))
                                   (cons _%L197723%_ '())))))
               _%hd197669197717%_
               _%hd197666197707%_
               _%hd197663197697%_)
              (_%g197654197676%_ _%g197655197680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197654197676%_
                                               _%g197655197680%_))))
                                      (_%g197654197676%_ _%g197655197680%_))))
                              (_%g197654197676%_ _%g197655197680%_))))
                      (_%g197654197676%_ _%g197655197680%_)))))
          (_%g197653197745%_ _%$stx197650%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx197749%_)
        (let* ((_%g197753197767%_
                (lambda (_%g197754197763%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197754197763%_))))
               (_%g197752197808%_
                (lambda (_%g197754197771%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197754197771%_))
                      (let ((_%e197758197774%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197754197771%_))))
                        (let ((_%hd197757197778%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197758197774%_)))
                              (_%tl197756197781%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197758197774%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197756197781%_))
                              (let ((_%e197761197784%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197756197781%_))))
                                (let ((_%hd197760197788%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197761197784%_)))
                                      (_%tl197759197791%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197761197784%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197759197791%_))
                                      ((lambda (_%L197794%_)
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
                                                           (cons _%L197794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197760197788%_)
                                      (_%g197753197767%_ _%g197754197771%_))))
                              (_%g197753197767%_ _%g197754197771%_))))
                      (_%g197753197767%_ _%g197754197771%_)))))
          (_%g197752197808%_ _%$stx197749%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx197812%_)
        (let* ((_%g197816197834%_
                (lambda (_%g197817197830%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197817197830%_))))
               (_%g197815197889%_
                (lambda (_%g197817197838%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197817197838%_))
                      (let ((_%e197822197841%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197817197838%_))))
                        (let ((_%hd197821197845%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197822197841%_)))
                              (_%tl197820197848%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197822197841%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197820197848%_))
                              (let ((_%e197825197851%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197820197848%_))))
                                (let ((_%hd197824197855%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197825197851%_)))
                                      (_%tl197823197858%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197825197851%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197823197858%_))
                                      (let ((_%e197828197861%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197823197858%_))))
                                        (let ((_%hd197827197865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197828197861%_)))
                                              (_%tl197826197868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197828197861%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197826197868%_))
                                              ((lambda (_%L197871%_
                                                        _%L197873%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197873%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197871%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197827197865%_
                                               _%hd197824197855%_)
                                              (_%g197816197834%_
                                               _%g197817197838%_))))
                                      (_%g197816197834%_ _%g197817197838%_))))
                              (_%g197816197834%_ _%g197817197838%_))))
                      (_%g197816197834%_ _%g197817197838%_)))))
          (_%g197815197889%_ _%$stx197812%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx197893%_)
        (let* ((_%__stx202097202098%_ _%$stx197893%_)
               (_%g197900197961%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202097202098%_)))))
          (let ((_%__kont202100202101%_
                 (lambda (_%L198199%_ _%L198201%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198201%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198199%_ '()))
                                     '())))))
                (_%__kont202102202103%_
                 (lambda (_%L198138%_ _%L198140%_ _%L198141%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198141%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198140%_ '()))
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
                                 (cons _%L198138%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont202104202105%_
                 (lambda (_%L198062%_ _%L198064%_)
                   (cons _%L198064%_ (cons _%L198062%_ (cons '#f '())))))
                (_%__kont202106202107%_
                 (lambda (_%L198012%_ _%L198014%_ _%L198015%_)
                   (cons _%L198015%_
                         (cons _%L198014%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L198012%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202097202098%_))
                (let ((_%e197906198169%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202097202098%_))))
                  (let ((_%tl197904198176%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197906198169%_)))
                        (_%hd197905198173%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197906198169%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197904198176%_))
                        (let ((_%e197909198179%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl197904198176%_))))
                          (let ((_%tl197907198186%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197909198179%_)))
                                (_%hd197908198183%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197909198179%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197907198186%_))
                                (let ((_%e197912198189%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197907198186%_))))
                                  (let ((_%tl197910198196%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197912198189%_)))
                                        (_%hd197911198193%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197912198189%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197910198196%_))
                                        (_%__kont202100202101%_
                                         _%hd197911198193%_
                                         _%hd197908198183%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197910198196%_))
                                            (let ((_%e197927198114%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197910198196%_))))
                                              (let ((_%tl197925198121%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197927198114%_)))
                                                    (_%hd197926198118%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197927198114%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd197926198118%_))
                                                    (let ((_%e197928198124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd197926198118%_))))
                                                      (if (equal? _%e197928198124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197925198121%_))
                      (let ((_%e197931198128%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197925198121%_))))
                        (let ((_%tl197929198135%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197931198128%_)))
                              (_%hd197930198132%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197931198128%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197929198135%_))
                              (_%__kont202102202103%_
                               _%hd197930198132%_
                               _%hd197911198193%_
                               _%hd197908198183%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd197911198193%_))
                                  (let ((_%e197952197998%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197911198193%_))))
                                    (declare (not safe))
                                    (_%g197900197961%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197900197961%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd197911198193%_))
                          (let ((_%e197952197998%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197911198193%_))))
                            (if (equal? _%e197952197998%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197925198121%_))
                                    (_%__kont202106202107%_
                                     _%hd197926198118%_
                                     _%hd197908198183%_
                                     _%hd197905198173%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197900197961%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g197900197961%_))))
                          (let () (declare (not safe)) (_%g197900197961%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd197911198193%_))
                      (let ((_%e197952197998%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197911198193%_))))
                        (if (equal? _%e197952197998%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197925198121%_))
                                (_%__kont202106202107%_
                                 _%hd197926198118%_
                                 _%hd197908198183%_
                                 _%hd197905198173%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197900197961%_)))
                            (let () (declare (not safe)) (_%g197900197961%_))))
                      (let () (declare (not safe)) (_%g197900197961%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd197911198193%_))
                                                        (let ((_%e197952197998%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd197911198193%_))))
                  (if (equal? _%e197952197998%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197925198121%_))
                          (_%__kont202106202107%_
                           _%hd197926198118%_
                           _%hd197908198183%_
                           _%hd197905198173%_)
                          (let () (declare (not safe)) (_%g197900197961%_)))
                      (let () (declare (not safe)) (_%g197900197961%_))))
                (let () (declare (not safe)) (_%g197900197961%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd197911198193%_))
                                                (let ((_%e197952197998%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd197911198193%_))))
                                                  (declare (not safe))
                                                  (_%g197900197961%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197900197961%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197907198186%_))
                                    (_%__kont202104202105%_
                                     _%hd197908198183%_
                                     _%hd197905198173%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197900197961%_))))))
                        (let () (declare (not safe)) (_%g197900197961%_)))))
                (let () (declare (not safe)) (_%g197900197961%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx198220%_)
        (let* ((_%g198224198253%_
                (lambda (_%g198225198249%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198225198249%_))))
               (_%g198223198362%_
                (lambda (_%g198225198257%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198225198257%_))
                      (let ((_%e198229198260%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198225198257%_))))
                        (let ((_%hd198228198264%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198229198260%_)))
                              (_%tl198227198267%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198229198260%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198227198267%_))
                              (let ((_g202727_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198227198267%_
                                        '0))))
                                (begin
                                  (let ((_g202728_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202727_)
                                               (##vector-length _g202727_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202728_ 2)))
                                        (error "Context expects 2 values"
                                               _g202728_)))
                                  (let ((_%target198230198270%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202727_ 0)))
                                        (_%tl198232198273%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202727_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198232198273%_))
                                        (letrec ((_%loop198233198276%_
                                                  (lambda (_%hd198231198280%_
                                                           _%clause198237198283%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198231198280%_))
                                                        (let ((_%e198234198286%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198231198280%_))))
                  (let ((_%lp-hd198235198290%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198234198286%_)))
                        (_%lp-tl198236198293%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198234198286%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd198235198290%_))
                        (let ((_g202729_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd198235198290%_
                                  '0))))
                          (begin
                            (let ((_g202730_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g202729_)
                                         (##vector-length _g202729_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g202730_ 2)))
                                  (error "Context expects 2 values"
                                         _g202730_)))
                            (let ((_%target198239198296%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202729_ 0)))
                                  (_%tl198241198299%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202729_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198241198299%_))
                                  (letrec ((_%loop198242198302%_
                                            (lambda (_%hd198240198306%_
                                                     _%clause198246198309%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198240198306%_))
                                                  (let ((_%e198243198312%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd198240198306%_))))
                                                    (let ((_%lp-hd198244198316%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198243198312%_)))
                                                          (_%lp-tl198245198319%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198243198312%_))))
                                                      (_%loop198242198302%_
                                                       _%lp-tl198245198319%_
                                                       (cons _%lp-hd198244198316%_
                                                             _%clause198246198309%_))))
                                                  (let ((_%clause198247198322%_
                                                         (reverse _%clause198246198309%_)))
                                                    (_%loop198233198276%_
                                                     _%lp-tl198236198293%_
                                                     (cons _%clause198247198322%_
                                                           _%clause198237198283%_)))))))
                                    (_%loop198242198302%_
                                     _%target198239198296%_
                                     '()))
                                  (_%g198224198253%_ _%g198225198257%_)))))
                        (_%g198224198253%_ _%g198225198257%_))))
                (let ((_%clause198238198326%_
                       (reverse _%clause198237198283%_)))
                  ((lambda (_%L198330%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp202731
                                              (lambda (_%g198345198350%_
                                                       _%g198346198353%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp202732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g198347198356%_ _%g198348198359%_)
                             (cons _%g198347198356%_ _%g198348198359%_))))
                      (declare (not safe))
                      (__foldr1 __tmp202732 '() _%g198345198350%_)))
              _%g198346198353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp202731
                                          '()
                                          _%L198330%_)))
                                 '())))
                   _%clause198238198326%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198233198276%_
                                           _%target198230198270%_
                                           '()))
                                        (_%g198224198253%_
                                         _%g198225198257%_)))))
                              (_%g198224198253%_ _%g198225198257%_))))
                      (_%g198224198253%_ _%g198225198257%_)))))
          (_%g198223198362%_ _%$stx198220%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx198368%_)
        (let* ((_%g198372198390%_
                (lambda (_%g198373198386%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198373198386%_))))
               (_%g198371198445%_
                (lambda (_%g198373198394%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198373198394%_))
                      (let ((_%e198378198397%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198373198394%_))))
                        (let ((_%hd198377198401%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198378198397%_)))
                              (_%tl198376198404%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198378198397%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198376198404%_))
                              (let ((_%e198381198407%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198376198404%_))))
                                (let ((_%hd198380198411%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198381198407%_)))
                                      (_%tl198379198414%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198381198407%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198379198414%_))
                                      (let ((_%e198384198417%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198379198414%_))))
                                        (let ((_%hd198383198421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198384198417%_)))
                                              (_%tl198382198424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198384198417%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198382198424%_))
                                              ((lambda (_%L198427%_
                                                        _%L198429%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198429%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198427%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198383198421%_
                                               _%hd198380198411%_)
                                              (_%g198372198390%_
                                               _%g198373198394%_))))
                                      (_%g198372198390%_ _%g198373198394%_))))
                              (_%g198372198390%_ _%g198373198394%_))))
                      (_%g198372198390%_ _%g198373198394%_)))))
          (_%g198371198445%_ _%$stx198368%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx198449%_)
        (let* ((_%g198453198471%_
                (lambda (_%g198454198467%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198454198467%_))))
               (_%g198452198526%_
                (lambda (_%g198454198475%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198454198475%_))
                      (let ((_%e198459198478%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198454198475%_))))
                        (let ((_%hd198458198482%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198459198478%_)))
                              (_%tl198457198485%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198459198478%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198457198485%_))
                              (let ((_%e198462198488%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198457198485%_))))
                                (let ((_%hd198461198492%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198462198488%_)))
                                      (_%tl198460198495%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198462198488%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198460198495%_))
                                      (let ((_%e198465198498%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198460198495%_))))
                                        (let ((_%hd198464198502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198465198498%_)))
                                              (_%tl198463198505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198465198498%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198463198505%_))
                                              ((lambda (_%L198508%_
                                                        _%L198510%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198510%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198508%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198464198502%_
                                               _%hd198461198492%_)
                                              (_%g198453198471%_
                                               _%g198454198475%_))))
                                      (_%g198453198471%_ _%g198454198475%_))))
                              (_%g198453198471%_ _%g198454198475%_))))
                      (_%g198453198471%_ _%g198454198475%_)))))
          (_%g198452198526%_ _%$stx198449%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx198530%_)
        (let* ((_%g198534198563%_
                (lambda (_%g198535198559%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198535198559%_))))
               (_%g198533198663%_
                (lambda (_%g198535198567%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198535198567%_))
                      (let ((_%e198540198570%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198535198567%_))))
                        (let ((_%hd198539198574%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198540198570%_)))
                              (_%tl198538198577%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198540198570%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198538198577%_))
                              (let ((_g202733_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198538198577%_
                                        '0))))
                                (begin
                                  (let ((_g202734_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202733_)
                                               (##vector-length _g202733_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202734_ 2)))
                                        (error "Context expects 2 values"
                                               _g202734_)))
                                  (let ((_%target198541198580%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202733_ 0)))
                                        (_%tl198543198583%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202733_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198543198583%_))
                                        (letrec ((_%loop198544198586%_
                                                  (lambda (_%hd198542198590%_
                                                           _%rule198548198593%_
                                                           _%proc198549198595%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198542198590%_))
                                                        (let ((_%e198545198598%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198542198590%_))))
                  (let ((_%lp-hd198546198602%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198545198598%_)))
                        (_%lp-tl198547198605%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198545198598%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd198546198602%_))
                        (let ((_%e198554198608%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd198546198602%_))))
                          (let ((_%hd198553198612%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198554198608%_)))
                                (_%tl198552198615%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198554198608%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198552198615%_))
                                (let ((_%e198557198618%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198552198615%_))))
                                  (let ((_%hd198556198622%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198557198618%_)))
                                        (_%tl198555198625%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198557198618%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198555198625%_))
                                        (_%loop198544198586%_
                                         _%lp-tl198547198605%_
                                         (cons _%hd198556198622%_
                                               _%rule198548198593%_)
                                         (cons _%hd198553198612%_
                                               _%proc198549198595%_))
                                        (_%g198534198563%_
                                         _%g198535198567%_))))
                                (_%g198534198563%_ _%g198535198567%_))))
                        (_%g198534198563%_ _%g198535198567%_))))
                (let ((_%rule198550198628%_ (reverse _%rule198548198593%_))
                      (_%proc198551198631%_ (reverse _%proc198549198595%_)))
                  ((lambda (_%L198634%_ _%L198636%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L198634%_
                                _%L198636%_))
                             (let ((__tmp202735
                                    (lambda (_%g198651198655%_
                                             _%g198652198658%_
                                             _%g198653198660%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g198652198658%_
                                                        (cons _%g198651198655%_
                                                              '())))
                                            _%g198653198660%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202735
                                '()
                                _%L198634%_
                                _%L198636%_)))))
                   _%rule198550198628%_
                   _%proc198551198631%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198544198586%_
                                           _%target198541198580%_
                                           '()
                                           '()))
                                        (_%g198534198563%_
                                         _%g198535198567%_)))))
                              (_%g198534198563%_ _%g198535198567%_))))
                      (_%g198534198563%_ _%g198535198567%_)))))
          (_%g198533198663%_ _%$stx198530%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx198668%_)
        (let* ((_%g198672198690%_
                (lambda (_%g198673198686%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198673198686%_))))
               (_%g198671198745%_
                (lambda (_%g198673198694%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198673198694%_))
                      (let ((_%e198678198697%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198673198694%_))))
                        (let ((_%hd198677198701%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198678198697%_)))
                              (_%tl198676198704%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198678198697%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198676198704%_))
                              (let ((_%e198681198707%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198676198704%_))))
                                (let ((_%hd198680198711%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198681198707%_)))
                                      (_%tl198679198714%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198681198707%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198679198714%_))
                                      (let ((_%e198684198717%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198679198714%_))))
                                        (let ((_%hd198683198721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198684198717%_)))
                                              (_%tl198682198724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198684198717%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198682198724%_))
                                              ((lambda (_%L198727%_
                                                        _%L198729%_)
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
                                                   (cons _%L198729%_ '()))
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
                 (cons _%L198727%_ '())))
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
                                   (cons _%L198729%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198683198721%_
                                               _%hd198680198711%_)
                                              (_%g198672198690%_
                                               _%g198673198694%_))))
                                      (_%g198672198690%_ _%g198673198694%_))))
                              (_%g198672198690%_ _%g198673198694%_))))
                      (_%g198672198690%_ _%g198673198694%_)))))
          (_%g198671198745%_ _%$stx198668%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx198749%_)
        (let* ((_%__stx202215202216%_ _%$stx198749%_)
               (_%g198754198779%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202215202216%_)))))
          (let ((_%__kont202218202219%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202220202221%_
                 (lambda (_%L198826%_ _%L198828%_ _%L198829%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L198829%_ (cons _%L198828%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L198826%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202215202216%_))
                (let ((_%e198758198855%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202215202216%_))))
                  (let ((_%tl198756198862%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198758198855%_)))
                        (_%hd198757198859%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198758198855%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198756198862%_))
                        (_%__kont202218202219%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198756198862%_))
                            (let ((_%e198767198796%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198756198862%_))))
                              (let ((_%tl198765198803%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198767198796%_)))
                                    (_%hd198766198800%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198767198796%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd198766198800%_))
                                    (let ((_%e198770198806%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd198766198800%_))))
                                      (let ((_%tl198768198813%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198770198806%_)))
                                            (_%hd198769198810%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198770198806%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198768198813%_))
                                            (let ((_%e198773198816%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198768198813%_))))
                                              (let ((_%tl198771198823%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198773198816%_)))
                                                    (_%hd198772198820%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198773198816%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl198771198823%_))
                                                    (_%__kont202220202221%_
                                                     _%tl198765198803%_
                                                     _%hd198772198820%_
                                                     _%hd198769198810%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198754198779%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g198754198779%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198754198779%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198754198779%_))))))
                (let () (declare (not safe)) (_%g198754198779%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx198873%_)
        (let* ((_%__stx202259202260%_ _%$stx198873%_)
               (_%g198878198909%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202259202260%_)))))
          (let ((_%__kont202262202263%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202264202265%_
                 (lambda (_%L198976%_ _%L198978%_ _%L198979%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L198979%_
                                           (let ((__tmp202736
                                                  (lambda (_%g198999199002%_
                                                           _%g199000199005%_)
                                                    (cons _%g198999199002%_
                                                          _%g199000199005%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp202736
                                              '()
                                              _%L198978%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L198976%_)
                                     '()))))))
            (let ((_%__match202302202303%_
                   (lambda (_%e198888198916%_
                            _%hd198887198920%_
                            _%tl198886198923%_
                            _%e198891198926%_
                            _%hd198890198930%_
                            _%tl198889198933%_
                            _%e198894198936%_
                            _%hd198893198940%_
                            _%tl198892198943%_
                            _%__splice202266202267%_
                            _%target198895198946%_
                            _%tl198897198949%_)
                     (letrec ((_%loop198898198952%_
                               (lambda (_%hd198896198956%_ _%sig198902198959%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd198896198956%_))
                                     (let ((_%e198899198962%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd198896198956%_))))
                                       (let ((_%lp-tl198901198969%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198899198962%_)))
                                             (_%lp-hd198900198966%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198899198962%_))))
                                         (_%loop198898198952%_
                                          _%lp-tl198901198969%_
                                          (cons _%lp-hd198900198966%_
                                                _%sig198902198959%_))))
                                     (let ((_%sig198903198972%_
                                            (reverse _%sig198902198959%_)))
                                       (_%__kont202264202265%_
                                        _%tl198889198933%_
                                        _%sig198903198972%_
                                        _%hd198893198940%_))))))
                       (_%loop198898198952%_ _%target198895198946%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202259202260%_))
                  (let ((_%e198882199015%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202259202260%_))))
                    (let ((_%tl198880199022%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198882199015%_)))
                          (_%hd198881199019%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198882199015%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198880199022%_))
                          (_%__kont202262202263%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198880199022%_))
                              (let ((_%e198891198926%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198880199022%_))))
                                (let ((_%tl198889198933%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198891198926%_)))
                                      (_%hd198890198930%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198891198926%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198890198930%_))
                                      (let ((_%e198894198936%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198890198930%_))))
                                        (let ((_%tl198892198943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198894198936%_)))
                                              (_%hd198893198940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198894198936%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198892198943%_))
                                              (let ((_%__splice202266202267%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198892198943%_
                                                        '0))))
                                                (let ((_%tl198897198949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202266202267%_
                                                          '1)))
                                                      (_%target198895198946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202266202267%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198897198949%_))
                                                      (_%__match202302202303%_
                                                       _%e198882199015%_
                                                       _%hd198881199019%_
                                                       _%tl198880199022%_
                                                       _%e198891198926%_
                                                       _%hd198890198930%_
                                                       _%tl198889198933%_
                                                       _%e198894198936%_
                                                       _%hd198893198940%_
                                                       _%tl198892198943%_
                                                       _%__splice202266202267%_
                                                       _%target198895198946%_
                                                       _%tl198897198949%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198878198909%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198878198909%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198878198909%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198878198909%_))))))
                  (let () (declare (not safe)) (_%g198878198909%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx199034%_)
        (let* ((_%__stx202305202306%_ _%$stx199034%_)
               (_%g199039199086%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202305202306%_)))))
          (let ((_%__kont202308202309%_
                 (lambda (_%L199248%_ _%L199250%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L199250%_
                               (let ((__tmp202737
                                      (lambda (_%g199270199273%_
                                               _%g199271199276%_)
                                        (cons _%g199270199273%_
                                              _%g199271199276%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202737 '() _%L199248%_))))))
                (_%__kont202312202313%_
                 (lambda (_%L199143%_ _%L199145%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L199145%_
                               (let ((__tmp202738
                                      (lambda (_%g199162199165%_
                                               _%g199163199168%_)
                                        (cons _%g199162199165%_
                                              _%g199163199168%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202738 '() _%L199143%_)))))))
            (let* ((_%__match202372202373%_
                    (lambda (_%e199068199093%_
                             _%hd199067199097%_
                             _%tl199066199100%_
                             _%e199071199103%_
                             _%hd199070199107%_
                             _%tl199069199110%_
                             _%__splice202314202315%_
                             _%target199072199113%_
                             _%tl199074199116%_)
                      (letrec ((_%loop199075199119%_
                                (lambda (_%hd199073199123%_
                                         _%sig199079199126%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199073199123%_))
                                      (let ((_%e199076199129%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199073199123%_))))
                                        (let ((_%lp-tl199078199136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199076199129%_)))
                                              (_%lp-hd199077199133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199076199129%_))))
                                          (_%loop199075199119%_
                                           _%lp-tl199078199136%_
                                           (cons _%lp-hd199077199133%_
                                                 _%sig199079199126%_))))
                                      (let ((_%sig199080199139%_
                                             (reverse _%sig199079199126%_)))
                                        (_%__kont202312202313%_
                                         _%sig199080199139%_
                                         _%hd199070199107%_))))))
                        (_%loop199075199119%_ _%target199072199113%_ '()))))
                   (_%__match202364202365%_
                    (lambda (_%e199068199093%_
                             _%hd199067199097%_
                             _%tl199066199100%_
                             _%e199071199103%_
                             _%hd199070199107%_
                             _%tl199069199110%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl199069199110%_))
                          (let ((_%__splice202314202315%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl199069199110%_
                                    '0))))
                            (let ((_%tl199074199116%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202314202315%_
                                      '1)))
                                  (_%target199072199113%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202314202315%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199074199116%_))
                                  (_%__match202372202373%_
                                   _%e199068199093%_
                                   _%hd199067199097%_
                                   _%tl199066199100%_
                                   _%e199071199103%_
                                   _%hd199070199107%_
                                   _%tl199069199110%_
                                   _%__splice202314202315%_
                                   _%target199072199113%_
                                   _%tl199074199116%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g199039199086%_)))))
                          (let () (declare (not safe)) (_%g199039199086%_)))))
                   (_%__match202352202353%_
                    (lambda (_%e199045199178%_
                             _%hd199044199182%_
                             _%tl199043199185%_
                             _%e199048199188%_
                             _%hd199047199192%_
                             _%tl199046199195%_
                             _%e199051199198%_
                             _%hd199050199202%_
                             _%tl199049199205%_
                             _%e199054199208%_
                             _%hd199053199212%_
                             _%tl199052199215%_
                             _%__splice202310202311%_
                             _%target199055199218%_
                             _%tl199057199221%_)
                      (letrec ((_%loop199058199224%_
                                (lambda (_%hd199056199228%_
                                         _%sig199062199231%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199056199228%_))
                                      (let ((_%e199059199234%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199056199228%_))))
                                        (let ((_%lp-tl199061199241%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199059199234%_)))
                                              (_%lp-hd199060199238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199059199234%_))))
                                          (_%loop199058199224%_
                                           _%lp-tl199061199241%_
                                           (cons _%lp-hd199060199238%_
                                                 _%sig199062199231%_))))
                                      (let ((_%sig199063199244%_
                                             (reverse _%sig199062199231%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199049199205%_))
                                            (_%__kont202308202309%_
                                             _%sig199063199244%_
                                             _%hd199047199192%_)
                                            (_%__match202364202365%_
                                             _%e199045199178%_
                                             _%hd199044199182%_
                                             _%tl199043199185%_
                                             _%e199048199188%_
                                             _%hd199047199192%_
                                             _%tl199046199195%_)))))))
                        (_%loop199058199224%_ _%target199055199218%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202305202306%_))
                  (let ((_%e199045199178%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202305202306%_))))
                    (let ((_%tl199043199185%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199045199178%_)))
                          (_%hd199044199182%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199045199178%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199043199185%_))
                          (let ((_%e199048199188%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199043199185%_))))
                            (let ((_%tl199046199195%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199048199188%_)))
                                  (_%hd199047199192%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199048199188%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199046199195%_))
                                  (let ((_%e199051199198%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199046199195%_))))
                                    (let ((_%tl199049199205%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199051199198%_)))
                                          (_%hd199050199202%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199051199198%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd199050199202%_))
                                          (let ((_%e199054199208%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd199050199202%_))))
                                            (let ((_%tl199052199215%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199054199208%_)))
                                                  (_%hd199053199212%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199054199208%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd199053199212%_))
                                                  (if (let ((__tmp202739
                                                             |gxc[1]#_g202740_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp202739
                                                         _%hd199053199212%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl199052199215%_))
                                                          (let ((_%__splice202310202311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl199052199215%_ '0))))
                    (let ((_%tl199057199221%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202310202311%_ '1)))
                          (_%target199055199218%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202310202311%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199057199221%_))
                          (_%__match202352202353%_
                           _%e199045199178%_
                           _%hd199044199182%_
                           _%tl199043199185%_
                           _%e199048199188%_
                           _%hd199047199192%_
                           _%tl199046199195%_
                           _%e199051199198%_
                           _%hd199050199202%_
                           _%tl199049199205%_
                           _%e199054199208%_
                           _%hd199053199212%_
                           _%tl199052199215%_
                           _%__splice202310202311%_
                           _%target199055199218%_
                           _%tl199057199221%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl199046199195%_))
                              (let ((_%__splice202314202315%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl199046199195%_
                                        '0))))
                                (let ((_%tl199074199116%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202314202315%_
                                          '1)))
                                      (_%target199072199113%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202314202315%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199074199116%_))
                                      (_%__match202372202373%_
                                       _%e199045199178%_
                                       _%hd199044199182%_
                                       _%tl199043199185%_
                                       _%e199048199188%_
                                       _%hd199047199192%_
                                       _%tl199046199195%_
                                       _%__splice202314202315%_
                                       _%target199072199113%_
                                       _%tl199074199116%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g199039199086%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199039199086%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl199046199195%_))
                      (let ((_%__splice202314202315%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl199046199195%_
                                '0))))
                        (let ((_%tl199074199116%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202314202315%_ '1)))
                              (_%target199072199113%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202314202315%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199074199116%_))
                              (_%__match202372202373%_
                               _%e199045199178%_
                               _%hd199044199182%_
                               _%tl199043199185%_
                               _%e199048199188%_
                               _%hd199047199192%_
                               _%tl199046199195%_
                               _%__splice202314202315%_
                               _%target199072199113%_
                               _%tl199074199116%_)
                              (let ()
                                (declare (not safe))
                                (_%g199039199086%_)))))
                      (let () (declare (not safe)) (_%g199039199086%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl199046199195%_))
                  (let ((_%__splice202314202315%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl199046199195%_ '0))))
                    (let ((_%tl199074199116%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202314202315%_ '1)))
                          (_%target199072199113%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202314202315%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199074199116%_))
                          (_%__match202372202373%_
                           _%e199045199178%_
                           _%hd199044199182%_
                           _%tl199043199185%_
                           _%e199048199188%_
                           _%hd199047199192%_
                           _%tl199046199195%_
                           _%__splice202314202315%_
                           _%target199072199113%_
                           _%tl199074199116%_)
                          (let () (declare (not safe)) (_%g199039199086%_)))))
                  (let () (declare (not safe)) (_%g199039199086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl199046199195%_))
                                                      (let ((_%__splice202314202315%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl199046199195%_ '0))))
                (let ((_%tl199074199116%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202314202315%_ '1)))
                      (_%target199072199113%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202314202315%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199074199116%_))
                      (_%__match202372202373%_
                       _%e199045199178%_
                       _%hd199044199182%_
                       _%tl199043199185%_
                       _%e199048199188%_
                       _%hd199047199192%_
                       _%tl199046199195%_
                       _%__splice202314202315%_
                       _%target199072199113%_
                       _%tl199074199116%_)
                      (let () (declare (not safe)) (_%g199039199086%_)))))
              (let () (declare (not safe)) (_%g199039199086%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl199046199195%_))
                                              (let ((_%__splice202314202315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl199046199195%_
                                                        '0))))
                                                (let ((_%tl199074199116%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202314202315%_
                                                          '1)))
                                                      (_%target199072199113%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202314202315%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199074199116%_))
                                                      (_%__match202372202373%_
                                                       _%e199045199178%_
                                                       _%hd199044199182%_
                                                       _%tl199043199185%_
                                                       _%e199048199188%_
                                                       _%hd199047199192%_
                                                       _%tl199046199195%_
                                                       _%__splice202314202315%_
                                                       _%target199072199113%_
                                                       _%tl199074199116%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g199039199086%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199039199086%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199046199195%_))
                                      (let ((_%__splice202314202315%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199046199195%_
                                                '0))))
                                        (let ((_%tl199074199116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202314202315%_
                                                  '1)))
                                              (_%target199072199113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202314202315%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199074199116%_))
                                              (_%__match202372202373%_
                                               _%e199045199178%_
                                               _%hd199044199182%_
                                               _%tl199043199185%_
                                               _%e199048199188%_
                                               _%hd199047199192%_
                                               _%tl199046199195%_
                                               _%__splice202314202315%_
                                               _%target199072199113%_
                                               _%tl199074199116%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g199039199086%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199039199086%_))))))
                          (let () (declare (not safe)) (_%g199039199086%_)))))
                  (let () (declare (not safe)) (_%g199039199086%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx200364%_ _%id200366%_)
        (let ((_%proc200370%_
               (let ((__tmp202741
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200366%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202741))))
          (if (let () (declare (not safe)) (procedure? _%proc200370%_))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx200364%_
                 _%id200366%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx200355%_ _%id200357%_)
        (let ((_%klass200361%_
               (let ((__tmp202742
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200357%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202742))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass200361%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx200355%_
                 _%id200357%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx199605%_ _%proc199607%_ _%sig199608%_)
        (letrec ((_%signature-arity199610%_
                  (lambda (_%args200287%_)
                    (let _%loop200290%_ ((_%rest200293%_ _%args200287%_)
                                         (_%count200295%_ '0))
                      (let* ((_%rest200296200307%_ _%rest200293%_)
                             (_%E200300200313%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest200296200307%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K200303200344%_
                               (lambda (_%rest200341%_)
                                 (let ((__tmp202743
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%count200295%_ '1))))
                                   (declare (not safe))
                                   (_%loop200290%_
                                    _%rest200341%_
                                    __tmp202743))))
                              (_%K200302200333%_ (lambda () _%count200295%_))
                              (_%K200301200321%_
                               (lambda () (cons _%count200295%_ '()))))
                          (let ((_%try-match200298200337%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest200296200307%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K200302200333%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K200301200321%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest200296200307%_))
                                (let* ((_%tl200305200348%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest200296200307%_)))
                                       (_%rest200352%_ _%tl200305200348%_))
                                  (declare (not safe))
                                  (_%K200303200344%_ _%rest200352%_))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match200298200337%_)))))))))
                 (_%make-signature199612%_
                  (lambda (_%args200169%_
                           _%return200171%_
                           _%effect200172%_
                           _%unchecked200173%_)
                    (let ((__tmp202744
                           (lambda (_%g200174200176%_)
                             (let ()
                               (declare (not safe))
                               (|gxc[1]#verify-class!|
                                _%ctx199605%_
                                _%g200174200176%_)))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp202744 _%args200169%_))
                    (let ()
                      (declare (not safe))
                      (|gxc[1]#verify-class!| _%ctx199605%_ _%return200171%_))
                    (if _%unchecked200173%_
                        (let ()
                          (declare (not safe))
                          (|gxc[1]#verify-procedure!|
                           _%ctx199605%_
                           _%unchecked200173%_))
                        '#!void)
                    (let ((_%arity200180%_
                           (let ((__tmp202745
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-map1 gx#stx-e _%args200169%_))))
                             (declare (not safe))
                             (_%signature-arity199610%_ __tmp202745))))
                      (if _%effect200172%_
                          (let ((_%effect200183%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect200172%_))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (list? _%effect200183%_))
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect200183%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx199605%_
                                   _%proc199607%_
                                   _%effect200183%_))))
                          '#!void)
                      (cons _%arity200180%_
                            (cons (let* ((_%g200186200209%_
                                          (lambda (_%g200187200205%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g200187200205%_))))
                                         (_%g200185200283%_
                                          (lambda (_%g200187200213%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g200187200213%_))
                                                (let ((_%e200194200216%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g200187200213%_))))
                                                  (let ((_%hd200193200220%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200194200216%_)))
                                                        (_%tl200192200223%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200194200216%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200192200223%_))
                                                        (let ((_%e200197200226%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl200192200223%_))))
                  (let ((_%hd200196200230%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200197200226%_)))
                        (_%tl200195200233%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200197200226%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200195200233%_))
                        (let ((_%e200200200236%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200195200233%_))))
                          (let ((_%hd200199200240%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200200200236%_)))
                                (_%tl200198200243%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200200200236%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200198200243%_))
                                (let ((_%e200203200246%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200198200243%_))))
                                  (let ((_%hd200202200250%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200203200246%_)))
                                        (_%tl200201200253%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200203200246%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200201200253%_))
                                        ((lambda (_%L200256%_
                                                  _%L200258%_
                                                  _%L200259%_
                                                  _%L200260%_)
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
                             (cons _%L200260%_ '()))
                       (cons 'return:
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L200259%_ '()))
                                   (cons 'effect:
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L200258%_ '()))
                                               (cons 'unchecked:
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L200256%_ '()))
                   '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd200202200250%_
                                         _%hd200199200240%_
                                         _%hd200196200230%_
                                         _%hd200193200220%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g200186200209%_
                                           _%g200187200213%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200186200209%_ _%g200187200213%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g200186200209%_ _%g200187200213%_)))))
                (let ()
                  (declare (not safe))
                  (_%g200186200209%_ _%g200187200213%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200186200209%_
                                                   _%g200187200213%_)))))
                                         (__tmp202746
                                          (list _%args200169%_
                                                _%return200171%_
                                                _%effect200172%_
                                                _%unchecked200173%_)))
                                    (declare (not safe))
                                    (_%g200185200283%_ __tmp202746))
                                  '()))))))
          (let ()
            (declare (not safe))
            (|gxc[1]#verify-procedure!| _%ctx199605%_ _%proc199607%_))
          (let* ((_%__stx202383202384%_ _%sig199608%_)
                 (_%g199619199722%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx202383202384%_)))))
            (let ((_%__kont202386202387%_
                   (lambda (_%L200150%_ _%L200152%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature199612%_
                        _%L200152%_
                        _%L200150%_
                        '#f
                        '#f))))
                  (_%__kont202388202389%_
                   (lambda (_%L200101%_ _%L200103%_ _%L200104%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature199612%_
                        _%L200104%_
                        _%L200103%_
                        _%L200101%_
                        '#f))))
                  (_%__kont202390202391%_
                   (lambda (_%L200025%_ _%L200027%_ _%L200028%_)
                     (let ((__tmp202747
                            (let ((__tmp202748
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc199607%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp202748))))
                       (declare (not safe))
                       (_%make-signature199612%_
                        _%L200028%_
                        _%L200027%_
                        _%L200025%_
                        __tmp202747))))
                  (_%__kont202392202393%_
                   (lambda (_%L199931%_ _%L199933%_ _%L199934%_ _%L199935%_)
                     (let ((__tmp202749
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L199931%_))))
                       (declare (not safe))
                       (_%make-signature199612%_
                        _%L199935%_
                        _%L199934%_
                        '#f
                        __tmp202749))))
                  (_%__kont202394202395%_
                   (lambda (_%L199838%_ _%L199840%_)
                     (let ((__tmp202750
                            (let ((__tmp202751
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc199607%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp202751))))
                       (declare (not safe))
                       (_%make-signature199612%_
                        _%L199840%_
                        _%L199838%_
                        '#f
                        __tmp202750))))
                  (_%__kont202396202397%_
                   (lambda (_%L199773%_ _%L199775%_ _%L199776%_)
                     (let ((__tmp202752
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L199773%_))))
                       (declare (not safe))
                       (_%make-signature199612%_
                        _%L199776%_
                        _%L199775%_
                        '#f
                        __tmp202752)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202383202384%_))
                  (let ((_%e199625200130%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202383202384%_))))
                    (let ((_%tl199623200137%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199625200130%_)))
                          (_%hd199624200134%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199625200130%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199623200137%_))
                          (let ((_%e199628200140%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199623200137%_))))
                            (let ((_%tl199626200147%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199628200140%_)))
                                  (_%hd199627200144%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199628200140%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199626200147%_))
                                  (_%__kont202386202387%_
                                   _%hd199627200144%_
                                   _%hd199624200134%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199626200147%_))
                                      (let ((_%e199640200077%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199626200147%_))))
                                        (let ((_%tl199638200084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199640200077%_)))
                                              (_%hd199639200081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199640200077%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd199639200081%_))
                                              (let ((_%e199641200087%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd199639200081%_))))
                                                (if (equal? _%e199641200087%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199638200084%_))
                                                        (let ((_%e199644200091%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl199638200084%_))))
                  (let ((_%tl199642200098%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199644200091%_)))
                        (_%hd199643200095%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199644200091%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl199642200098%_))
                        (_%__kont202388202389%_
                         _%hd199643200095%_
                         _%hd199627200144%_
                         _%hd199624200134%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199642200098%_))
                            (let ((_%e199663200011%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl199642200098%_))))
                              (let ((_%tl199661200018%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199663200011%_)))
                                    (_%hd199662200015%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199663200011%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd199662200015%_))
                                    (let ((_%e199664200021%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199662200015%_))))
                                      (if (equal? _%e199664200021%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199661200018%_))
                                              (_%__kont202390202391%_
                                               _%hd199643200095%_
                                               _%hd199627200144%_
                                               _%hd199624200134%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199661200018%_))
                                                  (let ((_%e199688199921%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199661200018%_))))
                                                    (let ((_%tl199686199928%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199688199921%_)))
                                                          (_%hd199687199925%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199688199921%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199686199928%_))
                                                          (_%__kont202392202393%_
                                                           _%hd199687199925%_
                                                           _%hd199643200095%_
                                                           _%hd199627200144%_
                                                           _%hd199624200134%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g199619199722%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199619199722%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199619199722%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199619199722%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g199619199722%_))))))
                (let () (declare (not safe)) (_%g199619199722%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e199641200087%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl199638200084%_))
                                                            (_%__kont202394202395%_
                                                             _%hd199627200144%_
                                                             _%hd199624200134%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl199638200084%_))
                        (let ((_%e199716199763%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199638200084%_))))
                          (let ((_%tl199714199770%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199716199763%_)))
                                (_%hd199715199767%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199716199763%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199714199770%_))
                                (_%__kont202396202397%_
                                 _%hd199715199767%_
                                 _%hd199627200144%_
                                 _%hd199624200134%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g199619199722%_)))))
                        (let () (declare (not safe)) (_%g199619199722%_))))
                (let () (declare (not safe)) (_%g199619199722%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199619199722%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199619199722%_))))))
                          (let () (declare (not safe)) (_%g199619199722%_)))))
                  (let () (declare (not safe)) (_%g199619199722%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig199285%_)
        (let* ((_%g199288199354%_
                (lambda (_%g199289199350%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199289199350%_))))
               (_%g199287199601%_
                (lambda (_%g199289199358%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199289199358%_))
                      (let ((_%e199296199361%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199289199358%_))))
                        (let ((_%hd199295199365%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199296199361%_)))
                              (_%tl199294199368%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199296199361%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199294199368%_))
                              (let ((_%e199299199371%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199294199368%_))))
                                (let ((_%hd199298199375%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199299199371%_)))
                                      (_%tl199297199378%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199299199371%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd199298199375%_))
                                      (let ((_%e199300199381%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd199298199375%_))))
                                        (if (equal? _%e199300199381%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199297199378%_))
                                                (let ((_%e199303199385%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl199297199378%_))))
                                                  (let ((_%hd199302199389%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199303199385%_)))
                                                        (_%tl199301199392%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199303199385%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199302199389%_))
                                                        (let ((_%e199306199395%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd199302199389%_))))
                  (let ((_%hd199305199399%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199306199395%_)))
                        (_%tl199304199402%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199306199395%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd199305199399%_))
                        (if (let ((__tmp202753 |gxc[1]#_g202754_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp202753
                               _%hd199305199399%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199304199402%_))
                                (let ((_%e199309199405%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199304199402%_))))
                                  (let ((_%hd199308199409%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199309199405%_)))
                                        (_%tl199307199412%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199309199405%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199307199412%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199301199392%_))
                                            (let ((_%e199312199415%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl199301199392%_))))
                                              (let ((_%hd199311199419%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199312199415%_)))
                                                    (_%tl199310199422%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199312199415%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd199311199419%_))
                                                    (let ((_%e199313199425%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd199311199419%_))))
                                                      (if (equal? _%e199313199425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl199310199422%_))
                      (let ((_%e199316199429%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl199310199422%_))))
                        (let ((_%hd199315199433%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199316199429%_)))
                              (_%tl199314199436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199316199429%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199315199433%_))
                              (let ((_%e199319199439%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd199315199433%_))))
                                (let ((_%hd199318199443%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199319199439%_)))
                                      (_%tl199317199446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199319199439%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199318199443%_))
                                      (if (let ((__tmp202755
                                                 |gxc[1]#_g202756_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp202755
                                             _%hd199318199443%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199317199446%_))
                                              (let ((_%e199322199449%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl199317199446%_))))
                                                (let ((_%hd199321199453%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199322199449%_)))
                                                      (_%tl199320199456%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199322199449%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199320199456%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199314199436%_))
                                                          (let ((_%e199325199459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl199314199436%_))))
                    (let ((_%hd199324199463%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199325199459%_)))
                          (_%tl199323199466%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199325199459%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd199324199463%_))
                          (let ((_%e199326199469%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199324199463%_))))
                            (if (equal? _%e199326199469%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199323199466%_))
                                    (let ((_%e199329199473%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl199323199466%_))))
                                      (let ((_%hd199328199477%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199329199473%_)))
                                            (_%tl199327199480%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199329199473%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199328199477%_))
                                            (let ((_%e199332199483%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd199328199477%_))))
                                              (let ((_%hd199331199487%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199332199483%_)))
                                                    (_%tl199330199490%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199332199483%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199331199487%_))
                                                    (if (let ((__tmp202757
                                                               |gxc[1]#_g202758_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp202757
                                                           _%hd199331199487%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199330199490%_))
                                                            (let ((_%e199335199493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl199330199490%_))))
                      (let ((_%hd199334199497%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199335199493%_)))
                            (_%tl199333199500%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199335199493%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199333199500%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199327199480%_))
                                (let ((_%e199338199503%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199327199480%_))))
                                  (let ((_%hd199337199507%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199338199503%_)))
                                        (_%tl199336199510%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199338199503%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd199337199507%_))
                                        (let ((_%e199339199513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199337199507%_))))
                                          (if (equal? _%e199339199513%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199336199510%_))
                                                  (let ((_%e199342199517%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199336199510%_))))
                                                    (let ((_%hd199341199521%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199342199517%_)))
                                                          (_%tl199340199524%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199342199517%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199341199521%_))
                                                          (let ((_%e199345199527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd199341199521%_))))
                    (let ((_%hd199344199531%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199345199527%_)))
                          (_%tl199343199534%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199345199527%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd199344199531%_))
                          (if (let ((__tmp202759 |gxc[1]#_g202760_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp202759
                                 _%hd199344199531%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199343199534%_))
                                  (let ((_%e199348199537%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199343199534%_))))
                                    (let ((_%hd199347199541%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199348199537%_)))
                                          (_%tl199346199544%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199348199537%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199346199544%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199340199524%_))
                                              ((lambda (_%L199547%_
                                                        _%L199549%_
                                                        _%L199550%_
                                                        _%L199551%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L199547%_))
                                                     (cons _%L199547%_
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
                                                 (cons _%L199550%_ '()))
                                           '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#f))
                                               _%hd199347199541%_
                                               _%hd199334199497%_
                                               _%hd199321199453%_
                                               _%hd199308199409%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g199288199354%_
                                                 _%g199289199358%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199288199354%_
                                             _%g199289199358%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199288199354%_ _%g199289199358%_)))
                              (let ()
                                (declare (not safe))
                                (_%g199288199354%_ _%g199289199358%_)))
                          (let ()
                            (declare (not safe))
                            (_%g199288199354%_ _%g199289199358%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g199288199354%_ _%g199289199358%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199288199354%_
                                                     _%g199289199358%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199288199354%_
                                                 _%g199289199358%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199288199354%_
                                           _%g199289199358%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199288199354%_ _%g199289199358%_)))
                            (let ()
                              (declare (not safe))
                              (_%g199288199354%_ _%g199289199358%_)))))
                    (let ()
                      (declare (not safe))
                      (_%g199288199354%_ _%g199289199358%_)))
                (let ()
                  (declare (not safe))
                  (_%g199288199354%_ _%g199289199358%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199288199354%_
                                                       _%g199289199358%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199288199354%_
                                               _%g199289199358%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199288199354%_ _%g199289199358%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g199288199354%_ _%g199289199358%_))))
                          (let ()
                            (declare (not safe))
                            (_%g199288199354%_ _%g199289199358%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g199288199354%_ _%g199289199358%_)))
              (let ()
                (declare (not safe))
                (_%g199288199354%_ _%g199289199358%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199288199354%_
                                                 _%g199289199358%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199288199354%_
                                             _%g199289199358%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199288199354%_
                                         _%g199289199358%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199288199354%_ _%g199289199358%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g199288199354%_ _%g199289199358%_)))
                  (let ()
                    (declare (not safe))
                    (_%g199288199354%_ _%g199289199358%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199288199354%_
                                                       _%g199289199358%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199288199354%_
                                               _%g199289199358%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199288199354%_
                                           _%g199289199358%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199288199354%_ _%g199289199358%_)))
                            (let ()
                              (declare (not safe))
                              (_%g199288199354%_ _%g199289199358%_)))
                        (let ()
                          (declare (not safe))
                          (_%g199288199354%_ _%g199289199358%_)))))
                (let ()
                  (declare (not safe))
                  (_%g199288199354%_ _%g199289199358%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199288199354%_
                                                   _%g199289199358%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199288199354%_
                                               _%g199289199358%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199288199354%_
                                         _%g199289199358%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199288199354%_ _%g199289199358%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g199288199354%_ _%g199289199358%_))))))
          (declare (not safe))
          (_%g199287199601%_ _%sig199285%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx200373%_)
        (let* ((_%g200376200394%_
                (lambda (_%g200377200390%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200377200390%_))))
               (_%g200375200449%_
                (lambda (_%g200377200398%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200377200398%_))
                      (let ((_%e200382200401%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200377200398%_))))
                        (let ((_%hd200381200405%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200382200401%_)))
                              (_%tl200380200408%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200382200401%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200380200408%_))
                              (let ((_%e200385200411%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200380200408%_))))
                                (let ((_%hd200384200415%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200385200411%_)))
                                      (_%tl200383200418%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200385200411%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200383200418%_))
                                      (let ((_%e200388200421%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200383200418%_))))
                                        (let ((_%hd200387200425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200388200421%_)))
                                              (_%tl200386200428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200388200421%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200386200428%_))
                                              ((lambda (_%L200431%_
                                                        _%L200433%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200433%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200431%_)))
                                                     (begin
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-procedure!|
                                                          _%stx200373%_
                                                          _%L200433%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-class!|
                                                          _%stx200373%_
                                                          _%L200431%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L200433%_
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
                                                   (cons _%L200431%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200376200394%_
                                                      _%g200377200398%_)))
                                               _%hd200387200425%_
                                               _%hd200384200415%_)
                                              (_%g200376200394%_
                                               _%g200377200398%_))))
                                      (_%g200376200394%_ _%g200377200398%_))))
                              (_%g200376200394%_ _%g200377200398%_))))
                      (_%g200376200394%_ _%g200377200398%_)))))
          (_%g200375200449%_ _%stx200373%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx200453%_)
        (let* ((_%g200456200480%_
                (lambda (_%g200457200476%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200457200476%_))))
               (_%g200455200763%_
                (lambda (_%g200457200484%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200457200484%_))
                      (let ((_%e200462200487%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200457200484%_))))
                        (let ((_%hd200461200491%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200462200487%_)))
                              (_%tl200460200494%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200462200487%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200460200494%_))
                              (let ((_%e200465200497%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200460200494%_))))
                                (let ((_%hd200464200501%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200465200497%_)))
                                      (_%tl200463200504%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200465200497%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200463200504%_))
                                      (let ((_g202761_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200463200504%_
                                                '0))))
                                        (begin
                                          (let ((_g202762_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202761_)
                                                       (##vector-length
                                                        _g202761_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202762_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202762_)))
                                          (let ((_%target200466200507%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202761_ 0)))
                                                (_%tl200468200510%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202761_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200468200510%_))
                                                (letrec ((_%loop200469200513%_
                                                          (lambda (_%hd200467200517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature200473200520%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200467200517%_))
                        (let ((_%e200470200523%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200467200517%_))))
                          (let ((_%lp-hd200471200527%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200470200523%_)))
                                (_%lp-tl200472200530%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200470200523%_))))
                            (_%loop200469200513%_
                             _%lp-tl200472200530%_
                             (cons _%lp-hd200471200527%_
                                   _%signature200473200520%_))))
                        (let ((_%signature200474200533%_
                               (reverse _%signature200473200520%_)))
                          ((lambda (_%L200537%_ _%L200539%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200539%_))
                                 (let* ((_%g200557200572%_
                                         (lambda (_%g200558200568%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200558200568%_))))
                                        (_%g200556200751%_
                                         (lambda (_%g200558200576%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g200558200576%_))
                                               (let ((_%e200563200579%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g200558200576%_))))
                                                 (let ((_%hd200562200583%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200563200579%_)))
                                                       (_%tl200561200586%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200563200579%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200561200586%_))
                                                       (let ((_%e200566200589%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl200561200586%_))))
                 (let ((_%hd200565200593%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200566200589%_)))
                       (_%tl200564200596%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200566200589%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl200564200596%_))
                       ((lambda (_%L200599%_ _%L200601%_)
                          (let ()
                            (let* ((_%g200617200625%_
                                    (lambda (_%g200618200621%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g200618200621%_))))
                                   (_%g200616200747%_
                                    (lambda (_%g200618200629%_)
                                      ((lambda (_%L200632%_)
                                         (let ()
                                           (let* ((_%unchecked200645%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (|gxc[1]#signature->unchecked-signature|
                                                      _%L200599%_)))
                                                  (_%g200648200656%_
                                                   (lambda (_%g200649200652%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g200649200652%_))))
                                                  (_%g200647200679%_
                                                   (lambda (_%g200649200660%_)
                                                     ((lambda (_%L200663%_)
                                                        (let ()
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (cons _%L200632%_ (cons _%L200663%_ '())))))
              _%g200649200660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g200647200679%_
                                              (if _%unchecked200645%_
                                                  (let* ((_%g200683200698%_
                                                          (lambda (_%g200684200694%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g200684200694%_))))
                                                         (_%g200682200743%_
                                                          (lambda (_%g200684200702%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g200684200702%_))
                        (let ((_%e200689200705%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%g200684200702%_))))
                          (let ((_%hd200688200709%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200689200705%_)))
                                (_%tl200687200712%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200689200705%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200687200712%_))
                                (let ((_%e200692200715%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200687200712%_))))
                                  (let ((_%hd200691200719%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200692200715%_)))
                                        (_%tl200690200722%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200692200715%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200690200722%_))
                                        ((lambda (_%L200725%_ _%L200727%_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type))
                                                   (cons _%L200727%_
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L200601%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons _%L200725%_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd200691200719%_
                                         _%hd200688200709%_)
                                        (_%g200683200698%_
                                         _%g200684200702%_))))
                                (_%g200683200698%_ _%g200684200702%_))))
                        (_%g200683200698%_ _%g200684200702%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g200682200743%_
                                                     _%unchecked200645%_))
                                                  '(begin))))))
                                       _%g200618200629%_))))
                              (_%g200616200747%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'declare-type))
                                     (cons _%L200539%_
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!primitive-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200601%_ '()))
                     (cons '#f (cons 'signature: (cons _%L200599%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                        _%hd200565200593%_
                        _%hd200562200583%_)
                       (_%g200557200572%_ _%g200558200576%_))))
               (_%g200557200572%_ _%g200558200576%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200557200572%_
                                                _%g200558200576%_)))))
                                   (_%g200556200751%_
                                    (let ((__tmp202763
                                           (let ((__tmp202764
                                                  (lambda (_%g200754200757%_
                                                           _%g200755200760%_)
                                                    (cons _%g200754200757%_
                                                          _%g200755200760%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp202764
                                              '()
                                              _%L200537%_))))
                                      (declare (not safe))
                                      (|gxc[1]#parse-signature|
                                       _%stx200453%_
                                       _%L200539%_
                                       __tmp202763))))
                                 (_%g200456200480%_ _%g200457200484%_)))
                           _%signature200474200533%_
                           _%hd200464200501%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200469200513%_
                                                   _%target200466200507%_
                                                   '()))
                                                (_%g200456200480%_
                                                 _%g200457200484%_)))))
                                      (_%g200456200480%_ _%g200457200484%_))))
                              (_%g200456200480%_ _%g200457200484%_))))
                      (_%g200456200480%_ _%g200457200484%_)))))
          (_%g200455200763%_ _%stx200453%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx200768%_)
        (let* ((_%g200771200795%_
                (lambda (_%g200772200791%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200772200791%_))))
               (_%g200770201609%_
                (lambda (_%g200772200799%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200772200799%_))
                      (let ((_%e200777200802%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200772200799%_))))
                        (let ((_%hd200776200806%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200777200802%_)))
                              (_%tl200775200809%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200777200802%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200775200809%_))
                              (let ((_%e200780200812%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200775200809%_))))
                                (let ((_%hd200779200816%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200780200812%_)))
                                      (_%tl200778200819%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200780200812%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200778200819%_))
                                      (let ((_g202765_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200778200819%_
                                                '0))))
                                        (begin
                                          (let ((_g202766_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202765_)
                                                       (##vector-length
                                                        _g202765_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202766_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202766_)))
                                          (let ((_%target200781200822%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202765_ 0)))
                                                (_%tl200783200825%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202765_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200783200825%_))
                                                (letrec ((_%loop200784200828%_
                                                          (lambda (_%hd200782200832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature200788200835%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200782200832%_))
                        (let ((_%e200785200838%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200782200832%_))))
                          (let ((_%lp-hd200786200842%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200785200838%_)))
                                (_%lp-tl200787200845%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200785200838%_))))
                            (_%loop200784200828%_
                             _%lp-tl200787200845%_
                             (cons _%lp-hd200786200842%_
                                   _%case-signature200788200835%_))))
                        (let ((_%case-signature200789200848%_
                               (reverse _%case-signature200788200835%_)))
                          ((lambda (_%L200852%_ _%L200854%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200854%_))
                                 (let* ((_%signatures200885%_
                                         (map (lambda (_%g200871200873%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (|gxc[1]#parse-signature|
                                                   _%stx200768%_
                                                   _%L200854%_
                                                   _%g200871200873%_)))
                                              (let ((__tmp202767
                                                     (lambda (_%g200876200879%_
                                                              _%g200877200882%_)
                                                       (cons _%g200876200879%_
                                                             _%g200877200882%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp202767
                                                 '()
                                                 _%L200852%_))))
                                        (_%g200888200914%_
                                         (lambda (_%g200889200910%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200889200910%_))))
                                        (_%g200887201605%_
                                         (lambda (_%g200889200918%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g200889200918%_))
                                               (let ((_g202768_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g200889200918%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g202769_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g202768_)
                        (##vector-length _g202768_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g202769_ 2)))
                 (error "Context expects 2 values" _g202769_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target200892200921%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202768_
                                                             0)))
                                                         (_%tl200894200924%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202768_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200894200924%_))
                                                         (letrec ((_%loop200895200927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd200893200931%_
                                    _%sig200899200934%_
                                    _%arity200900200936%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd200893200931%_))
                                 (let ((_%e200896200939%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd200893200931%_))))
                                   (let ((_%lp-hd200897200943%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200896200939%_)))
                                         (_%lp-tl200898200946%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200896200939%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd200897200943%_))
                                         (let ((_%e200905200949%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd200897200943%_))))
                                           (let ((_%hd200904200953%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200905200949%_)))
                                                 (_%tl200903200956%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200905200949%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200903200956%_))
                                                 (let ((_%e200908200959%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200903200956%_))))
                                                   (let ((_%hd200907200963%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200908200959%_)))
                                                         (_%tl200906200966%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200908200959%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200906200966%_))
                                                         (_%loop200895200927%_
                                                          _%lp-tl200898200946%_
                                                          (cons _%hd200907200963%_
                                                                _%sig200899200934%_)
                                                          (cons _%hd200904200953%_
                                                                _%arity200900200936%_))
                                                         (_%g200888200914%_
                                                          _%g200889200918%_))))
                                                 (_%g200888200914%_
                                                  _%g200889200918%_))))
                                         (_%g200888200914%_
                                          _%g200889200918%_))))
                                 (let ((_%sig200901200969%_
                                        (reverse _%sig200899200934%_))
                                       (_%arity200902200972%_
                                        (reverse _%arity200900200936%_)))
                                   ((lambda (_%L200975%_ _%L200977%_)
                                      (let ()
                                        (let* ((_%g200994201002%_
                                                (lambda (_%g200995200998%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g200995200998%_))))
                                               (_%g200993201590%_
                                                (lambda (_%g200995201006%_)
                                                  ((lambda (_%L201009%_)
                                                     (let ()
                                                       (let* ((_%g201022201030%_
                                                               (lambda (_%g201023201026%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g201023201026%_))))
                      (_%g201021201052%_
                       (lambda (_%g201023201034%_)
                         ((lambda (_%L201037%_)
                            (let ()
                              (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'begin))
                                    (cons _%L201009%_
                                          (cons _%L201037%_ '())))))
                          _%g201023201034%_))))
                 (_%g201021201052%_
                  (let ((_g202770_
                         (let _%loop201056%_ ((_%rest201059%_
                                               _%signatures200885%_)
                                              (_%unchecked-proc201061%_ '#f)
                                              (_%unchecked-clauses201062%_
                                               '()))
                           (let* ((_%rest201063201071%_ _%rest201059%_)
                                  (_%else201065201083%_
                                   (lambda ()
                                     (values _%unchecked-proc201061%_
                                             (reverse!
                                              _%unchecked-clauses201062%_))))
                                  (_%K201067201455%_
                                   (lambda (_%rest201087%_ _%hd201089%_)
                                     (let* ((_%g201091201164%_
                                             (lambda (_%g201092201160%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g201092201160%_))))
                                            (_%g201090201451%_
                                             (lambda (_%g201092201168%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g201092201168%_))
                                                   (let ((_%e201100201171%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%g201092201168%_))))
                                                     (let ((_%hd201099201175%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201100201171%_)))
                                                           (_%tl201098201178%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201100201171%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl201098201178%_))
                                                           (let ((_%e201103201181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl201098201178%_))))
                     (let ((_%hd201102201185%_
                            (let ()
                              (declare (not safe))
                              (##car _%e201103201181%_)))
                           (_%tl201101201188%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e201103201181%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd201102201185%_))
                           (let ((_%e201106201191%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%hd201102201185%_))))
                             (let ((_%hd201105201195%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e201106201191%_)))
                                   (_%tl201104201198%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e201106201191%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl201104201198%_))
                                   (let ((_%e201109201201%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl201104201198%_))))
                                     (let ((_%hd201108201205%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201109201201%_)))
                                           (_%tl201107201208%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201109201201%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-datum?
                                              _%hd201108201205%_))
                                           (let ((_%e201110201211%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd201108201205%_))))
                                             (if (equal? _%e201110201211%_
                                                         'arguments:)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl201107201208%_))
                                                     (let ((_%e201113201215%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%tl201107201208%_))))
                                                       (let ((_%hd201112201219%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e201113201215%_)))
                     (_%tl201111201222%_
                      (let () (declare (not safe)) (##cdr _%e201113201215%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd201112201219%_))
                     (let ((_%e201116201225%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%hd201112201219%_))))
                       (let ((_%hd201115201229%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201116201225%_)))
                             (_%tl201114201232%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201116201225%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%hd201115201229%_))
                             (if (let ((__tmp202772 |gxc[1]#_g202773_|))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    __tmp202772
                                    _%hd201115201229%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201114201232%_))
                                     (let ((_%e201119201235%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201114201232%_))))
                                       (let ((_%hd201118201239%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201119201235%_)))
                                             (_%tl201117201242%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201119201235%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl201117201242%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl201111201222%_))
                                                 (let ((_%e201122201245%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl201111201222%_))))
                                                   (let ((_%hd201121201249%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201122201245%_)))
                                                         (_%tl201120201252%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201122201245%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-datum?
                                                            _%hd201121201249%_))
                                                         (let ((_%e201123201255%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd201121201249%_))))
                   (if (equal? _%e201123201255%_ 'return:)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl201120201252%_))
                           (let ((_%e201126201259%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%tl201120201252%_))))
                             (let ((_%hd201125201263%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e201126201259%_)))
                                   (_%tl201124201266%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e201126201259%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd201125201263%_))
                                   (let ((_%e201129201269%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%hd201125201263%_))))
                                     (let ((_%hd201128201273%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201129201269%_)))
                                           (_%tl201127201276%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201129201269%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd201128201273%_))
                                           (if (let ((__tmp202774
                                                      |gxc[1]#_g202775_|))
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  __tmp202774
                                                  _%hd201128201273%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl201127201276%_))
                                                   (let ((_%e201132201279%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl201127201276%_))))
                                                     (let ((_%hd201131201283%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201132201279%_)))
                                                           (_%tl201130201286%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201132201279%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl201130201286%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl201124201266%_))
                       (let ((_%e201135201289%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl201124201266%_))))
                         (let ((_%hd201134201293%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201135201289%_)))
                               (_%tl201133201296%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201135201289%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd201134201293%_))
                               (let ((_%e201136201299%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd201134201293%_))))
                                 (if (equal? _%e201136201299%_ 'effect:)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl201133201296%_))
                                         (let ((_%e201139201303%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%tl201133201296%_))))
                                           (let ((_%hd201138201307%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201139201303%_)))
                                                 (_%tl201137201310%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201139201303%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd201138201307%_))
                                                 (let ((_%e201142201313%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%hd201138201307%_))))
                                                   (let ((_%hd201141201317%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201142201313%_)))
                                                         (_%tl201140201320%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201142201313%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd201141201317%_))
                                                         (if (let ((__tmp202776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |gxc[1]#_g202777_|))
                       (declare (not safe))
                       (gx#free-identifier=? __tmp202776 _%hd201141201317%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl201140201320%_))
                         (let ((_%e201145201323%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl201140201320%_))))
                           (let ((_%hd201144201327%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e201145201323%_)))
                                 (_%tl201143201330%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e201145201323%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl201143201330%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201137201310%_))
                                     (let ((_%e201148201333%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201137201310%_))))
                                       (let ((_%hd201147201337%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201148201333%_)))
                                             (_%tl201146201340%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201148201333%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%hd201147201337%_))
                                             (let ((_%e201149201343%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd201147201337%_))))
                                               (if (equal? _%e201149201343%_
                                                           'unchecked:)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl201146201340%_))
                                                       (let ((_%e201152201347%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl201146201340%_))))
                 (let ((_%hd201151201351%_
                        (let ()
                          (declare (not safe))
                          (##car _%e201152201347%_)))
                       (_%tl201150201354%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e201152201347%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd201151201351%_))
                       (let ((_%e201155201357%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd201151201351%_))))
                         (let ((_%hd201154201361%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201155201357%_)))
                               (_%tl201153201364%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201155201357%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%hd201154201361%_))
                               (if (let ((__tmp202778 |gxc[1]#_g202779_|))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      __tmp202778
                                      _%hd201154201361%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl201153201364%_))
                                       (let ((_%e201158201367%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#syntax-e
                                                 _%tl201153201364%_))))
                                         (let ((_%hd201157201371%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e201158201367%_)))
                                               (_%tl201156201374%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e201158201367%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl201156201374%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl201150201354%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl201101201188%_))
                                                       ((lambda (_%L201377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L201379%_
                         _%L201380%_
                         _%L201381%_
                         _%L201382%_)
                  (let ((_%clause201443%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0
                                  '#f
                                  'make-!primitive-lambda))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201382%_ '()))
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
                                       (cons _%L201380%_ '()))
                                 '())))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (_%unchecked201445%_
                         (let () (declare (not safe)) (gx#stx-e _%L201377%_))))
                    (_%loop201056%_
                     _%rest201087%_
                     (let ((_%$e201447%_ _%unchecked201445%_))
                       (if _%$e201447%_ _%$e201447%_ _%unchecked-proc201061%_))
                     (cons _%clause201443%_ _%unchecked-clauses201062%_))))
                _%hd201157201371%_
                _%hd201144201327%_
                _%hd201131201283%_
                _%hd201118201239%_
                _%hd201099201175%_)
               (_%g201091201164%_ _%g201092201168%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201091201164%_
                                                    _%g201092201168%_))
                                               (_%g201091201164%_
                                                _%g201092201168%_))))
                                       (_%g201091201164%_ _%g201092201168%_))
                                   (_%g201091201164%_ _%g201092201168%_))
                               (_%g201091201164%_ _%g201092201168%_))))
                       (_%g201091201164%_ _%g201092201168%_))))
               (_%g201091201164%_ _%g201092201168%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201091201164%_
                                                    _%g201092201168%_)))
                                             (_%g201091201164%_
                                              _%g201092201168%_))))
                                     (_%g201091201164%_ _%g201092201168%_))
                                 (_%g201091201164%_ _%g201092201168%_))))
                         (_%g201091201164%_ _%g201092201168%_))
                     (_%g201091201164%_ _%g201092201168%_))
                 (_%g201091201164%_ _%g201092201168%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g201091201164%_
                                                  _%g201092201168%_))))
                                         (_%g201091201164%_ _%g201092201168%_))
                                     (_%g201091201164%_ _%g201092201168%_)))
                               (_%g201091201164%_ _%g201092201168%_))))
                       (_%g201091201164%_ _%g201092201168%_))
                   (_%g201091201164%_ _%g201092201168%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201091201164%_
                                                    _%g201092201168%_))
                                               (_%g201091201164%_
                                                _%g201092201168%_))
                                           (_%g201091201164%_
                                            _%g201092201168%_))))
                                   (_%g201091201164%_ _%g201092201168%_))))
                           (_%g201091201164%_ _%g201092201168%_))
                       (_%g201091201164%_ _%g201092201168%_)))
                 (_%g201091201164%_ _%g201092201168%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g201091201164%_
                                                  _%g201092201168%_))
                                             (_%g201091201164%_
                                              _%g201092201168%_))))
                                     (_%g201091201164%_ _%g201092201168%_))
                                 (_%g201091201164%_ _%g201092201168%_))
                             (_%g201091201164%_ _%g201092201168%_))))
                     (_%g201091201164%_ _%g201092201168%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201091201164%_
                                                      _%g201092201168%_))
                                                 (_%g201091201164%_
                                                  _%g201092201168%_)))
                                           (_%g201091201164%_
                                            _%g201092201168%_))))
                                   (_%g201091201164%_ _%g201092201168%_))))
                           (_%g201091201164%_ _%g201092201168%_))))
                   (_%g201091201164%_ _%g201092201168%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201091201164%_
                                                    _%g201092201168%_)))))
                                       (_%g201090201451%_ _%hd201089%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest201063201071%_))
                                 (let ((_%hd201068201459%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest201063201071%_)))
                                       (_%tl201069201462%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest201063201071%_))))
                                   (let* ((_%hd201465%_ _%hd201068201459%_)
                                          (_%rest201468%_ _%tl201069201462%_))
                                     (_%K201067201455%_
                                      _%rest201468%_
                                      _%hd201465%_)))
                                 (_%else201065201083%_))))))
                    (begin
                      (let ((_g202771_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g202770_)
                                   (##vector-length _g202770_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g202771_ 2)))
                            (error "Context expects 2 values" _g202771_)))
                      (let ((_%unchecked-proc201471%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202770_ 0)))
                            (_%unchecked-clauses201473%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202770_ 1))))
                        (if _%unchecked-proc201471%_
                            (let* ((_%g201475201499%_
                                    (lambda (_%g201476201495%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g201476201495%_))))
                                   (_%g201474201586%_
                                    (lambda (_%g201476201503%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%g201476201503%_))
                                          (let ((_%e201481201506%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%g201476201503%_))))
                                            (let ((_%hd201480201510%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201481201506%_)))
                                                  (_%tl201479201513%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201481201506%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201479201513%_))
                                                  (let ((_%e201484201516%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201479201513%_))))
                                                    (let ((_%hd201483201520%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201484201516%_)))
                                                          (_%tl201482201523%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201484201516%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%hd201483201520%_))
                                                          (let ((_g202780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%hd201483201520%_ '0))))
                    (begin
                      (let ((_g202781_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g202780_)
                                   (##vector-length _g202780_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g202781_ 2)))
                            (error "Context expects 2 values" _g202781_)))
                      (let ((_%target201485201526%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202780_ 0)))
                            (_%tl201487201529%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202780_ 1))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201487201529%_))
                            (letrec ((_%loop201488201532%_
                                      (lambda (_%hd201486201536%_
                                               _%clause201492201539%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd201486201536%_))
                                            (let ((_%e201489201542%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd201486201536%_))))
                                              (let ((_%lp-hd201490201546%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201489201542%_)))
                                                    (_%lp-tl201491201549%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201489201542%_))))
                                                (_%loop201488201532%_
                                                 _%lp-tl201491201549%_
                                                 (cons _%lp-hd201490201546%_
                                                       _%clause201492201539%_))))
                                            (let ((_%clause201493201552%_
                                                   (reverse _%clause201492201539%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl201482201523%_))
                                                  ((lambda (_%L201556%_
                                                            _%L201558%_)
                                                     (let ()
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L201558%_
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
                                                   (let ((__tmp202782
                                                          (lambda (_%g201577201580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g201578201583%_)
                    (cons _%g201577201580%_ _%g201578201583%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp202782
                                                      '()
                                                      _%L201556%_)))
                                             '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%clause201493201552%_
                                                   _%hd201480201510%_)
                                                  (_%g201475201499%_
                                                   _%g201476201503%_)))))))
                              (_%loop201488201532%_
                               _%target201485201526%_
                               '()))
                            (_%g201475201499%_ _%g201476201503%_)))))
                  (_%g201475201499%_ _%g201476201503%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g201475201499%_
                                                   _%g201476201503%_))))
                                          (_%g201475201499%_
                                           _%g201476201503%_)))))
                              (_%g201474201586%_
                               (list _%unchecked-proc201471%_
                                     _%unchecked-clauses201473%_)))
                            '(begin)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g200995201006%_))))
                                          (_%g200993201590%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'declare-type))
                                                 (cons _%L200854%_
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
                                            _%L200975%_
                                            _%L200977%_))
                                         (let ((__tmp202783
                                                (lambda (_%g201593201597%_
                                                         _%g201594201600%_
                                                         _%g201595201602%_)
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%g201594201600%_ '()))
                            (cons '#f
                                  (cons 'signature:
                                        (cons _%g201593201597%_ '())))))
                _%g201595201602%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp202783
                                            '()
                                            _%L200975%_
                                            _%L200977%_))))
                                 '()))
                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig200901200969%_
                                    _%arity200902200972%_))))))
                   (_%loop200895200927%_ _%target200892200921%_ '() '()))
                 (_%g200888200914%_ _%g200889200918%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200888200914%_
                                                _%g200889200918%_)))))
                                   (_%g200887201605%_ _%signatures200885%_))
                                 (_%g200771200795%_ _%g200772200799%_)))
                           _%case-signature200789200848%_
                           _%hd200779200816%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200784200828%_
                                                   _%target200781200822%_
                                                   '()))
                                                (_%g200771200795%_
                                                 _%g200772200799%_)))))
                                      (_%g200771200795%_ _%g200772200799%_))))
                              (_%g200771200795%_ _%g200772200799%_))))
                      (_%g200771200795%_ _%g200772200799%_)))))
          (_%g200770201609%_ _%stx200768%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx201617%_)
        (let* ((_%__stx202599202600%_ _%$stx201617%_)
               (_%g201623201683%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202599202600%_)))))
          (let ((_%__kont202602202603%_
                 (lambda (_%L201905%_ _%L201907%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201907%_ '()))
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
                                                       (cons _%L201907%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201905%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont202604202605%_
                 (lambda (_%L201830%_ _%L201832%_ _%L201833%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201833%_ '()))
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
                                                       (cons _%L201833%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201832%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201830%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont202606202607%_
                 (lambda (_%L201744%_ _%L201746%_ _%L201747%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201747%_ '()))
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
                                                       (cons _%L201747%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201746%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201744%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202599202600%_))
                (let ((_%e201629201861%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202599202600%_))))
                  (let ((_%tl201627201868%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201629201861%_)))
                        (_%hd201628201865%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201629201861%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl201627201868%_))
                        (let ((_%e201632201871%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl201627201868%_))))
                          (let ((_%tl201630201878%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201632201871%_)))
                                (_%hd201631201875%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201632201871%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd201631201875%_))
                                (let ((_%e201633201881%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd201631201875%_))))
                                  (if (equal? _%e201633201881%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201630201878%_))
                                          (let ((_%e201636201885%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl201630201878%_))))
                                            (let ((_%tl201634201892%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201636201885%_)))
                                                  (_%hd201635201889%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201636201885%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201634201892%_))
                                                  (let ((_%e201639201895%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201634201892%_))))
                                                    (let ((_%tl201637201902%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201639201895%_)))
                                                          (_%hd201638201899%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201639201895%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201637201902%_))
                                                          (_%__kont202602202603%_
                                                           _%hd201638201899%_
                                                           _%hd201635201889%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201623201683%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201623201683%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201623201683%_)))
                                      (if (equal? _%e201633201881%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201630201878%_))
                                              (let ((_%e201652201800%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201630201878%_))))
                                                (let ((_%tl201650201807%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201652201800%_)))
                                                      (_%hd201651201804%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201652201800%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201650201807%_))
                                                      (let ((_%e201655201810%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl201650201807%_))))
                (let ((_%tl201653201817%_
                       (let () (declare (not safe)) (##cdr _%e201655201810%_)))
                      (_%hd201654201814%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201655201810%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201653201817%_))
                      (let ((_%e201658201820%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201653201817%_))))
                        (let ((_%tl201656201827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201658201820%_)))
                              (_%hd201657201824%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201658201820%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201656201827%_))
                              (_%__kont202604202605%_
                               _%hd201657201824%_
                               _%hd201654201814%_
                               _%hd201651201804%_)
                              (let ()
                                (declare (not safe))
                                (_%g201623201683%_)))))
                      (let () (declare (not safe)) (_%g201623201683%_)))))
              (let () (declare (not safe)) (_%g201623201683%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g201623201683%_)))
                                          (if (equal? _%e201633201881%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201630201878%_))
                                                  (let ((_%e201671201714%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201630201878%_))))
                                                    (let ((_%tl201669201721%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201671201714%_)))
                                                          (_%hd201670201718%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201671201714%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201669201721%_))
                                                          (let ((_%e201674201724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl201669201721%_))))
                    (let ((_%tl201672201731%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201674201724%_)))
                          (_%hd201673201728%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201674201724%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201672201731%_))
                          (let ((_%e201677201734%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201672201731%_))))
                            (let ((_%tl201675201741%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201677201734%_)))
                                  (_%hd201676201738%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201677201734%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201675201741%_))
                                  (_%__kont202606202607%_
                                   _%hd201676201738%_
                                   _%hd201673201728%_
                                   _%hd201670201718%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g201623201683%_)))))
                          (let () (declare (not safe)) (_%g201623201683%_)))))
                  (let () (declare (not safe)) (_%g201623201683%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201623201683%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201623201683%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g201623201683%_)))))
                        (let () (declare (not safe)) (_%g201623201683%_)))))
                (let () (declare (not safe)) (_%g201623201683%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx201929%_)
        (let* ((_%g201933201953%_
                (lambda (_%g201934201949%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201934201949%_))))
               (_%g201932202024%_
                (lambda (_%g201934201957%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201934201957%_))
                      (let ((_%e201938201960%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201934201957%_))))
                        (let ((_%hd201937201964%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201938201960%_)))
                              (_%tl201936201967%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201938201960%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201936201967%_))
                              (let ((_g202784_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201936201967%_
                                        '0))))
                                (begin
                                  (let ((_g202785_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202784_)
                                               (##vector-length _g202784_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202785_ 2)))
                                        (error "Context expects 2 values"
                                               _g202785_)))
                                  (let ((_%target201939201970%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202784_ 0)))
                                        (_%tl201941201973%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202784_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201941201973%_))
                                        (letrec ((_%loop201942201976%_
                                                  (lambda (_%hd201940201980%_
                                                           _%decl201946201983%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201940201980%_))
                                                        (let ((_%e201943201986%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201940201980%_))))
                  (let ((_%lp-hd201944201990%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201943201986%_)))
                        (_%lp-tl201945201993%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201943201986%_))))
                    (_%loop201942201976%_
                     _%lp-tl201945201993%_
                     (cons _%lp-hd201944201990%_ _%decl201946201983%_))))
                (let ((_%decl201947201996%_ (reverse _%decl201946201983%_)))
                  ((lambda (_%L202000%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp202786
                                  (lambda (_%g202015202018%_ _%g202016202021%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g202015202018%_)
                                          _%g202016202021%_))))
                             (declare (not safe))
                             (__foldr1 __tmp202786 '() _%L202000%_))))
                   _%decl201947201996%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201942201976%_
                                           _%target201939201970%_
                                           '()))
                                        (_%g201933201953%_
                                         _%g201934201957%_)))))
                              (_%g201933201953%_ _%g201934201957%_))))
                      (_%g201933201953%_ _%g201934201957%_)))))
          (_%g201932202024%_ _%$stx201929%_))))))
