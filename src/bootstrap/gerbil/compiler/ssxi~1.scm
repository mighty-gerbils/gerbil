(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g202646_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202660_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202662_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202664_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202666_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202679_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202681_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202683_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202685_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx196202%_)
        (let* ((_%g196206196224%_
                (lambda (_%g196207196220%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196207196220%_))))
               (_%g196205196279%_
                (lambda (_%g196207196228%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196207196228%_))
                      (let ((_%e196212196231%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196207196228%_))))
                        (let ((_%hd196211196235%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196212196231%_)))
                              (_%tl196210196238%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196212196231%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196210196238%_))
                              (let ((_%e196215196241%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196210196238%_))))
                                (let ((_%hd196214196245%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196215196241%_)))
                                      (_%tl196213196248%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196215196241%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196213196248%_))
                                      (let ((_%e196218196251%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196213196248%_))))
                                        (let ((_%hd196217196255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196218196251%_)))
                                              (_%tl196216196258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196218196251%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196216196258%_))
                                              ((lambda (_%L196261%_
                                                        _%L196263%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196263%_))
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
                               (cons _%L196263%_ '()))
                         (cons _%L196261%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196206196224%_
                                                      _%g196207196228%_)))
                                               _%hd196217196255%_
                                               _%hd196214196245%_)
                                              (_%g196206196224%_
                                               _%g196207196228%_))))
                                      (_%g196206196224%_ _%g196207196228%_))))
                              (_%g196206196224%_ _%g196207196228%_))))
                      (_%g196206196224%_ _%g196207196228%_)))))
          (_%g196205196279%_ _%$stx196202%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx196283%_)
        (let* ((_%g196287196305%_
                (lambda (_%g196288196301%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196288196301%_))))
               (_%g196286196360%_
                (lambda (_%g196288196309%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196288196309%_))
                      (let ((_%e196293196312%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196288196309%_))))
                        (let ((_%hd196292196316%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196293196312%_)))
                              (_%tl196291196319%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196293196312%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196291196319%_))
                              (let ((_%e196296196322%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196291196319%_))))
                                (let ((_%hd196295196326%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196296196322%_)))
                                      (_%tl196294196329%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196296196322%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196294196329%_))
                                      (let ((_%e196299196332%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196294196329%_))))
                                        (let ((_%hd196298196336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196299196332%_)))
                                              (_%tl196297196339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196299196332%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196297196339%_))
                                              ((lambda (_%L196342%_
                                                        _%L196344%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196344%_))
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
                               (cons _%L196344%_ '()))
                         (cons _%L196342%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196287196305%_
                                                      _%g196288196309%_)))
                                               _%hd196298196336%_
                                               _%hd196295196326%_)
                                              (_%g196287196305%_
                                               _%g196288196309%_))))
                                      (_%g196287196305%_ _%g196288196309%_))))
                              (_%g196287196305%_ _%g196288196309%_))))
                      (_%g196287196305%_ _%g196288196309%_)))))
          (_%g196286196360%_ _%$stx196283%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx196364%_)
        (let* ((_%g196368196397%_
                (lambda (_%g196369196393%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196369196393%_))))
               (_%g196367196497%_
                (lambda (_%g196369196401%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196369196401%_))
                      (let ((_%e196374196404%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196369196401%_))))
                        (let ((_%hd196373196408%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196374196404%_)))
                              (_%tl196372196411%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196374196404%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196372196411%_))
                              (let ((_g202624_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196372196411%_
                                        '0))))
                                (begin
                                  (let ((_g202625_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202624_)
                                               (##vector-length _g202624_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202625_ 2)))
                                        (error "Context expects 2 values"
                                               _g202625_)))
                                  (let ((_%target196375196414%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202624_ 0)))
                                        (_%tl196377196417%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202624_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196377196417%_))
                                        (letrec ((_%loop196378196420%_
                                                  (lambda (_%hd196376196424%_
                                                           _%type196382196427%_
                                                           _%symbol196383196429%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196376196424%_))
                                                        (let ((_%e196379196432%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196376196424%_))))
                  (let ((_%lp-hd196380196436%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196379196432%_)))
                        (_%lp-tl196381196439%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196379196432%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196380196436%_))
                        (let ((_%e196388196442%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196380196436%_))))
                          (let ((_%hd196387196446%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196388196442%_)))
                                (_%tl196386196449%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196388196442%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196386196449%_))
                                (let ((_%e196391196452%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196386196449%_))))
                                  (let ((_%hd196390196456%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196391196452%_)))
                                        (_%tl196389196459%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196391196452%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196389196459%_))
                                        (_%loop196378196420%_
                                         _%lp-tl196381196439%_
                                         (cons _%hd196390196456%_
                                               _%type196382196427%_)
                                         (cons _%hd196387196446%_
                                               _%symbol196383196429%_))
                                        (_%g196368196397%_
                                         _%g196369196401%_))))
                                (_%g196368196397%_ _%g196369196401%_))))
                        (_%g196368196397%_ _%g196369196401%_))))
                (let ((_%type196384196462%_ (reverse _%type196382196427%_))
                      (_%symbol196385196465%_
                       (reverse _%symbol196383196429%_)))
                  ((lambda (_%L196468%_ _%L196470%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196468%_
                                _%L196470%_))
                             (let ((__tmp202626
                                    (lambda (_%g196485196489%_
                                             _%g196486196492%_
                                             _%g196487196494%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g196486196492%_
                                                        (cons _%g196485196489%_
                                                              '())))
                                            _%g196487196494%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202626
                                '()
                                _%L196468%_
                                _%L196470%_)))))
                   _%type196384196462%_
                   _%symbol196385196465%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196378196420%_
                                           _%target196375196414%_
                                           '()
                                           '()))
                                        (_%g196368196397%_
                                         _%g196369196401%_)))))
                              (_%g196368196397%_ _%g196369196401%_))))
                      (_%g196368196397%_ _%g196369196401%_)))))
          (_%g196367196497%_ _%$stx196364%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx196502%_)
        (let* ((_%__stx201935201936%_ _%$stx196502%_)
               (_%g196507196549%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201935201936%_)))))
          (let ((_%__kont201938201939%_
                 (lambda (_%L196677%_ _%L196679%_ _%L196680%_ _%L196681%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196681%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196680%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L196679%_ '()))
                                           (cons _%L196677%_ '())))))))
                (_%__kont201940201941%_
                 (lambda (_%L196596%_ _%L196598%_ _%L196599%_ _%L196600%_)
                   (cons _%L196600%_
                         (cons _%L196599%_
                               (cons _%L196598%_
                                     (cons _%L196596%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match201974201975%_
                   (lambda (_%e196515196627%_
                            _%hd196514196631%_
                            _%tl196513196634%_
                            _%e196518196637%_
                            _%hd196517196641%_
                            _%tl196516196644%_
                            _%e196521196647%_
                            _%hd196520196651%_
                            _%tl196519196654%_
                            _%e196524196657%_
                            _%hd196523196661%_
                            _%tl196522196664%_
                            _%e196527196667%_
                            _%hd196526196671%_
                            _%tl196525196674%_)
                     (let ((_%L196677%_ _%hd196526196671%_)
                           (_%L196679%_ _%hd196523196661%_)
                           (_%L196680%_ _%hd196520196651%_)
                           (_%L196681%_ _%hd196517196641%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196681%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196680%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196679%_)))
                           (_%__kont201938201939%_
                            _%L196677%_
                            _%L196679%_
                            _%L196680%_
                            _%L196681%_)
                           (let ()
                             (declare (not safe))
                             (_%g196507196549%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201935201936%_))
                  (let ((_%e196515196627%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201935201936%_))))
                    (let ((_%tl196513196634%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196515196627%_)))
                          (_%hd196514196631%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196515196627%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196513196634%_))
                          (let ((_%e196518196637%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl196513196634%_))))
                            (let ((_%tl196516196644%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196518196637%_)))
                                  (_%hd196517196641%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196518196637%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196516196644%_))
                                  (let ((_%e196521196647%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl196516196644%_))))
                                    (let ((_%tl196519196654%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196521196647%_)))
                                          (_%hd196520196651%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196521196647%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196519196654%_))
                                          (let ((_%e196524196657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl196519196654%_))))
                                            (let ((_%tl196522196664%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196524196657%_)))
                                                  (_%hd196523196661%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196524196657%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196522196664%_))
                                                  (let ((_%e196527196667%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl196522196664%_))))
                                                    (let ((_%tl196525196674%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196527196667%_)))
                                                          (_%hd196526196671%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196527196667%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196525196674%_))
                                                          (_%__match201974201975%_
                                                           _%e196515196627%_
                                                           _%hd196514196631%_
                                                           _%tl196513196634%_
                                                           _%e196518196637%_
                                                           _%hd196517196641%_
                                                           _%tl196516196644%_
                                                           _%e196521196647%_
                                                           _%hd196520196651%_
                                                           _%tl196519196654%_
                                                           _%e196524196657%_
                                                           _%hd196523196661%_
                                                           _%tl196522196664%_
                                                           _%e196527196667%_
                                                           _%hd196526196671%_
                                                           _%tl196525196674%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g196507196549%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196522196664%_))
                                                      (_%__kont201940201941%_
                                                       _%hd196523196661%_
                                                       _%hd196520196651%_
                                                       _%hd196517196641%_
                                                       _%hd196514196631%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g196507196549%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g196507196549%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g196507196549%_)))))
                          (let () (declare (not safe)) (_%g196507196549%_)))))
                  (let () (declare (not safe)) (_%g196507196549%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx196706%_)
        (let* ((_%g196710196745%_
                (lambda (_%g196711196741%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196711196741%_))))
               (_%g196709196864%_
                (lambda (_%g196711196749%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196711196749%_))
                      (let ((_%e196717196752%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196711196749%_))))
                        (let ((_%hd196716196756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196717196752%_)))
                              (_%tl196715196759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196717196752%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196715196759%_))
                              (let ((_g202627_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196715196759%_
                                        '0))))
                                (begin
                                  (let ((_g202628_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202627_)
                                               (##vector-length _g202627_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202628_ 2)))
                                        (error "Context expects 2 values"
                                               _g202628_)))
                                  (let ((_%target196718196762%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202627_ 0)))
                                        (_%tl196720196765%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202627_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196720196765%_))
                                        (letrec ((_%loop196721196768%_
                                                  (lambda (_%hd196719196772%_
                                                           _%symbol196725196775%_
                                                           _%method196726196777%_
                                                           _%type-t196727196779%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196719196772%_))
                                                        (let ((_%e196722196782%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196719196772%_))))
                  (let ((_%lp-hd196723196786%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196722196782%_)))
                        (_%lp-tl196724196789%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196722196782%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196723196786%_))
                        (let ((_%e196733196792%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196723196786%_))))
                          (let ((_%hd196732196796%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196733196792%_)))
                                (_%tl196731196799%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196733196792%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196731196799%_))
                                (let ((_%e196736196802%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196731196799%_))))
                                  (let ((_%hd196735196806%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196736196802%_)))
                                        (_%tl196734196809%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196736196802%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196734196809%_))
                                        (let ((_%e196739196812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196734196809%_))))
                                          (let ((_%hd196738196816%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196739196812%_)))
                                                (_%tl196737196819%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196739196812%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196737196819%_))
                                                (_%loop196721196768%_
                                                 _%lp-tl196724196789%_
                                                 (cons _%hd196738196816%_
                                                       _%symbol196725196775%_)
                                                 (cons _%hd196735196806%_
                                                       _%method196726196777%_)
                                                 (cons _%hd196732196796%_
                                                       _%type-t196727196779%_))
                                                (_%g196710196745%_
                                                 _%g196711196749%_))))
                                        (_%g196710196745%_
                                         _%g196711196749%_))))
                                (_%g196710196745%_ _%g196711196749%_))))
                        (_%g196710196745%_ _%g196711196749%_))))
                (let ((_%symbol196728196822%_ (reverse _%symbol196725196775%_))
                      (_%method196729196825%_ (reverse _%method196726196777%_))
                      (_%type-t196730196827%_
                       (reverse _%type-t196727196779%_)))
                  ((lambda (_%L196830%_ _%L196832%_ _%L196833%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196830%_
                                _%L196832%_
                                _%L196833%_))
                             (let ((__tmp202629
                                    (lambda (_%g196849196854%_
                                             _%g196850196857%_
                                             _%g196851196859%_
                                             _%g196852196861%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g196851196859%_
                                                        (cons _%g196850196857%_
                                                              (cons _%g196849196854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g196852196861%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp202629
                                '()
                                _%L196830%_
                                _%L196832%_
                                _%L196833%_)))))
                   _%symbol196728196822%_
                   _%method196729196825%_
                   _%type-t196730196827%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196721196768%_
                                           _%target196718196762%_
                                           '()
                                           '()
                                           '()))
                                        (_%g196710196745%_
                                         _%g196711196749%_)))))
                              (_%g196710196745%_ _%g196711196749%_))))
                      (_%g196710196745%_ _%g196711196749%_)))))
          (_%g196709196864%_ _%$stx196706%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx196869%_)
        (let* ((_%g196873196906%_
                (lambda (_%g196874196902%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196874196902%_))))
               (_%g196872197020%_
                (lambda (_%g196874196910%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196874196910%_))
                      (let ((_%e196880196913%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196874196910%_))))
                        (let ((_%hd196879196917%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196880196913%_)))
                              (_%tl196878196920%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196880196913%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196878196920%_))
                              (let ((_%e196883196923%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196878196920%_))))
                                (let ((_%hd196882196927%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196883196923%_)))
                                      (_%tl196881196930%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196883196923%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196881196930%_))
                                      (let ((_g202630_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196881196930%_
                                                '0))))
                                        (begin
                                          (let ((_g202631_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202630_)
                                                       (##vector-length
                                                        _g202630_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202631_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202631_)))
                                          (let ((_%target196884196933%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202630_ 0)))
                                                (_%tl196886196936%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202630_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196886196936%_))
                                                (letrec ((_%loop196887196939%_
                                                          (lambda (_%hd196885196943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol196891196946%_
                           _%method196892196948%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd196885196943%_))
                        (let ((_%e196888196951%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd196885196943%_))))
                          (let ((_%lp-hd196889196955%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196888196951%_)))
                                (_%lp-tl196890196958%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196888196951%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd196889196955%_))
                                (let ((_%e196897196961%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd196889196955%_))))
                                  (let ((_%hd196896196965%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196897196961%_)))
                                        (_%tl196895196968%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196897196961%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196895196968%_))
                                        (let ((_%e196900196971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196895196968%_))))
                                          (let ((_%hd196899196975%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196900196971%_)))
                                                (_%tl196898196978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196900196971%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196898196978%_))
                                                (_%loop196887196939%_
                                                 _%lp-tl196890196958%_
                                                 (cons _%hd196899196975%_
                                                       _%symbol196891196946%_)
                                                 (cons _%hd196896196965%_
                                                       _%method196892196948%_))
                                                (_%g196873196906%_
                                                 _%g196874196910%_))))
                                        (_%g196873196906%_
                                         _%g196874196910%_))))
                                (_%g196873196906%_ _%g196874196910%_))))
                        (let ((_%symbol196893196981%_
                               (reverse _%symbol196891196946%_))
                              (_%method196894196984%_
                               (reverse _%method196892196948%_)))
                          ((lambda (_%L196987%_ _%L196989%_ _%L196990%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L196987%_
                                        _%L196989%_))
                                     (let ((__tmp202632
                                            (lambda (_%g197008197012%_
                                                     _%g197009197015%_
                                                     _%g197010197017%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L196990%_
                                                                (cons _%g197009197015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g197008197012%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g197010197017%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp202632
                                        '()
                                        _%L196987%_
                                        _%L196989%_)))))
                           _%symbol196893196981%_
                           _%method196894196984%_
                           _%hd196882196927%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop196887196939%_
                                                   _%target196884196933%_
                                                   '()
                                                   '()))
                                                (_%g196873196906%_
                                                 _%g196874196910%_)))))
                                      (_%g196873196906%_ _%g196874196910%_))))
                              (_%g196873196906%_ _%g196874196910%_))))
                      (_%g196873196906%_ _%g196874196910%_)))))
          (_%g196872197020%_ _%$stx196869%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx197025%_)
        (let* ((_%g197029197043%_
                (lambda (_%g197030197039%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197030197039%_))))
               (_%g197028197084%_
                (lambda (_%g197030197047%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197030197047%_))
                      (let ((_%e197034197050%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197030197047%_))))
                        (let ((_%hd197033197054%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197034197050%_)))
                              (_%tl197032197057%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197034197050%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197032197057%_))
                              (let ((_%e197037197060%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197032197057%_))))
                                (let ((_%hd197036197064%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197037197060%_)))
                                      (_%tl197035197067%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197037197060%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197035197067%_))
                                      ((lambda (_%L197070%_)
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
                                                           (cons _%L197070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197036197064%_)
                                      (_%g197029197043%_ _%g197030197047%_))))
                              (_%g197029197043%_ _%g197030197047%_))))
                      (_%g197029197043%_ _%g197030197047%_)))))
          (_%g197028197084%_ _%$stx197025%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx197088%_)
        (let* ((_%g197092197146%_
                (lambda (_%g197093197142%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197093197142%_))))
               (_%g197091197327%_
                (lambda (_%g197093197150%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197093197150%_))
                      (let ((_%e197107197153%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197093197150%_))))
                        (let ((_%hd197106197157%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197107197153%_)))
                              (_%tl197105197160%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197107197153%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197105197160%_))
                              (let ((_%e197110197163%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197105197160%_))))
                                (let ((_%hd197109197167%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197110197163%_)))
                                      (_%tl197108197170%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197110197163%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197108197170%_))
                                      (let ((_%e197113197173%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197108197170%_))))
                                        (let ((_%hd197112197177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197113197173%_)))
                                              (_%tl197111197180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197113197173%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197111197180%_))
                                              (let ((_%e197116197183%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197111197180%_))))
                                                (let ((_%hd197115197187%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197116197183%_)))
                                                      (_%tl197114197190%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197116197183%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197114197190%_))
                                                      (let ((_%e197119197193%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197114197190%_))))
                (let ((_%hd197118197197%_
                       (let () (declare (not safe)) (##car _%e197119197193%_)))
                      (_%tl197117197200%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197119197193%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197117197200%_))
                      (let ((_%e197122197203%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197117197200%_))))
                        (let ((_%hd197121197207%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197122197203%_)))
                              (_%tl197120197210%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197122197203%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197120197210%_))
                              (let ((_%e197125197213%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197120197210%_))))
                                (let ((_%hd197124197217%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197125197213%_)))
                                      (_%tl197123197220%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197125197213%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197123197220%_))
                                      (let ((_%e197128197223%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197123197220%_))))
                                        (let ((_%hd197127197227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197128197223%_)))
                                              (_%tl197126197230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197128197223%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197126197230%_))
                                              (let ((_%e197131197233%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197126197230%_))))
                                                (let ((_%hd197130197237%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197131197233%_)))
                                                      (_%tl197129197240%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197131197233%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197129197240%_))
                                                      (let ((_%e197134197243%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197129197240%_))))
                (let ((_%hd197133197247%_
                       (let () (declare (not safe)) (##car _%e197134197243%_)))
                      (_%tl197132197250%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197134197243%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197132197250%_))
                      (let ((_%e197137197253%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197132197250%_))))
                        (let ((_%hd197136197257%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197137197253%_)))
                              (_%tl197135197260%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197137197253%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197135197260%_))
                              (let ((_%e197140197263%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197135197260%_))))
                                (let ((_%hd197139197267%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197140197263%_)))
                                      (_%tl197138197270%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197140197263%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197138197270%_))
                                      ((lambda (_%L197273%_
                                                _%L197275%_
                                                _%L197276%_
                                                _%L197277%_
                                                _%L197278%_
                                                _%L197279%_
                                                _%L197280%_
                                                _%L197281%_
                                                _%L197282%_
                                                _%L197283%_
                                                _%L197284%_)
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
                                                           (cons _%L197284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L197283%_ '()))
                   (cons (cons (let ()
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
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L197279%_ '()))
                                           (cons _%L197278%_
                                                 (cons _%L197277%_
                                                       (cons _%L197276%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197275%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L197273%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd197139197267%_
                                       _%hd197136197257%_
                                       _%hd197133197247%_
                                       _%hd197130197237%_
                                       _%hd197127197227%_
                                       _%hd197124197217%_
                                       _%hd197121197207%_
                                       _%hd197118197197%_
                                       _%hd197115197187%_
                                       _%hd197112197177%_
                                       _%hd197109197167%_)
                                      (_%g197092197146%_ _%g197093197150%_))))
                              (_%g197092197146%_ _%g197093197150%_))))
                      (_%g197092197146%_ _%g197093197150%_))))
              (_%g197092197146%_ _%g197093197150%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197092197146%_
                                               _%g197093197150%_))))
                                      (_%g197092197146%_ _%g197093197150%_))))
                              (_%g197092197146%_ _%g197093197150%_))))
                      (_%g197092197146%_ _%g197093197150%_))))
              (_%g197092197146%_ _%g197093197150%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197092197146%_
                                               _%g197093197150%_))))
                                      (_%g197092197146%_ _%g197093197150%_))))
                              (_%g197092197146%_ _%g197093197150%_))))
                      (_%g197092197146%_ _%g197093197150%_)))))
          (_%g197091197327%_ _%$stx197088%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx197331%_)
        (let* ((_%g197335197349%_
                (lambda (_%g197336197345%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197336197345%_))))
               (_%g197334197390%_
                (lambda (_%g197336197353%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197336197353%_))
                      (let ((_%e197340197356%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197336197353%_))))
                        (let ((_%hd197339197360%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197340197356%_)))
                              (_%tl197338197363%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197340197356%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197338197363%_))
                              (let ((_%e197343197366%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197338197363%_))))
                                (let ((_%hd197342197370%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197343197366%_)))
                                      (_%tl197341197373%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197343197366%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197341197373%_))
                                      ((lambda (_%L197376%_)
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
                                                           (cons _%L197376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197342197370%_)
                                      (_%g197335197349%_ _%g197336197353%_))))
                              (_%g197335197349%_ _%g197336197353%_))))
                      (_%g197335197349%_ _%g197336197353%_)))))
          (_%g197334197390%_ _%$stx197331%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx197394%_)
        (let* ((_%g197398197412%_
                (lambda (_%g197399197408%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197399197408%_))))
               (_%g197397197453%_
                (lambda (_%g197399197416%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197399197416%_))
                      (let ((_%e197403197419%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197399197416%_))))
                        (let ((_%hd197402197423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197403197419%_)))
                              (_%tl197401197426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197403197419%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197401197426%_))
                              (let ((_%e197406197429%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197401197426%_))))
                                (let ((_%hd197405197433%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197406197429%_)))
                                      (_%tl197404197436%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197406197429%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197404197436%_))
                                      ((lambda (_%L197439%_)
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
                                                           (cons _%L197439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197405197433%_)
                                      (_%g197398197412%_ _%g197399197416%_))))
                              (_%g197398197412%_ _%g197399197416%_))))
                      (_%g197398197412%_ _%g197399197416%_)))))
          (_%g197397197453%_ _%$stx197394%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx197457%_)
        (let* ((_%g197461197483%_
                (lambda (_%g197462197479%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197462197479%_))))
               (_%g197460197552%_
                (lambda (_%g197462197487%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197462197487%_))
                      (let ((_%e197468197490%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197462197487%_))))
                        (let ((_%hd197467197494%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197468197490%_)))
                              (_%tl197466197497%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197468197490%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197466197497%_))
                              (let ((_%e197471197500%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197466197497%_))))
                                (let ((_%hd197470197504%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197471197500%_)))
                                      (_%tl197469197507%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197471197500%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197469197507%_))
                                      (let ((_%e197474197510%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197469197507%_))))
                                        (let ((_%hd197473197514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197474197510%_)))
                                              (_%tl197472197517%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197474197510%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197472197517%_))
                                              (let ((_%e197477197520%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197472197517%_))))
                                                (let ((_%hd197476197524%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197477197520%_)))
                                                      (_%tl197475197527%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197477197520%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197475197527%_))
                                                      ((lambda (_%L197530%_
                                                                _%L197532%_
                                                                _%L197533%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197533%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L197532%_ '()))
                                   (cons _%L197530%_ '())))))
               _%hd197476197524%_
               _%hd197473197514%_
               _%hd197470197504%_)
              (_%g197461197483%_ _%g197462197487%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197461197483%_
                                               _%g197462197487%_))))
                                      (_%g197461197483%_ _%g197462197487%_))))
                              (_%g197461197483%_ _%g197462197487%_))))
                      (_%g197461197483%_ _%g197462197487%_)))))
          (_%g197460197552%_ _%$stx197457%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx197556%_)
        (let* ((_%g197560197582%_
                (lambda (_%g197561197578%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197561197578%_))))
               (_%g197559197651%_
                (lambda (_%g197561197586%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197561197586%_))
                      (let ((_%e197567197589%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197561197586%_))))
                        (let ((_%hd197566197593%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197567197589%_)))
                              (_%tl197565197596%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197567197589%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197565197596%_))
                              (let ((_%e197570197599%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197565197596%_))))
                                (let ((_%hd197569197603%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197570197599%_)))
                                      (_%tl197568197606%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197570197599%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197568197606%_))
                                      (let ((_%e197573197609%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197568197606%_))))
                                        (let ((_%hd197572197613%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197573197609%_)))
                                              (_%tl197571197616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197573197609%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197571197616%_))
                                              (let ((_%e197576197619%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197571197616%_))))
                                                (let ((_%hd197575197623%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197576197619%_)))
                                                      (_%tl197574197626%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197576197619%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197574197626%_))
                                                      ((lambda (_%L197629%_
                                                                _%L197631%_
                                                                _%L197632%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197632%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L197631%_ '()))
                                   (cons _%L197629%_ '())))))
               _%hd197575197623%_
               _%hd197572197613%_
               _%hd197569197603%_)
              (_%g197560197582%_ _%g197561197586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197560197582%_
                                               _%g197561197586%_))))
                                      (_%g197560197582%_ _%g197561197586%_))))
                              (_%g197560197582%_ _%g197561197586%_))))
                      (_%g197560197582%_ _%g197561197586%_)))))
          (_%g197559197651%_ _%$stx197556%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx197655%_)
        (let* ((_%g197659197673%_
                (lambda (_%g197660197669%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197660197669%_))))
               (_%g197658197714%_
                (lambda (_%g197660197677%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197660197677%_))
                      (let ((_%e197664197680%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197660197677%_))))
                        (let ((_%hd197663197684%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197664197680%_)))
                              (_%tl197662197687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197664197680%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197662197687%_))
                              (let ((_%e197667197690%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197662197687%_))))
                                (let ((_%hd197666197694%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197667197690%_)))
                                      (_%tl197665197697%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197667197690%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197665197697%_))
                                      ((lambda (_%L197700%_)
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
                                                           (cons _%L197700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197666197694%_)
                                      (_%g197659197673%_ _%g197660197677%_))))
                              (_%g197659197673%_ _%g197660197677%_))))
                      (_%g197659197673%_ _%g197660197677%_)))))
          (_%g197658197714%_ _%$stx197655%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx197718%_)
        (let* ((_%g197722197740%_
                (lambda (_%g197723197736%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197723197736%_))))
               (_%g197721197795%_
                (lambda (_%g197723197744%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197723197744%_))
                      (let ((_%e197728197747%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197723197744%_))))
                        (let ((_%hd197727197751%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197728197747%_)))
                              (_%tl197726197754%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197728197747%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197726197754%_))
                              (let ((_%e197731197757%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197726197754%_))))
                                (let ((_%hd197730197761%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197731197757%_)))
                                      (_%tl197729197764%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197731197757%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197729197764%_))
                                      (let ((_%e197734197767%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197729197764%_))))
                                        (let ((_%hd197733197771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197734197767%_)))
                                              (_%tl197732197774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197734197767%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197732197774%_))
                                              ((lambda (_%L197777%_
                                                        _%L197779%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197779%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197777%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197733197771%_
                                               _%hd197730197761%_)
                                              (_%g197722197740%_
                                               _%g197723197744%_))))
                                      (_%g197722197740%_ _%g197723197744%_))))
                              (_%g197722197740%_ _%g197723197744%_))))
                      (_%g197722197740%_ _%g197723197744%_)))))
          (_%g197721197795%_ _%$stx197718%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx197799%_)
        (let* ((_%__stx202003202004%_ _%$stx197799%_)
               (_%g197806197867%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202003202004%_)))))
          (let ((_%__kont202006202007%_
                 (lambda (_%L198105%_ _%L198107%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198107%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198105%_ '()))
                                     '())))))
                (_%__kont202008202009%_
                 (lambda (_%L198044%_ _%L198046%_ _%L198047%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198047%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198046%_ '()))
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
                                 (cons _%L198044%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont202010202011%_
                 (lambda (_%L197968%_ _%L197970%_)
                   (cons _%L197970%_ (cons _%L197968%_ (cons '#f '())))))
                (_%__kont202012202013%_
                 (lambda (_%L197918%_ _%L197920%_ _%L197921%_)
                   (cons _%L197921%_
                         (cons _%L197920%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L197918%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202003202004%_))
                (let ((_%e197812198075%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202003202004%_))))
                  (let ((_%tl197810198082%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197812198075%_)))
                        (_%hd197811198079%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197812198075%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197810198082%_))
                        (let ((_%e197815198085%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl197810198082%_))))
                          (let ((_%tl197813198092%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197815198085%_)))
                                (_%hd197814198089%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197815198085%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197813198092%_))
                                (let ((_%e197818198095%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197813198092%_))))
                                  (let ((_%tl197816198102%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197818198095%_)))
                                        (_%hd197817198099%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197818198095%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197816198102%_))
                                        (_%__kont202006202007%_
                                         _%hd197817198099%_
                                         _%hd197814198089%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197816198102%_))
                                            (let ((_%e197833198020%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197816198102%_))))
                                              (let ((_%tl197831198027%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197833198020%_)))
                                                    (_%hd197832198024%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197833198020%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd197832198024%_))
                                                    (let ((_%e197834198030%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd197832198024%_))))
                                                      (if (equal? _%e197834198030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197831198027%_))
                      (let ((_%e197837198034%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197831198027%_))))
                        (let ((_%tl197835198041%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197837198034%_)))
                              (_%hd197836198038%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197837198034%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197835198041%_))
                              (_%__kont202008202009%_
                               _%hd197836198038%_
                               _%hd197817198099%_
                               _%hd197814198089%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd197817198099%_))
                                  (let ((_%e197858197904%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197817198099%_))))
                                    (declare (not safe))
                                    (_%g197806197867%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197806197867%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd197817198099%_))
                          (let ((_%e197858197904%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197817198099%_))))
                            (if (equal? _%e197858197904%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197831198027%_))
                                    (_%__kont202012202013%_
                                     _%hd197832198024%_
                                     _%hd197814198089%_
                                     _%hd197811198079%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197806197867%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g197806197867%_))))
                          (let () (declare (not safe)) (_%g197806197867%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd197817198099%_))
                      (let ((_%e197858197904%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197817198099%_))))
                        (if (equal? _%e197858197904%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197831198027%_))
                                (_%__kont202012202013%_
                                 _%hd197832198024%_
                                 _%hd197814198089%_
                                 _%hd197811198079%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197806197867%_)))
                            (let () (declare (not safe)) (_%g197806197867%_))))
                      (let () (declare (not safe)) (_%g197806197867%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd197817198099%_))
                                                        (let ((_%e197858197904%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd197817198099%_))))
                  (if (equal? _%e197858197904%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197831198027%_))
                          (_%__kont202012202013%_
                           _%hd197832198024%_
                           _%hd197814198089%_
                           _%hd197811198079%_)
                          (let () (declare (not safe)) (_%g197806197867%_)))
                      (let () (declare (not safe)) (_%g197806197867%_))))
                (let () (declare (not safe)) (_%g197806197867%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd197817198099%_))
                                                (let ((_%e197858197904%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd197817198099%_))))
                                                  (declare (not safe))
                                                  (_%g197806197867%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197806197867%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197813198092%_))
                                    (_%__kont202010202011%_
                                     _%hd197814198089%_
                                     _%hd197811198079%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197806197867%_))))))
                        (let () (declare (not safe)) (_%g197806197867%_)))))
                (let () (declare (not safe)) (_%g197806197867%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx198126%_)
        (let* ((_%g198130198159%_
                (lambda (_%g198131198155%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198131198155%_))))
               (_%g198129198268%_
                (lambda (_%g198131198163%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198131198163%_))
                      (let ((_%e198135198166%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198131198163%_))))
                        (let ((_%hd198134198170%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198135198166%_)))
                              (_%tl198133198173%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198135198166%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198133198173%_))
                              (let ((_g202633_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198133198173%_
                                        '0))))
                                (begin
                                  (let ((_g202634_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202633_)
                                               (##vector-length _g202633_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202634_ 2)))
                                        (error "Context expects 2 values"
                                               _g202634_)))
                                  (let ((_%target198136198176%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202633_ 0)))
                                        (_%tl198138198179%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202633_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198138198179%_))
                                        (letrec ((_%loop198139198182%_
                                                  (lambda (_%hd198137198186%_
                                                           _%clause198143198189%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198137198186%_))
                                                        (let ((_%e198140198192%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198137198186%_))))
                  (let ((_%lp-hd198141198196%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198140198192%_)))
                        (_%lp-tl198142198199%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198140198192%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd198141198196%_))
                        (let ((_g202635_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd198141198196%_
                                  '0))))
                          (begin
                            (let ((_g202636_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g202635_)
                                         (##vector-length _g202635_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g202636_ 2)))
                                  (error "Context expects 2 values"
                                         _g202636_)))
                            (let ((_%target198145198202%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202635_ 0)))
                                  (_%tl198147198205%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202635_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198147198205%_))
                                  (letrec ((_%loop198148198208%_
                                            (lambda (_%hd198146198212%_
                                                     _%clause198152198215%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198146198212%_))
                                                  (let ((_%e198149198218%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd198146198212%_))))
                                                    (let ((_%lp-hd198150198222%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198149198218%_)))
                                                          (_%lp-tl198151198225%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198149198218%_))))
                                                      (_%loop198148198208%_
                                                       _%lp-tl198151198225%_
                                                       (cons _%lp-hd198150198222%_
                                                             _%clause198152198215%_))))
                                                  (let ((_%clause198153198228%_
                                                         (reverse _%clause198152198215%_)))
                                                    (_%loop198139198182%_
                                                     _%lp-tl198142198199%_
                                                     (cons _%clause198153198228%_
                                                           _%clause198143198189%_)))))))
                                    (_%loop198148198208%_
                                     _%target198145198202%_
                                     '()))
                                  (_%g198130198159%_ _%g198131198163%_)))))
                        (_%g198130198159%_ _%g198131198163%_))))
                (let ((_%clause198144198232%_
                       (reverse _%clause198143198189%_)))
                  ((lambda (_%L198236%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp202637
                                              (lambda (_%g198251198256%_
                                                       _%g198252198259%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp202638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g198253198262%_ _%g198254198265%_)
                             (cons _%g198253198262%_ _%g198254198265%_))))
                      (declare (not safe))
                      (__foldr1 __tmp202638 '() _%g198251198256%_)))
              _%g198252198259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp202637
                                          '()
                                          _%L198236%_)))
                                 '())))
                   _%clause198144198232%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198139198182%_
                                           _%target198136198176%_
                                           '()))
                                        (_%g198130198159%_
                                         _%g198131198163%_)))))
                              (_%g198130198159%_ _%g198131198163%_))))
                      (_%g198130198159%_ _%g198131198163%_)))))
          (_%g198129198268%_ _%$stx198126%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx198274%_)
        (let* ((_%g198278198296%_
                (lambda (_%g198279198292%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198279198292%_))))
               (_%g198277198351%_
                (lambda (_%g198279198300%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198279198300%_))
                      (let ((_%e198284198303%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198279198300%_))))
                        (let ((_%hd198283198307%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198284198303%_)))
                              (_%tl198282198310%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198284198303%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198282198310%_))
                              (let ((_%e198287198313%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198282198310%_))))
                                (let ((_%hd198286198317%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198287198313%_)))
                                      (_%tl198285198320%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198287198313%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198285198320%_))
                                      (let ((_%e198290198323%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198285198320%_))))
                                        (let ((_%hd198289198327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198290198323%_)))
                                              (_%tl198288198330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198290198323%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198288198330%_))
                                              ((lambda (_%L198333%_
                                                        _%L198335%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198335%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198333%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198289198327%_
                                               _%hd198286198317%_)
                                              (_%g198278198296%_
                                               _%g198279198300%_))))
                                      (_%g198278198296%_ _%g198279198300%_))))
                              (_%g198278198296%_ _%g198279198300%_))))
                      (_%g198278198296%_ _%g198279198300%_)))))
          (_%g198277198351%_ _%$stx198274%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx198355%_)
        (let* ((_%g198359198377%_
                (lambda (_%g198360198373%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198360198373%_))))
               (_%g198358198432%_
                (lambda (_%g198360198381%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198360198381%_))
                      (let ((_%e198365198384%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198360198381%_))))
                        (let ((_%hd198364198388%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198365198384%_)))
                              (_%tl198363198391%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198365198384%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198363198391%_))
                              (let ((_%e198368198394%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198363198391%_))))
                                (let ((_%hd198367198398%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198368198394%_)))
                                      (_%tl198366198401%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198368198394%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198366198401%_))
                                      (let ((_%e198371198404%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198366198401%_))))
                                        (let ((_%hd198370198408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198371198404%_)))
                                              (_%tl198369198411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198371198404%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198369198411%_))
                                              ((lambda (_%L198414%_
                                                        _%L198416%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198416%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198414%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198370198408%_
                                               _%hd198367198398%_)
                                              (_%g198359198377%_
                                               _%g198360198381%_))))
                                      (_%g198359198377%_ _%g198360198381%_))))
                              (_%g198359198377%_ _%g198360198381%_))))
                      (_%g198359198377%_ _%g198360198381%_)))))
          (_%g198358198432%_ _%$stx198355%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx198436%_)
        (let* ((_%g198440198469%_
                (lambda (_%g198441198465%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198441198465%_))))
               (_%g198439198569%_
                (lambda (_%g198441198473%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198441198473%_))
                      (let ((_%e198446198476%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198441198473%_))))
                        (let ((_%hd198445198480%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198446198476%_)))
                              (_%tl198444198483%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198446198476%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198444198483%_))
                              (let ((_g202639_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198444198483%_
                                        '0))))
                                (begin
                                  (let ((_g202640_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202639_)
                                               (##vector-length _g202639_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202640_ 2)))
                                        (error "Context expects 2 values"
                                               _g202640_)))
                                  (let ((_%target198447198486%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202639_ 0)))
                                        (_%tl198449198489%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202639_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198449198489%_))
                                        (letrec ((_%loop198450198492%_
                                                  (lambda (_%hd198448198496%_
                                                           _%rule198454198499%_
                                                           _%proc198455198501%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198448198496%_))
                                                        (let ((_%e198451198504%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198448198496%_))))
                  (let ((_%lp-hd198452198508%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198451198504%_)))
                        (_%lp-tl198453198511%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198451198504%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd198452198508%_))
                        (let ((_%e198460198514%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd198452198508%_))))
                          (let ((_%hd198459198518%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198460198514%_)))
                                (_%tl198458198521%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198460198514%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198458198521%_))
                                (let ((_%e198463198524%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198458198521%_))))
                                  (let ((_%hd198462198528%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198463198524%_)))
                                        (_%tl198461198531%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198463198524%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198461198531%_))
                                        (_%loop198450198492%_
                                         _%lp-tl198453198511%_
                                         (cons _%hd198462198528%_
                                               _%rule198454198499%_)
                                         (cons _%hd198459198518%_
                                               _%proc198455198501%_))
                                        (_%g198440198469%_
                                         _%g198441198473%_))))
                                (_%g198440198469%_ _%g198441198473%_))))
                        (_%g198440198469%_ _%g198441198473%_))))
                (let ((_%rule198456198534%_ (reverse _%rule198454198499%_))
                      (_%proc198457198537%_ (reverse _%proc198455198501%_)))
                  ((lambda (_%L198540%_ _%L198542%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L198540%_
                                _%L198542%_))
                             (let ((__tmp202641
                                    (lambda (_%g198557198561%_
                                             _%g198558198564%_
                                             _%g198559198566%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g198558198564%_
                                                        (cons _%g198557198561%_
                                                              '())))
                                            _%g198559198566%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202641
                                '()
                                _%L198540%_
                                _%L198542%_)))))
                   _%rule198456198534%_
                   _%proc198457198537%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198450198492%_
                                           _%target198447198486%_
                                           '()
                                           '()))
                                        (_%g198440198469%_
                                         _%g198441198473%_)))))
                              (_%g198440198469%_ _%g198441198473%_))))
                      (_%g198440198469%_ _%g198441198473%_)))))
          (_%g198439198569%_ _%$stx198436%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx198574%_)
        (let* ((_%g198578198596%_
                (lambda (_%g198579198592%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198579198592%_))))
               (_%g198577198651%_
                (lambda (_%g198579198600%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198579198600%_))
                      (let ((_%e198584198603%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198579198600%_))))
                        (let ((_%hd198583198607%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198584198603%_)))
                              (_%tl198582198610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198584198603%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198582198610%_))
                              (let ((_%e198587198613%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198582198610%_))))
                                (let ((_%hd198586198617%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198587198613%_)))
                                      (_%tl198585198620%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198587198613%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198585198620%_))
                                      (let ((_%e198590198623%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198585198620%_))))
                                        (let ((_%hd198589198627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198590198623%_)))
                                              (_%tl198588198630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198590198623%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198588198630%_))
                                              ((lambda (_%L198633%_
                                                        _%L198635%_)
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
                                                   (cons _%L198635%_ '()))
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
                 (cons _%L198633%_ '())))
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
                                   (cons _%L198635%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198589198627%_
                                               _%hd198586198617%_)
                                              (_%g198578198596%_
                                               _%g198579198600%_))))
                                      (_%g198578198596%_ _%g198579198600%_))))
                              (_%g198578198596%_ _%g198579198600%_))))
                      (_%g198578198596%_ _%g198579198600%_)))))
          (_%g198577198651%_ _%$stx198574%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx198655%_)
        (let* ((_%__stx202121202122%_ _%$stx198655%_)
               (_%g198660198685%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202121202122%_)))))
          (let ((_%__kont202124202125%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202126202127%_
                 (lambda (_%L198732%_ _%L198734%_ _%L198735%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L198735%_ (cons _%L198734%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L198732%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202121202122%_))
                (let ((_%e198664198761%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202121202122%_))))
                  (let ((_%tl198662198768%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198664198761%_)))
                        (_%hd198663198765%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198664198761%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198662198768%_))
                        (_%__kont202124202125%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198662198768%_))
                            (let ((_%e198673198702%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198662198768%_))))
                              (let ((_%tl198671198709%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198673198702%_)))
                                    (_%hd198672198706%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198673198702%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd198672198706%_))
                                    (let ((_%e198676198712%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd198672198706%_))))
                                      (let ((_%tl198674198719%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198676198712%_)))
                                            (_%hd198675198716%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198676198712%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198674198719%_))
                                            (let ((_%e198679198722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198674198719%_))))
                                              (let ((_%tl198677198729%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198679198722%_)))
                                                    (_%hd198678198726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198679198722%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl198677198729%_))
                                                    (_%__kont202126202127%_
                                                     _%tl198671198709%_
                                                     _%hd198678198726%_
                                                     _%hd198675198716%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198660198685%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g198660198685%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198660198685%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198660198685%_))))))
                (let () (declare (not safe)) (_%g198660198685%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx198779%_)
        (let* ((_%__stx202165202166%_ _%$stx198779%_)
               (_%g198784198815%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202165202166%_)))))
          (let ((_%__kont202168202169%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202170202171%_
                 (lambda (_%L198882%_ _%L198884%_ _%L198885%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L198885%_
                                           (let ((__tmp202642
                                                  (lambda (_%g198905198908%_
                                                           _%g198906198911%_)
                                                    (cons _%g198905198908%_
                                                          _%g198906198911%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp202642
                                              '()
                                              _%L198884%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L198882%_)
                                     '()))))))
            (let ((_%__match202208202209%_
                   (lambda (_%e198794198822%_
                            _%hd198793198826%_
                            _%tl198792198829%_
                            _%e198797198832%_
                            _%hd198796198836%_
                            _%tl198795198839%_
                            _%e198800198842%_
                            _%hd198799198846%_
                            _%tl198798198849%_
                            _%__splice202172202173%_
                            _%target198801198852%_
                            _%tl198803198855%_)
                     (letrec ((_%loop198804198858%_
                               (lambda (_%hd198802198862%_ _%sig198808198865%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd198802198862%_))
                                     (let ((_%e198805198868%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd198802198862%_))))
                                       (let ((_%lp-tl198807198875%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198805198868%_)))
                                             (_%lp-hd198806198872%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198805198868%_))))
                                         (_%loop198804198858%_
                                          _%lp-tl198807198875%_
                                          (cons _%lp-hd198806198872%_
                                                _%sig198808198865%_))))
                                     (let ((_%sig198809198878%_
                                            (reverse _%sig198808198865%_)))
                                       (_%__kont202170202171%_
                                        _%tl198795198839%_
                                        _%sig198809198878%_
                                        _%hd198799198846%_))))))
                       (_%loop198804198858%_ _%target198801198852%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202165202166%_))
                  (let ((_%e198788198921%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202165202166%_))))
                    (let ((_%tl198786198928%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198788198921%_)))
                          (_%hd198787198925%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198788198921%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198786198928%_))
                          (_%__kont202168202169%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198786198928%_))
                              (let ((_%e198797198832%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198786198928%_))))
                                (let ((_%tl198795198839%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198797198832%_)))
                                      (_%hd198796198836%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198797198832%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198796198836%_))
                                      (let ((_%e198800198842%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198796198836%_))))
                                        (let ((_%tl198798198849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198800198842%_)))
                                              (_%hd198799198846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198800198842%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198798198849%_))
                                              (let ((_%__splice202172202173%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198798198849%_
                                                        '0))))
                                                (let ((_%tl198803198855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202172202173%_
                                                          '1)))
                                                      (_%target198801198852%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202172202173%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198803198855%_))
                                                      (_%__match202208202209%_
                                                       _%e198788198921%_
                                                       _%hd198787198925%_
                                                       _%tl198786198928%_
                                                       _%e198797198832%_
                                                       _%hd198796198836%_
                                                       _%tl198795198839%_
                                                       _%e198800198842%_
                                                       _%hd198799198846%_
                                                       _%tl198798198849%_
                                                       _%__splice202172202173%_
                                                       _%target198801198852%_
                                                       _%tl198803198855%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198784198815%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198784198815%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198784198815%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198784198815%_))))))
                  (let () (declare (not safe)) (_%g198784198815%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx198940%_)
        (let* ((_%__stx202211202212%_ _%$stx198940%_)
               (_%g198945198992%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202211202212%_)))))
          (let ((_%__kont202214202215%_
                 (lambda (_%L199154%_ _%L199156%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L199156%_
                               (let ((__tmp202643
                                      (lambda (_%g199176199179%_
                                               _%g199177199182%_)
                                        (cons _%g199176199179%_
                                              _%g199177199182%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202643 '() _%L199154%_))))))
                (_%__kont202218202219%_
                 (lambda (_%L199049%_ _%L199051%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L199051%_
                               (let ((__tmp202644
                                      (lambda (_%g199068199071%_
                                               _%g199069199074%_)
                                        (cons _%g199068199071%_
                                              _%g199069199074%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202644 '() _%L199049%_)))))))
            (let* ((_%__match202278202279%_
                    (lambda (_%e198974198999%_
                             _%hd198973199003%_
                             _%tl198972199006%_
                             _%e198977199009%_
                             _%hd198976199013%_
                             _%tl198975199016%_
                             _%__splice202220202221%_
                             _%target198978199019%_
                             _%tl198980199022%_)
                      (letrec ((_%loop198981199025%_
                                (lambda (_%hd198979199029%_
                                         _%sig198985199032%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198979199029%_))
                                      (let ((_%e198982199035%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198979199029%_))))
                                        (let ((_%lp-tl198984199042%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198982199035%_)))
                                              (_%lp-hd198983199039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198982199035%_))))
                                          (_%loop198981199025%_
                                           _%lp-tl198984199042%_
                                           (cons _%lp-hd198983199039%_
                                                 _%sig198985199032%_))))
                                      (let ((_%sig198986199045%_
                                             (reverse _%sig198985199032%_)))
                                        (_%__kont202218202219%_
                                         _%sig198986199045%_
                                         _%hd198976199013%_))))))
                        (_%loop198981199025%_ _%target198978199019%_ '()))))
                   (_%__match202270202271%_
                    (lambda (_%e198974198999%_
                             _%hd198973199003%_
                             _%tl198972199006%_
                             _%e198977199009%_
                             _%hd198976199013%_
                             _%tl198975199016%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl198975199016%_))
                          (let ((_%__splice202220202221%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl198975199016%_
                                    '0))))
                            (let ((_%tl198980199022%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202220202221%_
                                      '1)))
                                  (_%target198978199019%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202220202221%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198980199022%_))
                                  (_%__match202278202279%_
                                   _%e198974198999%_
                                   _%hd198973199003%_
                                   _%tl198972199006%_
                                   _%e198977199009%_
                                   _%hd198976199013%_
                                   _%tl198975199016%_
                                   _%__splice202220202221%_
                                   _%target198978199019%_
                                   _%tl198980199022%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g198945198992%_)))))
                          (let () (declare (not safe)) (_%g198945198992%_)))))
                   (_%__match202258202259%_
                    (lambda (_%e198951199084%_
                             _%hd198950199088%_
                             _%tl198949199091%_
                             _%e198954199094%_
                             _%hd198953199098%_
                             _%tl198952199101%_
                             _%e198957199104%_
                             _%hd198956199108%_
                             _%tl198955199111%_
                             _%e198960199114%_
                             _%hd198959199118%_
                             _%tl198958199121%_
                             _%__splice202216202217%_
                             _%target198961199124%_
                             _%tl198963199127%_)
                      (letrec ((_%loop198964199130%_
                                (lambda (_%hd198962199134%_
                                         _%sig198968199137%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198962199134%_))
                                      (let ((_%e198965199140%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198962199134%_))))
                                        (let ((_%lp-tl198967199147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198965199140%_)))
                                              (_%lp-hd198966199144%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198965199140%_))))
                                          (_%loop198964199130%_
                                           _%lp-tl198967199147%_
                                           (cons _%lp-hd198966199144%_
                                                 _%sig198968199137%_))))
                                      (let ((_%sig198969199150%_
                                             (reverse _%sig198968199137%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl198955199111%_))
                                            (_%__kont202214202215%_
                                             _%sig198969199150%_
                                             _%hd198953199098%_)
                                            (_%__match202270202271%_
                                             _%e198951199084%_
                                             _%hd198950199088%_
                                             _%tl198949199091%_
                                             _%e198954199094%_
                                             _%hd198953199098%_
                                             _%tl198952199101%_)))))))
                        (_%loop198964199130%_ _%target198961199124%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202211202212%_))
                  (let ((_%e198951199084%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202211202212%_))))
                    (let ((_%tl198949199091%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198951199084%_)))
                          (_%hd198950199088%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198951199084%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198949199091%_))
                          (let ((_%e198954199094%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198949199091%_))))
                            (let ((_%tl198952199101%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198954199094%_)))
                                  (_%hd198953199098%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198954199094%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198952199101%_))
                                  (let ((_%e198957199104%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl198952199101%_))))
                                    (let ((_%tl198955199111%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198957199104%_)))
                                          (_%hd198956199108%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198957199104%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd198956199108%_))
                                          (let ((_%e198960199114%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd198956199108%_))))
                                            (let ((_%tl198958199121%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e198960199114%_)))
                                                  (_%hd198959199118%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e198960199114%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd198959199118%_))
                                                  (if (let ((__tmp202645
                                                             |gxc[1]#_g202646_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp202645
                                                         _%hd198959199118%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl198958199121%_))
                                                          (let ((_%__splice202216202217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl198958199121%_ '0))))
                    (let ((_%tl198963199127%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202216202217%_ '1)))
                          (_%target198961199124%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202216202217%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198963199127%_))
                          (_%__match202258202259%_
                           _%e198951199084%_
                           _%hd198950199088%_
                           _%tl198949199091%_
                           _%e198954199094%_
                           _%hd198953199098%_
                           _%tl198952199101%_
                           _%e198957199104%_
                           _%hd198956199108%_
                           _%tl198955199111%_
                           _%e198960199114%_
                           _%hd198959199118%_
                           _%tl198958199121%_
                           _%__splice202216202217%_
                           _%target198961199124%_
                           _%tl198963199127%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198952199101%_))
                              (let ((_%__splice202220202221%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198952199101%_
                                        '0))))
                                (let ((_%tl198980199022%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202220202221%_
                                          '1)))
                                      (_%target198978199019%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202220202221%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198980199022%_))
                                      (_%__match202278202279%_
                                       _%e198951199084%_
                                       _%hd198950199088%_
                                       _%tl198949199091%_
                                       _%e198954199094%_
                                       _%hd198953199098%_
                                       _%tl198952199101%_
                                       _%__splice202220202221%_
                                       _%target198978199019%_
                                       _%tl198980199022%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g198945198992%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198945198992%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl198952199101%_))
                      (let ((_%__splice202220202221%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl198952199101%_
                                '0))))
                        (let ((_%tl198980199022%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202220202221%_ '1)))
                              (_%target198978199019%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202220202221%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl198980199022%_))
                              (_%__match202278202279%_
                               _%e198951199084%_
                               _%hd198950199088%_
                               _%tl198949199091%_
                               _%e198954199094%_
                               _%hd198953199098%_
                               _%tl198952199101%_
                               _%__splice202220202221%_
                               _%target198978199019%_
                               _%tl198980199022%_)
                              (let ()
                                (declare (not safe))
                                (_%g198945198992%_)))))
                      (let () (declare (not safe)) (_%g198945198992%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl198952199101%_))
                  (let ((_%__splice202220202221%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl198952199101%_ '0))))
                    (let ((_%tl198980199022%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202220202221%_ '1)))
                          (_%target198978199019%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202220202221%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198980199022%_))
                          (_%__match202278202279%_
                           _%e198951199084%_
                           _%hd198950199088%_
                           _%tl198949199091%_
                           _%e198954199094%_
                           _%hd198953199098%_
                           _%tl198952199101%_
                           _%__splice202220202221%_
                           _%target198978199019%_
                           _%tl198980199022%_)
                          (let () (declare (not safe)) (_%g198945198992%_)))))
                  (let () (declare (not safe)) (_%g198945198992%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl198952199101%_))
                                                      (let ((_%__splice202220202221%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl198952199101%_ '0))))
                (let ((_%tl198980199022%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202220202221%_ '1)))
                      (_%target198978199019%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202220202221%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198980199022%_))
                      (_%__match202278202279%_
                       _%e198951199084%_
                       _%hd198950199088%_
                       _%tl198949199091%_
                       _%e198954199094%_
                       _%hd198953199098%_
                       _%tl198952199101%_
                       _%__splice202220202221%_
                       _%target198978199019%_
                       _%tl198980199022%_)
                      (let () (declare (not safe)) (_%g198945198992%_)))))
              (let () (declare (not safe)) (_%g198945198992%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198952199101%_))
                                              (let ((_%__splice202220202221%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198952199101%_
                                                        '0))))
                                                (let ((_%tl198980199022%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202220202221%_
                                                          '1)))
                                                      (_%target198978199019%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202220202221%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198980199022%_))
                                                      (_%__match202278202279%_
                                                       _%e198951199084%_
                                                       _%hd198950199088%_
                                                       _%tl198949199091%_
                                                       _%e198954199094%_
                                                       _%hd198953199098%_
                                                       _%tl198952199101%_
                                                       _%__splice202220202221%_
                                                       _%target198978199019%_
                                                       _%tl198980199022%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198945198992%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198945198992%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl198952199101%_))
                                      (let ((_%__splice202220202221%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl198952199101%_
                                                '0))))
                                        (let ((_%tl198980199022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202220202221%_
                                                  '1)))
                                              (_%target198978199019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202220202221%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198980199022%_))
                                              (_%__match202278202279%_
                                               _%e198951199084%_
                                               _%hd198950199088%_
                                               _%tl198949199091%_
                                               _%e198954199094%_
                                               _%hd198953199098%_
                                               _%tl198952199101%_
                                               _%__splice202220202221%_
                                               _%target198978199019%_
                                               _%tl198980199022%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g198945198992%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198945198992%_))))))
                          (let () (declare (not safe)) (_%g198945198992%_)))))
                  (let () (declare (not safe)) (_%g198945198992%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx200270%_ _%id200272%_)
        (let ((_%proc200276%_
               (let ((__tmp202647
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200272%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202647))))
          (if (let () (declare (not safe)) (procedure? _%proc200276%_))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx200270%_
                 _%id200272%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx200261%_ _%id200263%_)
        (let ((_%klass200267%_
               (let ((__tmp202648
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200263%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202648))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass200267%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx200261%_
                 _%id200263%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx199511%_ _%proc199513%_ _%sig199514%_)
        (letrec ((_%signature-arity199516%_
                  (lambda (_%args200193%_)
                    (let _%loop200196%_ ((_%rest200199%_ _%args200193%_)
                                         (_%count200201%_ '0))
                      (let* ((_%rest200202200213%_ _%rest200199%_)
                             (_%E200206200219%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest200202200213%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K200209200250%_
                               (lambda (_%rest200247%_)
                                 (let ((__tmp202649
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%count200201%_ '1))))
                                   (declare (not safe))
                                   (_%loop200196%_
                                    _%rest200247%_
                                    __tmp202649))))
                              (_%K200208200239%_ (lambda () _%count200201%_))
                              (_%K200207200227%_
                               (lambda () (cons _%count200201%_ '()))))
                          (let ((_%try-match200204200243%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest200202200213%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K200208200239%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K200207200227%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest200202200213%_))
                                (let* ((_%tl200211200254%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest200202200213%_)))
                                       (_%rest200258%_ _%tl200211200254%_))
                                  (declare (not safe))
                                  (_%K200209200250%_ _%rest200258%_))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match200204200243%_)))))))))
                 (_%make-signature199518%_
                  (lambda (_%args200075%_
                           _%return200077%_
                           _%effect200078%_
                           _%unchecked200079%_)
                    (let ((__tmp202650
                           (lambda (_%g200080200082%_)
                             (let ()
                               (declare (not safe))
                               (|gxc[1]#verify-class!|
                                _%ctx199511%_
                                _%g200080200082%_)))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp202650 _%args200075%_))
                    (let ()
                      (declare (not safe))
                      (|gxc[1]#verify-class!| _%ctx199511%_ _%return200077%_))
                    (if _%unchecked200079%_
                        (let ()
                          (declare (not safe))
                          (|gxc[1]#verify-procedure!|
                           _%ctx199511%_
                           _%unchecked200079%_))
                        '#!void)
                    (let ((_%arity200086%_
                           (let ((__tmp202651
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-map1 gx#stx-e _%args200075%_))))
                             (declare (not safe))
                             (_%signature-arity199516%_ __tmp202651))))
                      (if _%effect200078%_
                          (let ((_%effect200089%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect200078%_))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (list? _%effect200089%_))
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect200089%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx199511%_
                                   _%proc199513%_
                                   _%effect200089%_))))
                          '#!void)
                      (cons _%arity200086%_
                            (cons (let* ((_%g200092200115%_
                                          (lambda (_%g200093200111%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g200093200111%_))))
                                         (_%g200091200189%_
                                          (lambda (_%g200093200119%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g200093200119%_))
                                                (let ((_%e200100200122%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g200093200119%_))))
                                                  (let ((_%hd200099200126%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200100200122%_)))
                                                        (_%tl200098200129%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200100200122%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200098200129%_))
                                                        (let ((_%e200103200132%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl200098200129%_))))
                  (let ((_%hd200102200136%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200103200132%_)))
                        (_%tl200101200139%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200103200132%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200101200139%_))
                        (let ((_%e200106200142%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200101200139%_))))
                          (let ((_%hd200105200146%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200106200142%_)))
                                (_%tl200104200149%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200106200142%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200104200149%_))
                                (let ((_%e200109200152%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200104200149%_))))
                                  (let ((_%hd200108200156%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200109200152%_)))
                                        (_%tl200107200159%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200109200152%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200107200159%_))
                                        ((lambda (_%L200162%_
                                                  _%L200164%_
                                                  _%L200165%_
                                                  _%L200166%_)
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
                             (cons _%L200166%_ '()))
                       (cons 'return:
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L200165%_ '()))
                                   (cons 'effect:
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L200164%_ '()))
                                               (cons 'unchecked:
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L200162%_ '()))
                   '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd200108200156%_
                                         _%hd200105200146%_
                                         _%hd200102200136%_
                                         _%hd200099200126%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g200092200115%_
                                           _%g200093200119%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200092200115%_ _%g200093200119%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g200092200115%_ _%g200093200119%_)))))
                (let ()
                  (declare (not safe))
                  (_%g200092200115%_ _%g200093200119%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200092200115%_
                                                   _%g200093200119%_)))))
                                         (__tmp202652
                                          (list _%args200075%_
                                                _%return200077%_
                                                _%effect200078%_
                                                _%unchecked200079%_)))
                                    (declare (not safe))
                                    (_%g200091200189%_ __tmp202652))
                                  '()))))))
          (let ()
            (declare (not safe))
            (|gxc[1]#verify-procedure!| _%ctx199511%_ _%proc199513%_))
          (let* ((_%__stx202289202290%_ _%sig199514%_)
                 (_%g199525199628%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx202289202290%_)))))
            (let ((_%__kont202292202293%_
                   (lambda (_%L200056%_ _%L200058%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature199518%_
                        _%L200058%_
                        _%L200056%_
                        '#f
                        '#f))))
                  (_%__kont202294202295%_
                   (lambda (_%L200007%_ _%L200009%_ _%L200010%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature199518%_
                        _%L200010%_
                        _%L200009%_
                        _%L200007%_
                        '#f))))
                  (_%__kont202296202297%_
                   (lambda (_%L199931%_ _%L199933%_ _%L199934%_)
                     (let ((__tmp202653
                            (let ((__tmp202654
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc199513%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp202654))))
                       (declare (not safe))
                       (_%make-signature199518%_
                        _%L199934%_
                        _%L199933%_
                        _%L199931%_
                        __tmp202653))))
                  (_%__kont202298202299%_
                   (lambda (_%L199837%_ _%L199839%_ _%L199840%_ _%L199841%_)
                     (let ((__tmp202655
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L199837%_))))
                       (declare (not safe))
                       (_%make-signature199518%_
                        _%L199841%_
                        _%L199840%_
                        '#f
                        __tmp202655))))
                  (_%__kont202300202301%_
                   (lambda (_%L199744%_ _%L199746%_)
                     (let ((__tmp202656
                            (let ((__tmp202657
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc199513%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp202657))))
                       (declare (not safe))
                       (_%make-signature199518%_
                        _%L199746%_
                        _%L199744%_
                        '#f
                        __tmp202656))))
                  (_%__kont202302202303%_
                   (lambda (_%L199679%_ _%L199681%_ _%L199682%_)
                     (let ((__tmp202658
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L199679%_))))
                       (declare (not safe))
                       (_%make-signature199518%_
                        _%L199682%_
                        _%L199681%_
                        '#f
                        __tmp202658)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202289202290%_))
                  (let ((_%e199531200036%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202289202290%_))))
                    (let ((_%tl199529200043%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199531200036%_)))
                          (_%hd199530200040%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199531200036%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199529200043%_))
                          (let ((_%e199534200046%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199529200043%_))))
                            (let ((_%tl199532200053%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199534200046%_)))
                                  (_%hd199533200050%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199534200046%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199532200053%_))
                                  (_%__kont202292202293%_
                                   _%hd199533200050%_
                                   _%hd199530200040%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199532200053%_))
                                      (let ((_%e199546199983%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199532200053%_))))
                                        (let ((_%tl199544199990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199546199983%_)))
                                              (_%hd199545199987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199546199983%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd199545199987%_))
                                              (let ((_%e199547199993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd199545199987%_))))
                                                (if (equal? _%e199547199993%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199544199990%_))
                                                        (let ((_%e199550199997%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl199544199990%_))))
                  (let ((_%tl199548200004%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199550199997%_)))
                        (_%hd199549200001%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199550199997%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl199548200004%_))
                        (_%__kont202294202295%_
                         _%hd199549200001%_
                         _%hd199533200050%_
                         _%hd199530200040%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199548200004%_))
                            (let ((_%e199569199917%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl199548200004%_))))
                              (let ((_%tl199567199924%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199569199917%_)))
                                    (_%hd199568199921%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199569199917%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd199568199921%_))
                                    (let ((_%e199570199927%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199568199921%_))))
                                      (if (equal? _%e199570199927%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199567199924%_))
                                              (_%__kont202296202297%_
                                               _%hd199549200001%_
                                               _%hd199533200050%_
                                               _%hd199530200040%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199567199924%_))
                                                  (let ((_%e199594199827%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199567199924%_))))
                                                    (let ((_%tl199592199834%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199594199827%_)))
                                                          (_%hd199593199831%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199594199827%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199592199834%_))
                                                          (_%__kont202298202299%_
                                                           _%hd199593199831%_
                                                           _%hd199549200001%_
                                                           _%hd199533200050%_
                                                           _%hd199530200040%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g199525199628%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199525199628%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199525199628%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199525199628%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g199525199628%_))))))
                (let () (declare (not safe)) (_%g199525199628%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e199547199993%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl199544199990%_))
                                                            (_%__kont202300202301%_
                                                             _%hd199533200050%_
                                                             _%hd199530200040%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl199544199990%_))
                        (let ((_%e199622199669%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199544199990%_))))
                          (let ((_%tl199620199676%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199622199669%_)))
                                (_%hd199621199673%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199622199669%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199620199676%_))
                                (_%__kont202302202303%_
                                 _%hd199621199673%_
                                 _%hd199533200050%_
                                 _%hd199530200040%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g199525199628%_)))))
                        (let () (declare (not safe)) (_%g199525199628%_))))
                (let () (declare (not safe)) (_%g199525199628%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199525199628%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199525199628%_))))))
                          (let () (declare (not safe)) (_%g199525199628%_)))))
                  (let () (declare (not safe)) (_%g199525199628%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig199191%_)
        (let* ((_%g199194199260%_
                (lambda (_%g199195199256%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199195199256%_))))
               (_%g199193199507%_
                (lambda (_%g199195199264%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199195199264%_))
                      (let ((_%e199202199267%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199195199264%_))))
                        (let ((_%hd199201199271%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199202199267%_)))
                              (_%tl199200199274%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199202199267%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199200199274%_))
                              (let ((_%e199205199277%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199200199274%_))))
                                (let ((_%hd199204199281%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199205199277%_)))
                                      (_%tl199203199284%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199205199277%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd199204199281%_))
                                      (let ((_%e199206199287%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd199204199281%_))))
                                        (if (equal? _%e199206199287%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199203199284%_))
                                                (let ((_%e199209199291%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl199203199284%_))))
                                                  (let ((_%hd199208199295%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199209199291%_)))
                                                        (_%tl199207199298%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199209199291%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199208199295%_))
                                                        (let ((_%e199212199301%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd199208199295%_))))
                  (let ((_%hd199211199305%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199212199301%_)))
                        (_%tl199210199308%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199212199301%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd199211199305%_))
                        (if (let ((__tmp202659 |gxc[1]#_g202660_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp202659
                               _%hd199211199305%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199210199308%_))
                                (let ((_%e199215199311%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199210199308%_))))
                                  (let ((_%hd199214199315%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199215199311%_)))
                                        (_%tl199213199318%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199215199311%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199213199318%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199207199298%_))
                                            (let ((_%e199218199321%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl199207199298%_))))
                                              (let ((_%hd199217199325%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199218199321%_)))
                                                    (_%tl199216199328%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199218199321%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd199217199325%_))
                                                    (let ((_%e199219199331%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd199217199325%_))))
                                                      (if (equal? _%e199219199331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl199216199328%_))
                      (let ((_%e199222199335%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl199216199328%_))))
                        (let ((_%hd199221199339%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199222199335%_)))
                              (_%tl199220199342%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199222199335%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199221199339%_))
                              (let ((_%e199225199345%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd199221199339%_))))
                                (let ((_%hd199224199349%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199225199345%_)))
                                      (_%tl199223199352%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199225199345%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199224199349%_))
                                      (if (let ((__tmp202661
                                                 |gxc[1]#_g202662_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp202661
                                             _%hd199224199349%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199223199352%_))
                                              (let ((_%e199228199355%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl199223199352%_))))
                                                (let ((_%hd199227199359%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199228199355%_)))
                                                      (_%tl199226199362%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199228199355%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199226199362%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199220199342%_))
                                                          (let ((_%e199231199365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl199220199342%_))))
                    (let ((_%hd199230199369%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199231199365%_)))
                          (_%tl199229199372%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199231199365%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd199230199369%_))
                          (let ((_%e199232199375%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199230199369%_))))
                            (if (equal? _%e199232199375%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199229199372%_))
                                    (let ((_%e199235199379%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl199229199372%_))))
                                      (let ((_%hd199234199383%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199235199379%_)))
                                            (_%tl199233199386%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199235199379%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199234199383%_))
                                            (let ((_%e199238199389%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd199234199383%_))))
                                              (let ((_%hd199237199393%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199238199389%_)))
                                                    (_%tl199236199396%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199238199389%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199237199393%_))
                                                    (if (let ((__tmp202663
                                                               |gxc[1]#_g202664_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp202663
                                                           _%hd199237199393%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199236199396%_))
                                                            (let ((_%e199241199399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl199236199396%_))))
                      (let ((_%hd199240199403%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199241199399%_)))
                            (_%tl199239199406%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199241199399%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199239199406%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199233199386%_))
                                (let ((_%e199244199409%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199233199386%_))))
                                  (let ((_%hd199243199413%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199244199409%_)))
                                        (_%tl199242199416%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199244199409%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd199243199413%_))
                                        (let ((_%e199245199419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199243199413%_))))
                                          (if (equal? _%e199245199419%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199242199416%_))
                                                  (let ((_%e199248199423%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199242199416%_))))
                                                    (let ((_%hd199247199427%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199248199423%_)))
                                                          (_%tl199246199430%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199248199423%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199247199427%_))
                                                          (let ((_%e199251199433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd199247199427%_))))
                    (let ((_%hd199250199437%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199251199433%_)))
                          (_%tl199249199440%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199251199433%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd199250199437%_))
                          (if (let ((__tmp202665 |gxc[1]#_g202666_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp202665
                                 _%hd199250199437%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199249199440%_))
                                  (let ((_%e199254199443%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199249199440%_))))
                                    (let ((_%hd199253199447%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199254199443%_)))
                                          (_%tl199252199450%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199254199443%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199252199450%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199246199430%_))
                                              ((lambda (_%L199453%_
                                                        _%L199455%_
                                                        _%L199456%_
                                                        _%L199457%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L199453%_))
                                                     (cons _%L199453%_
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
                                                 (cons _%L199456%_ '()))
                                           '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#f))
                                               _%hd199253199447%_
                                               _%hd199240199403%_
                                               _%hd199227199359%_
                                               _%hd199214199315%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g199194199260%_
                                                 _%g199195199264%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199194199260%_
                                             _%g199195199264%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199194199260%_ _%g199195199264%_)))
                              (let ()
                                (declare (not safe))
                                (_%g199194199260%_ _%g199195199264%_)))
                          (let ()
                            (declare (not safe))
                            (_%g199194199260%_ _%g199195199264%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g199194199260%_ _%g199195199264%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199194199260%_
                                                     _%g199195199264%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199194199260%_
                                                 _%g199195199264%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199194199260%_
                                           _%g199195199264%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199194199260%_ _%g199195199264%_)))
                            (let ()
                              (declare (not safe))
                              (_%g199194199260%_ _%g199195199264%_)))))
                    (let ()
                      (declare (not safe))
                      (_%g199194199260%_ _%g199195199264%_)))
                (let ()
                  (declare (not safe))
                  (_%g199194199260%_ _%g199195199264%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199194199260%_
                                                       _%g199195199264%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199194199260%_
                                               _%g199195199264%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199194199260%_ _%g199195199264%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g199194199260%_ _%g199195199264%_))))
                          (let ()
                            (declare (not safe))
                            (_%g199194199260%_ _%g199195199264%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g199194199260%_ _%g199195199264%_)))
              (let ()
                (declare (not safe))
                (_%g199194199260%_ _%g199195199264%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199194199260%_
                                                 _%g199195199264%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199194199260%_
                                             _%g199195199264%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199194199260%_
                                         _%g199195199264%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199194199260%_ _%g199195199264%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g199194199260%_ _%g199195199264%_)))
                  (let ()
                    (declare (not safe))
                    (_%g199194199260%_ _%g199195199264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199194199260%_
                                                       _%g199195199264%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199194199260%_
                                               _%g199195199264%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199194199260%_
                                           _%g199195199264%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199194199260%_ _%g199195199264%_)))
                            (let ()
                              (declare (not safe))
                              (_%g199194199260%_ _%g199195199264%_)))
                        (let ()
                          (declare (not safe))
                          (_%g199194199260%_ _%g199195199264%_)))))
                (let ()
                  (declare (not safe))
                  (_%g199194199260%_ _%g199195199264%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199194199260%_
                                                   _%g199195199264%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199194199260%_
                                               _%g199195199264%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199194199260%_
                                         _%g199195199264%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199194199260%_ _%g199195199264%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g199194199260%_ _%g199195199264%_))))))
          (declare (not safe))
          (_%g199193199507%_ _%sig199191%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx200279%_)
        (let* ((_%g200282200300%_
                (lambda (_%g200283200296%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200283200296%_))))
               (_%g200281200355%_
                (lambda (_%g200283200304%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200283200304%_))
                      (let ((_%e200288200307%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200283200304%_))))
                        (let ((_%hd200287200311%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200288200307%_)))
                              (_%tl200286200314%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200288200307%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200286200314%_))
                              (let ((_%e200291200317%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200286200314%_))))
                                (let ((_%hd200290200321%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200291200317%_)))
                                      (_%tl200289200324%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200291200317%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200289200324%_))
                                      (let ((_%e200294200327%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200289200324%_))))
                                        (let ((_%hd200293200331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200294200327%_)))
                                              (_%tl200292200334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200294200327%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200292200334%_))
                                              ((lambda (_%L200337%_
                                                        _%L200339%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200339%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200337%_)))
                                                     (begin
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-procedure!|
                                                          _%stx200279%_
                                                          _%L200339%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-class!|
                                                          _%stx200279%_
                                                          _%L200337%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L200339%_
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
                                                   (cons _%L200337%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200282200300%_
                                                      _%g200283200304%_)))
                                               _%hd200293200331%_
                                               _%hd200290200321%_)
                                              (_%g200282200300%_
                                               _%g200283200304%_))))
                                      (_%g200282200300%_ _%g200283200304%_))))
                              (_%g200282200300%_ _%g200283200304%_))))
                      (_%g200282200300%_ _%g200283200304%_)))))
          (_%g200281200355%_ _%stx200279%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx200359%_)
        (let* ((_%g200362200386%_
                (lambda (_%g200363200382%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200363200382%_))))
               (_%g200361200669%_
                (lambda (_%g200363200390%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200363200390%_))
                      (let ((_%e200368200393%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200363200390%_))))
                        (let ((_%hd200367200397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200368200393%_)))
                              (_%tl200366200400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200368200393%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200366200400%_))
                              (let ((_%e200371200403%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200366200400%_))))
                                (let ((_%hd200370200407%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200371200403%_)))
                                      (_%tl200369200410%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200371200403%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200369200410%_))
                                      (let ((_g202667_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200369200410%_
                                                '0))))
                                        (begin
                                          (let ((_g202668_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202667_)
                                                       (##vector-length
                                                        _g202667_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202668_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202668_)))
                                          (let ((_%target200372200413%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202667_ 0)))
                                                (_%tl200374200416%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202667_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200374200416%_))
                                                (letrec ((_%loop200375200419%_
                                                          (lambda (_%hd200373200423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature200379200426%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200373200423%_))
                        (let ((_%e200376200429%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200373200423%_))))
                          (let ((_%lp-hd200377200433%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200376200429%_)))
                                (_%lp-tl200378200436%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200376200429%_))))
                            (_%loop200375200419%_
                             _%lp-tl200378200436%_
                             (cons _%lp-hd200377200433%_
                                   _%signature200379200426%_))))
                        (let ((_%signature200380200439%_
                               (reverse _%signature200379200426%_)))
                          ((lambda (_%L200443%_ _%L200445%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200445%_))
                                 (let* ((_%g200463200478%_
                                         (lambda (_%g200464200474%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200464200474%_))))
                                        (_%g200462200657%_
                                         (lambda (_%g200464200482%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g200464200482%_))
                                               (let ((_%e200469200485%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g200464200482%_))))
                                                 (let ((_%hd200468200489%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200469200485%_)))
                                                       (_%tl200467200492%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200469200485%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200467200492%_))
                                                       (let ((_%e200472200495%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl200467200492%_))))
                 (let ((_%hd200471200499%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200472200495%_)))
                       (_%tl200470200502%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200472200495%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl200470200502%_))
                       ((lambda (_%L200505%_ _%L200507%_)
                          (let ()
                            (let* ((_%g200523200531%_
                                    (lambda (_%g200524200527%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g200524200527%_))))
                                   (_%g200522200653%_
                                    (lambda (_%g200524200535%_)
                                      ((lambda (_%L200538%_)
                                         (let ()
                                           (let* ((_%unchecked200551%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (|gxc[1]#signature->unchecked-signature|
                                                      _%L200505%_)))
                                                  (_%g200554200562%_
                                                   (lambda (_%g200555200558%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g200555200558%_))))
                                                  (_%g200553200585%_
                                                   (lambda (_%g200555200566%_)
                                                     ((lambda (_%L200569%_)
                                                        (let ()
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (cons _%L200538%_ (cons _%L200569%_ '())))))
              _%g200555200566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g200553200585%_
                                              (if _%unchecked200551%_
                                                  (let* ((_%g200589200604%_
                                                          (lambda (_%g200590200600%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g200590200600%_))))
                                                         (_%g200588200649%_
                                                          (lambda (_%g200590200608%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g200590200608%_))
                        (let ((_%e200595200611%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%g200590200608%_))))
                          (let ((_%hd200594200615%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200595200611%_)))
                                (_%tl200593200618%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200595200611%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200593200618%_))
                                (let ((_%e200598200621%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200593200618%_))))
                                  (let ((_%hd200597200625%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200598200621%_)))
                                        (_%tl200596200628%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200598200621%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200596200628%_))
                                        ((lambda (_%L200631%_ _%L200633%_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type))
                                                   (cons _%L200633%_
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L200507%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons _%L200631%_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd200597200625%_
                                         _%hd200594200615%_)
                                        (_%g200589200604%_
                                         _%g200590200608%_))))
                                (_%g200589200604%_ _%g200590200608%_))))
                        (_%g200589200604%_ _%g200590200608%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g200588200649%_
                                                     _%unchecked200551%_))
                                                  '(begin))))))
                                       _%g200524200535%_))))
                              (_%g200522200653%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'declare-type))
                                     (cons _%L200445%_
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!primitive-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200507%_ '()))
                     (cons '#f (cons 'signature: (cons _%L200505%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                        _%hd200471200499%_
                        _%hd200468200489%_)
                       (_%g200463200478%_ _%g200464200482%_))))
               (_%g200463200478%_ _%g200464200482%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200463200478%_
                                                _%g200464200482%_)))))
                                   (_%g200462200657%_
                                    (let ((__tmp202669
                                           (let ((__tmp202670
                                                  (lambda (_%g200660200663%_
                                                           _%g200661200666%_)
                                                    (cons _%g200660200663%_
                                                          _%g200661200666%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp202670
                                              '()
                                              _%L200443%_))))
                                      (declare (not safe))
                                      (|gxc[1]#parse-signature|
                                       _%stx200359%_
                                       _%L200445%_
                                       __tmp202669))))
                                 (_%g200362200386%_ _%g200363200390%_)))
                           _%signature200380200439%_
                           _%hd200370200407%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200375200419%_
                                                   _%target200372200413%_
                                                   '()))
                                                (_%g200362200386%_
                                                 _%g200363200390%_)))))
                                      (_%g200362200386%_ _%g200363200390%_))))
                              (_%g200362200386%_ _%g200363200390%_))))
                      (_%g200362200386%_ _%g200363200390%_)))))
          (_%g200361200669%_ _%stx200359%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx200674%_)
        (let* ((_%g200677200701%_
                (lambda (_%g200678200697%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200678200697%_))))
               (_%g200676201515%_
                (lambda (_%g200678200705%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200678200705%_))
                      (let ((_%e200683200708%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200678200705%_))))
                        (let ((_%hd200682200712%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200683200708%_)))
                              (_%tl200681200715%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200683200708%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200681200715%_))
                              (let ((_%e200686200718%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200681200715%_))))
                                (let ((_%hd200685200722%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200686200718%_)))
                                      (_%tl200684200725%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200686200718%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200684200725%_))
                                      (let ((_g202671_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200684200725%_
                                                '0))))
                                        (begin
                                          (let ((_g202672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202671_)
                                                       (##vector-length
                                                        _g202671_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202672_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202672_)))
                                          (let ((_%target200687200728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202671_ 0)))
                                                (_%tl200689200731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202671_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200689200731%_))
                                                (letrec ((_%loop200690200734%_
                                                          (lambda (_%hd200688200738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature200694200741%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200688200738%_))
                        (let ((_%e200691200744%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200688200738%_))))
                          (let ((_%lp-hd200692200748%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200691200744%_)))
                                (_%lp-tl200693200751%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200691200744%_))))
                            (_%loop200690200734%_
                             _%lp-tl200693200751%_
                             (cons _%lp-hd200692200748%_
                                   _%case-signature200694200741%_))))
                        (let ((_%case-signature200695200754%_
                               (reverse _%case-signature200694200741%_)))
                          ((lambda (_%L200758%_ _%L200760%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200760%_))
                                 (let* ((_%signatures200791%_
                                         (map (lambda (_%g200777200779%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (|gxc[1]#parse-signature|
                                                   _%stx200674%_
                                                   _%L200760%_
                                                   _%g200777200779%_)))
                                              (let ((__tmp202673
                                                     (lambda (_%g200782200785%_
                                                              _%g200783200788%_)
                                                       (cons _%g200782200785%_
                                                             _%g200783200788%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp202673
                                                 '()
                                                 _%L200758%_))))
                                        (_%g200794200820%_
                                         (lambda (_%g200795200816%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200795200816%_))))
                                        (_%g200793201511%_
                                         (lambda (_%g200795200824%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g200795200824%_))
                                               (let ((_g202674_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g200795200824%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g202675_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g202674_)
                        (##vector-length _g202674_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g202675_ 2)))
                 (error "Context expects 2 values" _g202675_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target200798200827%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202674_
                                                             0)))
                                                         (_%tl200800200830%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202674_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200800200830%_))
                                                         (letrec ((_%loop200801200833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd200799200837%_
                                    _%sig200805200840%_
                                    _%arity200806200842%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd200799200837%_))
                                 (let ((_%e200802200845%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd200799200837%_))))
                                   (let ((_%lp-hd200803200849%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200802200845%_)))
                                         (_%lp-tl200804200852%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200802200845%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd200803200849%_))
                                         (let ((_%e200811200855%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd200803200849%_))))
                                           (let ((_%hd200810200859%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200811200855%_)))
                                                 (_%tl200809200862%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200811200855%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200809200862%_))
                                                 (let ((_%e200814200865%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200809200862%_))))
                                                   (let ((_%hd200813200869%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200814200865%_)))
                                                         (_%tl200812200872%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200814200865%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200812200872%_))
                                                         (_%loop200801200833%_
                                                          _%lp-tl200804200852%_
                                                          (cons _%hd200813200869%_
                                                                _%sig200805200840%_)
                                                          (cons _%hd200810200859%_
                                                                _%arity200806200842%_))
                                                         (_%g200794200820%_
                                                          _%g200795200824%_))))
                                                 (_%g200794200820%_
                                                  _%g200795200824%_))))
                                         (_%g200794200820%_
                                          _%g200795200824%_))))
                                 (let ((_%sig200807200875%_
                                        (reverse _%sig200805200840%_))
                                       (_%arity200808200878%_
                                        (reverse _%arity200806200842%_)))
                                   ((lambda (_%L200881%_ _%L200883%_)
                                      (let ()
                                        (let* ((_%g200900200908%_
                                                (lambda (_%g200901200904%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g200901200904%_))))
                                               (_%g200899201496%_
                                                (lambda (_%g200901200912%_)
                                                  ((lambda (_%L200915%_)
                                                     (let ()
                                                       (let* ((_%g200928200936%_
                                                               (lambda (_%g200929200932%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g200929200932%_))))
                      (_%g200927200958%_
                       (lambda (_%g200929200940%_)
                         ((lambda (_%L200943%_)
                            (let ()
                              (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'begin))
                                    (cons _%L200915%_
                                          (cons _%L200943%_ '())))))
                          _%g200929200940%_))))
                 (_%g200927200958%_
                  (let ((_g202676_
                         (let _%loop200962%_ ((_%rest200965%_
                                               _%signatures200791%_)
                                              (_%unchecked-proc200967%_ '#f)
                                              (_%unchecked-clauses200968%_
                                               '()))
                           (let* ((_%rest200969200977%_ _%rest200965%_)
                                  (_%else200971200989%_
                                   (lambda ()
                                     (values _%unchecked-proc200967%_
                                             (reverse!
                                              _%unchecked-clauses200968%_))))
                                  (_%K200973201361%_
                                   (lambda (_%rest200993%_ _%hd200995%_)
                                     (let* ((_%g200997201070%_
                                             (lambda (_%g200998201066%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g200998201066%_))))
                                            (_%g200996201357%_
                                             (lambda (_%g200998201074%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g200998201074%_))
                                                   (let ((_%e201006201077%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%g200998201074%_))))
                                                     (let ((_%hd201005201081%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201006201077%_)))
                                                           (_%tl201004201084%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201006201077%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl201004201084%_))
                                                           (let ((_%e201009201087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl201004201084%_))))
                     (let ((_%hd201008201091%_
                            (let ()
                              (declare (not safe))
                              (##car _%e201009201087%_)))
                           (_%tl201007201094%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e201009201087%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd201008201091%_))
                           (let ((_%e201012201097%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%hd201008201091%_))))
                             (let ((_%hd201011201101%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e201012201097%_)))
                                   (_%tl201010201104%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e201012201097%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl201010201104%_))
                                   (let ((_%e201015201107%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl201010201104%_))))
                                     (let ((_%hd201014201111%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201015201107%_)))
                                           (_%tl201013201114%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201015201107%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-datum?
                                              _%hd201014201111%_))
                                           (let ((_%e201016201117%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd201014201111%_))))
                                             (if (equal? _%e201016201117%_
                                                         'arguments:)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl201013201114%_))
                                                     (let ((_%e201019201121%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%tl201013201114%_))))
                                                       (let ((_%hd201018201125%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e201019201121%_)))
                     (_%tl201017201128%_
                      (let () (declare (not safe)) (##cdr _%e201019201121%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd201018201125%_))
                     (let ((_%e201022201131%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%hd201018201125%_))))
                       (let ((_%hd201021201135%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201022201131%_)))
                             (_%tl201020201138%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201022201131%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%hd201021201135%_))
                             (if (let ((__tmp202678 |gxc[1]#_g202679_|))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    __tmp202678
                                    _%hd201021201135%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201020201138%_))
                                     (let ((_%e201025201141%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201020201138%_))))
                                       (let ((_%hd201024201145%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201025201141%_)))
                                             (_%tl201023201148%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201025201141%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl201023201148%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl201017201128%_))
                                                 (let ((_%e201028201151%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl201017201128%_))))
                                                   (let ((_%hd201027201155%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201028201151%_)))
                                                         (_%tl201026201158%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201028201151%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-datum?
                                                            _%hd201027201155%_))
                                                         (let ((_%e201029201161%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd201027201155%_))))
                   (if (equal? _%e201029201161%_ 'return:)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl201026201158%_))
                           (let ((_%e201032201165%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%tl201026201158%_))))
                             (let ((_%hd201031201169%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e201032201165%_)))
                                   (_%tl201030201172%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e201032201165%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd201031201169%_))
                                   (let ((_%e201035201175%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%hd201031201169%_))))
                                     (let ((_%hd201034201179%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201035201175%_)))
                                           (_%tl201033201182%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201035201175%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd201034201179%_))
                                           (if (let ((__tmp202680
                                                      |gxc[1]#_g202681_|))
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  __tmp202680
                                                  _%hd201034201179%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl201033201182%_))
                                                   (let ((_%e201038201185%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl201033201182%_))))
                                                     (let ((_%hd201037201189%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201038201185%_)))
                                                           (_%tl201036201192%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201038201185%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl201036201192%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl201030201172%_))
                       (let ((_%e201041201195%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl201030201172%_))))
                         (let ((_%hd201040201199%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201041201195%_)))
                               (_%tl201039201202%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201041201195%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd201040201199%_))
                               (let ((_%e201042201205%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd201040201199%_))))
                                 (if (equal? _%e201042201205%_ 'effect:)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl201039201202%_))
                                         (let ((_%e201045201209%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%tl201039201202%_))))
                                           (let ((_%hd201044201213%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201045201209%_)))
                                                 (_%tl201043201216%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201045201209%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd201044201213%_))
                                                 (let ((_%e201048201219%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%hd201044201213%_))))
                                                   (let ((_%hd201047201223%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201048201219%_)))
                                                         (_%tl201046201226%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201048201219%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd201047201223%_))
                                                         (if (let ((__tmp202682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |gxc[1]#_g202683_|))
                       (declare (not safe))
                       (gx#free-identifier=? __tmp202682 _%hd201047201223%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl201046201226%_))
                         (let ((_%e201051201229%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl201046201226%_))))
                           (let ((_%hd201050201233%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e201051201229%_)))
                                 (_%tl201049201236%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e201051201229%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl201049201236%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201043201216%_))
                                     (let ((_%e201054201239%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201043201216%_))))
                                       (let ((_%hd201053201243%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201054201239%_)))
                                             (_%tl201052201246%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201054201239%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%hd201053201243%_))
                                             (let ((_%e201055201249%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd201053201243%_))))
                                               (if (equal? _%e201055201249%_
                                                           'unchecked:)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl201052201246%_))
                                                       (let ((_%e201058201253%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl201052201246%_))))
                 (let ((_%hd201057201257%_
                        (let ()
                          (declare (not safe))
                          (##car _%e201058201253%_)))
                       (_%tl201056201260%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e201058201253%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd201057201257%_))
                       (let ((_%e201061201263%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd201057201257%_))))
                         (let ((_%hd201060201267%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201061201263%_)))
                               (_%tl201059201270%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201061201263%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%hd201060201267%_))
                               (if (let ((__tmp202684 |gxc[1]#_g202685_|))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      __tmp202684
                                      _%hd201060201267%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl201059201270%_))
                                       (let ((_%e201064201273%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#syntax-e
                                                 _%tl201059201270%_))))
                                         (let ((_%hd201063201277%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e201064201273%_)))
                                               (_%tl201062201280%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e201064201273%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl201062201280%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl201056201260%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl201007201094%_))
                                                       ((lambda (_%L201283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L201285%_
                         _%L201286%_
                         _%L201287%_
                         _%L201288%_)
                  (let ((_%clause201349%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0
                                  '#f
                                  'make-!primitive-lambda))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201288%_ '()))
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
                                       (cons _%L201286%_ '()))
                                 '())))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (_%unchecked201351%_
                         (let () (declare (not safe)) (gx#stx-e _%L201283%_))))
                    (_%loop200962%_
                     _%rest200993%_
                     (let ((_%$e201353%_ _%unchecked201351%_))
                       (if _%$e201353%_ _%$e201353%_ _%unchecked-proc200967%_))
                     (cons _%clause201349%_ _%unchecked-clauses200968%_))))
                _%hd201063201277%_
                _%hd201050201233%_
                _%hd201037201189%_
                _%hd201024201145%_
                _%hd201005201081%_)
               (_%g200997201070%_ _%g200998201074%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g200997201070%_
                                                    _%g200998201074%_))
                                               (_%g200997201070%_
                                                _%g200998201074%_))))
                                       (_%g200997201070%_ _%g200998201074%_))
                                   (_%g200997201070%_ _%g200998201074%_))
                               (_%g200997201070%_ _%g200998201074%_))))
                       (_%g200997201070%_ _%g200998201074%_))))
               (_%g200997201070%_ _%g200998201074%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g200997201070%_
                                                    _%g200998201074%_)))
                                             (_%g200997201070%_
                                              _%g200998201074%_))))
                                     (_%g200997201070%_ _%g200998201074%_))
                                 (_%g200997201070%_ _%g200998201074%_))))
                         (_%g200997201070%_ _%g200998201074%_))
                     (_%g200997201070%_ _%g200998201074%_))
                 (_%g200997201070%_ _%g200998201074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g200997201070%_
                                                  _%g200998201074%_))))
                                         (_%g200997201070%_ _%g200998201074%_))
                                     (_%g200997201070%_ _%g200998201074%_)))
                               (_%g200997201070%_ _%g200998201074%_))))
                       (_%g200997201070%_ _%g200998201074%_))
                   (_%g200997201070%_ _%g200998201074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g200997201070%_
                                                    _%g200998201074%_))
                                               (_%g200997201070%_
                                                _%g200998201074%_))
                                           (_%g200997201070%_
                                            _%g200998201074%_))))
                                   (_%g200997201070%_ _%g200998201074%_))))
                           (_%g200997201070%_ _%g200998201074%_))
                       (_%g200997201070%_ _%g200998201074%_)))
                 (_%g200997201070%_ _%g200998201074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g200997201070%_
                                                  _%g200998201074%_))
                                             (_%g200997201070%_
                                              _%g200998201074%_))))
                                     (_%g200997201070%_ _%g200998201074%_))
                                 (_%g200997201070%_ _%g200998201074%_))
                             (_%g200997201070%_ _%g200998201074%_))))
                     (_%g200997201070%_ _%g200998201074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200997201070%_
                                                      _%g200998201074%_))
                                                 (_%g200997201070%_
                                                  _%g200998201074%_)))
                                           (_%g200997201070%_
                                            _%g200998201074%_))))
                                   (_%g200997201070%_ _%g200998201074%_))))
                           (_%g200997201070%_ _%g200998201074%_))))
                   (_%g200997201070%_ _%g200998201074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g200997201070%_
                                                    _%g200998201074%_)))))
                                       (_%g200996201357%_ _%hd200995%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest200969200977%_))
                                 (let ((_%hd200974201365%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest200969200977%_)))
                                       (_%tl200975201368%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest200969200977%_))))
                                   (let* ((_%hd201371%_ _%hd200974201365%_)
                                          (_%rest201374%_ _%tl200975201368%_))
                                     (_%K200973201361%_
                                      _%rest201374%_
                                      _%hd201371%_)))
                                 (_%else200971200989%_))))))
                    (begin
                      (let ((_g202677_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g202676_)
                                   (##vector-length _g202676_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g202677_ 2)))
                            (error "Context expects 2 values" _g202677_)))
                      (let ((_%unchecked-proc201377%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202676_ 0)))
                            (_%unchecked-clauses201379%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202676_ 1))))
                        (if _%unchecked-proc201377%_
                            (let* ((_%g201381201405%_
                                    (lambda (_%g201382201401%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g201382201401%_))))
                                   (_%g201380201492%_
                                    (lambda (_%g201382201409%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%g201382201409%_))
                                          (let ((_%e201387201412%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%g201382201409%_))))
                                            (let ((_%hd201386201416%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201387201412%_)))
                                                  (_%tl201385201419%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201387201412%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201385201419%_))
                                                  (let ((_%e201390201422%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201385201419%_))))
                                                    (let ((_%hd201389201426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201390201422%_)))
                                                          (_%tl201388201429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201390201422%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%hd201389201426%_))
                                                          (let ((_g202686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%hd201389201426%_ '0))))
                    (begin
                      (let ((_g202687_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g202686_)
                                   (##vector-length _g202686_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g202687_ 2)))
                            (error "Context expects 2 values" _g202687_)))
                      (let ((_%target201391201432%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202686_ 0)))
                            (_%tl201393201435%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202686_ 1))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201393201435%_))
                            (letrec ((_%loop201394201438%_
                                      (lambda (_%hd201392201442%_
                                               _%clause201398201445%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd201392201442%_))
                                            (let ((_%e201395201448%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd201392201442%_))))
                                              (let ((_%lp-hd201396201452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201395201448%_)))
                                                    (_%lp-tl201397201455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201395201448%_))))
                                                (_%loop201394201438%_
                                                 _%lp-tl201397201455%_
                                                 (cons _%lp-hd201396201452%_
                                                       _%clause201398201445%_))))
                                            (let ((_%clause201399201458%_
                                                   (reverse _%clause201398201445%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl201388201429%_))
                                                  ((lambda (_%L201462%_
                                                            _%L201464%_)
                                                     (let ()
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L201464%_
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
                                                   (let ((__tmp202688
                                                          (lambda (_%g201483201486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g201484201489%_)
                    (cons _%g201483201486%_ _%g201484201489%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp202688
                                                      '()
                                                      _%L201462%_)))
                                             '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%clause201399201458%_
                                                   _%hd201386201416%_)
                                                  (_%g201381201405%_
                                                   _%g201382201409%_)))))))
                              (_%loop201394201438%_
                               _%target201391201432%_
                               '()))
                            (_%g201381201405%_ _%g201382201409%_)))))
                  (_%g201381201405%_ _%g201382201409%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g201381201405%_
                                                   _%g201382201409%_))))
                                          (_%g201381201405%_
                                           _%g201382201409%_)))))
                              (_%g201380201492%_
                               (list _%unchecked-proc201377%_
                                     _%unchecked-clauses201379%_)))
                            '(begin)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g200901200912%_))))
                                          (_%g200899201496%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'declare-type))
                                                 (cons _%L200760%_
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
                                            _%L200881%_
                                            _%L200883%_))
                                         (let ((__tmp202689
                                                (lambda (_%g201499201503%_
                                                         _%g201500201506%_
                                                         _%g201501201508%_)
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%g201500201506%_ '()))
                            (cons '#f
                                  (cons 'signature:
                                        (cons _%g201499201503%_ '())))))
                _%g201501201508%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp202689
                                            '()
                                            _%L200881%_
                                            _%L200883%_))))
                                 '()))
                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig200807200875%_
                                    _%arity200808200878%_))))))
                   (_%loop200801200833%_ _%target200798200827%_ '() '()))
                 (_%g200794200820%_ _%g200795200824%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200794200820%_
                                                _%g200795200824%_)))))
                                   (_%g200793201511%_ _%signatures200791%_))
                                 (_%g200677200701%_ _%g200678200705%_)))
                           _%case-signature200695200754%_
                           _%hd200685200722%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200690200734%_
                                                   _%target200687200728%_
                                                   '()))
                                                (_%g200677200701%_
                                                 _%g200678200705%_)))))
                                      (_%g200677200701%_ _%g200678200705%_))))
                              (_%g200677200701%_ _%g200678200705%_))))
                      (_%g200677200701%_ _%g200678200705%_)))))
          (_%g200676201515%_ _%stx200674%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx201523%_)
        (let* ((_%__stx202505202506%_ _%$stx201523%_)
               (_%g201529201589%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202505202506%_)))))
          (let ((_%__kont202508202509%_
                 (lambda (_%L201811%_ _%L201813%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201813%_ '()))
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
                                                       (cons _%L201813%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201811%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont202510202511%_
                 (lambda (_%L201736%_ _%L201738%_ _%L201739%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201739%_ '()))
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
                                                       (cons _%L201739%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201738%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201736%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont202512202513%_
                 (lambda (_%L201650%_ _%L201652%_ _%L201653%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201653%_ '()))
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
                                                       (cons _%L201653%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201652%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201650%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202505202506%_))
                (let ((_%e201535201767%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202505202506%_))))
                  (let ((_%tl201533201774%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201535201767%_)))
                        (_%hd201534201771%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201535201767%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl201533201774%_))
                        (let ((_%e201538201777%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl201533201774%_))))
                          (let ((_%tl201536201784%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201538201777%_)))
                                (_%hd201537201781%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201538201777%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd201537201781%_))
                                (let ((_%e201539201787%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd201537201781%_))))
                                  (if (equal? _%e201539201787%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201536201784%_))
                                          (let ((_%e201542201791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl201536201784%_))))
                                            (let ((_%tl201540201798%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201542201791%_)))
                                                  (_%hd201541201795%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201542201791%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201540201798%_))
                                                  (let ((_%e201545201801%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201540201798%_))))
                                                    (let ((_%tl201543201808%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201545201801%_)))
                                                          (_%hd201544201805%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201545201801%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201543201808%_))
                                                          (_%__kont202508202509%_
                                                           _%hd201544201805%_
                                                           _%hd201541201795%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201529201589%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201529201589%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201529201589%_)))
                                      (if (equal? _%e201539201787%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201536201784%_))
                                              (let ((_%e201558201706%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201536201784%_))))
                                                (let ((_%tl201556201713%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201558201706%_)))
                                                      (_%hd201557201710%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201558201706%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201556201713%_))
                                                      (let ((_%e201561201716%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl201556201713%_))))
                (let ((_%tl201559201723%_
                       (let () (declare (not safe)) (##cdr _%e201561201716%_)))
                      (_%hd201560201720%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201561201716%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201559201723%_))
                      (let ((_%e201564201726%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201559201723%_))))
                        (let ((_%tl201562201733%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201564201726%_)))
                              (_%hd201563201730%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201564201726%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201562201733%_))
                              (_%__kont202510202511%_
                               _%hd201563201730%_
                               _%hd201560201720%_
                               _%hd201557201710%_)
                              (let ()
                                (declare (not safe))
                                (_%g201529201589%_)))))
                      (let () (declare (not safe)) (_%g201529201589%_)))))
              (let () (declare (not safe)) (_%g201529201589%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g201529201589%_)))
                                          (if (equal? _%e201539201787%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201536201784%_))
                                                  (let ((_%e201577201620%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201536201784%_))))
                                                    (let ((_%tl201575201627%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201577201620%_)))
                                                          (_%hd201576201624%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201577201620%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201575201627%_))
                                                          (let ((_%e201580201630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl201575201627%_))))
                    (let ((_%tl201578201637%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201580201630%_)))
                          (_%hd201579201634%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201580201630%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201578201637%_))
                          (let ((_%e201583201640%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201578201637%_))))
                            (let ((_%tl201581201647%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201583201640%_)))
                                  (_%hd201582201644%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201583201640%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201581201647%_))
                                  (_%__kont202512202513%_
                                   _%hd201582201644%_
                                   _%hd201579201634%_
                                   _%hd201576201624%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g201529201589%_)))))
                          (let () (declare (not safe)) (_%g201529201589%_)))))
                  (let () (declare (not safe)) (_%g201529201589%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201529201589%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201529201589%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g201529201589%_)))))
                        (let () (declare (not safe)) (_%g201529201589%_)))))
                (let () (declare (not safe)) (_%g201529201589%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx201835%_)
        (let* ((_%g201839201859%_
                (lambda (_%g201840201855%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201840201855%_))))
               (_%g201838201930%_
                (lambda (_%g201840201863%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201840201863%_))
                      (let ((_%e201844201866%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201840201863%_))))
                        (let ((_%hd201843201870%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201844201866%_)))
                              (_%tl201842201873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201844201866%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201842201873%_))
                              (let ((_g202690_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201842201873%_
                                        '0))))
                                (begin
                                  (let ((_g202691_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202690_)
                                               (##vector-length _g202690_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202691_ 2)))
                                        (error "Context expects 2 values"
                                               _g202691_)))
                                  (let ((_%target201845201876%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202690_ 0)))
                                        (_%tl201847201879%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202690_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201847201879%_))
                                        (letrec ((_%loop201848201882%_
                                                  (lambda (_%hd201846201886%_
                                                           _%decl201852201889%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201846201886%_))
                                                        (let ((_%e201849201892%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201846201886%_))))
                  (let ((_%lp-hd201850201896%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201849201892%_)))
                        (_%lp-tl201851201899%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201849201892%_))))
                    (_%loop201848201882%_
                     _%lp-tl201851201899%_
                     (cons _%lp-hd201850201896%_ _%decl201852201889%_))))
                (let ((_%decl201853201902%_ (reverse _%decl201852201889%_)))
                  ((lambda (_%L201906%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp202692
                                  (lambda (_%g201921201924%_ _%g201922201927%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g201921201924%_)
                                          _%g201922201927%_))))
                             (declare (not safe))
                             (__foldr1 __tmp202692 '() _%L201906%_))))
                   _%decl201853201902%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201848201882%_
                                           _%target201845201876%_
                                           '()))
                                        (_%g201839201859%_
                                         _%g201840201863%_)))))
                              (_%g201839201859%_ _%g201840201863%_))))
                      (_%g201839201859%_ _%g201840201863%_)))))
          (_%g201838201930%_ _%$stx201835%_))))))
