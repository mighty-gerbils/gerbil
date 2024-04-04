(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g202645_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202659_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202661_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202663_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202665_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202678_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202680_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202682_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202684_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx196201%_)
        (let* ((_%g196205196223%_
                (lambda (_%g196206196219%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196206196219%_))))
               (_%g196204196278%_
                (lambda (_%g196206196227%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196206196227%_))
                      (let ((_%e196211196230%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196206196227%_))))
                        (let ((_%hd196210196234%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196211196230%_)))
                              (_%tl196209196237%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196211196230%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196209196237%_))
                              (let ((_%e196214196240%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196209196237%_))))
                                (let ((_%hd196213196244%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196214196240%_)))
                                      (_%tl196212196247%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196214196240%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196212196247%_))
                                      (let ((_%e196217196250%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196212196247%_))))
                                        (let ((_%hd196216196254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196217196250%_)))
                                              (_%tl196215196257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196217196250%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196215196257%_))
                                              ((lambda (_%L196260%_
                                                        _%L196262%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196262%_))
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
                               (cons _%L196262%_ '()))
                         (cons _%L196260%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196205196223%_
                                                      _%g196206196227%_)))
                                               _%hd196216196254%_
                                               _%hd196213196244%_)
                                              (_%g196205196223%_
                                               _%g196206196227%_))))
                                      (_%g196205196223%_ _%g196206196227%_))))
                              (_%g196205196223%_ _%g196206196227%_))))
                      (_%g196205196223%_ _%g196206196227%_)))))
          (_%g196204196278%_ _%$stx196201%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx196282%_)
        (let* ((_%g196286196304%_
                (lambda (_%g196287196300%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196287196300%_))))
               (_%g196285196359%_
                (lambda (_%g196287196308%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196287196308%_))
                      (let ((_%e196292196311%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196287196308%_))))
                        (let ((_%hd196291196315%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196292196311%_)))
                              (_%tl196290196318%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196292196311%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196290196318%_))
                              (let ((_%e196295196321%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196290196318%_))))
                                (let ((_%hd196294196325%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196295196321%_)))
                                      (_%tl196293196328%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196295196321%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196293196328%_))
                                      (let ((_%e196298196331%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196293196328%_))))
                                        (let ((_%hd196297196335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196298196331%_)))
                                              (_%tl196296196338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196298196331%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196296196338%_))
                                              ((lambda (_%L196341%_
                                                        _%L196343%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196343%_))
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
                               (cons _%L196343%_ '()))
                         (cons _%L196341%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196286196304%_
                                                      _%g196287196308%_)))
                                               _%hd196297196335%_
                                               _%hd196294196325%_)
                                              (_%g196286196304%_
                                               _%g196287196308%_))))
                                      (_%g196286196304%_ _%g196287196308%_))))
                              (_%g196286196304%_ _%g196287196308%_))))
                      (_%g196286196304%_ _%g196287196308%_)))))
          (_%g196285196359%_ _%$stx196282%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx196363%_)
        (let* ((_%g196367196396%_
                (lambda (_%g196368196392%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196368196392%_))))
               (_%g196366196496%_
                (lambda (_%g196368196400%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196368196400%_))
                      (let ((_%e196373196403%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196368196400%_))))
                        (let ((_%hd196372196407%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196373196403%_)))
                              (_%tl196371196410%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196373196403%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196371196410%_))
                              (let ((_g202623_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196371196410%_
                                        '0))))
                                (begin
                                  (let ((_g202624_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202623_)
                                               (##vector-length _g202623_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202624_ 2)))
                                        (error "Context expects 2 values"
                                               _g202624_)))
                                  (let ((_%target196374196413%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202623_ 0)))
                                        (_%tl196376196416%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202623_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196376196416%_))
                                        (letrec ((_%loop196377196419%_
                                                  (lambda (_%hd196375196423%_
                                                           _%type196381196426%_
                                                           _%symbol196382196428%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196375196423%_))
                                                        (let ((_%e196378196431%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196375196423%_))))
                  (let ((_%lp-hd196379196435%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196378196431%_)))
                        (_%lp-tl196380196438%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196378196431%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196379196435%_))
                        (let ((_%e196387196441%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196379196435%_))))
                          (let ((_%hd196386196445%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196387196441%_)))
                                (_%tl196385196448%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196387196441%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196385196448%_))
                                (let ((_%e196390196451%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196385196448%_))))
                                  (let ((_%hd196389196455%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196390196451%_)))
                                        (_%tl196388196458%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196390196451%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196388196458%_))
                                        (_%loop196377196419%_
                                         _%lp-tl196380196438%_
                                         (cons _%hd196389196455%_
                                               _%type196381196426%_)
                                         (cons _%hd196386196445%_
                                               _%symbol196382196428%_))
                                        (_%g196367196396%_
                                         _%g196368196400%_))))
                                (_%g196367196396%_ _%g196368196400%_))))
                        (_%g196367196396%_ _%g196368196400%_))))
                (let ((_%type196383196461%_ (reverse _%type196381196426%_))
                      (_%symbol196384196464%_
                       (reverse _%symbol196382196428%_)))
                  ((lambda (_%L196467%_ _%L196469%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196467%_
                                _%L196469%_))
                             (let ((__tmp202625
                                    (lambda (_%g196484196488%_
                                             _%g196485196491%_
                                             _%g196486196493%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g196485196491%_
                                                        (cons _%g196484196488%_
                                                              '())))
                                            _%g196486196493%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202625
                                '()
                                _%L196467%_
                                _%L196469%_)))))
                   _%type196383196461%_
                   _%symbol196384196464%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196377196419%_
                                           _%target196374196413%_
                                           '()
                                           '()))
                                        (_%g196367196396%_
                                         _%g196368196400%_)))))
                              (_%g196367196396%_ _%g196368196400%_))))
                      (_%g196367196396%_ _%g196368196400%_)))))
          (_%g196366196496%_ _%$stx196363%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx196501%_)
        (let* ((_%__stx201934201935%_ _%$stx196501%_)
               (_%g196506196548%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201934201935%_)))))
          (let ((_%__kont201937201938%_
                 (lambda (_%L196676%_ _%L196678%_ _%L196679%_ _%L196680%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196680%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196679%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L196678%_ '()))
                                           (cons _%L196676%_ '())))))))
                (_%__kont201939201940%_
                 (lambda (_%L196595%_ _%L196597%_ _%L196598%_ _%L196599%_)
                   (cons _%L196599%_
                         (cons _%L196598%_
                               (cons _%L196597%_
                                     (cons _%L196595%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match201973201974%_
                   (lambda (_%e196514196626%_
                            _%hd196513196630%_
                            _%tl196512196633%_
                            _%e196517196636%_
                            _%hd196516196640%_
                            _%tl196515196643%_
                            _%e196520196646%_
                            _%hd196519196650%_
                            _%tl196518196653%_
                            _%e196523196656%_
                            _%hd196522196660%_
                            _%tl196521196663%_
                            _%e196526196666%_
                            _%hd196525196670%_
                            _%tl196524196673%_)
                     (let ((_%L196676%_ _%hd196525196670%_)
                           (_%L196678%_ _%hd196522196660%_)
                           (_%L196679%_ _%hd196519196650%_)
                           (_%L196680%_ _%hd196516196640%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196680%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196679%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196678%_)))
                           (_%__kont201937201938%_
                            _%L196676%_
                            _%L196678%_
                            _%L196679%_
                            _%L196680%_)
                           (let ()
                             (declare (not safe))
                             (_%g196506196548%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201934201935%_))
                  (let ((_%e196514196626%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201934201935%_))))
                    (let ((_%tl196512196633%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196514196626%_)))
                          (_%hd196513196630%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196514196626%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196512196633%_))
                          (let ((_%e196517196636%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl196512196633%_))))
                            (let ((_%tl196515196643%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196517196636%_)))
                                  (_%hd196516196640%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196517196636%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196515196643%_))
                                  (let ((_%e196520196646%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl196515196643%_))))
                                    (let ((_%tl196518196653%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196520196646%_)))
                                          (_%hd196519196650%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196520196646%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196518196653%_))
                                          (let ((_%e196523196656%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl196518196653%_))))
                                            (let ((_%tl196521196663%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196523196656%_)))
                                                  (_%hd196522196660%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196523196656%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196521196663%_))
                                                  (let ((_%e196526196666%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl196521196663%_))))
                                                    (let ((_%tl196524196673%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196526196666%_)))
                                                          (_%hd196525196670%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196526196666%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196524196673%_))
                                                          (_%__match201973201974%_
                                                           _%e196514196626%_
                                                           _%hd196513196630%_
                                                           _%tl196512196633%_
                                                           _%e196517196636%_
                                                           _%hd196516196640%_
                                                           _%tl196515196643%_
                                                           _%e196520196646%_
                                                           _%hd196519196650%_
                                                           _%tl196518196653%_
                                                           _%e196523196656%_
                                                           _%hd196522196660%_
                                                           _%tl196521196663%_
                                                           _%e196526196666%_
                                                           _%hd196525196670%_
                                                           _%tl196524196673%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g196506196548%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196521196663%_))
                                                      (_%__kont201939201940%_
                                                       _%hd196522196660%_
                                                       _%hd196519196650%_
                                                       _%hd196516196640%_
                                                       _%hd196513196630%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g196506196548%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g196506196548%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g196506196548%_)))))
                          (let () (declare (not safe)) (_%g196506196548%_)))))
                  (let () (declare (not safe)) (_%g196506196548%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx196705%_)
        (let* ((_%g196709196744%_
                (lambda (_%g196710196740%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196710196740%_))))
               (_%g196708196863%_
                (lambda (_%g196710196748%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196710196748%_))
                      (let ((_%e196716196751%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196710196748%_))))
                        (let ((_%hd196715196755%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196716196751%_)))
                              (_%tl196714196758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196716196751%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196714196758%_))
                              (let ((_g202626_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196714196758%_
                                        '0))))
                                (begin
                                  (let ((_g202627_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202626_)
                                               (##vector-length _g202626_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202627_ 2)))
                                        (error "Context expects 2 values"
                                               _g202627_)))
                                  (let ((_%target196717196761%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202626_ 0)))
                                        (_%tl196719196764%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202626_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196719196764%_))
                                        (letrec ((_%loop196720196767%_
                                                  (lambda (_%hd196718196771%_
                                                           _%symbol196724196774%_
                                                           _%method196725196776%_
                                                           _%type-t196726196778%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196718196771%_))
                                                        (let ((_%e196721196781%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196718196771%_))))
                  (let ((_%lp-hd196722196785%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196721196781%_)))
                        (_%lp-tl196723196788%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196721196781%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196722196785%_))
                        (let ((_%e196732196791%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196722196785%_))))
                          (let ((_%hd196731196795%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196732196791%_)))
                                (_%tl196730196798%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196732196791%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196730196798%_))
                                (let ((_%e196735196801%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196730196798%_))))
                                  (let ((_%hd196734196805%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196735196801%_)))
                                        (_%tl196733196808%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196735196801%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196733196808%_))
                                        (let ((_%e196738196811%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196733196808%_))))
                                          (let ((_%hd196737196815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196738196811%_)))
                                                (_%tl196736196818%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196738196811%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196736196818%_))
                                                (_%loop196720196767%_
                                                 _%lp-tl196723196788%_
                                                 (cons _%hd196737196815%_
                                                       _%symbol196724196774%_)
                                                 (cons _%hd196734196805%_
                                                       _%method196725196776%_)
                                                 (cons _%hd196731196795%_
                                                       _%type-t196726196778%_))
                                                (_%g196709196744%_
                                                 _%g196710196748%_))))
                                        (_%g196709196744%_
                                         _%g196710196748%_))))
                                (_%g196709196744%_ _%g196710196748%_))))
                        (_%g196709196744%_ _%g196710196748%_))))
                (let ((_%symbol196727196821%_ (reverse _%symbol196724196774%_))
                      (_%method196728196824%_ (reverse _%method196725196776%_))
                      (_%type-t196729196826%_
                       (reverse _%type-t196726196778%_)))
                  ((lambda (_%L196829%_ _%L196831%_ _%L196832%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196829%_
                                _%L196831%_
                                _%L196832%_))
                             (let ((__tmp202628
                                    (lambda (_%g196848196853%_
                                             _%g196849196856%_
                                             _%g196850196858%_
                                             _%g196851196860%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g196850196858%_
                                                        (cons _%g196849196856%_
                                                              (cons _%g196848196853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g196851196860%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp202628
                                '()
                                _%L196829%_
                                _%L196831%_
                                _%L196832%_)))))
                   _%symbol196727196821%_
                   _%method196728196824%_
                   _%type-t196729196826%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196720196767%_
                                           _%target196717196761%_
                                           '()
                                           '()
                                           '()))
                                        (_%g196709196744%_
                                         _%g196710196748%_)))))
                              (_%g196709196744%_ _%g196710196748%_))))
                      (_%g196709196744%_ _%g196710196748%_)))))
          (_%g196708196863%_ _%$stx196705%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx196868%_)
        (let* ((_%g196872196905%_
                (lambda (_%g196873196901%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196873196901%_))))
               (_%g196871197019%_
                (lambda (_%g196873196909%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196873196909%_))
                      (let ((_%e196879196912%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196873196909%_))))
                        (let ((_%hd196878196916%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196879196912%_)))
                              (_%tl196877196919%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196879196912%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196877196919%_))
                              (let ((_%e196882196922%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196877196919%_))))
                                (let ((_%hd196881196926%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196882196922%_)))
                                      (_%tl196880196929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196882196922%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196880196929%_))
                                      (let ((_g202629_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196880196929%_
                                                '0))))
                                        (begin
                                          (let ((_g202630_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202629_)
                                                       (##vector-length
                                                        _g202629_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202630_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202630_)))
                                          (let ((_%target196883196932%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202629_ 0)))
                                                (_%tl196885196935%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202629_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196885196935%_))
                                                (letrec ((_%loop196886196938%_
                                                          (lambda (_%hd196884196942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol196890196945%_
                           _%method196891196947%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd196884196942%_))
                        (let ((_%e196887196950%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd196884196942%_))))
                          (let ((_%lp-hd196888196954%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196887196950%_)))
                                (_%lp-tl196889196957%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196887196950%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd196888196954%_))
                                (let ((_%e196896196960%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd196888196954%_))))
                                  (let ((_%hd196895196964%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196896196960%_)))
                                        (_%tl196894196967%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196896196960%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196894196967%_))
                                        (let ((_%e196899196970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196894196967%_))))
                                          (let ((_%hd196898196974%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196899196970%_)))
                                                (_%tl196897196977%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196899196970%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196897196977%_))
                                                (_%loop196886196938%_
                                                 _%lp-tl196889196957%_
                                                 (cons _%hd196898196974%_
                                                       _%symbol196890196945%_)
                                                 (cons _%hd196895196964%_
                                                       _%method196891196947%_))
                                                (_%g196872196905%_
                                                 _%g196873196909%_))))
                                        (_%g196872196905%_
                                         _%g196873196909%_))))
                                (_%g196872196905%_ _%g196873196909%_))))
                        (let ((_%symbol196892196980%_
                               (reverse _%symbol196890196945%_))
                              (_%method196893196983%_
                               (reverse _%method196891196947%_)))
                          ((lambda (_%L196986%_ _%L196988%_ _%L196989%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L196986%_
                                        _%L196988%_))
                                     (let ((__tmp202631
                                            (lambda (_%g197007197011%_
                                                     _%g197008197014%_
                                                     _%g197009197016%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L196989%_
                                                                (cons _%g197008197014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g197007197011%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g197009197016%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp202631
                                        '()
                                        _%L196986%_
                                        _%L196988%_)))))
                           _%symbol196892196980%_
                           _%method196893196983%_
                           _%hd196881196926%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop196886196938%_
                                                   _%target196883196932%_
                                                   '()
                                                   '()))
                                                (_%g196872196905%_
                                                 _%g196873196909%_)))))
                                      (_%g196872196905%_ _%g196873196909%_))))
                              (_%g196872196905%_ _%g196873196909%_))))
                      (_%g196872196905%_ _%g196873196909%_)))))
          (_%g196871197019%_ _%$stx196868%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx197024%_)
        (let* ((_%g197028197042%_
                (lambda (_%g197029197038%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197029197038%_))))
               (_%g197027197083%_
                (lambda (_%g197029197046%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197029197046%_))
                      (let ((_%e197033197049%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197029197046%_))))
                        (let ((_%hd197032197053%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197033197049%_)))
                              (_%tl197031197056%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197033197049%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197031197056%_))
                              (let ((_%e197036197059%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197031197056%_))))
                                (let ((_%hd197035197063%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197036197059%_)))
                                      (_%tl197034197066%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197036197059%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197034197066%_))
                                      ((lambda (_%L197069%_)
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
                                                           (cons _%L197069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197035197063%_)
                                      (_%g197028197042%_ _%g197029197046%_))))
                              (_%g197028197042%_ _%g197029197046%_))))
                      (_%g197028197042%_ _%g197029197046%_)))))
          (_%g197027197083%_ _%$stx197024%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx197087%_)
        (let* ((_%g197091197145%_
                (lambda (_%g197092197141%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197092197141%_))))
               (_%g197090197326%_
                (lambda (_%g197092197149%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197092197149%_))
                      (let ((_%e197106197152%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197092197149%_))))
                        (let ((_%hd197105197156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197106197152%_)))
                              (_%tl197104197159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197106197152%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197104197159%_))
                              (let ((_%e197109197162%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197104197159%_))))
                                (let ((_%hd197108197166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197109197162%_)))
                                      (_%tl197107197169%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197109197162%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197107197169%_))
                                      (let ((_%e197112197172%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197107197169%_))))
                                        (let ((_%hd197111197176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197112197172%_)))
                                              (_%tl197110197179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197112197172%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197110197179%_))
                                              (let ((_%e197115197182%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197110197179%_))))
                                                (let ((_%hd197114197186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197115197182%_)))
                                                      (_%tl197113197189%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197115197182%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197113197189%_))
                                                      (let ((_%e197118197192%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197113197189%_))))
                (let ((_%hd197117197196%_
                       (let () (declare (not safe)) (##car _%e197118197192%_)))
                      (_%tl197116197199%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197118197192%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197116197199%_))
                      (let ((_%e197121197202%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197116197199%_))))
                        (let ((_%hd197120197206%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197121197202%_)))
                              (_%tl197119197209%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197121197202%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197119197209%_))
                              (let ((_%e197124197212%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197119197209%_))))
                                (let ((_%hd197123197216%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197124197212%_)))
                                      (_%tl197122197219%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197124197212%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197122197219%_))
                                      (let ((_%e197127197222%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197122197219%_))))
                                        (let ((_%hd197126197226%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197127197222%_)))
                                              (_%tl197125197229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197127197222%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197125197229%_))
                                              (let ((_%e197130197232%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197125197229%_))))
                                                (let ((_%hd197129197236%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197130197232%_)))
                                                      (_%tl197128197239%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197130197232%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197128197239%_))
                                                      (let ((_%e197133197242%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197128197239%_))))
                (let ((_%hd197132197246%_
                       (let () (declare (not safe)) (##car _%e197133197242%_)))
                      (_%tl197131197249%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197133197242%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197131197249%_))
                      (let ((_%e197136197252%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197131197249%_))))
                        (let ((_%hd197135197256%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197136197252%_)))
                              (_%tl197134197259%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197136197252%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197134197259%_))
                              (let ((_%e197139197262%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197134197259%_))))
                                (let ((_%hd197138197266%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197139197262%_)))
                                      (_%tl197137197269%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197139197262%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197137197269%_))
                                      ((lambda (_%L197272%_
                                                _%L197274%_
                                                _%L197275%_
                                                _%L197276%_
                                                _%L197277%_
                                                _%L197278%_
                                                _%L197279%_
                                                _%L197280%_
                                                _%L197281%_
                                                _%L197282%_
                                                _%L197283%_)
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
                                                           (cons _%L197283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L197282%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L197281%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197280%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197279%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L197278%_ '()))
                                           (cons _%L197277%_
                                                 (cons _%L197276%_
                                                       (cons _%L197275%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197274%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L197272%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd197138197266%_
                                       _%hd197135197256%_
                                       _%hd197132197246%_
                                       _%hd197129197236%_
                                       _%hd197126197226%_
                                       _%hd197123197216%_
                                       _%hd197120197206%_
                                       _%hd197117197196%_
                                       _%hd197114197186%_
                                       _%hd197111197176%_
                                       _%hd197108197166%_)
                                      (_%g197091197145%_ _%g197092197149%_))))
                              (_%g197091197145%_ _%g197092197149%_))))
                      (_%g197091197145%_ _%g197092197149%_))))
              (_%g197091197145%_ _%g197092197149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197091197145%_
                                               _%g197092197149%_))))
                                      (_%g197091197145%_ _%g197092197149%_))))
                              (_%g197091197145%_ _%g197092197149%_))))
                      (_%g197091197145%_ _%g197092197149%_))))
              (_%g197091197145%_ _%g197092197149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197091197145%_
                                               _%g197092197149%_))))
                                      (_%g197091197145%_ _%g197092197149%_))))
                              (_%g197091197145%_ _%g197092197149%_))))
                      (_%g197091197145%_ _%g197092197149%_)))))
          (_%g197090197326%_ _%$stx197087%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx197330%_)
        (let* ((_%g197334197348%_
                (lambda (_%g197335197344%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197335197344%_))))
               (_%g197333197389%_
                (lambda (_%g197335197352%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197335197352%_))
                      (let ((_%e197339197355%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197335197352%_))))
                        (let ((_%hd197338197359%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197339197355%_)))
                              (_%tl197337197362%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197339197355%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197337197362%_))
                              (let ((_%e197342197365%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197337197362%_))))
                                (let ((_%hd197341197369%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197342197365%_)))
                                      (_%tl197340197372%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197342197365%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197340197372%_))
                                      ((lambda (_%L197375%_)
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
                                                           (cons _%L197375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197341197369%_)
                                      (_%g197334197348%_ _%g197335197352%_))))
                              (_%g197334197348%_ _%g197335197352%_))))
                      (_%g197334197348%_ _%g197335197352%_)))))
          (_%g197333197389%_ _%$stx197330%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx197393%_)
        (let* ((_%g197397197411%_
                (lambda (_%g197398197407%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197398197407%_))))
               (_%g197396197452%_
                (lambda (_%g197398197415%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197398197415%_))
                      (let ((_%e197402197418%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197398197415%_))))
                        (let ((_%hd197401197422%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197402197418%_)))
                              (_%tl197400197425%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197402197418%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197400197425%_))
                              (let ((_%e197405197428%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197400197425%_))))
                                (let ((_%hd197404197432%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197405197428%_)))
                                      (_%tl197403197435%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197405197428%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197403197435%_))
                                      ((lambda (_%L197438%_)
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
                                                           (cons _%L197438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197404197432%_)
                                      (_%g197397197411%_ _%g197398197415%_))))
                              (_%g197397197411%_ _%g197398197415%_))))
                      (_%g197397197411%_ _%g197398197415%_)))))
          (_%g197396197452%_ _%$stx197393%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx197456%_)
        (let* ((_%g197460197482%_
                (lambda (_%g197461197478%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197461197478%_))))
               (_%g197459197551%_
                (lambda (_%g197461197486%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197461197486%_))
                      (let ((_%e197467197489%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197461197486%_))))
                        (let ((_%hd197466197493%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197467197489%_)))
                              (_%tl197465197496%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197467197489%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197465197496%_))
                              (let ((_%e197470197499%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197465197496%_))))
                                (let ((_%hd197469197503%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197470197499%_)))
                                      (_%tl197468197506%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197470197499%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197468197506%_))
                                      (let ((_%e197473197509%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197468197506%_))))
                                        (let ((_%hd197472197513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197473197509%_)))
                                              (_%tl197471197516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197473197509%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197471197516%_))
                                              (let ((_%e197476197519%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197471197516%_))))
                                                (let ((_%hd197475197523%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197476197519%_)))
                                                      (_%tl197474197526%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197476197519%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197474197526%_))
                                                      ((lambda (_%L197529%_
                                                                _%L197531%_
                                                                _%L197532%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197532%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L197531%_ '()))
                                   (cons _%L197529%_ '())))))
               _%hd197475197523%_
               _%hd197472197513%_
               _%hd197469197503%_)
              (_%g197460197482%_ _%g197461197486%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197460197482%_
                                               _%g197461197486%_))))
                                      (_%g197460197482%_ _%g197461197486%_))))
                              (_%g197460197482%_ _%g197461197486%_))))
                      (_%g197460197482%_ _%g197461197486%_)))))
          (_%g197459197551%_ _%$stx197456%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx197555%_)
        (let* ((_%g197559197581%_
                (lambda (_%g197560197577%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197560197577%_))))
               (_%g197558197650%_
                (lambda (_%g197560197585%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197560197585%_))
                      (let ((_%e197566197588%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197560197585%_))))
                        (let ((_%hd197565197592%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197566197588%_)))
                              (_%tl197564197595%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197566197588%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197564197595%_))
                              (let ((_%e197569197598%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197564197595%_))))
                                (let ((_%hd197568197602%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197569197598%_)))
                                      (_%tl197567197605%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197569197598%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197567197605%_))
                                      (let ((_%e197572197608%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197567197605%_))))
                                        (let ((_%hd197571197612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197572197608%_)))
                                              (_%tl197570197615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197572197608%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197570197615%_))
                                              (let ((_%e197575197618%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197570197615%_))))
                                                (let ((_%hd197574197622%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197575197618%_)))
                                                      (_%tl197573197625%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197575197618%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197573197625%_))
                                                      ((lambda (_%L197628%_
                                                                _%L197630%_
                                                                _%L197631%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197631%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L197630%_ '()))
                                   (cons _%L197628%_ '())))))
               _%hd197574197622%_
               _%hd197571197612%_
               _%hd197568197602%_)
              (_%g197559197581%_ _%g197560197585%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197559197581%_
                                               _%g197560197585%_))))
                                      (_%g197559197581%_ _%g197560197585%_))))
                              (_%g197559197581%_ _%g197560197585%_))))
                      (_%g197559197581%_ _%g197560197585%_)))))
          (_%g197558197650%_ _%$stx197555%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx197654%_)
        (let* ((_%g197658197672%_
                (lambda (_%g197659197668%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197659197668%_))))
               (_%g197657197713%_
                (lambda (_%g197659197676%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197659197676%_))
                      (let ((_%e197663197679%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197659197676%_))))
                        (let ((_%hd197662197683%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197663197679%_)))
                              (_%tl197661197686%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197663197679%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197661197686%_))
                              (let ((_%e197666197689%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197661197686%_))))
                                (let ((_%hd197665197693%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197666197689%_)))
                                      (_%tl197664197696%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197666197689%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197664197696%_))
                                      ((lambda (_%L197699%_)
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
                                                           (cons _%L197699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197665197693%_)
                                      (_%g197658197672%_ _%g197659197676%_))))
                              (_%g197658197672%_ _%g197659197676%_))))
                      (_%g197658197672%_ _%g197659197676%_)))))
          (_%g197657197713%_ _%$stx197654%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx197717%_)
        (let* ((_%g197721197739%_
                (lambda (_%g197722197735%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197722197735%_))))
               (_%g197720197794%_
                (lambda (_%g197722197743%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197722197743%_))
                      (let ((_%e197727197746%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197722197743%_))))
                        (let ((_%hd197726197750%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197727197746%_)))
                              (_%tl197725197753%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197727197746%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197725197753%_))
                              (let ((_%e197730197756%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197725197753%_))))
                                (let ((_%hd197729197760%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197730197756%_)))
                                      (_%tl197728197763%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197730197756%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197728197763%_))
                                      (let ((_%e197733197766%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197728197763%_))))
                                        (let ((_%hd197732197770%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197733197766%_)))
                                              (_%tl197731197773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197733197766%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197731197773%_))
                                              ((lambda (_%L197776%_
                                                        _%L197778%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197778%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197776%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197732197770%_
                                               _%hd197729197760%_)
                                              (_%g197721197739%_
                                               _%g197722197743%_))))
                                      (_%g197721197739%_ _%g197722197743%_))))
                              (_%g197721197739%_ _%g197722197743%_))))
                      (_%g197721197739%_ _%g197722197743%_)))))
          (_%g197720197794%_ _%$stx197717%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx197798%_)
        (let* ((_%__stx202002202003%_ _%$stx197798%_)
               (_%g197805197866%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202002202003%_)))))
          (let ((_%__kont202005202006%_
                 (lambda (_%L198104%_ _%L198106%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198106%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198104%_ '()))
                                     '())))))
                (_%__kont202007202008%_
                 (lambda (_%L198043%_ _%L198045%_ _%L198046%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198046%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198045%_ '()))
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
                                 (cons _%L198043%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont202009202010%_
                 (lambda (_%L197967%_ _%L197969%_)
                   (cons _%L197969%_ (cons _%L197967%_ (cons '#f '())))))
                (_%__kont202011202012%_
                 (lambda (_%L197917%_ _%L197919%_ _%L197920%_)
                   (cons _%L197920%_
                         (cons _%L197919%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L197917%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202002202003%_))
                (let ((_%e197811198074%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202002202003%_))))
                  (let ((_%tl197809198081%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197811198074%_)))
                        (_%hd197810198078%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197811198074%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197809198081%_))
                        (let ((_%e197814198084%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl197809198081%_))))
                          (let ((_%tl197812198091%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197814198084%_)))
                                (_%hd197813198088%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197814198084%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197812198091%_))
                                (let ((_%e197817198094%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197812198091%_))))
                                  (let ((_%tl197815198101%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197817198094%_)))
                                        (_%hd197816198098%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197817198094%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197815198101%_))
                                        (_%__kont202005202006%_
                                         _%hd197816198098%_
                                         _%hd197813198088%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197815198101%_))
                                            (let ((_%e197832198019%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197815198101%_))))
                                              (let ((_%tl197830198026%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197832198019%_)))
                                                    (_%hd197831198023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197832198019%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd197831198023%_))
                                                    (let ((_%e197833198029%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd197831198023%_))))
                                                      (if (equal? _%e197833198029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197830198026%_))
                      (let ((_%e197836198033%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197830198026%_))))
                        (let ((_%tl197834198040%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197836198033%_)))
                              (_%hd197835198037%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197836198033%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197834198040%_))
                              (_%__kont202007202008%_
                               _%hd197835198037%_
                               _%hd197816198098%_
                               _%hd197813198088%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd197816198098%_))
                                  (let ((_%e197857197903%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197816198098%_))))
                                    (declare (not safe))
                                    (_%g197805197866%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197805197866%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd197816198098%_))
                          (let ((_%e197857197903%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197816198098%_))))
                            (if (equal? _%e197857197903%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197830198026%_))
                                    (_%__kont202011202012%_
                                     _%hd197831198023%_
                                     _%hd197813198088%_
                                     _%hd197810198078%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197805197866%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g197805197866%_))))
                          (let () (declare (not safe)) (_%g197805197866%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd197816198098%_))
                      (let ((_%e197857197903%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197816198098%_))))
                        (if (equal? _%e197857197903%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197830198026%_))
                                (_%__kont202011202012%_
                                 _%hd197831198023%_
                                 _%hd197813198088%_
                                 _%hd197810198078%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197805197866%_)))
                            (let () (declare (not safe)) (_%g197805197866%_))))
                      (let () (declare (not safe)) (_%g197805197866%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd197816198098%_))
                                                        (let ((_%e197857197903%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd197816198098%_))))
                  (if (equal? _%e197857197903%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197830198026%_))
                          (_%__kont202011202012%_
                           _%hd197831198023%_
                           _%hd197813198088%_
                           _%hd197810198078%_)
                          (let () (declare (not safe)) (_%g197805197866%_)))
                      (let () (declare (not safe)) (_%g197805197866%_))))
                (let () (declare (not safe)) (_%g197805197866%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd197816198098%_))
                                                (let ((_%e197857197903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd197816198098%_))))
                                                  (declare (not safe))
                                                  (_%g197805197866%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197805197866%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197812198091%_))
                                    (_%__kont202009202010%_
                                     _%hd197813198088%_
                                     _%hd197810198078%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197805197866%_))))))
                        (let () (declare (not safe)) (_%g197805197866%_)))))
                (let () (declare (not safe)) (_%g197805197866%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx198125%_)
        (let* ((_%g198129198158%_
                (lambda (_%g198130198154%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198130198154%_))))
               (_%g198128198267%_
                (lambda (_%g198130198162%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198130198162%_))
                      (let ((_%e198134198165%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198130198162%_))))
                        (let ((_%hd198133198169%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198134198165%_)))
                              (_%tl198132198172%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198134198165%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198132198172%_))
                              (let ((_g202632_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198132198172%_
                                        '0))))
                                (begin
                                  (let ((_g202633_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202632_)
                                               (##vector-length _g202632_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202633_ 2)))
                                        (error "Context expects 2 values"
                                               _g202633_)))
                                  (let ((_%target198135198175%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202632_ 0)))
                                        (_%tl198137198178%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202632_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198137198178%_))
                                        (letrec ((_%loop198138198181%_
                                                  (lambda (_%hd198136198185%_
                                                           _%clause198142198188%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198136198185%_))
                                                        (let ((_%e198139198191%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198136198185%_))))
                  (let ((_%lp-hd198140198195%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198139198191%_)))
                        (_%lp-tl198141198198%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198139198191%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd198140198195%_))
                        (let ((_g202634_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd198140198195%_
                                  '0))))
                          (begin
                            (let ((_g202635_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g202634_)
                                         (##vector-length _g202634_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g202635_ 2)))
                                  (error "Context expects 2 values"
                                         _g202635_)))
                            (let ((_%target198144198201%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202634_ 0)))
                                  (_%tl198146198204%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202634_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198146198204%_))
                                  (letrec ((_%loop198147198207%_
                                            (lambda (_%hd198145198211%_
                                                     _%clause198151198214%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198145198211%_))
                                                  (let ((_%e198148198217%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd198145198211%_))))
                                                    (let ((_%lp-hd198149198221%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198148198217%_)))
                                                          (_%lp-tl198150198224%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198148198217%_))))
                                                      (_%loop198147198207%_
                                                       _%lp-tl198150198224%_
                                                       (cons _%lp-hd198149198221%_
                                                             _%clause198151198214%_))))
                                                  (let ((_%clause198152198227%_
                                                         (reverse _%clause198151198214%_)))
                                                    (_%loop198138198181%_
                                                     _%lp-tl198141198198%_
                                                     (cons _%clause198152198227%_
                                                           _%clause198142198188%_)))))))
                                    (_%loop198147198207%_
                                     _%target198144198201%_
                                     '()))
                                  (_%g198129198158%_ _%g198130198162%_)))))
                        (_%g198129198158%_ _%g198130198162%_))))
                (let ((_%clause198143198231%_
                       (reverse _%clause198142198188%_)))
                  ((lambda (_%L198235%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp202636
                                              (lambda (_%g198250198255%_
                                                       _%g198251198258%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp202637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g198252198261%_ _%g198253198264%_)
                             (cons _%g198252198261%_ _%g198253198264%_))))
                      (declare (not safe))
                      (__foldr1 __tmp202637 '() _%g198250198255%_)))
              _%g198251198258%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp202636
                                          '()
                                          _%L198235%_)))
                                 '())))
                   _%clause198143198231%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198138198181%_
                                           _%target198135198175%_
                                           '()))
                                        (_%g198129198158%_
                                         _%g198130198162%_)))))
                              (_%g198129198158%_ _%g198130198162%_))))
                      (_%g198129198158%_ _%g198130198162%_)))))
          (_%g198128198267%_ _%$stx198125%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx198273%_)
        (let* ((_%g198277198295%_
                (lambda (_%g198278198291%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198278198291%_))))
               (_%g198276198350%_
                (lambda (_%g198278198299%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198278198299%_))
                      (let ((_%e198283198302%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198278198299%_))))
                        (let ((_%hd198282198306%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198283198302%_)))
                              (_%tl198281198309%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198283198302%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198281198309%_))
                              (let ((_%e198286198312%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198281198309%_))))
                                (let ((_%hd198285198316%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198286198312%_)))
                                      (_%tl198284198319%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198286198312%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198284198319%_))
                                      (let ((_%e198289198322%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198284198319%_))))
                                        (let ((_%hd198288198326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198289198322%_)))
                                              (_%tl198287198329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198289198322%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198287198329%_))
                                              ((lambda (_%L198332%_
                                                        _%L198334%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198334%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198332%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198288198326%_
                                               _%hd198285198316%_)
                                              (_%g198277198295%_
                                               _%g198278198299%_))))
                                      (_%g198277198295%_ _%g198278198299%_))))
                              (_%g198277198295%_ _%g198278198299%_))))
                      (_%g198277198295%_ _%g198278198299%_)))))
          (_%g198276198350%_ _%$stx198273%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx198354%_)
        (let* ((_%g198358198376%_
                (lambda (_%g198359198372%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198359198372%_))))
               (_%g198357198431%_
                (lambda (_%g198359198380%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198359198380%_))
                      (let ((_%e198364198383%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198359198380%_))))
                        (let ((_%hd198363198387%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198364198383%_)))
                              (_%tl198362198390%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198364198383%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198362198390%_))
                              (let ((_%e198367198393%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198362198390%_))))
                                (let ((_%hd198366198397%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198367198393%_)))
                                      (_%tl198365198400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198367198393%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198365198400%_))
                                      (let ((_%e198370198403%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198365198400%_))))
                                        (let ((_%hd198369198407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198370198403%_)))
                                              (_%tl198368198410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198370198403%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198368198410%_))
                                              ((lambda (_%L198413%_
                                                        _%L198415%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198415%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198413%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198369198407%_
                                               _%hd198366198397%_)
                                              (_%g198358198376%_
                                               _%g198359198380%_))))
                                      (_%g198358198376%_ _%g198359198380%_))))
                              (_%g198358198376%_ _%g198359198380%_))))
                      (_%g198358198376%_ _%g198359198380%_)))))
          (_%g198357198431%_ _%$stx198354%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx198435%_)
        (let* ((_%g198439198468%_
                (lambda (_%g198440198464%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198440198464%_))))
               (_%g198438198568%_
                (lambda (_%g198440198472%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198440198472%_))
                      (let ((_%e198445198475%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198440198472%_))))
                        (let ((_%hd198444198479%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198445198475%_)))
                              (_%tl198443198482%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198445198475%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198443198482%_))
                              (let ((_g202638_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198443198482%_
                                        '0))))
                                (begin
                                  (let ((_g202639_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202638_)
                                               (##vector-length _g202638_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202639_ 2)))
                                        (error "Context expects 2 values"
                                               _g202639_)))
                                  (let ((_%target198446198485%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202638_ 0)))
                                        (_%tl198448198488%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202638_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198448198488%_))
                                        (letrec ((_%loop198449198491%_
                                                  (lambda (_%hd198447198495%_
                                                           _%rule198453198498%_
                                                           _%proc198454198500%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198447198495%_))
                                                        (let ((_%e198450198503%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198447198495%_))))
                  (let ((_%lp-hd198451198507%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198450198503%_)))
                        (_%lp-tl198452198510%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198450198503%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd198451198507%_))
                        (let ((_%e198459198513%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd198451198507%_))))
                          (let ((_%hd198458198517%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198459198513%_)))
                                (_%tl198457198520%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198459198513%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198457198520%_))
                                (let ((_%e198462198523%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198457198520%_))))
                                  (let ((_%hd198461198527%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198462198523%_)))
                                        (_%tl198460198530%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198462198523%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198460198530%_))
                                        (_%loop198449198491%_
                                         _%lp-tl198452198510%_
                                         (cons _%hd198461198527%_
                                               _%rule198453198498%_)
                                         (cons _%hd198458198517%_
                                               _%proc198454198500%_))
                                        (_%g198439198468%_
                                         _%g198440198472%_))))
                                (_%g198439198468%_ _%g198440198472%_))))
                        (_%g198439198468%_ _%g198440198472%_))))
                (let ((_%rule198455198533%_ (reverse _%rule198453198498%_))
                      (_%proc198456198536%_ (reverse _%proc198454198500%_)))
                  ((lambda (_%L198539%_ _%L198541%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L198539%_
                                _%L198541%_))
                             (let ((__tmp202640
                                    (lambda (_%g198556198560%_
                                             _%g198557198563%_
                                             _%g198558198565%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g198557198563%_
                                                        (cons _%g198556198560%_
                                                              '())))
                                            _%g198558198565%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202640
                                '()
                                _%L198539%_
                                _%L198541%_)))))
                   _%rule198455198533%_
                   _%proc198456198536%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198449198491%_
                                           _%target198446198485%_
                                           '()
                                           '()))
                                        (_%g198439198468%_
                                         _%g198440198472%_)))))
                              (_%g198439198468%_ _%g198440198472%_))))
                      (_%g198439198468%_ _%g198440198472%_)))))
          (_%g198438198568%_ _%$stx198435%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx198573%_)
        (let* ((_%g198577198595%_
                (lambda (_%g198578198591%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198578198591%_))))
               (_%g198576198650%_
                (lambda (_%g198578198599%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198578198599%_))
                      (let ((_%e198583198602%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198578198599%_))))
                        (let ((_%hd198582198606%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198583198602%_)))
                              (_%tl198581198609%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198583198602%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198581198609%_))
                              (let ((_%e198586198612%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198581198609%_))))
                                (let ((_%hd198585198616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198586198612%_)))
                                      (_%tl198584198619%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198586198612%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198584198619%_))
                                      (let ((_%e198589198622%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198584198619%_))))
                                        (let ((_%hd198588198626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198589198622%_)))
                                              (_%tl198587198629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198589198622%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198587198629%_))
                                              ((lambda (_%L198632%_
                                                        _%L198634%_)
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
                                                   (cons _%L198634%_ '()))
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
                 (cons _%L198632%_ '())))
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
                                   (cons _%L198634%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198588198626%_
                                               _%hd198585198616%_)
                                              (_%g198577198595%_
                                               _%g198578198599%_))))
                                      (_%g198577198595%_ _%g198578198599%_))))
                              (_%g198577198595%_ _%g198578198599%_))))
                      (_%g198577198595%_ _%g198578198599%_)))))
          (_%g198576198650%_ _%$stx198573%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx198654%_)
        (let* ((_%__stx202120202121%_ _%$stx198654%_)
               (_%g198659198684%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202120202121%_)))))
          (let ((_%__kont202123202124%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202125202126%_
                 (lambda (_%L198731%_ _%L198733%_ _%L198734%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L198734%_ (cons _%L198733%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L198731%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202120202121%_))
                (let ((_%e198663198760%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202120202121%_))))
                  (let ((_%tl198661198767%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198663198760%_)))
                        (_%hd198662198764%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198663198760%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198661198767%_))
                        (_%__kont202123202124%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198661198767%_))
                            (let ((_%e198672198701%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198661198767%_))))
                              (let ((_%tl198670198708%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198672198701%_)))
                                    (_%hd198671198705%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198672198701%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd198671198705%_))
                                    (let ((_%e198675198711%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd198671198705%_))))
                                      (let ((_%tl198673198718%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198675198711%_)))
                                            (_%hd198674198715%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198675198711%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198673198718%_))
                                            (let ((_%e198678198721%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198673198718%_))))
                                              (let ((_%tl198676198728%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198678198721%_)))
                                                    (_%hd198677198725%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198678198721%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl198676198728%_))
                                                    (_%__kont202125202126%_
                                                     _%tl198670198708%_
                                                     _%hd198677198725%_
                                                     _%hd198674198715%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198659198684%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g198659198684%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198659198684%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198659198684%_))))))
                (let () (declare (not safe)) (_%g198659198684%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx198778%_)
        (let* ((_%__stx202164202165%_ _%$stx198778%_)
               (_%g198783198814%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202164202165%_)))))
          (let ((_%__kont202167202168%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202169202170%_
                 (lambda (_%L198881%_ _%L198883%_ _%L198884%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L198884%_
                                           (let ((__tmp202641
                                                  (lambda (_%g198904198907%_
                                                           _%g198905198910%_)
                                                    (cons _%g198904198907%_
                                                          _%g198905198910%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp202641
                                              '()
                                              _%L198883%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L198881%_)
                                     '()))))))
            (let ((_%__match202207202208%_
                   (lambda (_%e198793198821%_
                            _%hd198792198825%_
                            _%tl198791198828%_
                            _%e198796198831%_
                            _%hd198795198835%_
                            _%tl198794198838%_
                            _%e198799198841%_
                            _%hd198798198845%_
                            _%tl198797198848%_
                            _%__splice202171202172%_
                            _%target198800198851%_
                            _%tl198802198854%_)
                     (letrec ((_%loop198803198857%_
                               (lambda (_%hd198801198861%_ _%sig198807198864%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd198801198861%_))
                                     (let ((_%e198804198867%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd198801198861%_))))
                                       (let ((_%lp-tl198806198874%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198804198867%_)))
                                             (_%lp-hd198805198871%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198804198867%_))))
                                         (_%loop198803198857%_
                                          _%lp-tl198806198874%_
                                          (cons _%lp-hd198805198871%_
                                                _%sig198807198864%_))))
                                     (let ((_%sig198808198877%_
                                            (reverse _%sig198807198864%_)))
                                       (_%__kont202169202170%_
                                        _%tl198794198838%_
                                        _%sig198808198877%_
                                        _%hd198798198845%_))))))
                       (_%loop198803198857%_ _%target198800198851%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202164202165%_))
                  (let ((_%e198787198920%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202164202165%_))))
                    (let ((_%tl198785198927%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198787198920%_)))
                          (_%hd198786198924%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198787198920%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198785198927%_))
                          (_%__kont202167202168%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198785198927%_))
                              (let ((_%e198796198831%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198785198927%_))))
                                (let ((_%tl198794198838%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198796198831%_)))
                                      (_%hd198795198835%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198796198831%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198795198835%_))
                                      (let ((_%e198799198841%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198795198835%_))))
                                        (let ((_%tl198797198848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198799198841%_)))
                                              (_%hd198798198845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198799198841%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198797198848%_))
                                              (let ((_%__splice202171202172%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198797198848%_
                                                        '0))))
                                                (let ((_%tl198802198854%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202171202172%_
                                                          '1)))
                                                      (_%target198800198851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202171202172%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198802198854%_))
                                                      (_%__match202207202208%_
                                                       _%e198787198920%_
                                                       _%hd198786198924%_
                                                       _%tl198785198927%_
                                                       _%e198796198831%_
                                                       _%hd198795198835%_
                                                       _%tl198794198838%_
                                                       _%e198799198841%_
                                                       _%hd198798198845%_
                                                       _%tl198797198848%_
                                                       _%__splice202171202172%_
                                                       _%target198800198851%_
                                                       _%tl198802198854%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198783198814%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198783198814%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198783198814%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198783198814%_))))))
                  (let () (declare (not safe)) (_%g198783198814%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx198939%_)
        (let* ((_%__stx202210202211%_ _%$stx198939%_)
               (_%g198944198991%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202210202211%_)))))
          (let ((_%__kont202213202214%_
                 (lambda (_%L199153%_ _%L199155%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L199155%_
                               (let ((__tmp202642
                                      (lambda (_%g199175199178%_
                                               _%g199176199181%_)
                                        (cons _%g199175199178%_
                                              _%g199176199181%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202642 '() _%L199153%_))))))
                (_%__kont202217202218%_
                 (lambda (_%L199048%_ _%L199050%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L199050%_
                               (let ((__tmp202643
                                      (lambda (_%g199067199070%_
                                               _%g199068199073%_)
                                        (cons _%g199067199070%_
                                              _%g199068199073%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202643 '() _%L199048%_)))))))
            (let* ((_%__match202277202278%_
                    (lambda (_%e198973198998%_
                             _%hd198972199002%_
                             _%tl198971199005%_
                             _%e198976199008%_
                             _%hd198975199012%_
                             _%tl198974199015%_
                             _%__splice202219202220%_
                             _%target198977199018%_
                             _%tl198979199021%_)
                      (letrec ((_%loop198980199024%_
                                (lambda (_%hd198978199028%_
                                         _%sig198984199031%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198978199028%_))
                                      (let ((_%e198981199034%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198978199028%_))))
                                        (let ((_%lp-tl198983199041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198981199034%_)))
                                              (_%lp-hd198982199038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198981199034%_))))
                                          (_%loop198980199024%_
                                           _%lp-tl198983199041%_
                                           (cons _%lp-hd198982199038%_
                                                 _%sig198984199031%_))))
                                      (let ((_%sig198985199044%_
                                             (reverse _%sig198984199031%_)))
                                        (_%__kont202217202218%_
                                         _%sig198985199044%_
                                         _%hd198975199012%_))))))
                        (_%loop198980199024%_ _%target198977199018%_ '()))))
                   (_%__match202269202270%_
                    (lambda (_%e198973198998%_
                             _%hd198972199002%_
                             _%tl198971199005%_
                             _%e198976199008%_
                             _%hd198975199012%_
                             _%tl198974199015%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl198974199015%_))
                          (let ((_%__splice202219202220%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl198974199015%_
                                    '0))))
                            (let ((_%tl198979199021%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202219202220%_
                                      '1)))
                                  (_%target198977199018%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202219202220%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198979199021%_))
                                  (_%__match202277202278%_
                                   _%e198973198998%_
                                   _%hd198972199002%_
                                   _%tl198971199005%_
                                   _%e198976199008%_
                                   _%hd198975199012%_
                                   _%tl198974199015%_
                                   _%__splice202219202220%_
                                   _%target198977199018%_
                                   _%tl198979199021%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g198944198991%_)))))
                          (let () (declare (not safe)) (_%g198944198991%_)))))
                   (_%__match202257202258%_
                    (lambda (_%e198950199083%_
                             _%hd198949199087%_
                             _%tl198948199090%_
                             _%e198953199093%_
                             _%hd198952199097%_
                             _%tl198951199100%_
                             _%e198956199103%_
                             _%hd198955199107%_
                             _%tl198954199110%_
                             _%e198959199113%_
                             _%hd198958199117%_
                             _%tl198957199120%_
                             _%__splice202215202216%_
                             _%target198960199123%_
                             _%tl198962199126%_)
                      (letrec ((_%loop198963199129%_
                                (lambda (_%hd198961199133%_
                                         _%sig198967199136%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198961199133%_))
                                      (let ((_%e198964199139%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198961199133%_))))
                                        (let ((_%lp-tl198966199146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198964199139%_)))
                                              (_%lp-hd198965199143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198964199139%_))))
                                          (_%loop198963199129%_
                                           _%lp-tl198966199146%_
                                           (cons _%lp-hd198965199143%_
                                                 _%sig198967199136%_))))
                                      (let ((_%sig198968199149%_
                                             (reverse _%sig198967199136%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl198954199110%_))
                                            (_%__kont202213202214%_
                                             _%sig198968199149%_
                                             _%hd198952199097%_)
                                            (_%__match202269202270%_
                                             _%e198950199083%_
                                             _%hd198949199087%_
                                             _%tl198948199090%_
                                             _%e198953199093%_
                                             _%hd198952199097%_
                                             _%tl198951199100%_)))))))
                        (_%loop198963199129%_ _%target198960199123%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202210202211%_))
                  (let ((_%e198950199083%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202210202211%_))))
                    (let ((_%tl198948199090%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198950199083%_)))
                          (_%hd198949199087%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198950199083%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198948199090%_))
                          (let ((_%e198953199093%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198948199090%_))))
                            (let ((_%tl198951199100%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198953199093%_)))
                                  (_%hd198952199097%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198953199093%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198951199100%_))
                                  (let ((_%e198956199103%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl198951199100%_))))
                                    (let ((_%tl198954199110%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198956199103%_)))
                                          (_%hd198955199107%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198956199103%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd198955199107%_))
                                          (let ((_%e198959199113%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd198955199107%_))))
                                            (let ((_%tl198957199120%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e198959199113%_)))
                                                  (_%hd198958199117%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e198959199113%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd198958199117%_))
                                                  (if (let ((__tmp202644
                                                             |gxc[1]#_g202645_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp202644
                                                         _%hd198958199117%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl198957199120%_))
                                                          (let ((_%__splice202215202216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl198957199120%_ '0))))
                    (let ((_%tl198962199126%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202215202216%_ '1)))
                          (_%target198960199123%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202215202216%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198962199126%_))
                          (_%__match202257202258%_
                           _%e198950199083%_
                           _%hd198949199087%_
                           _%tl198948199090%_
                           _%e198953199093%_
                           _%hd198952199097%_
                           _%tl198951199100%_
                           _%e198956199103%_
                           _%hd198955199107%_
                           _%tl198954199110%_
                           _%e198959199113%_
                           _%hd198958199117%_
                           _%tl198957199120%_
                           _%__splice202215202216%_
                           _%target198960199123%_
                           _%tl198962199126%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198951199100%_))
                              (let ((_%__splice202219202220%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198951199100%_
                                        '0))))
                                (let ((_%tl198979199021%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202219202220%_
                                          '1)))
                                      (_%target198977199018%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202219202220%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198979199021%_))
                                      (_%__match202277202278%_
                                       _%e198950199083%_
                                       _%hd198949199087%_
                                       _%tl198948199090%_
                                       _%e198953199093%_
                                       _%hd198952199097%_
                                       _%tl198951199100%_
                                       _%__splice202219202220%_
                                       _%target198977199018%_
                                       _%tl198979199021%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g198944198991%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198944198991%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl198951199100%_))
                      (let ((_%__splice202219202220%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl198951199100%_
                                '0))))
                        (let ((_%tl198979199021%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202219202220%_ '1)))
                              (_%target198977199018%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202219202220%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl198979199021%_))
                              (_%__match202277202278%_
                               _%e198950199083%_
                               _%hd198949199087%_
                               _%tl198948199090%_
                               _%e198953199093%_
                               _%hd198952199097%_
                               _%tl198951199100%_
                               _%__splice202219202220%_
                               _%target198977199018%_
                               _%tl198979199021%_)
                              (let ()
                                (declare (not safe))
                                (_%g198944198991%_)))))
                      (let () (declare (not safe)) (_%g198944198991%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl198951199100%_))
                  (let ((_%__splice202219202220%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl198951199100%_ '0))))
                    (let ((_%tl198979199021%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202219202220%_ '1)))
                          (_%target198977199018%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202219202220%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198979199021%_))
                          (_%__match202277202278%_
                           _%e198950199083%_
                           _%hd198949199087%_
                           _%tl198948199090%_
                           _%e198953199093%_
                           _%hd198952199097%_
                           _%tl198951199100%_
                           _%__splice202219202220%_
                           _%target198977199018%_
                           _%tl198979199021%_)
                          (let () (declare (not safe)) (_%g198944198991%_)))))
                  (let () (declare (not safe)) (_%g198944198991%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl198951199100%_))
                                                      (let ((_%__splice202219202220%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl198951199100%_ '0))))
                (let ((_%tl198979199021%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202219202220%_ '1)))
                      (_%target198977199018%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202219202220%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198979199021%_))
                      (_%__match202277202278%_
                       _%e198950199083%_
                       _%hd198949199087%_
                       _%tl198948199090%_
                       _%e198953199093%_
                       _%hd198952199097%_
                       _%tl198951199100%_
                       _%__splice202219202220%_
                       _%target198977199018%_
                       _%tl198979199021%_)
                      (let () (declare (not safe)) (_%g198944198991%_)))))
              (let () (declare (not safe)) (_%g198944198991%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198951199100%_))
                                              (let ((_%__splice202219202220%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198951199100%_
                                                        '0))))
                                                (let ((_%tl198979199021%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202219202220%_
                                                          '1)))
                                                      (_%target198977199018%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202219202220%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198979199021%_))
                                                      (_%__match202277202278%_
                                                       _%e198950199083%_
                                                       _%hd198949199087%_
                                                       _%tl198948199090%_
                                                       _%e198953199093%_
                                                       _%hd198952199097%_
                                                       _%tl198951199100%_
                                                       _%__splice202219202220%_
                                                       _%target198977199018%_
                                                       _%tl198979199021%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198944198991%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198944198991%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl198951199100%_))
                                      (let ((_%__splice202219202220%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl198951199100%_
                                                '0))))
                                        (let ((_%tl198979199021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202219202220%_
                                                  '1)))
                                              (_%target198977199018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202219202220%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198979199021%_))
                                              (_%__match202277202278%_
                                               _%e198950199083%_
                                               _%hd198949199087%_
                                               _%tl198948199090%_
                                               _%e198953199093%_
                                               _%hd198952199097%_
                                               _%tl198951199100%_
                                               _%__splice202219202220%_
                                               _%target198977199018%_
                                               _%tl198979199021%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g198944198991%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198944198991%_))))))
                          (let () (declare (not safe)) (_%g198944198991%_)))))
                  (let () (declare (not safe)) (_%g198944198991%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx200269%_ _%id200271%_)
        (let ((_%proc200275%_
               (let ((__tmp202646
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200271%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202646))))
          (if (let () (declare (not safe)) (procedure? _%proc200275%_))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx200269%_
                 _%id200271%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx200260%_ _%id200262%_)
        (let ((_%klass200266%_
               (let ((__tmp202647
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200262%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202647))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass200266%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx200260%_
                 _%id200262%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx199510%_ _%proc199512%_ _%sig199513%_)
        (letrec ((_%signature-arity199515%_
                  (lambda (_%args200192%_)
                    (let _%loop200195%_ ((_%rest200198%_ _%args200192%_)
                                         (_%count200200%_ '0))
                      (let* ((_%rest200201200212%_ _%rest200198%_)
                             (_%E200205200218%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest200201200212%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K200208200249%_
                               (lambda (_%rest200246%_)
                                 (let ((__tmp202648
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%count200200%_ '1))))
                                   (declare (not safe))
                                   (_%loop200195%_
                                    _%rest200246%_
                                    __tmp202648))))
                              (_%K200207200238%_ (lambda () _%count200200%_))
                              (_%K200206200226%_
                               (lambda () (cons _%count200200%_ '()))))
                          (let ((_%try-match200203200242%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest200201200212%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K200207200238%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K200206200226%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest200201200212%_))
                                (let* ((_%tl200210200253%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest200201200212%_)))
                                       (_%rest200257%_ _%tl200210200253%_))
                                  (declare (not safe))
                                  (_%K200208200249%_ _%rest200257%_))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match200203200242%_)))))))))
                 (_%make-signature199517%_
                  (lambda (_%args200074%_
                           _%return200076%_
                           _%effect200077%_
                           _%unchecked200078%_)
                    (let ((__tmp202649
                           (lambda (_%g200079200081%_)
                             (let ()
                               (declare (not safe))
                               (|gxc[1]#verify-class!|
                                _%ctx199510%_
                                _%g200079200081%_)))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp202649 _%args200074%_))
                    (let ()
                      (declare (not safe))
                      (|gxc[1]#verify-class!| _%ctx199510%_ _%return200076%_))
                    (if _%unchecked200078%_
                        (let ()
                          (declare (not safe))
                          (|gxc[1]#verify-procedure!|
                           _%ctx199510%_
                           _%unchecked200078%_))
                        '#!void)
                    (let ((_%arity200085%_
                           (let ((__tmp202650
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-map1 gx#stx-e _%args200074%_))))
                             (declare (not safe))
                             (_%signature-arity199515%_ __tmp202650))))
                      (if _%effect200077%_
                          (let ((_%effect200088%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect200077%_))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (list? _%effect200088%_))
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect200088%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx199510%_
                                   _%proc199512%_
                                   _%effect200088%_))))
                          '#!void)
                      (cons _%arity200085%_
                            (cons (let* ((_%g200091200114%_
                                          (lambda (_%g200092200110%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g200092200110%_))))
                                         (_%g200090200188%_
                                          (lambda (_%g200092200118%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g200092200118%_))
                                                (let ((_%e200099200121%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g200092200118%_))))
                                                  (let ((_%hd200098200125%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200099200121%_)))
                                                        (_%tl200097200128%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200099200121%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200097200128%_))
                                                        (let ((_%e200102200131%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl200097200128%_))))
                  (let ((_%hd200101200135%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200102200131%_)))
                        (_%tl200100200138%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200102200131%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200100200138%_))
                        (let ((_%e200105200141%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200100200138%_))))
                          (let ((_%hd200104200145%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200105200141%_)))
                                (_%tl200103200148%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200105200141%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200103200148%_))
                                (let ((_%e200108200151%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200103200148%_))))
                                  (let ((_%hd200107200155%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200108200151%_)))
                                        (_%tl200106200158%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200108200151%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200106200158%_))
                                        ((lambda (_%L200161%_
                                                  _%L200163%_
                                                  _%L200164%_
                                                  _%L200165%_)
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
                             (cons _%L200165%_ '()))
                       (cons 'return:
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L200164%_ '()))
                                   (cons 'effect:
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L200163%_ '()))
                                               (cons 'unchecked:
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L200161%_ '()))
                   '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd200107200155%_
                                         _%hd200104200145%_
                                         _%hd200101200135%_
                                         _%hd200098200125%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g200091200114%_
                                           _%g200092200118%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200091200114%_ _%g200092200118%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g200091200114%_ _%g200092200118%_)))))
                (let ()
                  (declare (not safe))
                  (_%g200091200114%_ _%g200092200118%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200091200114%_
                                                   _%g200092200118%_)))))
                                         (__tmp202651
                                          (list _%args200074%_
                                                _%return200076%_
                                                _%effect200077%_
                                                _%unchecked200078%_)))
                                    (declare (not safe))
                                    (_%g200090200188%_ __tmp202651))
                                  '()))))))
          (let ()
            (declare (not safe))
            (|gxc[1]#verify-procedure!| _%ctx199510%_ _%proc199512%_))
          (let* ((_%__stx202288202289%_ _%sig199513%_)
                 (_%g199524199627%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx202288202289%_)))))
            (let ((_%__kont202291202292%_
                   (lambda (_%L200055%_ _%L200057%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature199517%_
                        _%L200057%_
                        _%L200055%_
                        '#f
                        '#f))))
                  (_%__kont202293202294%_
                   (lambda (_%L200006%_ _%L200008%_ _%L200009%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature199517%_
                        _%L200009%_
                        _%L200008%_
                        _%L200006%_
                        '#f))))
                  (_%__kont202295202296%_
                   (lambda (_%L199930%_ _%L199932%_ _%L199933%_)
                     (let ((__tmp202652
                            (let ((__tmp202653
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc199512%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp202653))))
                       (declare (not safe))
                       (_%make-signature199517%_
                        _%L199933%_
                        _%L199932%_
                        _%L199930%_
                        __tmp202652))))
                  (_%__kont202297202298%_
                   (lambda (_%L199836%_ _%L199838%_ _%L199839%_ _%L199840%_)
                     (let ((__tmp202654
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L199836%_))))
                       (declare (not safe))
                       (_%make-signature199517%_
                        _%L199840%_
                        _%L199839%_
                        '#f
                        __tmp202654))))
                  (_%__kont202299202300%_
                   (lambda (_%L199743%_ _%L199745%_)
                     (let ((__tmp202655
                            (let ((__tmp202656
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc199512%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp202656))))
                       (declare (not safe))
                       (_%make-signature199517%_
                        _%L199745%_
                        _%L199743%_
                        '#f
                        __tmp202655))))
                  (_%__kont202301202302%_
                   (lambda (_%L199678%_ _%L199680%_ _%L199681%_)
                     (let ((__tmp202657
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L199678%_))))
                       (declare (not safe))
                       (_%make-signature199517%_
                        _%L199681%_
                        _%L199680%_
                        '#f
                        __tmp202657)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202288202289%_))
                  (let ((_%e199530200035%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202288202289%_))))
                    (let ((_%tl199528200042%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199530200035%_)))
                          (_%hd199529200039%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199530200035%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199528200042%_))
                          (let ((_%e199533200045%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199528200042%_))))
                            (let ((_%tl199531200052%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199533200045%_)))
                                  (_%hd199532200049%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199533200045%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199531200052%_))
                                  (_%__kont202291202292%_
                                   _%hd199532200049%_
                                   _%hd199529200039%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199531200052%_))
                                      (let ((_%e199545199982%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199531200052%_))))
                                        (let ((_%tl199543199989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199545199982%_)))
                                              (_%hd199544199986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199545199982%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd199544199986%_))
                                              (let ((_%e199546199992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd199544199986%_))))
                                                (if (equal? _%e199546199992%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199543199989%_))
                                                        (let ((_%e199549199996%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl199543199989%_))))
                  (let ((_%tl199547200003%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199549199996%_)))
                        (_%hd199548200000%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199549199996%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl199547200003%_))
                        (_%__kont202293202294%_
                         _%hd199548200000%_
                         _%hd199532200049%_
                         _%hd199529200039%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199547200003%_))
                            (let ((_%e199568199916%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl199547200003%_))))
                              (let ((_%tl199566199923%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199568199916%_)))
                                    (_%hd199567199920%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199568199916%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd199567199920%_))
                                    (let ((_%e199569199926%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199567199920%_))))
                                      (if (equal? _%e199569199926%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199566199923%_))
                                              (_%__kont202295202296%_
                                               _%hd199548200000%_
                                               _%hd199532200049%_
                                               _%hd199529200039%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199566199923%_))
                                                  (let ((_%e199593199826%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199566199923%_))))
                                                    (let ((_%tl199591199833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199593199826%_)))
                                                          (_%hd199592199830%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199593199826%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199591199833%_))
                                                          (_%__kont202297202298%_
                                                           _%hd199592199830%_
                                                           _%hd199548200000%_
                                                           _%hd199532200049%_
                                                           _%hd199529200039%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g199524199627%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199524199627%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199524199627%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199524199627%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g199524199627%_))))))
                (let () (declare (not safe)) (_%g199524199627%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e199546199992%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl199543199989%_))
                                                            (_%__kont202299202300%_
                                                             _%hd199532200049%_
                                                             _%hd199529200039%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl199543199989%_))
                        (let ((_%e199621199668%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199543199989%_))))
                          (let ((_%tl199619199675%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199621199668%_)))
                                (_%hd199620199672%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199621199668%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199619199675%_))
                                (_%__kont202301202302%_
                                 _%hd199620199672%_
                                 _%hd199532200049%_
                                 _%hd199529200039%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g199524199627%_)))))
                        (let () (declare (not safe)) (_%g199524199627%_))))
                (let () (declare (not safe)) (_%g199524199627%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199524199627%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199524199627%_))))))
                          (let () (declare (not safe)) (_%g199524199627%_)))))
                  (let () (declare (not safe)) (_%g199524199627%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig199190%_)
        (let* ((_%g199193199259%_
                (lambda (_%g199194199255%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199194199255%_))))
               (_%g199192199506%_
                (lambda (_%g199194199263%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199194199263%_))
                      (let ((_%e199201199266%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199194199263%_))))
                        (let ((_%hd199200199270%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199201199266%_)))
                              (_%tl199199199273%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199201199266%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199199199273%_))
                              (let ((_%e199204199276%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199199199273%_))))
                                (let ((_%hd199203199280%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199204199276%_)))
                                      (_%tl199202199283%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199204199276%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd199203199280%_))
                                      (let ((_%e199205199286%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd199203199280%_))))
                                        (if (equal? _%e199205199286%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199202199283%_))
                                                (let ((_%e199208199290%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl199202199283%_))))
                                                  (let ((_%hd199207199294%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199208199290%_)))
                                                        (_%tl199206199297%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199208199290%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199207199294%_))
                                                        (let ((_%e199211199300%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd199207199294%_))))
                  (let ((_%hd199210199304%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199211199300%_)))
                        (_%tl199209199307%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199211199300%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd199210199304%_))
                        (if (let ((__tmp202658 |gxc[1]#_g202659_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp202658
                               _%hd199210199304%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199209199307%_))
                                (let ((_%e199214199310%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199209199307%_))))
                                  (let ((_%hd199213199314%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199214199310%_)))
                                        (_%tl199212199317%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199214199310%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199212199317%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199206199297%_))
                                            (let ((_%e199217199320%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl199206199297%_))))
                                              (let ((_%hd199216199324%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199217199320%_)))
                                                    (_%tl199215199327%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199217199320%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd199216199324%_))
                                                    (let ((_%e199218199330%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd199216199324%_))))
                                                      (if (equal? _%e199218199330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl199215199327%_))
                      (let ((_%e199221199334%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl199215199327%_))))
                        (let ((_%hd199220199338%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199221199334%_)))
                              (_%tl199219199341%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199221199334%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199220199338%_))
                              (let ((_%e199224199344%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd199220199338%_))))
                                (let ((_%hd199223199348%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199224199344%_)))
                                      (_%tl199222199351%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199224199344%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199223199348%_))
                                      (if (let ((__tmp202660
                                                 |gxc[1]#_g202661_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp202660
                                             _%hd199223199348%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199222199351%_))
                                              (let ((_%e199227199354%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl199222199351%_))))
                                                (let ((_%hd199226199358%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199227199354%_)))
                                                      (_%tl199225199361%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199227199354%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199225199361%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199219199341%_))
                                                          (let ((_%e199230199364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl199219199341%_))))
                    (let ((_%hd199229199368%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199230199364%_)))
                          (_%tl199228199371%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199230199364%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd199229199368%_))
                          (let ((_%e199231199374%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199229199368%_))))
                            (if (equal? _%e199231199374%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199228199371%_))
                                    (let ((_%e199234199378%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl199228199371%_))))
                                      (let ((_%hd199233199382%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199234199378%_)))
                                            (_%tl199232199385%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199234199378%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199233199382%_))
                                            (let ((_%e199237199388%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd199233199382%_))))
                                              (let ((_%hd199236199392%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199237199388%_)))
                                                    (_%tl199235199395%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199237199388%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199236199392%_))
                                                    (if (let ((__tmp202662
                                                               |gxc[1]#_g202663_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp202662
                                                           _%hd199236199392%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199235199395%_))
                                                            (let ((_%e199240199398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl199235199395%_))))
                      (let ((_%hd199239199402%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199240199398%_)))
                            (_%tl199238199405%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199240199398%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199238199405%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199232199385%_))
                                (let ((_%e199243199408%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199232199385%_))))
                                  (let ((_%hd199242199412%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199243199408%_)))
                                        (_%tl199241199415%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199243199408%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd199242199412%_))
                                        (let ((_%e199244199418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199242199412%_))))
                                          (if (equal? _%e199244199418%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199241199415%_))
                                                  (let ((_%e199247199422%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199241199415%_))))
                                                    (let ((_%hd199246199426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199247199422%_)))
                                                          (_%tl199245199429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199247199422%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199246199426%_))
                                                          (let ((_%e199250199432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd199246199426%_))))
                    (let ((_%hd199249199436%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199250199432%_)))
                          (_%tl199248199439%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199250199432%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd199249199436%_))
                          (if (let ((__tmp202664 |gxc[1]#_g202665_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp202664
                                 _%hd199249199436%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199248199439%_))
                                  (let ((_%e199253199442%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199248199439%_))))
                                    (let ((_%hd199252199446%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199253199442%_)))
                                          (_%tl199251199449%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199253199442%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199251199449%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199245199429%_))
                                              ((lambda (_%L199452%_
                                                        _%L199454%_
                                                        _%L199455%_
                                                        _%L199456%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L199452%_))
                                                     (cons _%L199452%_
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
                                                 (cons _%L199455%_ '()))
                                           '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#f))
                                               _%hd199252199446%_
                                               _%hd199239199402%_
                                               _%hd199226199358%_
                                               _%hd199213199314%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g199193199259%_
                                                 _%g199194199263%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199193199259%_
                                             _%g199194199263%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199193199259%_ _%g199194199263%_)))
                              (let ()
                                (declare (not safe))
                                (_%g199193199259%_ _%g199194199263%_)))
                          (let ()
                            (declare (not safe))
                            (_%g199193199259%_ _%g199194199263%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g199193199259%_ _%g199194199263%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199193199259%_
                                                     _%g199194199263%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199193199259%_
                                                 _%g199194199263%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199193199259%_
                                           _%g199194199263%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199193199259%_ _%g199194199263%_)))
                            (let ()
                              (declare (not safe))
                              (_%g199193199259%_ _%g199194199263%_)))))
                    (let ()
                      (declare (not safe))
                      (_%g199193199259%_ _%g199194199263%_)))
                (let ()
                  (declare (not safe))
                  (_%g199193199259%_ _%g199194199263%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199193199259%_
                                                       _%g199194199263%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199193199259%_
                                               _%g199194199263%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199193199259%_ _%g199194199263%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g199193199259%_ _%g199194199263%_))))
                          (let ()
                            (declare (not safe))
                            (_%g199193199259%_ _%g199194199263%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g199193199259%_ _%g199194199263%_)))
              (let ()
                (declare (not safe))
                (_%g199193199259%_ _%g199194199263%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199193199259%_
                                                 _%g199194199263%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199193199259%_
                                             _%g199194199263%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199193199259%_
                                         _%g199194199263%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199193199259%_ _%g199194199263%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g199193199259%_ _%g199194199263%_)))
                  (let ()
                    (declare (not safe))
                    (_%g199193199259%_ _%g199194199263%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199193199259%_
                                                       _%g199194199263%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199193199259%_
                                               _%g199194199263%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199193199259%_
                                           _%g199194199263%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199193199259%_ _%g199194199263%_)))
                            (let ()
                              (declare (not safe))
                              (_%g199193199259%_ _%g199194199263%_)))
                        (let ()
                          (declare (not safe))
                          (_%g199193199259%_ _%g199194199263%_)))))
                (let ()
                  (declare (not safe))
                  (_%g199193199259%_ _%g199194199263%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199193199259%_
                                                   _%g199194199263%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199193199259%_
                                               _%g199194199263%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199193199259%_
                                         _%g199194199263%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199193199259%_ _%g199194199263%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g199193199259%_ _%g199194199263%_))))))
          (declare (not safe))
          (_%g199192199506%_ _%sig199190%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx200278%_)
        (let* ((_%g200281200299%_
                (lambda (_%g200282200295%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200282200295%_))))
               (_%g200280200354%_
                (lambda (_%g200282200303%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200282200303%_))
                      (let ((_%e200287200306%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200282200303%_))))
                        (let ((_%hd200286200310%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200287200306%_)))
                              (_%tl200285200313%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200287200306%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200285200313%_))
                              (let ((_%e200290200316%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200285200313%_))))
                                (let ((_%hd200289200320%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200290200316%_)))
                                      (_%tl200288200323%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200290200316%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200288200323%_))
                                      (let ((_%e200293200326%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200288200323%_))))
                                        (let ((_%hd200292200330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200293200326%_)))
                                              (_%tl200291200333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200293200326%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200291200333%_))
                                              ((lambda (_%L200336%_
                                                        _%L200338%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200338%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200336%_)))
                                                     (begin
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-procedure!|
                                                          _%stx200278%_
                                                          _%L200338%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-class!|
                                                          _%stx200278%_
                                                          _%L200336%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L200338%_
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
                                                   (cons _%L200336%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200281200299%_
                                                      _%g200282200303%_)))
                                               _%hd200292200330%_
                                               _%hd200289200320%_)
                                              (_%g200281200299%_
                                               _%g200282200303%_))))
                                      (_%g200281200299%_ _%g200282200303%_))))
                              (_%g200281200299%_ _%g200282200303%_))))
                      (_%g200281200299%_ _%g200282200303%_)))))
          (_%g200280200354%_ _%stx200278%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx200358%_)
        (let* ((_%g200361200385%_
                (lambda (_%g200362200381%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200362200381%_))))
               (_%g200360200668%_
                (lambda (_%g200362200389%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200362200389%_))
                      (let ((_%e200367200392%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200362200389%_))))
                        (let ((_%hd200366200396%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200367200392%_)))
                              (_%tl200365200399%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200367200392%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200365200399%_))
                              (let ((_%e200370200402%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200365200399%_))))
                                (let ((_%hd200369200406%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200370200402%_)))
                                      (_%tl200368200409%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200370200402%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200368200409%_))
                                      (let ((_g202666_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200368200409%_
                                                '0))))
                                        (begin
                                          (let ((_g202667_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202666_)
                                                       (##vector-length
                                                        _g202666_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202667_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202667_)))
                                          (let ((_%target200371200412%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202666_ 0)))
                                                (_%tl200373200415%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202666_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200373200415%_))
                                                (letrec ((_%loop200374200418%_
                                                          (lambda (_%hd200372200422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature200378200425%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200372200422%_))
                        (let ((_%e200375200428%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200372200422%_))))
                          (let ((_%lp-hd200376200432%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200375200428%_)))
                                (_%lp-tl200377200435%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200375200428%_))))
                            (_%loop200374200418%_
                             _%lp-tl200377200435%_
                             (cons _%lp-hd200376200432%_
                                   _%signature200378200425%_))))
                        (let ((_%signature200379200438%_
                               (reverse _%signature200378200425%_)))
                          ((lambda (_%L200442%_ _%L200444%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200444%_))
                                 (let* ((_%g200462200477%_
                                         (lambda (_%g200463200473%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200463200473%_))))
                                        (_%g200461200656%_
                                         (lambda (_%g200463200481%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g200463200481%_))
                                               (let ((_%e200468200484%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g200463200481%_))))
                                                 (let ((_%hd200467200488%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200468200484%_)))
                                                       (_%tl200466200491%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200468200484%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200466200491%_))
                                                       (let ((_%e200471200494%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl200466200491%_))))
                 (let ((_%hd200470200498%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200471200494%_)))
                       (_%tl200469200501%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200471200494%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl200469200501%_))
                       ((lambda (_%L200504%_ _%L200506%_)
                          (let ()
                            (let* ((_%g200522200530%_
                                    (lambda (_%g200523200526%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g200523200526%_))))
                                   (_%g200521200652%_
                                    (lambda (_%g200523200534%_)
                                      ((lambda (_%L200537%_)
                                         (let ()
                                           (let* ((_%unchecked200550%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (|gxc[1]#signature->unchecked-signature|
                                                      _%L200504%_)))
                                                  (_%g200553200561%_
                                                   (lambda (_%g200554200557%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g200554200557%_))))
                                                  (_%g200552200584%_
                                                   (lambda (_%g200554200565%_)
                                                     ((lambda (_%L200568%_)
                                                        (let ()
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (cons _%L200537%_ (cons _%L200568%_ '())))))
              _%g200554200565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g200552200584%_
                                              (if _%unchecked200550%_
                                                  (let* ((_%g200588200603%_
                                                          (lambda (_%g200589200599%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g200589200599%_))))
                                                         (_%g200587200648%_
                                                          (lambda (_%g200589200607%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g200589200607%_))
                        (let ((_%e200594200610%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%g200589200607%_))))
                          (let ((_%hd200593200614%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200594200610%_)))
                                (_%tl200592200617%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200594200610%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200592200617%_))
                                (let ((_%e200597200620%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200592200617%_))))
                                  (let ((_%hd200596200624%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200597200620%_)))
                                        (_%tl200595200627%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200597200620%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200595200627%_))
                                        ((lambda (_%L200630%_ _%L200632%_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type))
                                                   (cons _%L200632%_
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L200506%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons _%L200630%_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd200596200624%_
                                         _%hd200593200614%_)
                                        (_%g200588200603%_
                                         _%g200589200607%_))))
                                (_%g200588200603%_ _%g200589200607%_))))
                        (_%g200588200603%_ _%g200589200607%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g200587200648%_
                                                     _%unchecked200550%_))
                                                  '(begin))))))
                                       _%g200523200534%_))))
                              (_%g200521200652%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'declare-type))
                                     (cons _%L200444%_
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!primitive-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200506%_ '()))
                     (cons '#f (cons 'signature: (cons _%L200504%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                        _%hd200470200498%_
                        _%hd200467200488%_)
                       (_%g200462200477%_ _%g200463200481%_))))
               (_%g200462200477%_ _%g200463200481%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200462200477%_
                                                _%g200463200481%_)))))
                                   (_%g200461200656%_
                                    (let ((__tmp202668
                                           (let ((__tmp202669
                                                  (lambda (_%g200659200662%_
                                                           _%g200660200665%_)
                                                    (cons _%g200659200662%_
                                                          _%g200660200665%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp202669
                                              '()
                                              _%L200442%_))))
                                      (declare (not safe))
                                      (|gxc[1]#parse-signature|
                                       _%stx200358%_
                                       _%L200444%_
                                       __tmp202668))))
                                 (_%g200361200385%_ _%g200362200389%_)))
                           _%signature200379200438%_
                           _%hd200369200406%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200374200418%_
                                                   _%target200371200412%_
                                                   '()))
                                                (_%g200361200385%_
                                                 _%g200362200389%_)))))
                                      (_%g200361200385%_ _%g200362200389%_))))
                              (_%g200361200385%_ _%g200362200389%_))))
                      (_%g200361200385%_ _%g200362200389%_)))))
          (_%g200360200668%_ _%stx200358%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx200673%_)
        (let* ((_%g200676200700%_
                (lambda (_%g200677200696%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200677200696%_))))
               (_%g200675201514%_
                (lambda (_%g200677200704%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200677200704%_))
                      (let ((_%e200682200707%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200677200704%_))))
                        (let ((_%hd200681200711%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200682200707%_)))
                              (_%tl200680200714%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200682200707%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200680200714%_))
                              (let ((_%e200685200717%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200680200714%_))))
                                (let ((_%hd200684200721%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200685200717%_)))
                                      (_%tl200683200724%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200685200717%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200683200724%_))
                                      (let ((_g202670_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200683200724%_
                                                '0))))
                                        (begin
                                          (let ((_g202671_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202670_)
                                                       (##vector-length
                                                        _g202670_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202671_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202671_)))
                                          (let ((_%target200686200727%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202670_ 0)))
                                                (_%tl200688200730%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202670_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200688200730%_))
                                                (letrec ((_%loop200689200733%_
                                                          (lambda (_%hd200687200737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature200693200740%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200687200737%_))
                        (let ((_%e200690200743%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200687200737%_))))
                          (let ((_%lp-hd200691200747%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200690200743%_)))
                                (_%lp-tl200692200750%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200690200743%_))))
                            (_%loop200689200733%_
                             _%lp-tl200692200750%_
                             (cons _%lp-hd200691200747%_
                                   _%case-signature200693200740%_))))
                        (let ((_%case-signature200694200753%_
                               (reverse _%case-signature200693200740%_)))
                          ((lambda (_%L200757%_ _%L200759%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200759%_))
                                 (let* ((_%signatures200790%_
                                         (map (lambda (_%g200776200778%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (|gxc[1]#parse-signature|
                                                   _%stx200673%_
                                                   _%L200759%_
                                                   _%g200776200778%_)))
                                              (let ((__tmp202672
                                                     (lambda (_%g200781200784%_
                                                              _%g200782200787%_)
                                                       (cons _%g200781200784%_
                                                             _%g200782200787%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp202672
                                                 '()
                                                 _%L200757%_))))
                                        (_%g200793200819%_
                                         (lambda (_%g200794200815%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200794200815%_))))
                                        (_%g200792201510%_
                                         (lambda (_%g200794200823%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g200794200823%_))
                                               (let ((_g202673_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g200794200823%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g202674_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g202673_)
                        (##vector-length _g202673_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g202674_ 2)))
                 (error "Context expects 2 values" _g202674_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target200797200826%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202673_
                                                             0)))
                                                         (_%tl200799200829%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202673_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200799200829%_))
                                                         (letrec ((_%loop200800200832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd200798200836%_
                                    _%sig200804200839%_
                                    _%arity200805200841%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd200798200836%_))
                                 (let ((_%e200801200844%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd200798200836%_))))
                                   (let ((_%lp-hd200802200848%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200801200844%_)))
                                         (_%lp-tl200803200851%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200801200844%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd200802200848%_))
                                         (let ((_%e200810200854%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd200802200848%_))))
                                           (let ((_%hd200809200858%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200810200854%_)))
                                                 (_%tl200808200861%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200810200854%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200808200861%_))
                                                 (let ((_%e200813200864%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200808200861%_))))
                                                   (let ((_%hd200812200868%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200813200864%_)))
                                                         (_%tl200811200871%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200813200864%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200811200871%_))
                                                         (_%loop200800200832%_
                                                          _%lp-tl200803200851%_
                                                          (cons _%hd200812200868%_
                                                                _%sig200804200839%_)
                                                          (cons _%hd200809200858%_
                                                                _%arity200805200841%_))
                                                         (_%g200793200819%_
                                                          _%g200794200823%_))))
                                                 (_%g200793200819%_
                                                  _%g200794200823%_))))
                                         (_%g200793200819%_
                                          _%g200794200823%_))))
                                 (let ((_%sig200806200874%_
                                        (reverse _%sig200804200839%_))
                                       (_%arity200807200877%_
                                        (reverse _%arity200805200841%_)))
                                   ((lambda (_%L200880%_ _%L200882%_)
                                      (let ()
                                        (let* ((_%g200899200907%_
                                                (lambda (_%g200900200903%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g200900200903%_))))
                                               (_%g200898201495%_
                                                (lambda (_%g200900200911%_)
                                                  ((lambda (_%L200914%_)
                                                     (let ()
                                                       (let* ((_%g200927200935%_
                                                               (lambda (_%g200928200931%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g200928200931%_))))
                      (_%g200926200957%_
                       (lambda (_%g200928200939%_)
                         ((lambda (_%L200942%_)
                            (let ()
                              (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'begin))
                                    (cons _%L200914%_
                                          (cons _%L200942%_ '())))))
                          _%g200928200939%_))))
                 (_%g200926200957%_
                  (let ((_g202675_
                         (let _%loop200961%_ ((_%rest200964%_
                                               _%signatures200790%_)
                                              (_%unchecked-proc200966%_ '#f)
                                              (_%unchecked-clauses200967%_
                                               '()))
                           (let* ((_%rest200968200976%_ _%rest200964%_)
                                  (_%else200970200988%_
                                   (lambda ()
                                     (values _%unchecked-proc200966%_
                                             (reverse!
                                              _%unchecked-clauses200967%_))))
                                  (_%K200972201360%_
                                   (lambda (_%rest200992%_ _%hd200994%_)
                                     (let* ((_%g200996201069%_
                                             (lambda (_%g200997201065%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g200997201065%_))))
                                            (_%g200995201356%_
                                             (lambda (_%g200997201073%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g200997201073%_))
                                                   (let ((_%e201005201076%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%g200997201073%_))))
                                                     (let ((_%hd201004201080%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201005201076%_)))
                                                           (_%tl201003201083%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201005201076%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl201003201083%_))
                                                           (let ((_%e201008201086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl201003201083%_))))
                     (let ((_%hd201007201090%_
                            (let ()
                              (declare (not safe))
                              (##car _%e201008201086%_)))
                           (_%tl201006201093%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e201008201086%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd201007201090%_))
                           (let ((_%e201011201096%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%hd201007201090%_))))
                             (let ((_%hd201010201100%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e201011201096%_)))
                                   (_%tl201009201103%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e201011201096%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl201009201103%_))
                                   (let ((_%e201014201106%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl201009201103%_))))
                                     (let ((_%hd201013201110%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201014201106%_)))
                                           (_%tl201012201113%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201014201106%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-datum?
                                              _%hd201013201110%_))
                                           (let ((_%e201015201116%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd201013201110%_))))
                                             (if (equal? _%e201015201116%_
                                                         'arguments:)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl201012201113%_))
                                                     (let ((_%e201018201120%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%tl201012201113%_))))
                                                       (let ((_%hd201017201124%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e201018201120%_)))
                     (_%tl201016201127%_
                      (let () (declare (not safe)) (##cdr _%e201018201120%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd201017201124%_))
                     (let ((_%e201021201130%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%hd201017201124%_))))
                       (let ((_%hd201020201134%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201021201130%_)))
                             (_%tl201019201137%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201021201130%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%hd201020201134%_))
                             (if (let ((__tmp202677 |gxc[1]#_g202678_|))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    __tmp202677
                                    _%hd201020201134%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201019201137%_))
                                     (let ((_%e201024201140%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201019201137%_))))
                                       (let ((_%hd201023201144%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201024201140%_)))
                                             (_%tl201022201147%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201024201140%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl201022201147%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl201016201127%_))
                                                 (let ((_%e201027201150%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl201016201127%_))))
                                                   (let ((_%hd201026201154%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201027201150%_)))
                                                         (_%tl201025201157%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201027201150%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-datum?
                                                            _%hd201026201154%_))
                                                         (let ((_%e201028201160%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd201026201154%_))))
                   (if (equal? _%e201028201160%_ 'return:)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl201025201157%_))
                           (let ((_%e201031201164%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%tl201025201157%_))))
                             (let ((_%hd201030201168%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e201031201164%_)))
                                   (_%tl201029201171%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e201031201164%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd201030201168%_))
                                   (let ((_%e201034201174%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%hd201030201168%_))))
                                     (let ((_%hd201033201178%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201034201174%_)))
                                           (_%tl201032201181%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201034201174%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd201033201178%_))
                                           (if (let ((__tmp202679
                                                      |gxc[1]#_g202680_|))
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  __tmp202679
                                                  _%hd201033201178%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl201032201181%_))
                                                   (let ((_%e201037201184%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl201032201181%_))))
                                                     (let ((_%hd201036201188%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201037201184%_)))
                                                           (_%tl201035201191%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201037201184%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl201035201191%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl201029201171%_))
                       (let ((_%e201040201194%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl201029201171%_))))
                         (let ((_%hd201039201198%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201040201194%_)))
                               (_%tl201038201201%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201040201194%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd201039201198%_))
                               (let ((_%e201041201204%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd201039201198%_))))
                                 (if (equal? _%e201041201204%_ 'effect:)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl201038201201%_))
                                         (let ((_%e201044201208%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%tl201038201201%_))))
                                           (let ((_%hd201043201212%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201044201208%_)))
                                                 (_%tl201042201215%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201044201208%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd201043201212%_))
                                                 (let ((_%e201047201218%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%hd201043201212%_))))
                                                   (let ((_%hd201046201222%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201047201218%_)))
                                                         (_%tl201045201225%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201047201218%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd201046201222%_))
                                                         (if (let ((__tmp202681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |gxc[1]#_g202682_|))
                       (declare (not safe))
                       (gx#free-identifier=? __tmp202681 _%hd201046201222%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl201045201225%_))
                         (let ((_%e201050201228%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl201045201225%_))))
                           (let ((_%hd201049201232%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e201050201228%_)))
                                 (_%tl201048201235%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e201050201228%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl201048201235%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201042201215%_))
                                     (let ((_%e201053201238%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201042201215%_))))
                                       (let ((_%hd201052201242%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201053201238%_)))
                                             (_%tl201051201245%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201053201238%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%hd201052201242%_))
                                             (let ((_%e201054201248%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd201052201242%_))))
                                               (if (equal? _%e201054201248%_
                                                           'unchecked:)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl201051201245%_))
                                                       (let ((_%e201057201252%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl201051201245%_))))
                 (let ((_%hd201056201256%_
                        (let ()
                          (declare (not safe))
                          (##car _%e201057201252%_)))
                       (_%tl201055201259%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e201057201252%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd201056201256%_))
                       (let ((_%e201060201262%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd201056201256%_))))
                         (let ((_%hd201059201266%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201060201262%_)))
                               (_%tl201058201269%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201060201262%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%hd201059201266%_))
                               (if (let ((__tmp202683 |gxc[1]#_g202684_|))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      __tmp202683
                                      _%hd201059201266%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl201058201269%_))
                                       (let ((_%e201063201272%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#syntax-e
                                                 _%tl201058201269%_))))
                                         (let ((_%hd201062201276%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e201063201272%_)))
                                               (_%tl201061201279%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e201063201272%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl201061201279%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl201055201259%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl201006201093%_))
                                                       ((lambda (_%L201282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L201284%_
                         _%L201285%_
                         _%L201286%_
                         _%L201287%_)
                  (let ((_%clause201348%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0
                                  '#f
                                  'make-!primitive-lambda))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201287%_ '()))
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
                                       (cons _%L201285%_ '()))
                                 '())))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (_%unchecked201350%_
                         (let () (declare (not safe)) (gx#stx-e _%L201282%_))))
                    (_%loop200961%_
                     _%rest200992%_
                     (let ((_%$e201352%_ _%unchecked201350%_))
                       (if _%$e201352%_ _%$e201352%_ _%unchecked-proc200966%_))
                     (cons _%clause201348%_ _%unchecked-clauses200967%_))))
                _%hd201062201276%_
                _%hd201049201232%_
                _%hd201036201188%_
                _%hd201023201144%_
                _%hd201004201080%_)
               (_%g200996201069%_ _%g200997201073%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g200996201069%_
                                                    _%g200997201073%_))
                                               (_%g200996201069%_
                                                _%g200997201073%_))))
                                       (_%g200996201069%_ _%g200997201073%_))
                                   (_%g200996201069%_ _%g200997201073%_))
                               (_%g200996201069%_ _%g200997201073%_))))
                       (_%g200996201069%_ _%g200997201073%_))))
               (_%g200996201069%_ _%g200997201073%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g200996201069%_
                                                    _%g200997201073%_)))
                                             (_%g200996201069%_
                                              _%g200997201073%_))))
                                     (_%g200996201069%_ _%g200997201073%_))
                                 (_%g200996201069%_ _%g200997201073%_))))
                         (_%g200996201069%_ _%g200997201073%_))
                     (_%g200996201069%_ _%g200997201073%_))
                 (_%g200996201069%_ _%g200997201073%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g200996201069%_
                                                  _%g200997201073%_))))
                                         (_%g200996201069%_ _%g200997201073%_))
                                     (_%g200996201069%_ _%g200997201073%_)))
                               (_%g200996201069%_ _%g200997201073%_))))
                       (_%g200996201069%_ _%g200997201073%_))
                   (_%g200996201069%_ _%g200997201073%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g200996201069%_
                                                    _%g200997201073%_))
                                               (_%g200996201069%_
                                                _%g200997201073%_))
                                           (_%g200996201069%_
                                            _%g200997201073%_))))
                                   (_%g200996201069%_ _%g200997201073%_))))
                           (_%g200996201069%_ _%g200997201073%_))
                       (_%g200996201069%_ _%g200997201073%_)))
                 (_%g200996201069%_ _%g200997201073%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g200996201069%_
                                                  _%g200997201073%_))
                                             (_%g200996201069%_
                                              _%g200997201073%_))))
                                     (_%g200996201069%_ _%g200997201073%_))
                                 (_%g200996201069%_ _%g200997201073%_))
                             (_%g200996201069%_ _%g200997201073%_))))
                     (_%g200996201069%_ _%g200997201073%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200996201069%_
                                                      _%g200997201073%_))
                                                 (_%g200996201069%_
                                                  _%g200997201073%_)))
                                           (_%g200996201069%_
                                            _%g200997201073%_))))
                                   (_%g200996201069%_ _%g200997201073%_))))
                           (_%g200996201069%_ _%g200997201073%_))))
                   (_%g200996201069%_ _%g200997201073%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g200996201069%_
                                                    _%g200997201073%_)))))
                                       (_%g200995201356%_ _%hd200994%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest200968200976%_))
                                 (let ((_%hd200973201364%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest200968200976%_)))
                                       (_%tl200974201367%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest200968200976%_))))
                                   (let* ((_%hd201370%_ _%hd200973201364%_)
                                          (_%rest201373%_ _%tl200974201367%_))
                                     (_%K200972201360%_
                                      _%rest201373%_
                                      _%hd201370%_)))
                                 (_%else200970200988%_))))))
                    (begin
                      (let ((_g202676_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g202675_)
                                   (##vector-length _g202675_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g202676_ 2)))
                            (error "Context expects 2 values" _g202676_)))
                      (let ((_%unchecked-proc201376%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202675_ 0)))
                            (_%unchecked-clauses201378%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202675_ 1))))
                        (if _%unchecked-proc201376%_
                            (let* ((_%g201380201404%_
                                    (lambda (_%g201381201400%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g201381201400%_))))
                                   (_%g201379201491%_
                                    (lambda (_%g201381201408%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%g201381201408%_))
                                          (let ((_%e201386201411%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%g201381201408%_))))
                                            (let ((_%hd201385201415%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201386201411%_)))
                                                  (_%tl201384201418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201386201411%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201384201418%_))
                                                  (let ((_%e201389201421%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201384201418%_))))
                                                    (let ((_%hd201388201425%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201389201421%_)))
                                                          (_%tl201387201428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201389201421%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%hd201388201425%_))
                                                          (let ((_g202685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%hd201388201425%_ '0))))
                    (begin
                      (let ((_g202686_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g202685_)
                                   (##vector-length _g202685_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g202686_ 2)))
                            (error "Context expects 2 values" _g202686_)))
                      (let ((_%target201390201431%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202685_ 0)))
                            (_%tl201392201434%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202685_ 1))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201392201434%_))
                            (letrec ((_%loop201393201437%_
                                      (lambda (_%hd201391201441%_
                                               _%clause201397201444%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd201391201441%_))
                                            (let ((_%e201394201447%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd201391201441%_))))
                                              (let ((_%lp-hd201395201451%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201394201447%_)))
                                                    (_%lp-tl201396201454%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201394201447%_))))
                                                (_%loop201393201437%_
                                                 _%lp-tl201396201454%_
                                                 (cons _%lp-hd201395201451%_
                                                       _%clause201397201444%_))))
                                            (let ((_%clause201398201457%_
                                                   (reverse _%clause201397201444%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl201387201428%_))
                                                  ((lambda (_%L201461%_
                                                            _%L201463%_)
                                                     (let ()
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L201463%_
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
                                                   (let ((__tmp202687
                                                          (lambda (_%g201482201485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g201483201488%_)
                    (cons _%g201482201485%_ _%g201483201488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp202687
                                                      '()
                                                      _%L201461%_)))
                                             '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%clause201398201457%_
                                                   _%hd201385201415%_)
                                                  (_%g201380201404%_
                                                   _%g201381201408%_)))))))
                              (_%loop201393201437%_
                               _%target201390201431%_
                               '()))
                            (_%g201380201404%_ _%g201381201408%_)))))
                  (_%g201380201404%_ _%g201381201408%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g201380201404%_
                                                   _%g201381201408%_))))
                                          (_%g201380201404%_
                                           _%g201381201408%_)))))
                              (_%g201379201491%_
                               (list _%unchecked-proc201376%_
                                     _%unchecked-clauses201378%_)))
                            '(begin)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g200900200911%_))))
                                          (_%g200898201495%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'declare-type))
                                                 (cons _%L200759%_
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
                                            _%L200880%_
                                            _%L200882%_))
                                         (let ((__tmp202688
                                                (lambda (_%g201498201502%_
                                                         _%g201499201505%_
                                                         _%g201500201507%_)
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%g201499201505%_ '()))
                            (cons '#f
                                  (cons 'signature:
                                        (cons _%g201498201502%_ '())))))
                _%g201500201507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp202688
                                            '()
                                            _%L200880%_
                                            _%L200882%_))))
                                 '()))
                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig200806200874%_
                                    _%arity200807200877%_))))))
                   (_%loop200800200832%_ _%target200797200826%_ '() '()))
                 (_%g200793200819%_ _%g200794200823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200793200819%_
                                                _%g200794200823%_)))))
                                   (_%g200792201510%_ _%signatures200790%_))
                                 (_%g200676200700%_ _%g200677200704%_)))
                           _%case-signature200694200753%_
                           _%hd200684200721%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200689200733%_
                                                   _%target200686200727%_
                                                   '()))
                                                (_%g200676200700%_
                                                 _%g200677200704%_)))))
                                      (_%g200676200700%_ _%g200677200704%_))))
                              (_%g200676200700%_ _%g200677200704%_))))
                      (_%g200676200700%_ _%g200677200704%_)))))
          (_%g200675201514%_ _%stx200673%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx201522%_)
        (let* ((_%__stx202504202505%_ _%$stx201522%_)
               (_%g201528201588%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202504202505%_)))))
          (let ((_%__kont202507202508%_
                 (lambda (_%L201810%_ _%L201812%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201812%_ '()))
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
                                                       (cons _%L201812%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201810%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont202509202510%_
                 (lambda (_%L201735%_ _%L201737%_ _%L201738%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201738%_ '()))
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
                                                       (cons _%L201738%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201737%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201735%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont202511202512%_
                 (lambda (_%L201649%_ _%L201651%_ _%L201652%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201652%_ '()))
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
                                                       (cons _%L201652%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201651%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201649%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202504202505%_))
                (let ((_%e201534201766%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202504202505%_))))
                  (let ((_%tl201532201773%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201534201766%_)))
                        (_%hd201533201770%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201534201766%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl201532201773%_))
                        (let ((_%e201537201776%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl201532201773%_))))
                          (let ((_%tl201535201783%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201537201776%_)))
                                (_%hd201536201780%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201537201776%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd201536201780%_))
                                (let ((_%e201538201786%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd201536201780%_))))
                                  (if (equal? _%e201538201786%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201535201783%_))
                                          (let ((_%e201541201790%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl201535201783%_))))
                                            (let ((_%tl201539201797%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201541201790%_)))
                                                  (_%hd201540201794%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201541201790%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201539201797%_))
                                                  (let ((_%e201544201800%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201539201797%_))))
                                                    (let ((_%tl201542201807%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201544201800%_)))
                                                          (_%hd201543201804%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201544201800%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201542201807%_))
                                                          (_%__kont202507202508%_
                                                           _%hd201543201804%_
                                                           _%hd201540201794%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201528201588%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201528201588%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201528201588%_)))
                                      (if (equal? _%e201538201786%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201535201783%_))
                                              (let ((_%e201557201705%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201535201783%_))))
                                                (let ((_%tl201555201712%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201557201705%_)))
                                                      (_%hd201556201709%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201557201705%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201555201712%_))
                                                      (let ((_%e201560201715%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl201555201712%_))))
                (let ((_%tl201558201722%_
                       (let () (declare (not safe)) (##cdr _%e201560201715%_)))
                      (_%hd201559201719%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201560201715%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201558201722%_))
                      (let ((_%e201563201725%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201558201722%_))))
                        (let ((_%tl201561201732%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201563201725%_)))
                              (_%hd201562201729%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201563201725%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201561201732%_))
                              (_%__kont202509202510%_
                               _%hd201562201729%_
                               _%hd201559201719%_
                               _%hd201556201709%_)
                              (let ()
                                (declare (not safe))
                                (_%g201528201588%_)))))
                      (let () (declare (not safe)) (_%g201528201588%_)))))
              (let () (declare (not safe)) (_%g201528201588%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g201528201588%_)))
                                          (if (equal? _%e201538201786%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201535201783%_))
                                                  (let ((_%e201576201619%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201535201783%_))))
                                                    (let ((_%tl201574201626%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201576201619%_)))
                                                          (_%hd201575201623%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201576201619%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201574201626%_))
                                                          (let ((_%e201579201629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl201574201626%_))))
                    (let ((_%tl201577201636%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201579201629%_)))
                          (_%hd201578201633%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201579201629%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201577201636%_))
                          (let ((_%e201582201639%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201577201636%_))))
                            (let ((_%tl201580201646%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201582201639%_)))
                                  (_%hd201581201643%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201582201639%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201580201646%_))
                                  (_%__kont202511202512%_
                                   _%hd201581201643%_
                                   _%hd201578201633%_
                                   _%hd201575201623%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g201528201588%_)))))
                          (let () (declare (not safe)) (_%g201528201588%_)))))
                  (let () (declare (not safe)) (_%g201528201588%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201528201588%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201528201588%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g201528201588%_)))))
                        (let () (declare (not safe)) (_%g201528201588%_)))))
                (let () (declare (not safe)) (_%g201528201588%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx201834%_)
        (let* ((_%g201838201858%_
                (lambda (_%g201839201854%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201839201854%_))))
               (_%g201837201929%_
                (lambda (_%g201839201862%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201839201862%_))
                      (let ((_%e201843201865%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201839201862%_))))
                        (let ((_%hd201842201869%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201843201865%_)))
                              (_%tl201841201872%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201843201865%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201841201872%_))
                              (let ((_g202689_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201841201872%_
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
                                  (let ((_%target201844201875%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202689_ 0)))
                                        (_%tl201846201878%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202689_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201846201878%_))
                                        (letrec ((_%loop201847201881%_
                                                  (lambda (_%hd201845201885%_
                                                           _%decl201851201888%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201845201885%_))
                                                        (let ((_%e201848201891%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201845201885%_))))
                  (let ((_%lp-hd201849201895%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201848201891%_)))
                        (_%lp-tl201850201898%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201848201891%_))))
                    (_%loop201847201881%_
                     _%lp-tl201850201898%_
                     (cons _%lp-hd201849201895%_ _%decl201851201888%_))))
                (let ((_%decl201852201901%_ (reverse _%decl201851201888%_)))
                  ((lambda (_%L201905%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp202691
                                  (lambda (_%g201920201923%_ _%g201921201926%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g201920201923%_)
                                          _%g201921201926%_))))
                             (declare (not safe))
                             (__foldr1 __tmp202691 '() _%L201905%_))))
                   _%decl201852201901%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201847201881%_
                                           _%target201844201875%_
                                           '()))
                                        (_%g201838201858%_
                                         _%g201839201862%_)))))
                              (_%g201838201858%_ _%g201839201862%_))))
                      (_%g201838201858%_ _%g201839201862%_)))))
          (_%g201837201929%_ _%$stx201834%_))))))
