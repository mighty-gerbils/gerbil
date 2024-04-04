(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g202719_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202733_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202735_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202737_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202739_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202752_|
    (##structure
     gx#syntax-quote::t
     'quote
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
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx196275%_)
        (let* ((_%g196279196297%_
                (lambda (_%g196280196293%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196280196293%_))))
               (_%g196278196352%_
                (lambda (_%g196280196301%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196280196301%_))
                      (let ((_%e196285196304%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196280196301%_))))
                        (let ((_%hd196284196308%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196285196304%_)))
                              (_%tl196283196311%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196285196304%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196283196311%_))
                              (let ((_%e196288196314%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196283196311%_))))
                                (let ((_%hd196287196318%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196288196314%_)))
                                      (_%tl196286196321%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196288196314%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196286196321%_))
                                      (let ((_%e196291196324%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196286196321%_))))
                                        (let ((_%hd196290196328%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196291196324%_)))
                                              (_%tl196289196331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196291196324%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196289196331%_))
                                              ((lambda (_%L196334%_
                                                        _%L196336%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196336%_))
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
                               (cons _%L196336%_ '()))
                         (cons _%L196334%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196279196297%_
                                                      _%g196280196301%_)))
                                               _%hd196290196328%_
                                               _%hd196287196318%_)
                                              (_%g196279196297%_
                                               _%g196280196301%_))))
                                      (_%g196279196297%_ _%g196280196301%_))))
                              (_%g196279196297%_ _%g196280196301%_))))
                      (_%g196279196297%_ _%g196280196301%_)))))
          (_%g196278196352%_ _%$stx196275%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx196356%_)
        (let* ((_%g196360196378%_
                (lambda (_%g196361196374%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196361196374%_))))
               (_%g196359196433%_
                (lambda (_%g196361196382%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196361196382%_))
                      (let ((_%e196366196385%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196361196382%_))))
                        (let ((_%hd196365196389%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196366196385%_)))
                              (_%tl196364196392%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196366196385%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196364196392%_))
                              (let ((_%e196369196395%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196364196392%_))))
                                (let ((_%hd196368196399%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196369196395%_)))
                                      (_%tl196367196402%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196369196395%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196367196402%_))
                                      (let ((_%e196372196405%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196367196402%_))))
                                        (let ((_%hd196371196409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196372196405%_)))
                                              (_%tl196370196412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196372196405%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196370196412%_))
                                              ((lambda (_%L196415%_
                                                        _%L196417%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196417%_))
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
                               (cons _%L196417%_ '()))
                         (cons _%L196415%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196360196378%_
                                                      _%g196361196382%_)))
                                               _%hd196371196409%_
                                               _%hd196368196399%_)
                                              (_%g196360196378%_
                                               _%g196361196382%_))))
                                      (_%g196360196378%_ _%g196361196382%_))))
                              (_%g196360196378%_ _%g196361196382%_))))
                      (_%g196360196378%_ _%g196361196382%_)))))
          (_%g196359196433%_ _%$stx196356%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx196437%_)
        (let* ((_%g196441196470%_
                (lambda (_%g196442196466%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196442196466%_))))
               (_%g196440196570%_
                (lambda (_%g196442196474%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196442196474%_))
                      (let ((_%e196447196477%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196442196474%_))))
                        (let ((_%hd196446196481%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196447196477%_)))
                              (_%tl196445196484%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196447196477%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196445196484%_))
                              (let ((_g202697_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196445196484%_
                                        '0))))
                                (begin
                                  (let ((_g202698_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202697_)
                                               (##vector-length _g202697_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202698_ 2)))
                                        (error "Context expects 2 values"
                                               _g202698_)))
                                  (let ((_%target196448196487%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202697_ 0)))
                                        (_%tl196450196490%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202697_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196450196490%_))
                                        (letrec ((_%loop196451196493%_
                                                  (lambda (_%hd196449196497%_
                                                           _%type196455196500%_
                                                           _%symbol196456196502%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196449196497%_))
                                                        (let ((_%e196452196505%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196449196497%_))))
                  (let ((_%lp-hd196453196509%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196452196505%_)))
                        (_%lp-tl196454196512%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196452196505%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196453196509%_))
                        (let ((_%e196461196515%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196453196509%_))))
                          (let ((_%hd196460196519%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196461196515%_)))
                                (_%tl196459196522%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196461196515%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196459196522%_))
                                (let ((_%e196464196525%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196459196522%_))))
                                  (let ((_%hd196463196529%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196464196525%_)))
                                        (_%tl196462196532%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196464196525%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196462196532%_))
                                        (_%loop196451196493%_
                                         _%lp-tl196454196512%_
                                         (cons _%hd196463196529%_
                                               _%type196455196500%_)
                                         (cons _%hd196460196519%_
                                               _%symbol196456196502%_))
                                        (_%g196441196470%_
                                         _%g196442196474%_))))
                                (_%g196441196470%_ _%g196442196474%_))))
                        (_%g196441196470%_ _%g196442196474%_))))
                (let ((_%type196457196535%_ (reverse _%type196455196500%_))
                      (_%symbol196458196538%_
                       (reverse _%symbol196456196502%_)))
                  ((lambda (_%L196541%_ _%L196543%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196541%_
                                _%L196543%_))
                             (let ((__tmp202699
                                    (lambda (_%g196558196562%_
                                             _%g196559196565%_
                                             _%g196560196567%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g196559196565%_
                                                        (cons _%g196558196562%_
                                                              '())))
                                            _%g196560196567%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202699
                                '()
                                _%L196541%_
                                _%L196543%_)))))
                   _%type196457196535%_
                   _%symbol196458196538%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196451196493%_
                                           _%target196448196487%_
                                           '()
                                           '()))
                                        (_%g196441196470%_
                                         _%g196442196474%_)))))
                              (_%g196441196470%_ _%g196442196474%_))))
                      (_%g196441196470%_ _%g196442196474%_)))))
          (_%g196440196570%_ _%$stx196437%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx196575%_)
        (let* ((_%__stx202008202009%_ _%$stx196575%_)
               (_%g196580196622%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202008202009%_)))))
          (let ((_%__kont202011202012%_
                 (lambda (_%L196750%_ _%L196752%_ _%L196753%_ _%L196754%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196754%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196753%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L196752%_ '()))
                                           (cons _%L196750%_ '())))))))
                (_%__kont202013202014%_
                 (lambda (_%L196669%_ _%L196671%_ _%L196672%_ _%L196673%_)
                   (cons _%L196673%_
                         (cons _%L196672%_
                               (cons _%L196671%_
                                     (cons _%L196669%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match202047202048%_
                   (lambda (_%e196588196700%_
                            _%hd196587196704%_
                            _%tl196586196707%_
                            _%e196591196710%_
                            _%hd196590196714%_
                            _%tl196589196717%_
                            _%e196594196720%_
                            _%hd196593196724%_
                            _%tl196592196727%_
                            _%e196597196730%_
                            _%hd196596196734%_
                            _%tl196595196737%_
                            _%e196600196740%_
                            _%hd196599196744%_
                            _%tl196598196747%_)
                     (let ((_%L196750%_ _%hd196599196744%_)
                           (_%L196752%_ _%hd196596196734%_)
                           (_%L196753%_ _%hd196593196724%_)
                           (_%L196754%_ _%hd196590196714%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196754%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196753%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196752%_)))
                           (_%__kont202011202012%_
                            _%L196750%_
                            _%L196752%_
                            _%L196753%_
                            _%L196754%_)
                           (let ()
                             (declare (not safe))
                             (_%g196580196622%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202008202009%_))
                  (let ((_%e196588196700%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202008202009%_))))
                    (let ((_%tl196586196707%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196588196700%_)))
                          (_%hd196587196704%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196588196700%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196586196707%_))
                          (let ((_%e196591196710%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl196586196707%_))))
                            (let ((_%tl196589196717%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196591196710%_)))
                                  (_%hd196590196714%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196591196710%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196589196717%_))
                                  (let ((_%e196594196720%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl196589196717%_))))
                                    (let ((_%tl196592196727%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196594196720%_)))
                                          (_%hd196593196724%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196594196720%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196592196727%_))
                                          (let ((_%e196597196730%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl196592196727%_))))
                                            (let ((_%tl196595196737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196597196730%_)))
                                                  (_%hd196596196734%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196597196730%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196595196737%_))
                                                  (let ((_%e196600196740%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl196595196737%_))))
                                                    (let ((_%tl196598196747%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196600196740%_)))
                                                          (_%hd196599196744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196600196740%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196598196747%_))
                                                          (_%__match202047202048%_
                                                           _%e196588196700%_
                                                           _%hd196587196704%_
                                                           _%tl196586196707%_
                                                           _%e196591196710%_
                                                           _%hd196590196714%_
                                                           _%tl196589196717%_
                                                           _%e196594196720%_
                                                           _%hd196593196724%_
                                                           _%tl196592196727%_
                                                           _%e196597196730%_
                                                           _%hd196596196734%_
                                                           _%tl196595196737%_
                                                           _%e196600196740%_
                                                           _%hd196599196744%_
                                                           _%tl196598196747%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g196580196622%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196595196737%_))
                                                      (_%__kont202013202014%_
                                                       _%hd196596196734%_
                                                       _%hd196593196724%_
                                                       _%hd196590196714%_
                                                       _%hd196587196704%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g196580196622%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g196580196622%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g196580196622%_)))))
                          (let () (declare (not safe)) (_%g196580196622%_)))))
                  (let () (declare (not safe)) (_%g196580196622%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx196779%_)
        (let* ((_%g196783196818%_
                (lambda (_%g196784196814%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196784196814%_))))
               (_%g196782196937%_
                (lambda (_%g196784196822%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196784196822%_))
                      (let ((_%e196790196825%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196784196822%_))))
                        (let ((_%hd196789196829%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196790196825%_)))
                              (_%tl196788196832%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196790196825%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196788196832%_))
                              (let ((_g202700_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196788196832%_
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
                                  (let ((_%target196791196835%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202700_ 0)))
                                        (_%tl196793196838%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202700_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196793196838%_))
                                        (letrec ((_%loop196794196841%_
                                                  (lambda (_%hd196792196845%_
                                                           _%symbol196798196848%_
                                                           _%method196799196850%_
                                                           _%type-t196800196852%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196792196845%_))
                                                        (let ((_%e196795196855%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196792196845%_))))
                  (let ((_%lp-hd196796196859%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196795196855%_)))
                        (_%lp-tl196797196862%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196795196855%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196796196859%_))
                        (let ((_%e196806196865%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196796196859%_))))
                          (let ((_%hd196805196869%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196806196865%_)))
                                (_%tl196804196872%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196806196865%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196804196872%_))
                                (let ((_%e196809196875%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196804196872%_))))
                                  (let ((_%hd196808196879%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196809196875%_)))
                                        (_%tl196807196882%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196809196875%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196807196882%_))
                                        (let ((_%e196812196885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196807196882%_))))
                                          (let ((_%hd196811196889%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196812196885%_)))
                                                (_%tl196810196892%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196812196885%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196810196892%_))
                                                (_%loop196794196841%_
                                                 _%lp-tl196797196862%_
                                                 (cons _%hd196811196889%_
                                                       _%symbol196798196848%_)
                                                 (cons _%hd196808196879%_
                                                       _%method196799196850%_)
                                                 (cons _%hd196805196869%_
                                                       _%type-t196800196852%_))
                                                (_%g196783196818%_
                                                 _%g196784196822%_))))
                                        (_%g196783196818%_
                                         _%g196784196822%_))))
                                (_%g196783196818%_ _%g196784196822%_))))
                        (_%g196783196818%_ _%g196784196822%_))))
                (let ((_%symbol196801196895%_ (reverse _%symbol196798196848%_))
                      (_%method196802196898%_ (reverse _%method196799196850%_))
                      (_%type-t196803196900%_
                       (reverse _%type-t196800196852%_)))
                  ((lambda (_%L196903%_ _%L196905%_ _%L196906%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196903%_
                                _%L196905%_
                                _%L196906%_))
                             (let ((__tmp202702
                                    (lambda (_%g196922196927%_
                                             _%g196923196930%_
                                             _%g196924196932%_
                                             _%g196925196934%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g196924196932%_
                                                        (cons _%g196923196930%_
                                                              (cons _%g196922196927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g196925196934%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp202702
                                '()
                                _%L196903%_
                                _%L196905%_
                                _%L196906%_)))))
                   _%symbol196801196895%_
                   _%method196802196898%_
                   _%type-t196803196900%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196794196841%_
                                           _%target196791196835%_
                                           '()
                                           '()
                                           '()))
                                        (_%g196783196818%_
                                         _%g196784196822%_)))))
                              (_%g196783196818%_ _%g196784196822%_))))
                      (_%g196783196818%_ _%g196784196822%_)))))
          (_%g196782196937%_ _%$stx196779%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx196942%_)
        (let* ((_%g196946196979%_
                (lambda (_%g196947196975%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196947196975%_))))
               (_%g196945197093%_
                (lambda (_%g196947196983%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196947196983%_))
                      (let ((_%e196953196986%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196947196983%_))))
                        (let ((_%hd196952196990%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196953196986%_)))
                              (_%tl196951196993%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196953196986%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196951196993%_))
                              (let ((_%e196956196996%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196951196993%_))))
                                (let ((_%hd196955197000%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196956196996%_)))
                                      (_%tl196954197003%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196956196996%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196954197003%_))
                                      (let ((_g202703_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196954197003%_
                                                '0))))
                                        (begin
                                          (let ((_g202704_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202703_)
                                                       (##vector-length
                                                        _g202703_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202704_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202704_)))
                                          (let ((_%target196957197006%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202703_ 0)))
                                                (_%tl196959197009%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202703_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196959197009%_))
                                                (letrec ((_%loop196960197012%_
                                                          (lambda (_%hd196958197016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol196964197019%_
                           _%method196965197021%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd196958197016%_))
                        (let ((_%e196961197024%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd196958197016%_))))
                          (let ((_%lp-hd196962197028%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196961197024%_)))
                                (_%lp-tl196963197031%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196961197024%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd196962197028%_))
                                (let ((_%e196970197034%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd196962197028%_))))
                                  (let ((_%hd196969197038%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196970197034%_)))
                                        (_%tl196968197041%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196970197034%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196968197041%_))
                                        (let ((_%e196973197044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196968197041%_))))
                                          (let ((_%hd196972197048%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196973197044%_)))
                                                (_%tl196971197051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196973197044%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196971197051%_))
                                                (_%loop196960197012%_
                                                 _%lp-tl196963197031%_
                                                 (cons _%hd196972197048%_
                                                       _%symbol196964197019%_)
                                                 (cons _%hd196969197038%_
                                                       _%method196965197021%_))
                                                (_%g196946196979%_
                                                 _%g196947196983%_))))
                                        (_%g196946196979%_
                                         _%g196947196983%_))))
                                (_%g196946196979%_ _%g196947196983%_))))
                        (let ((_%symbol196966197054%_
                               (reverse _%symbol196964197019%_))
                              (_%method196967197057%_
                               (reverse _%method196965197021%_)))
                          ((lambda (_%L197060%_ _%L197062%_ _%L197063%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L197060%_
                                        _%L197062%_))
                                     (let ((__tmp202705
                                            (lambda (_%g197081197085%_
                                                     _%g197082197088%_
                                                     _%g197083197090%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L197063%_
                                                                (cons _%g197082197088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g197081197085%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g197083197090%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp202705
                                        '()
                                        _%L197060%_
                                        _%L197062%_)))))
                           _%symbol196966197054%_
                           _%method196967197057%_
                           _%hd196955197000%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop196960197012%_
                                                   _%target196957197006%_
                                                   '()
                                                   '()))
                                                (_%g196946196979%_
                                                 _%g196947196983%_)))))
                                      (_%g196946196979%_ _%g196947196983%_))))
                              (_%g196946196979%_ _%g196947196983%_))))
                      (_%g196946196979%_ _%g196947196983%_)))))
          (_%g196945197093%_ _%$stx196942%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx197098%_)
        (let* ((_%g197102197116%_
                (lambda (_%g197103197112%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197103197112%_))))
               (_%g197101197157%_
                (lambda (_%g197103197120%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197103197120%_))
                      (let ((_%e197107197123%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197103197120%_))))
                        (let ((_%hd197106197127%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197107197123%_)))
                              (_%tl197105197130%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197107197123%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197105197130%_))
                              (let ((_%e197110197133%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197105197130%_))))
                                (let ((_%hd197109197137%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197110197133%_)))
                                      (_%tl197108197140%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197110197133%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197108197140%_))
                                      ((lambda (_%L197143%_)
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
                                                           (cons _%L197143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197109197137%_)
                                      (_%g197102197116%_ _%g197103197120%_))))
                              (_%g197102197116%_ _%g197103197120%_))))
                      (_%g197102197116%_ _%g197103197120%_)))))
          (_%g197101197157%_ _%$stx197098%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx197161%_)
        (let* ((_%g197165197219%_
                (lambda (_%g197166197215%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197166197215%_))))
               (_%g197164197400%_
                (lambda (_%g197166197223%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197166197223%_))
                      (let ((_%e197180197226%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197166197223%_))))
                        (let ((_%hd197179197230%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197180197226%_)))
                              (_%tl197178197233%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197180197226%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197178197233%_))
                              (let ((_%e197183197236%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197178197233%_))))
                                (let ((_%hd197182197240%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197183197236%_)))
                                      (_%tl197181197243%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197183197236%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197181197243%_))
                                      (let ((_%e197186197246%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197181197243%_))))
                                        (let ((_%hd197185197250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197186197246%_)))
                                              (_%tl197184197253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197186197246%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197184197253%_))
                                              (let ((_%e197189197256%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197184197253%_))))
                                                (let ((_%hd197188197260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197189197256%_)))
                                                      (_%tl197187197263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197189197256%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197187197263%_))
                                                      (let ((_%e197192197266%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197187197263%_))))
                (let ((_%hd197191197270%_
                       (let () (declare (not safe)) (##car _%e197192197266%_)))
                      (_%tl197190197273%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197192197266%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197190197273%_))
                      (let ((_%e197195197276%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197190197273%_))))
                        (let ((_%hd197194197280%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197195197276%_)))
                              (_%tl197193197283%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197195197276%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197193197283%_))
                              (let ((_%e197198197286%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197193197283%_))))
                                (let ((_%hd197197197290%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197198197286%_)))
                                      (_%tl197196197293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197198197286%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197196197293%_))
                                      (let ((_%e197201197296%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197196197293%_))))
                                        (let ((_%hd197200197300%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197201197296%_)))
                                              (_%tl197199197303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197201197296%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197199197303%_))
                                              (let ((_%e197204197306%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197199197303%_))))
                                                (let ((_%hd197203197310%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197204197306%_)))
                                                      (_%tl197202197313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197204197306%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197202197313%_))
                                                      (let ((_%e197207197316%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197202197313%_))))
                (let ((_%hd197206197320%_
                       (let () (declare (not safe)) (##car _%e197207197316%_)))
                      (_%tl197205197323%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197207197316%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197205197323%_))
                      (let ((_%e197210197326%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197205197323%_))))
                        (let ((_%hd197209197330%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197210197326%_)))
                              (_%tl197208197333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197210197326%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197208197333%_))
                              (let ((_%e197213197336%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197208197333%_))))
                                (let ((_%hd197212197340%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197213197336%_)))
                                      (_%tl197211197343%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197213197336%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197211197343%_))
                                      ((lambda (_%L197346%_
                                                _%L197348%_
                                                _%L197349%_
                                                _%L197350%_
                                                _%L197351%_
                                                _%L197352%_
                                                _%L197353%_
                                                _%L197354%_
                                                _%L197355%_
                                                _%L197356%_
                                                _%L197357%_)
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
                                                           (cons _%L197357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L197356%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L197355%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197354%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197353%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L197352%_ '()))
                                           (cons _%L197351%_
                                                 (cons _%L197350%_
                                                       (cons _%L197349%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197348%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L197346%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd197212197340%_
                                       _%hd197209197330%_
                                       _%hd197206197320%_
                                       _%hd197203197310%_
                                       _%hd197200197300%_
                                       _%hd197197197290%_
                                       _%hd197194197280%_
                                       _%hd197191197270%_
                                       _%hd197188197260%_
                                       _%hd197185197250%_
                                       _%hd197182197240%_)
                                      (_%g197165197219%_ _%g197166197223%_))))
                              (_%g197165197219%_ _%g197166197223%_))))
                      (_%g197165197219%_ _%g197166197223%_))))
              (_%g197165197219%_ _%g197166197223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197165197219%_
                                               _%g197166197223%_))))
                                      (_%g197165197219%_ _%g197166197223%_))))
                              (_%g197165197219%_ _%g197166197223%_))))
                      (_%g197165197219%_ _%g197166197223%_))))
              (_%g197165197219%_ _%g197166197223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197165197219%_
                                               _%g197166197223%_))))
                                      (_%g197165197219%_ _%g197166197223%_))))
                              (_%g197165197219%_ _%g197166197223%_))))
                      (_%g197165197219%_ _%g197166197223%_)))))
          (_%g197164197400%_ _%$stx197161%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx197404%_)
        (let* ((_%g197408197422%_
                (lambda (_%g197409197418%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197409197418%_))))
               (_%g197407197463%_
                (lambda (_%g197409197426%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197409197426%_))
                      (let ((_%e197413197429%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197409197426%_))))
                        (let ((_%hd197412197433%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197413197429%_)))
                              (_%tl197411197436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197413197429%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197411197436%_))
                              (let ((_%e197416197439%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197411197436%_))))
                                (let ((_%hd197415197443%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197416197439%_)))
                                      (_%tl197414197446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197416197439%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197414197446%_))
                                      ((lambda (_%L197449%_)
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
                                                           (cons _%L197449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197415197443%_)
                                      (_%g197408197422%_ _%g197409197426%_))))
                              (_%g197408197422%_ _%g197409197426%_))))
                      (_%g197408197422%_ _%g197409197426%_)))))
          (_%g197407197463%_ _%$stx197404%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx197467%_)
        (let* ((_%g197471197485%_
                (lambda (_%g197472197481%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197472197481%_))))
               (_%g197470197526%_
                (lambda (_%g197472197489%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197472197489%_))
                      (let ((_%e197476197492%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197472197489%_))))
                        (let ((_%hd197475197496%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197476197492%_)))
                              (_%tl197474197499%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197476197492%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197474197499%_))
                              (let ((_%e197479197502%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197474197499%_))))
                                (let ((_%hd197478197506%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197479197502%_)))
                                      (_%tl197477197509%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197479197502%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197477197509%_))
                                      ((lambda (_%L197512%_)
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
                                                           (cons _%L197512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197478197506%_)
                                      (_%g197471197485%_ _%g197472197489%_))))
                              (_%g197471197485%_ _%g197472197489%_))))
                      (_%g197471197485%_ _%g197472197489%_)))))
          (_%g197470197526%_ _%$stx197467%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx197530%_)
        (let* ((_%g197534197556%_
                (lambda (_%g197535197552%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197535197552%_))))
               (_%g197533197625%_
                (lambda (_%g197535197560%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197535197560%_))
                      (let ((_%e197541197563%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197535197560%_))))
                        (let ((_%hd197540197567%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197541197563%_)))
                              (_%tl197539197570%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197541197563%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197539197570%_))
                              (let ((_%e197544197573%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197539197570%_))))
                                (let ((_%hd197543197577%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197544197573%_)))
                                      (_%tl197542197580%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197544197573%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197542197580%_))
                                      (let ((_%e197547197583%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197542197580%_))))
                                        (let ((_%hd197546197587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197547197583%_)))
                                              (_%tl197545197590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197547197583%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197545197590%_))
                                              (let ((_%e197550197593%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197545197590%_))))
                                                (let ((_%hd197549197597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197550197593%_)))
                                                      (_%tl197548197600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197550197593%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197548197600%_))
                                                      ((lambda (_%L197603%_
                                                                _%L197605%_
                                                                _%L197606%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197606%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L197605%_ '()))
                                   (cons _%L197603%_ '())))))
               _%hd197549197597%_
               _%hd197546197587%_
               _%hd197543197577%_)
              (_%g197534197556%_ _%g197535197560%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197534197556%_
                                               _%g197535197560%_))))
                                      (_%g197534197556%_ _%g197535197560%_))))
                              (_%g197534197556%_ _%g197535197560%_))))
                      (_%g197534197556%_ _%g197535197560%_)))))
          (_%g197533197625%_ _%$stx197530%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx197629%_)
        (let* ((_%g197633197655%_
                (lambda (_%g197634197651%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197634197651%_))))
               (_%g197632197724%_
                (lambda (_%g197634197659%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197634197659%_))
                      (let ((_%e197640197662%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197634197659%_))))
                        (let ((_%hd197639197666%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197640197662%_)))
                              (_%tl197638197669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197640197662%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197638197669%_))
                              (let ((_%e197643197672%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197638197669%_))))
                                (let ((_%hd197642197676%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197643197672%_)))
                                      (_%tl197641197679%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197643197672%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197641197679%_))
                                      (let ((_%e197646197682%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197641197679%_))))
                                        (let ((_%hd197645197686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197646197682%_)))
                                              (_%tl197644197689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197646197682%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197644197689%_))
                                              (let ((_%e197649197692%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197644197689%_))))
                                                (let ((_%hd197648197696%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197649197692%_)))
                                                      (_%tl197647197699%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197649197692%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197647197699%_))
                                                      ((lambda (_%L197702%_
                                                                _%L197704%_
                                                                _%L197705%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197705%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L197704%_ '()))
                                   (cons _%L197702%_ '())))))
               _%hd197648197696%_
               _%hd197645197686%_
               _%hd197642197676%_)
              (_%g197633197655%_ _%g197634197659%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197633197655%_
                                               _%g197634197659%_))))
                                      (_%g197633197655%_ _%g197634197659%_))))
                              (_%g197633197655%_ _%g197634197659%_))))
                      (_%g197633197655%_ _%g197634197659%_)))))
          (_%g197632197724%_ _%$stx197629%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx197728%_)
        (let* ((_%g197732197746%_
                (lambda (_%g197733197742%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197733197742%_))))
               (_%g197731197787%_
                (lambda (_%g197733197750%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197733197750%_))
                      (let ((_%e197737197753%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197733197750%_))))
                        (let ((_%hd197736197757%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197737197753%_)))
                              (_%tl197735197760%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197737197753%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197735197760%_))
                              (let ((_%e197740197763%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197735197760%_))))
                                (let ((_%hd197739197767%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197740197763%_)))
                                      (_%tl197738197770%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197740197763%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197738197770%_))
                                      ((lambda (_%L197773%_)
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
                                                           (cons _%L197773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197739197767%_)
                                      (_%g197732197746%_ _%g197733197750%_))))
                              (_%g197732197746%_ _%g197733197750%_))))
                      (_%g197732197746%_ _%g197733197750%_)))))
          (_%g197731197787%_ _%$stx197728%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx197791%_)
        (let* ((_%g197795197813%_
                (lambda (_%g197796197809%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197796197809%_))))
               (_%g197794197868%_
                (lambda (_%g197796197817%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197796197817%_))
                      (let ((_%e197801197820%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197796197817%_))))
                        (let ((_%hd197800197824%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197801197820%_)))
                              (_%tl197799197827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197801197820%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197799197827%_))
                              (let ((_%e197804197830%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197799197827%_))))
                                (let ((_%hd197803197834%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197804197830%_)))
                                      (_%tl197802197837%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197804197830%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197802197837%_))
                                      (let ((_%e197807197840%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197802197837%_))))
                                        (let ((_%hd197806197844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197807197840%_)))
                                              (_%tl197805197847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197807197840%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197805197847%_))
                                              ((lambda (_%L197850%_
                                                        _%L197852%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197852%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197850%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197806197844%_
                                               _%hd197803197834%_)
                                              (_%g197795197813%_
                                               _%g197796197817%_))))
                                      (_%g197795197813%_ _%g197796197817%_))))
                              (_%g197795197813%_ _%g197796197817%_))))
                      (_%g197795197813%_ _%g197796197817%_)))))
          (_%g197794197868%_ _%$stx197791%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx197872%_)
        (let* ((_%__stx202076202077%_ _%$stx197872%_)
               (_%g197879197940%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202076202077%_)))))
          (let ((_%__kont202079202080%_
                 (lambda (_%L198178%_ _%L198180%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198180%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198178%_ '()))
                                     '())))))
                (_%__kont202081202082%_
                 (lambda (_%L198117%_ _%L198119%_ _%L198120%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198120%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198119%_ '()))
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
                                 (cons _%L198117%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont202083202084%_
                 (lambda (_%L198041%_ _%L198043%_)
                   (cons _%L198043%_ (cons _%L198041%_ (cons '#f '())))))
                (_%__kont202085202086%_
                 (lambda (_%L197991%_ _%L197993%_ _%L197994%_)
                   (cons _%L197994%_
                         (cons _%L197993%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L197991%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202076202077%_))
                (let ((_%e197885198148%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202076202077%_))))
                  (let ((_%tl197883198155%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197885198148%_)))
                        (_%hd197884198152%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197885198148%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197883198155%_))
                        (let ((_%e197888198158%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl197883198155%_))))
                          (let ((_%tl197886198165%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197888198158%_)))
                                (_%hd197887198162%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197888198158%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197886198165%_))
                                (let ((_%e197891198168%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197886198165%_))))
                                  (let ((_%tl197889198175%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197891198168%_)))
                                        (_%hd197890198172%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197891198168%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197889198175%_))
                                        (_%__kont202079202080%_
                                         _%hd197890198172%_
                                         _%hd197887198162%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197889198175%_))
                                            (let ((_%e197906198093%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197889198175%_))))
                                              (let ((_%tl197904198100%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197906198093%_)))
                                                    (_%hd197905198097%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197906198093%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd197905198097%_))
                                                    (let ((_%e197907198103%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd197905198097%_))))
                                                      (if (equal? _%e197907198103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197904198100%_))
                      (let ((_%e197910198107%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197904198100%_))))
                        (let ((_%tl197908198114%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197910198107%_)))
                              (_%hd197909198111%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197910198107%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197908198114%_))
                              (_%__kont202081202082%_
                               _%hd197909198111%_
                               _%hd197890198172%_
                               _%hd197887198162%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd197890198172%_))
                                  (let ((_%e197931197977%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197890198172%_))))
                                    (declare (not safe))
                                    (_%g197879197940%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197879197940%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd197890198172%_))
                          (let ((_%e197931197977%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197890198172%_))))
                            (if (equal? _%e197931197977%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197904198100%_))
                                    (_%__kont202085202086%_
                                     _%hd197905198097%_
                                     _%hd197887198162%_
                                     _%hd197884198152%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197879197940%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g197879197940%_))))
                          (let () (declare (not safe)) (_%g197879197940%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd197890198172%_))
                      (let ((_%e197931197977%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197890198172%_))))
                        (if (equal? _%e197931197977%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197904198100%_))
                                (_%__kont202085202086%_
                                 _%hd197905198097%_
                                 _%hd197887198162%_
                                 _%hd197884198152%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197879197940%_)))
                            (let () (declare (not safe)) (_%g197879197940%_))))
                      (let () (declare (not safe)) (_%g197879197940%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd197890198172%_))
                                                        (let ((_%e197931197977%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd197890198172%_))))
                  (if (equal? _%e197931197977%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197904198100%_))
                          (_%__kont202085202086%_
                           _%hd197905198097%_
                           _%hd197887198162%_
                           _%hd197884198152%_)
                          (let () (declare (not safe)) (_%g197879197940%_)))
                      (let () (declare (not safe)) (_%g197879197940%_))))
                (let () (declare (not safe)) (_%g197879197940%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd197890198172%_))
                                                (let ((_%e197931197977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd197890198172%_))))
                                                  (declare (not safe))
                                                  (_%g197879197940%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197879197940%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197886198165%_))
                                    (_%__kont202083202084%_
                                     _%hd197887198162%_
                                     _%hd197884198152%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197879197940%_))))))
                        (let () (declare (not safe)) (_%g197879197940%_)))))
                (let () (declare (not safe)) (_%g197879197940%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx198199%_)
        (let* ((_%g198203198232%_
                (lambda (_%g198204198228%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198204198228%_))))
               (_%g198202198341%_
                (lambda (_%g198204198236%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198204198236%_))
                      (let ((_%e198208198239%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198204198236%_))))
                        (let ((_%hd198207198243%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198208198239%_)))
                              (_%tl198206198246%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198208198239%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198206198246%_))
                              (let ((_g202706_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198206198246%_
                                        '0))))
                                (begin
                                  (let ((_g202707_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202706_)
                                               (##vector-length _g202706_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202707_ 2)))
                                        (error "Context expects 2 values"
                                               _g202707_)))
                                  (let ((_%target198209198249%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202706_ 0)))
                                        (_%tl198211198252%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202706_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198211198252%_))
                                        (letrec ((_%loop198212198255%_
                                                  (lambda (_%hd198210198259%_
                                                           _%clause198216198262%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198210198259%_))
                                                        (let ((_%e198213198265%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198210198259%_))))
                  (let ((_%lp-hd198214198269%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198213198265%_)))
                        (_%lp-tl198215198272%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198213198265%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd198214198269%_))
                        (let ((_g202708_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd198214198269%_
                                  '0))))
                          (begin
                            (let ((_g202709_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g202708_)
                                         (##vector-length _g202708_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g202709_ 2)))
                                  (error "Context expects 2 values"
                                         _g202709_)))
                            (let ((_%target198218198275%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202708_ 0)))
                                  (_%tl198220198278%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202708_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198220198278%_))
                                  (letrec ((_%loop198221198281%_
                                            (lambda (_%hd198219198285%_
                                                     _%clause198225198288%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198219198285%_))
                                                  (let ((_%e198222198291%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd198219198285%_))))
                                                    (let ((_%lp-hd198223198295%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198222198291%_)))
                                                          (_%lp-tl198224198298%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198222198291%_))))
                                                      (_%loop198221198281%_
                                                       _%lp-tl198224198298%_
                                                       (cons _%lp-hd198223198295%_
                                                             _%clause198225198288%_))))
                                                  (let ((_%clause198226198301%_
                                                         (reverse _%clause198225198288%_)))
                                                    (_%loop198212198255%_
                                                     _%lp-tl198215198272%_
                                                     (cons _%clause198226198301%_
                                                           _%clause198216198262%_)))))))
                                    (_%loop198221198281%_
                                     _%target198218198275%_
                                     '()))
                                  (_%g198203198232%_ _%g198204198236%_)))))
                        (_%g198203198232%_ _%g198204198236%_))))
                (let ((_%clause198217198305%_
                       (reverse _%clause198216198262%_)))
                  ((lambda (_%L198309%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp202710
                                              (lambda (_%g198324198329%_
                                                       _%g198325198332%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp202711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g198326198335%_ _%g198327198338%_)
                             (cons _%g198326198335%_ _%g198327198338%_))))
                      (declare (not safe))
                      (__foldr1 __tmp202711 '() _%g198324198329%_)))
              _%g198325198332%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp202710
                                          '()
                                          _%L198309%_)))
                                 '())))
                   _%clause198217198305%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198212198255%_
                                           _%target198209198249%_
                                           '()))
                                        (_%g198203198232%_
                                         _%g198204198236%_)))))
                              (_%g198203198232%_ _%g198204198236%_))))
                      (_%g198203198232%_ _%g198204198236%_)))))
          (_%g198202198341%_ _%$stx198199%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx198347%_)
        (let* ((_%g198351198369%_
                (lambda (_%g198352198365%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198352198365%_))))
               (_%g198350198424%_
                (lambda (_%g198352198373%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198352198373%_))
                      (let ((_%e198357198376%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198352198373%_))))
                        (let ((_%hd198356198380%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198357198376%_)))
                              (_%tl198355198383%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198357198376%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198355198383%_))
                              (let ((_%e198360198386%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198355198383%_))))
                                (let ((_%hd198359198390%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198360198386%_)))
                                      (_%tl198358198393%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198360198386%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198358198393%_))
                                      (let ((_%e198363198396%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198358198393%_))))
                                        (let ((_%hd198362198400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198363198396%_)))
                                              (_%tl198361198403%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198363198396%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198361198403%_))
                                              ((lambda (_%L198406%_
                                                        _%L198408%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198408%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198406%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198362198400%_
                                               _%hd198359198390%_)
                                              (_%g198351198369%_
                                               _%g198352198373%_))))
                                      (_%g198351198369%_ _%g198352198373%_))))
                              (_%g198351198369%_ _%g198352198373%_))))
                      (_%g198351198369%_ _%g198352198373%_)))))
          (_%g198350198424%_ _%$stx198347%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx198428%_)
        (let* ((_%g198432198450%_
                (lambda (_%g198433198446%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198433198446%_))))
               (_%g198431198505%_
                (lambda (_%g198433198454%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198433198454%_))
                      (let ((_%e198438198457%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198433198454%_))))
                        (let ((_%hd198437198461%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198438198457%_)))
                              (_%tl198436198464%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198438198457%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198436198464%_))
                              (let ((_%e198441198467%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198436198464%_))))
                                (let ((_%hd198440198471%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198441198467%_)))
                                      (_%tl198439198474%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198441198467%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198439198474%_))
                                      (let ((_%e198444198477%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198439198474%_))))
                                        (let ((_%hd198443198481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198444198477%_)))
                                              (_%tl198442198484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198444198477%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198442198484%_))
                                              ((lambda (_%L198487%_
                                                        _%L198489%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198489%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198487%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198443198481%_
                                               _%hd198440198471%_)
                                              (_%g198432198450%_
                                               _%g198433198454%_))))
                                      (_%g198432198450%_ _%g198433198454%_))))
                              (_%g198432198450%_ _%g198433198454%_))))
                      (_%g198432198450%_ _%g198433198454%_)))))
          (_%g198431198505%_ _%$stx198428%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx198509%_)
        (let* ((_%g198513198542%_
                (lambda (_%g198514198538%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198514198538%_))))
               (_%g198512198642%_
                (lambda (_%g198514198546%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198514198546%_))
                      (let ((_%e198519198549%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198514198546%_))))
                        (let ((_%hd198518198553%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198519198549%_)))
                              (_%tl198517198556%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198519198549%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198517198556%_))
                              (let ((_g202712_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198517198556%_
                                        '0))))
                                (begin
                                  (let ((_g202713_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202712_)
                                               (##vector-length _g202712_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202713_ 2)))
                                        (error "Context expects 2 values"
                                               _g202713_)))
                                  (let ((_%target198520198559%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202712_ 0)))
                                        (_%tl198522198562%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202712_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198522198562%_))
                                        (letrec ((_%loop198523198565%_
                                                  (lambda (_%hd198521198569%_
                                                           _%rule198527198572%_
                                                           _%proc198528198574%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198521198569%_))
                                                        (let ((_%e198524198577%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198521198569%_))))
                  (let ((_%lp-hd198525198581%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198524198577%_)))
                        (_%lp-tl198526198584%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198524198577%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd198525198581%_))
                        (let ((_%e198533198587%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd198525198581%_))))
                          (let ((_%hd198532198591%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198533198587%_)))
                                (_%tl198531198594%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198533198587%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198531198594%_))
                                (let ((_%e198536198597%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198531198594%_))))
                                  (let ((_%hd198535198601%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198536198597%_)))
                                        (_%tl198534198604%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198536198597%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198534198604%_))
                                        (_%loop198523198565%_
                                         _%lp-tl198526198584%_
                                         (cons _%hd198535198601%_
                                               _%rule198527198572%_)
                                         (cons _%hd198532198591%_
                                               _%proc198528198574%_))
                                        (_%g198513198542%_
                                         _%g198514198546%_))))
                                (_%g198513198542%_ _%g198514198546%_))))
                        (_%g198513198542%_ _%g198514198546%_))))
                (let ((_%rule198529198607%_ (reverse _%rule198527198572%_))
                      (_%proc198530198610%_ (reverse _%proc198528198574%_)))
                  ((lambda (_%L198613%_ _%L198615%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L198613%_
                                _%L198615%_))
                             (let ((__tmp202714
                                    (lambda (_%g198630198634%_
                                             _%g198631198637%_
                                             _%g198632198639%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g198631198637%_
                                                        (cons _%g198630198634%_
                                                              '())))
                                            _%g198632198639%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202714
                                '()
                                _%L198613%_
                                _%L198615%_)))))
                   _%rule198529198607%_
                   _%proc198530198610%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198523198565%_
                                           _%target198520198559%_
                                           '()
                                           '()))
                                        (_%g198513198542%_
                                         _%g198514198546%_)))))
                              (_%g198513198542%_ _%g198514198546%_))))
                      (_%g198513198542%_ _%g198514198546%_)))))
          (_%g198512198642%_ _%$stx198509%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx198647%_)
        (let* ((_%g198651198669%_
                (lambda (_%g198652198665%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198652198665%_))))
               (_%g198650198724%_
                (lambda (_%g198652198673%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198652198673%_))
                      (let ((_%e198657198676%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198652198673%_))))
                        (let ((_%hd198656198680%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198657198676%_)))
                              (_%tl198655198683%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198657198676%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198655198683%_))
                              (let ((_%e198660198686%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198655198683%_))))
                                (let ((_%hd198659198690%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198660198686%_)))
                                      (_%tl198658198693%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198660198686%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198658198693%_))
                                      (let ((_%e198663198696%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198658198693%_))))
                                        (let ((_%hd198662198700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198663198696%_)))
                                              (_%tl198661198703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198663198696%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198661198703%_))
                                              ((lambda (_%L198706%_
                                                        _%L198708%_)
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
                                                   (cons _%L198708%_ '()))
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
                 (cons _%L198706%_ '())))
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
                                   (cons _%L198708%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198662198700%_
                                               _%hd198659198690%_)
                                              (_%g198651198669%_
                                               _%g198652198673%_))))
                                      (_%g198651198669%_ _%g198652198673%_))))
                              (_%g198651198669%_ _%g198652198673%_))))
                      (_%g198651198669%_ _%g198652198673%_)))))
          (_%g198650198724%_ _%$stx198647%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx198728%_)
        (let* ((_%__stx202194202195%_ _%$stx198728%_)
               (_%g198733198758%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202194202195%_)))))
          (let ((_%__kont202197202198%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202199202200%_
                 (lambda (_%L198805%_ _%L198807%_ _%L198808%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L198808%_ (cons _%L198807%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L198805%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202194202195%_))
                (let ((_%e198737198834%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202194202195%_))))
                  (let ((_%tl198735198841%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198737198834%_)))
                        (_%hd198736198838%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198737198834%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198735198841%_))
                        (_%__kont202197202198%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198735198841%_))
                            (let ((_%e198746198775%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198735198841%_))))
                              (let ((_%tl198744198782%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198746198775%_)))
                                    (_%hd198745198779%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198746198775%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd198745198779%_))
                                    (let ((_%e198749198785%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd198745198779%_))))
                                      (let ((_%tl198747198792%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198749198785%_)))
                                            (_%hd198748198789%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198749198785%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198747198792%_))
                                            (let ((_%e198752198795%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198747198792%_))))
                                              (let ((_%tl198750198802%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198752198795%_)))
                                                    (_%hd198751198799%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198752198795%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl198750198802%_))
                                                    (_%__kont202199202200%_
                                                     _%tl198744198782%_
                                                     _%hd198751198799%_
                                                     _%hd198748198789%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198733198758%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g198733198758%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198733198758%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198733198758%_))))))
                (let () (declare (not safe)) (_%g198733198758%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx198852%_)
        (let* ((_%__stx202238202239%_ _%$stx198852%_)
               (_%g198857198888%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202238202239%_)))))
          (let ((_%__kont202241202242%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202243202244%_
                 (lambda (_%L198955%_ _%L198957%_ _%L198958%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L198958%_
                                           (let ((__tmp202715
                                                  (lambda (_%g198978198981%_
                                                           _%g198979198984%_)
                                                    (cons _%g198978198981%_
                                                          _%g198979198984%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp202715
                                              '()
                                              _%L198957%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L198955%_)
                                     '()))))))
            (let ((_%__match202281202282%_
                   (lambda (_%e198867198895%_
                            _%hd198866198899%_
                            _%tl198865198902%_
                            _%e198870198905%_
                            _%hd198869198909%_
                            _%tl198868198912%_
                            _%e198873198915%_
                            _%hd198872198919%_
                            _%tl198871198922%_
                            _%__splice202245202246%_
                            _%target198874198925%_
                            _%tl198876198928%_)
                     (letrec ((_%loop198877198931%_
                               (lambda (_%hd198875198935%_ _%sig198881198938%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd198875198935%_))
                                     (let ((_%e198878198941%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd198875198935%_))))
                                       (let ((_%lp-tl198880198948%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198878198941%_)))
                                             (_%lp-hd198879198945%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198878198941%_))))
                                         (_%loop198877198931%_
                                          _%lp-tl198880198948%_
                                          (cons _%lp-hd198879198945%_
                                                _%sig198881198938%_))))
                                     (let ((_%sig198882198951%_
                                            (reverse _%sig198881198938%_)))
                                       (_%__kont202243202244%_
                                        _%tl198868198912%_
                                        _%sig198882198951%_
                                        _%hd198872198919%_))))))
                       (_%loop198877198931%_ _%target198874198925%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202238202239%_))
                  (let ((_%e198861198994%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202238202239%_))))
                    (let ((_%tl198859199001%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198861198994%_)))
                          (_%hd198860198998%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198861198994%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198859199001%_))
                          (_%__kont202241202242%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198859199001%_))
                              (let ((_%e198870198905%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198859199001%_))))
                                (let ((_%tl198868198912%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198870198905%_)))
                                      (_%hd198869198909%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198870198905%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198869198909%_))
                                      (let ((_%e198873198915%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198869198909%_))))
                                        (let ((_%tl198871198922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198873198915%_)))
                                              (_%hd198872198919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198873198915%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198871198922%_))
                                              (let ((_%__splice202245202246%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198871198922%_
                                                        '0))))
                                                (let ((_%tl198876198928%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202245202246%_
                                                          '1)))
                                                      (_%target198874198925%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202245202246%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198876198928%_))
                                                      (_%__match202281202282%_
                                                       _%e198861198994%_
                                                       _%hd198860198998%_
                                                       _%tl198859199001%_
                                                       _%e198870198905%_
                                                       _%hd198869198909%_
                                                       _%tl198868198912%_
                                                       _%e198873198915%_
                                                       _%hd198872198919%_
                                                       _%tl198871198922%_
                                                       _%__splice202245202246%_
                                                       _%target198874198925%_
                                                       _%tl198876198928%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198857198888%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198857198888%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198857198888%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198857198888%_))))))
                  (let () (declare (not safe)) (_%g198857198888%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx199013%_)
        (let* ((_%__stx202284202285%_ _%$stx199013%_)
               (_%g199018199065%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202284202285%_)))))
          (let ((_%__kont202287202288%_
                 (lambda (_%L199227%_ _%L199229%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L199229%_
                               (let ((__tmp202716
                                      (lambda (_%g199249199252%_
                                               _%g199250199255%_)
                                        (cons _%g199249199252%_
                                              _%g199250199255%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202716 '() _%L199227%_))))))
                (_%__kont202291202292%_
                 (lambda (_%L199122%_ _%L199124%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L199124%_
                               (let ((__tmp202717
                                      (lambda (_%g199141199144%_
                                               _%g199142199147%_)
                                        (cons _%g199141199144%_
                                              _%g199142199147%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202717 '() _%L199122%_)))))))
            (let* ((_%__match202351202352%_
                    (lambda (_%e199047199072%_
                             _%hd199046199076%_
                             _%tl199045199079%_
                             _%e199050199082%_
                             _%hd199049199086%_
                             _%tl199048199089%_
                             _%__splice202293202294%_
                             _%target199051199092%_
                             _%tl199053199095%_)
                      (letrec ((_%loop199054199098%_
                                (lambda (_%hd199052199102%_
                                         _%sig199058199105%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199052199102%_))
                                      (let ((_%e199055199108%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199052199102%_))))
                                        (let ((_%lp-tl199057199115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199055199108%_)))
                                              (_%lp-hd199056199112%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199055199108%_))))
                                          (_%loop199054199098%_
                                           _%lp-tl199057199115%_
                                           (cons _%lp-hd199056199112%_
                                                 _%sig199058199105%_))))
                                      (let ((_%sig199059199118%_
                                             (reverse _%sig199058199105%_)))
                                        (_%__kont202291202292%_
                                         _%sig199059199118%_
                                         _%hd199049199086%_))))))
                        (_%loop199054199098%_ _%target199051199092%_ '()))))
                   (_%__match202343202344%_
                    (lambda (_%e199047199072%_
                             _%hd199046199076%_
                             _%tl199045199079%_
                             _%e199050199082%_
                             _%hd199049199086%_
                             _%tl199048199089%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl199048199089%_))
                          (let ((_%__splice202293202294%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl199048199089%_
                                    '0))))
                            (let ((_%tl199053199095%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202293202294%_
                                      '1)))
                                  (_%target199051199092%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202293202294%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199053199095%_))
                                  (_%__match202351202352%_
                                   _%e199047199072%_
                                   _%hd199046199076%_
                                   _%tl199045199079%_
                                   _%e199050199082%_
                                   _%hd199049199086%_
                                   _%tl199048199089%_
                                   _%__splice202293202294%_
                                   _%target199051199092%_
                                   _%tl199053199095%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g199018199065%_)))))
                          (let () (declare (not safe)) (_%g199018199065%_)))))
                   (_%__match202331202332%_
                    (lambda (_%e199024199157%_
                             _%hd199023199161%_
                             _%tl199022199164%_
                             _%e199027199167%_
                             _%hd199026199171%_
                             _%tl199025199174%_
                             _%e199030199177%_
                             _%hd199029199181%_
                             _%tl199028199184%_
                             _%e199033199187%_
                             _%hd199032199191%_
                             _%tl199031199194%_
                             _%__splice202289202290%_
                             _%target199034199197%_
                             _%tl199036199200%_)
                      (letrec ((_%loop199037199203%_
                                (lambda (_%hd199035199207%_
                                         _%sig199041199210%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199035199207%_))
                                      (let ((_%e199038199213%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199035199207%_))))
                                        (let ((_%lp-tl199040199220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199038199213%_)))
                                              (_%lp-hd199039199217%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199038199213%_))))
                                          (_%loop199037199203%_
                                           _%lp-tl199040199220%_
                                           (cons _%lp-hd199039199217%_
                                                 _%sig199041199210%_))))
                                      (let ((_%sig199042199223%_
                                             (reverse _%sig199041199210%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199028199184%_))
                                            (_%__kont202287202288%_
                                             _%sig199042199223%_
                                             _%hd199026199171%_)
                                            (_%__match202343202344%_
                                             _%e199024199157%_
                                             _%hd199023199161%_
                                             _%tl199022199164%_
                                             _%e199027199167%_
                                             _%hd199026199171%_
                                             _%tl199025199174%_)))))))
                        (_%loop199037199203%_ _%target199034199197%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202284202285%_))
                  (let ((_%e199024199157%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202284202285%_))))
                    (let ((_%tl199022199164%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199024199157%_)))
                          (_%hd199023199161%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199024199157%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199022199164%_))
                          (let ((_%e199027199167%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199022199164%_))))
                            (let ((_%tl199025199174%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199027199167%_)))
                                  (_%hd199026199171%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199027199167%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199025199174%_))
                                  (let ((_%e199030199177%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199025199174%_))))
                                    (let ((_%tl199028199184%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199030199177%_)))
                                          (_%hd199029199181%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199030199177%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd199029199181%_))
                                          (let ((_%e199033199187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd199029199181%_))))
                                            (let ((_%tl199031199194%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199033199187%_)))
                                                  (_%hd199032199191%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199033199187%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd199032199191%_))
                                                  (if (let ((__tmp202718
                                                             |gxc[1]#_g202719_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp202718
                                                         _%hd199032199191%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl199031199194%_))
                                                          (let ((_%__splice202289202290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl199031199194%_ '0))))
                    (let ((_%tl199036199200%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202289202290%_ '1)))
                          (_%target199034199197%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202289202290%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199036199200%_))
                          (_%__match202331202332%_
                           _%e199024199157%_
                           _%hd199023199161%_
                           _%tl199022199164%_
                           _%e199027199167%_
                           _%hd199026199171%_
                           _%tl199025199174%_
                           _%e199030199177%_
                           _%hd199029199181%_
                           _%tl199028199184%_
                           _%e199033199187%_
                           _%hd199032199191%_
                           _%tl199031199194%_
                           _%__splice202289202290%_
                           _%target199034199197%_
                           _%tl199036199200%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl199025199174%_))
                              (let ((_%__splice202293202294%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl199025199174%_
                                        '0))))
                                (let ((_%tl199053199095%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202293202294%_
                                          '1)))
                                      (_%target199051199092%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202293202294%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199053199095%_))
                                      (_%__match202351202352%_
                                       _%e199024199157%_
                                       _%hd199023199161%_
                                       _%tl199022199164%_
                                       _%e199027199167%_
                                       _%hd199026199171%_
                                       _%tl199025199174%_
                                       _%__splice202293202294%_
                                       _%target199051199092%_
                                       _%tl199053199095%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g199018199065%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199018199065%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl199025199174%_))
                      (let ((_%__splice202293202294%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl199025199174%_
                                '0))))
                        (let ((_%tl199053199095%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202293202294%_ '1)))
                              (_%target199051199092%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202293202294%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199053199095%_))
                              (_%__match202351202352%_
                               _%e199024199157%_
                               _%hd199023199161%_
                               _%tl199022199164%_
                               _%e199027199167%_
                               _%hd199026199171%_
                               _%tl199025199174%_
                               _%__splice202293202294%_
                               _%target199051199092%_
                               _%tl199053199095%_)
                              (let ()
                                (declare (not safe))
                                (_%g199018199065%_)))))
                      (let () (declare (not safe)) (_%g199018199065%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl199025199174%_))
                  (let ((_%__splice202293202294%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl199025199174%_ '0))))
                    (let ((_%tl199053199095%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202293202294%_ '1)))
                          (_%target199051199092%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202293202294%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199053199095%_))
                          (_%__match202351202352%_
                           _%e199024199157%_
                           _%hd199023199161%_
                           _%tl199022199164%_
                           _%e199027199167%_
                           _%hd199026199171%_
                           _%tl199025199174%_
                           _%__splice202293202294%_
                           _%target199051199092%_
                           _%tl199053199095%_)
                          (let () (declare (not safe)) (_%g199018199065%_)))))
                  (let () (declare (not safe)) (_%g199018199065%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl199025199174%_))
                                                      (let ((_%__splice202293202294%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl199025199174%_ '0))))
                (let ((_%tl199053199095%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202293202294%_ '1)))
                      (_%target199051199092%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202293202294%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199053199095%_))
                      (_%__match202351202352%_
                       _%e199024199157%_
                       _%hd199023199161%_
                       _%tl199022199164%_
                       _%e199027199167%_
                       _%hd199026199171%_
                       _%tl199025199174%_
                       _%__splice202293202294%_
                       _%target199051199092%_
                       _%tl199053199095%_)
                      (let () (declare (not safe)) (_%g199018199065%_)))))
              (let () (declare (not safe)) (_%g199018199065%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl199025199174%_))
                                              (let ((_%__splice202293202294%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl199025199174%_
                                                        '0))))
                                                (let ((_%tl199053199095%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202293202294%_
                                                          '1)))
                                                      (_%target199051199092%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202293202294%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199053199095%_))
                                                      (_%__match202351202352%_
                                                       _%e199024199157%_
                                                       _%hd199023199161%_
                                                       _%tl199022199164%_
                                                       _%e199027199167%_
                                                       _%hd199026199171%_
                                                       _%tl199025199174%_
                                                       _%__splice202293202294%_
                                                       _%target199051199092%_
                                                       _%tl199053199095%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g199018199065%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199018199065%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199025199174%_))
                                      (let ((_%__splice202293202294%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199025199174%_
                                                '0))))
                                        (let ((_%tl199053199095%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202293202294%_
                                                  '1)))
                                              (_%target199051199092%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202293202294%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199053199095%_))
                                              (_%__match202351202352%_
                                               _%e199024199157%_
                                               _%hd199023199161%_
                                               _%tl199022199164%_
                                               _%e199027199167%_
                                               _%hd199026199171%_
                                               _%tl199025199174%_
                                               _%__splice202293202294%_
                                               _%target199051199092%_
                                               _%tl199053199095%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g199018199065%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199018199065%_))))))
                          (let () (declare (not safe)) (_%g199018199065%_)))))
                  (let () (declare (not safe)) (_%g199018199065%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx200343%_ _%id200345%_)
        (let ((_%proc200349%_
               (let ((__tmp202720
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200345%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202720))))
          (if (let () (declare (not safe)) (procedure? _%proc200349%_))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx200343%_
                 _%id200345%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx200334%_ _%id200336%_)
        (let ((_%klass200340%_
               (let ((__tmp202721
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200336%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202721))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass200340%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx200334%_
                 _%id200336%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx199584%_ _%proc199586%_ _%sig199587%_)
        (letrec ((_%signature-arity199589%_
                  (lambda (_%args200266%_)
                    (let _%loop200269%_ ((_%rest200272%_ _%args200266%_)
                                         (_%count200274%_ '0))
                      (let* ((_%rest200275200286%_ _%rest200272%_)
                             (_%E200279200292%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest200275200286%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K200282200323%_
                               (lambda (_%rest200320%_)
                                 (let ((__tmp202722
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%count200274%_ '1))))
                                   (declare (not safe))
                                   (_%loop200269%_
                                    _%rest200320%_
                                    __tmp202722))))
                              (_%K200281200312%_ (lambda () _%count200274%_))
                              (_%K200280200300%_
                               (lambda () (cons _%count200274%_ '()))))
                          (let ((_%try-match200277200316%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest200275200286%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K200281200312%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K200280200300%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest200275200286%_))
                                (let* ((_%tl200284200327%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest200275200286%_)))
                                       (_%rest200331%_ _%tl200284200327%_))
                                  (declare (not safe))
                                  (_%K200282200323%_ _%rest200331%_))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match200277200316%_)))))))))
                 (_%make-signature199591%_
                  (lambda (_%args200148%_
                           _%return200150%_
                           _%effect200151%_
                           _%unchecked200152%_)
                    (let ((__tmp202723
                           (lambda (_%g200153200155%_)
                             (let ()
                               (declare (not safe))
                               (|gxc[1]#verify-class!|
                                _%ctx199584%_
                                _%g200153200155%_)))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp202723 _%args200148%_))
                    (let ()
                      (declare (not safe))
                      (|gxc[1]#verify-class!| _%ctx199584%_ _%return200150%_))
                    (if _%unchecked200152%_
                        (let ()
                          (declare (not safe))
                          (|gxc[1]#verify-procedure!|
                           _%ctx199584%_
                           _%unchecked200152%_))
                        '#!void)
                    (let ((_%arity200159%_
                           (let ((__tmp202724
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-map1 gx#stx-e _%args200148%_))))
                             (declare (not safe))
                             (_%signature-arity199589%_ __tmp202724))))
                      (if _%effect200151%_
                          (let ((_%effect200162%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect200151%_))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (list? _%effect200162%_))
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect200162%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx199584%_
                                   _%proc199586%_
                                   _%effect200162%_))))
                          '#!void)
                      (cons _%arity200159%_
                            (cons (let* ((_%g200165200188%_
                                          (lambda (_%g200166200184%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g200166200184%_))))
                                         (_%g200164200262%_
                                          (lambda (_%g200166200192%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g200166200192%_))
                                                (let ((_%e200173200195%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g200166200192%_))))
                                                  (let ((_%hd200172200199%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200173200195%_)))
                                                        (_%tl200171200202%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200173200195%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200171200202%_))
                                                        (let ((_%e200176200205%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl200171200202%_))))
                  (let ((_%hd200175200209%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200176200205%_)))
                        (_%tl200174200212%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200176200205%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200174200212%_))
                        (let ((_%e200179200215%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200174200212%_))))
                          (let ((_%hd200178200219%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200179200215%_)))
                                (_%tl200177200222%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200179200215%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200177200222%_))
                                (let ((_%e200182200225%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200177200222%_))))
                                  (let ((_%hd200181200229%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200182200225%_)))
                                        (_%tl200180200232%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200182200225%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200180200232%_))
                                        ((lambda (_%L200235%_
                                                  _%L200237%_
                                                  _%L200238%_
                                                  _%L200239%_)
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
                             (cons _%L200239%_ '()))
                       (cons 'return:
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L200238%_ '()))
                                   (cons 'effect:
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L200237%_ '()))
                                               (cons 'unchecked:
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L200235%_ '()))
                   '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd200181200229%_
                                         _%hd200178200219%_
                                         _%hd200175200209%_
                                         _%hd200172200199%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g200165200188%_
                                           _%g200166200192%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200165200188%_ _%g200166200192%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g200165200188%_ _%g200166200192%_)))))
                (let ()
                  (declare (not safe))
                  (_%g200165200188%_ _%g200166200192%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200165200188%_
                                                   _%g200166200192%_)))))
                                         (__tmp202725
                                          (list _%args200148%_
                                                _%return200150%_
                                                _%effect200151%_
                                                _%unchecked200152%_)))
                                    (declare (not safe))
                                    (_%g200164200262%_ __tmp202725))
                                  '()))))))
          (let ()
            (declare (not safe))
            (|gxc[1]#verify-procedure!| _%ctx199584%_ _%proc199586%_))
          (let* ((_%__stx202362202363%_ _%sig199587%_)
                 (_%g199598199701%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx202362202363%_)))))
            (let ((_%__kont202365202366%_
                   (lambda (_%L200129%_ _%L200131%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature199591%_
                        _%L200131%_
                        _%L200129%_
                        '#f
                        '#f))))
                  (_%__kont202367202368%_
                   (lambda (_%L200080%_ _%L200082%_ _%L200083%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature199591%_
                        _%L200083%_
                        _%L200082%_
                        _%L200080%_
                        '#f))))
                  (_%__kont202369202370%_
                   (lambda (_%L200004%_ _%L200006%_ _%L200007%_)
                     (let ((__tmp202726
                            (let ((__tmp202727
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc199586%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp202727))))
                       (declare (not safe))
                       (_%make-signature199591%_
                        _%L200007%_
                        _%L200006%_
                        _%L200004%_
                        __tmp202726))))
                  (_%__kont202371202372%_
                   (lambda (_%L199910%_ _%L199912%_ _%L199913%_ _%L199914%_)
                     (let ((__tmp202728
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L199910%_))))
                       (declare (not safe))
                       (_%make-signature199591%_
                        _%L199914%_
                        _%L199913%_
                        '#f
                        __tmp202728))))
                  (_%__kont202373202374%_
                   (lambda (_%L199817%_ _%L199819%_)
                     (let ((__tmp202729
                            (let ((__tmp202730
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc199586%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp202730))))
                       (declare (not safe))
                       (_%make-signature199591%_
                        _%L199819%_
                        _%L199817%_
                        '#f
                        __tmp202729))))
                  (_%__kont202375202376%_
                   (lambda (_%L199752%_ _%L199754%_ _%L199755%_)
                     (let ((__tmp202731
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L199752%_))))
                       (declare (not safe))
                       (_%make-signature199591%_
                        _%L199755%_
                        _%L199754%_
                        '#f
                        __tmp202731)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202362202363%_))
                  (let ((_%e199604200109%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202362202363%_))))
                    (let ((_%tl199602200116%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199604200109%_)))
                          (_%hd199603200113%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199604200109%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199602200116%_))
                          (let ((_%e199607200119%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199602200116%_))))
                            (let ((_%tl199605200126%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199607200119%_)))
                                  (_%hd199606200123%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199607200119%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199605200126%_))
                                  (_%__kont202365202366%_
                                   _%hd199606200123%_
                                   _%hd199603200113%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199605200126%_))
                                      (let ((_%e199619200056%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199605200126%_))))
                                        (let ((_%tl199617200063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199619200056%_)))
                                              (_%hd199618200060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199619200056%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd199618200060%_))
                                              (let ((_%e199620200066%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd199618200060%_))))
                                                (if (equal? _%e199620200066%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199617200063%_))
                                                        (let ((_%e199623200070%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl199617200063%_))))
                  (let ((_%tl199621200077%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199623200070%_)))
                        (_%hd199622200074%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199623200070%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl199621200077%_))
                        (_%__kont202367202368%_
                         _%hd199622200074%_
                         _%hd199606200123%_
                         _%hd199603200113%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199621200077%_))
                            (let ((_%e199642199990%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl199621200077%_))))
                              (let ((_%tl199640199997%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199642199990%_)))
                                    (_%hd199641199994%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199642199990%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd199641199994%_))
                                    (let ((_%e199643200000%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199641199994%_))))
                                      (if (equal? _%e199643200000%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199640199997%_))
                                              (_%__kont202369202370%_
                                               _%hd199622200074%_
                                               _%hd199606200123%_
                                               _%hd199603200113%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199640199997%_))
                                                  (let ((_%e199667199900%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199640199997%_))))
                                                    (let ((_%tl199665199907%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199667199900%_)))
                                                          (_%hd199666199904%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199667199900%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199665199907%_))
                                                          (_%__kont202371202372%_
                                                           _%hd199666199904%_
                                                           _%hd199622200074%_
                                                           _%hd199606200123%_
                                                           _%hd199603200113%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g199598199701%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199598199701%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199598199701%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199598199701%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g199598199701%_))))))
                (let () (declare (not safe)) (_%g199598199701%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e199620200066%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl199617200063%_))
                                                            (_%__kont202373202374%_
                                                             _%hd199606200123%_
                                                             _%hd199603200113%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl199617200063%_))
                        (let ((_%e199695199742%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199617200063%_))))
                          (let ((_%tl199693199749%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199695199742%_)))
                                (_%hd199694199746%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199695199742%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199693199749%_))
                                (_%__kont202375202376%_
                                 _%hd199694199746%_
                                 _%hd199606200123%_
                                 _%hd199603200113%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g199598199701%_)))))
                        (let () (declare (not safe)) (_%g199598199701%_))))
                (let () (declare (not safe)) (_%g199598199701%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199598199701%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199598199701%_))))))
                          (let () (declare (not safe)) (_%g199598199701%_)))))
                  (let () (declare (not safe)) (_%g199598199701%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig199264%_)
        (let* ((_%g199267199333%_
                (lambda (_%g199268199329%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199268199329%_))))
               (_%g199266199580%_
                (lambda (_%g199268199337%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199268199337%_))
                      (let ((_%e199275199340%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199268199337%_))))
                        (let ((_%hd199274199344%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199275199340%_)))
                              (_%tl199273199347%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199275199340%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199273199347%_))
                              (let ((_%e199278199350%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199273199347%_))))
                                (let ((_%hd199277199354%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199278199350%_)))
                                      (_%tl199276199357%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199278199350%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd199277199354%_))
                                      (let ((_%e199279199360%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd199277199354%_))))
                                        (if (equal? _%e199279199360%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199276199357%_))
                                                (let ((_%e199282199364%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl199276199357%_))))
                                                  (let ((_%hd199281199368%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199282199364%_)))
                                                        (_%tl199280199371%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199282199364%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199281199368%_))
                                                        (let ((_%e199285199374%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd199281199368%_))))
                  (let ((_%hd199284199378%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199285199374%_)))
                        (_%tl199283199381%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199285199374%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd199284199378%_))
                        (if (let ((__tmp202732 |gxc[1]#_g202733_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp202732
                               _%hd199284199378%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199283199381%_))
                                (let ((_%e199288199384%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199283199381%_))))
                                  (let ((_%hd199287199388%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199288199384%_)))
                                        (_%tl199286199391%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199288199384%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199286199391%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199280199371%_))
                                            (let ((_%e199291199394%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl199280199371%_))))
                                              (let ((_%hd199290199398%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199291199394%_)))
                                                    (_%tl199289199401%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199291199394%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd199290199398%_))
                                                    (let ((_%e199292199404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd199290199398%_))))
                                                      (if (equal? _%e199292199404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl199289199401%_))
                      (let ((_%e199295199408%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl199289199401%_))))
                        (let ((_%hd199294199412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199295199408%_)))
                              (_%tl199293199415%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199295199408%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199294199412%_))
                              (let ((_%e199298199418%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd199294199412%_))))
                                (let ((_%hd199297199422%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199298199418%_)))
                                      (_%tl199296199425%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199298199418%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199297199422%_))
                                      (if (let ((__tmp202734
                                                 |gxc[1]#_g202735_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp202734
                                             _%hd199297199422%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199296199425%_))
                                              (let ((_%e199301199428%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl199296199425%_))))
                                                (let ((_%hd199300199432%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199301199428%_)))
                                                      (_%tl199299199435%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199301199428%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199299199435%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199293199415%_))
                                                          (let ((_%e199304199438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl199293199415%_))))
                    (let ((_%hd199303199442%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199304199438%_)))
                          (_%tl199302199445%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199304199438%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd199303199442%_))
                          (let ((_%e199305199448%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199303199442%_))))
                            (if (equal? _%e199305199448%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199302199445%_))
                                    (let ((_%e199308199452%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl199302199445%_))))
                                      (let ((_%hd199307199456%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199308199452%_)))
                                            (_%tl199306199459%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199308199452%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199307199456%_))
                                            (let ((_%e199311199462%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd199307199456%_))))
                                              (let ((_%hd199310199466%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199311199462%_)))
                                                    (_%tl199309199469%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199311199462%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199310199466%_))
                                                    (if (let ((__tmp202736
                                                               |gxc[1]#_g202737_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp202736
                                                           _%hd199310199466%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199309199469%_))
                                                            (let ((_%e199314199472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl199309199469%_))))
                      (let ((_%hd199313199476%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199314199472%_)))
                            (_%tl199312199479%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199314199472%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199312199479%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199306199459%_))
                                (let ((_%e199317199482%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199306199459%_))))
                                  (let ((_%hd199316199486%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199317199482%_)))
                                        (_%tl199315199489%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199317199482%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd199316199486%_))
                                        (let ((_%e199318199492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199316199486%_))))
                                          (if (equal? _%e199318199492%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199315199489%_))
                                                  (let ((_%e199321199496%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199315199489%_))))
                                                    (let ((_%hd199320199500%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199321199496%_)))
                                                          (_%tl199319199503%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199321199496%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199320199500%_))
                                                          (let ((_%e199324199506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd199320199500%_))))
                    (let ((_%hd199323199510%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199324199506%_)))
                          (_%tl199322199513%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199324199506%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd199323199510%_))
                          (if (let ((__tmp202738 |gxc[1]#_g202739_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp202738
                                 _%hd199323199510%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199322199513%_))
                                  (let ((_%e199327199516%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199322199513%_))))
                                    (let ((_%hd199326199520%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199327199516%_)))
                                          (_%tl199325199523%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199327199516%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199325199523%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199319199503%_))
                                              ((lambda (_%L199526%_
                                                        _%L199528%_
                                                        _%L199529%_
                                                        _%L199530%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L199526%_))
                                                     (cons _%L199526%_
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
                                                 (cons _%L199529%_ '()))
                                           '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#f))
                                               _%hd199326199520%_
                                               _%hd199313199476%_
                                               _%hd199300199432%_
                                               _%hd199287199388%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g199267199333%_
                                                 _%g199268199337%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199267199333%_
                                             _%g199268199337%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199267199333%_ _%g199268199337%_)))
                              (let ()
                                (declare (not safe))
                                (_%g199267199333%_ _%g199268199337%_)))
                          (let ()
                            (declare (not safe))
                            (_%g199267199333%_ _%g199268199337%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g199267199333%_ _%g199268199337%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199267199333%_
                                                     _%g199268199337%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199267199333%_
                                                 _%g199268199337%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199267199333%_
                                           _%g199268199337%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199267199333%_ _%g199268199337%_)))
                            (let ()
                              (declare (not safe))
                              (_%g199267199333%_ _%g199268199337%_)))))
                    (let ()
                      (declare (not safe))
                      (_%g199267199333%_ _%g199268199337%_)))
                (let ()
                  (declare (not safe))
                  (_%g199267199333%_ _%g199268199337%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199267199333%_
                                                       _%g199268199337%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199267199333%_
                                               _%g199268199337%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199267199333%_ _%g199268199337%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g199267199333%_ _%g199268199337%_))))
                          (let ()
                            (declare (not safe))
                            (_%g199267199333%_ _%g199268199337%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g199267199333%_ _%g199268199337%_)))
              (let ()
                (declare (not safe))
                (_%g199267199333%_ _%g199268199337%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199267199333%_
                                                 _%g199268199337%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199267199333%_
                                             _%g199268199337%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199267199333%_
                                         _%g199268199337%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199267199333%_ _%g199268199337%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g199267199333%_ _%g199268199337%_)))
                  (let ()
                    (declare (not safe))
                    (_%g199267199333%_ _%g199268199337%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199267199333%_
                                                       _%g199268199337%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199267199333%_
                                               _%g199268199337%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199267199333%_
                                           _%g199268199337%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199267199333%_ _%g199268199337%_)))
                            (let ()
                              (declare (not safe))
                              (_%g199267199333%_ _%g199268199337%_)))
                        (let ()
                          (declare (not safe))
                          (_%g199267199333%_ _%g199268199337%_)))))
                (let ()
                  (declare (not safe))
                  (_%g199267199333%_ _%g199268199337%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199267199333%_
                                                   _%g199268199337%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199267199333%_
                                               _%g199268199337%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199267199333%_
                                         _%g199268199337%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199267199333%_ _%g199268199337%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g199267199333%_ _%g199268199337%_))))))
          (declare (not safe))
          (_%g199266199580%_ _%sig199264%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx200352%_)
        (let* ((_%g200355200373%_
                (lambda (_%g200356200369%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200356200369%_))))
               (_%g200354200428%_
                (lambda (_%g200356200377%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200356200377%_))
                      (let ((_%e200361200380%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200356200377%_))))
                        (let ((_%hd200360200384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200361200380%_)))
                              (_%tl200359200387%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200361200380%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200359200387%_))
                              (let ((_%e200364200390%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200359200387%_))))
                                (let ((_%hd200363200394%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200364200390%_)))
                                      (_%tl200362200397%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200364200390%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200362200397%_))
                                      (let ((_%e200367200400%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200362200397%_))))
                                        (let ((_%hd200366200404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200367200400%_)))
                                              (_%tl200365200407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200367200400%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200365200407%_))
                                              ((lambda (_%L200410%_
                                                        _%L200412%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200412%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200410%_)))
                                                     (begin
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-procedure!|
                                                          _%stx200352%_
                                                          _%L200412%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-class!|
                                                          _%stx200352%_
                                                          _%L200410%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L200412%_
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
                                                   (cons _%L200410%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200355200373%_
                                                      _%g200356200377%_)))
                                               _%hd200366200404%_
                                               _%hd200363200394%_)
                                              (_%g200355200373%_
                                               _%g200356200377%_))))
                                      (_%g200355200373%_ _%g200356200377%_))))
                              (_%g200355200373%_ _%g200356200377%_))))
                      (_%g200355200373%_ _%g200356200377%_)))))
          (_%g200354200428%_ _%stx200352%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx200432%_)
        (let* ((_%g200435200459%_
                (lambda (_%g200436200455%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200436200455%_))))
               (_%g200434200742%_
                (lambda (_%g200436200463%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200436200463%_))
                      (let ((_%e200441200466%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200436200463%_))))
                        (let ((_%hd200440200470%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200441200466%_)))
                              (_%tl200439200473%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200441200466%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200439200473%_))
                              (let ((_%e200444200476%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200439200473%_))))
                                (let ((_%hd200443200480%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200444200476%_)))
                                      (_%tl200442200483%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200444200476%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200442200483%_))
                                      (let ((_g202740_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200442200483%_
                                                '0))))
                                        (begin
                                          (let ((_g202741_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202740_)
                                                       (##vector-length
                                                        _g202740_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202741_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202741_)))
                                          (let ((_%target200445200486%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202740_ 0)))
                                                (_%tl200447200489%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202740_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200447200489%_))
                                                (letrec ((_%loop200448200492%_
                                                          (lambda (_%hd200446200496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature200452200499%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200446200496%_))
                        (let ((_%e200449200502%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200446200496%_))))
                          (let ((_%lp-hd200450200506%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200449200502%_)))
                                (_%lp-tl200451200509%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200449200502%_))))
                            (_%loop200448200492%_
                             _%lp-tl200451200509%_
                             (cons _%lp-hd200450200506%_
                                   _%signature200452200499%_))))
                        (let ((_%signature200453200512%_
                               (reverse _%signature200452200499%_)))
                          ((lambda (_%L200516%_ _%L200518%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200518%_))
                                 (let* ((_%g200536200551%_
                                         (lambda (_%g200537200547%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200537200547%_))))
                                        (_%g200535200730%_
                                         (lambda (_%g200537200555%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g200537200555%_))
                                               (let ((_%e200542200558%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g200537200555%_))))
                                                 (let ((_%hd200541200562%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200542200558%_)))
                                                       (_%tl200540200565%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200542200558%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200540200565%_))
                                                       (let ((_%e200545200568%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl200540200565%_))))
                 (let ((_%hd200544200572%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200545200568%_)))
                       (_%tl200543200575%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200545200568%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl200543200575%_))
                       ((lambda (_%L200578%_ _%L200580%_)
                          (let ()
                            (let* ((_%g200596200604%_
                                    (lambda (_%g200597200600%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g200597200600%_))))
                                   (_%g200595200726%_
                                    (lambda (_%g200597200608%_)
                                      ((lambda (_%L200611%_)
                                         (let ()
                                           (let* ((_%unchecked200624%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (|gxc[1]#signature->unchecked-signature|
                                                      _%L200578%_)))
                                                  (_%g200627200635%_
                                                   (lambda (_%g200628200631%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g200628200631%_))))
                                                  (_%g200626200658%_
                                                   (lambda (_%g200628200639%_)
                                                     ((lambda (_%L200642%_)
                                                        (let ()
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (cons _%L200611%_ (cons _%L200642%_ '())))))
              _%g200628200639%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g200626200658%_
                                              (if _%unchecked200624%_
                                                  (let* ((_%g200662200677%_
                                                          (lambda (_%g200663200673%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g200663200673%_))))
                                                         (_%g200661200722%_
                                                          (lambda (_%g200663200681%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g200663200681%_))
                        (let ((_%e200668200684%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%g200663200681%_))))
                          (let ((_%hd200667200688%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200668200684%_)))
                                (_%tl200666200691%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200668200684%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200666200691%_))
                                (let ((_%e200671200694%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200666200691%_))))
                                  (let ((_%hd200670200698%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200671200694%_)))
                                        (_%tl200669200701%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200671200694%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200669200701%_))
                                        ((lambda (_%L200704%_ _%L200706%_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type))
                                                   (cons _%L200706%_
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L200580%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons _%L200704%_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd200670200698%_
                                         _%hd200667200688%_)
                                        (_%g200662200677%_
                                         _%g200663200681%_))))
                                (_%g200662200677%_ _%g200663200681%_))))
                        (_%g200662200677%_ _%g200663200681%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g200661200722%_
                                                     _%unchecked200624%_))
                                                  '(begin))))))
                                       _%g200597200608%_))))
                              (_%g200595200726%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'declare-type))
                                     (cons _%L200518%_
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!primitive-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200580%_ '()))
                     (cons '#f (cons 'signature: (cons _%L200578%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                        _%hd200544200572%_
                        _%hd200541200562%_)
                       (_%g200536200551%_ _%g200537200555%_))))
               (_%g200536200551%_ _%g200537200555%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200536200551%_
                                                _%g200537200555%_)))))
                                   (_%g200535200730%_
                                    (let ((__tmp202742
                                           (let ((__tmp202743
                                                  (lambda (_%g200733200736%_
                                                           _%g200734200739%_)
                                                    (cons _%g200733200736%_
                                                          _%g200734200739%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp202743
                                              '()
                                              _%L200516%_))))
                                      (declare (not safe))
                                      (|gxc[1]#parse-signature|
                                       _%stx200432%_
                                       _%L200518%_
                                       __tmp202742))))
                                 (_%g200435200459%_ _%g200436200463%_)))
                           _%signature200453200512%_
                           _%hd200443200480%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200448200492%_
                                                   _%target200445200486%_
                                                   '()))
                                                (_%g200435200459%_
                                                 _%g200436200463%_)))))
                                      (_%g200435200459%_ _%g200436200463%_))))
                              (_%g200435200459%_ _%g200436200463%_))))
                      (_%g200435200459%_ _%g200436200463%_)))))
          (_%g200434200742%_ _%stx200432%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx200747%_)
        (let* ((_%g200750200774%_
                (lambda (_%g200751200770%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200751200770%_))))
               (_%g200749201588%_
                (lambda (_%g200751200778%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200751200778%_))
                      (let ((_%e200756200781%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200751200778%_))))
                        (let ((_%hd200755200785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200756200781%_)))
                              (_%tl200754200788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200756200781%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200754200788%_))
                              (let ((_%e200759200791%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200754200788%_))))
                                (let ((_%hd200758200795%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200759200791%_)))
                                      (_%tl200757200798%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200759200791%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200757200798%_))
                                      (let ((_g202744_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200757200798%_
                                                '0))))
                                        (begin
                                          (let ((_g202745_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202744_)
                                                       (##vector-length
                                                        _g202744_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202745_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202745_)))
                                          (let ((_%target200760200801%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202744_ 0)))
                                                (_%tl200762200804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202744_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200762200804%_))
                                                (letrec ((_%loop200763200807%_
                                                          (lambda (_%hd200761200811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature200767200814%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200761200811%_))
                        (let ((_%e200764200817%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200761200811%_))))
                          (let ((_%lp-hd200765200821%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200764200817%_)))
                                (_%lp-tl200766200824%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200764200817%_))))
                            (_%loop200763200807%_
                             _%lp-tl200766200824%_
                             (cons _%lp-hd200765200821%_
                                   _%case-signature200767200814%_))))
                        (let ((_%case-signature200768200827%_
                               (reverse _%case-signature200767200814%_)))
                          ((lambda (_%L200831%_ _%L200833%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200833%_))
                                 (let* ((_%signatures200864%_
                                         (map (lambda (_%g200850200852%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (|gxc[1]#parse-signature|
                                                   _%stx200747%_
                                                   _%L200833%_
                                                   _%g200850200852%_)))
                                              (let ((__tmp202746
                                                     (lambda (_%g200855200858%_
                                                              _%g200856200861%_)
                                                       (cons _%g200855200858%_
                                                             _%g200856200861%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp202746
                                                 '()
                                                 _%L200831%_))))
                                        (_%g200867200893%_
                                         (lambda (_%g200868200889%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200868200889%_))))
                                        (_%g200866201584%_
                                         (lambda (_%g200868200897%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g200868200897%_))
                                               (let ((_g202747_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g200868200897%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g202748_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g202747_)
                        (##vector-length _g202747_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g202748_ 2)))
                 (error "Context expects 2 values" _g202748_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target200871200900%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202747_
                                                             0)))
                                                         (_%tl200873200903%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202747_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200873200903%_))
                                                         (letrec ((_%loop200874200906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd200872200910%_
                                    _%sig200878200913%_
                                    _%arity200879200915%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd200872200910%_))
                                 (let ((_%e200875200918%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd200872200910%_))))
                                   (let ((_%lp-hd200876200922%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200875200918%_)))
                                         (_%lp-tl200877200925%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200875200918%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd200876200922%_))
                                         (let ((_%e200884200928%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd200876200922%_))))
                                           (let ((_%hd200883200932%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200884200928%_)))
                                                 (_%tl200882200935%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200884200928%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200882200935%_))
                                                 (let ((_%e200887200938%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200882200935%_))))
                                                   (let ((_%hd200886200942%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200887200938%_)))
                                                         (_%tl200885200945%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200887200938%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200885200945%_))
                                                         (_%loop200874200906%_
                                                          _%lp-tl200877200925%_
                                                          (cons _%hd200886200942%_
                                                                _%sig200878200913%_)
                                                          (cons _%hd200883200932%_
                                                                _%arity200879200915%_))
                                                         (_%g200867200893%_
                                                          _%g200868200897%_))))
                                                 (_%g200867200893%_
                                                  _%g200868200897%_))))
                                         (_%g200867200893%_
                                          _%g200868200897%_))))
                                 (let ((_%sig200880200948%_
                                        (reverse _%sig200878200913%_))
                                       (_%arity200881200951%_
                                        (reverse _%arity200879200915%_)))
                                   ((lambda (_%L200954%_ _%L200956%_)
                                      (let ()
                                        (let* ((_%g200973200981%_
                                                (lambda (_%g200974200977%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g200974200977%_))))
                                               (_%g200972201569%_
                                                (lambda (_%g200974200985%_)
                                                  ((lambda (_%L200988%_)
                                                     (let ()
                                                       (let* ((_%g201001201009%_
                                                               (lambda (_%g201002201005%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g201002201005%_))))
                      (_%g201000201031%_
                       (lambda (_%g201002201013%_)
                         ((lambda (_%L201016%_)
                            (let ()
                              (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'begin))
                                    (cons _%L200988%_
                                          (cons _%L201016%_ '())))))
                          _%g201002201013%_))))
                 (_%g201000201031%_
                  (let ((_g202749_
                         (let _%loop201035%_ ((_%rest201038%_
                                               _%signatures200864%_)
                                              (_%unchecked-proc201040%_ '#f)
                                              (_%unchecked-clauses201041%_
                                               '()))
                           (let* ((_%rest201042201050%_ _%rest201038%_)
                                  (_%else201044201062%_
                                   (lambda ()
                                     (values _%unchecked-proc201040%_
                                             (reverse!
                                              _%unchecked-clauses201041%_))))
                                  (_%K201046201434%_
                                   (lambda (_%rest201066%_ _%hd201068%_)
                                     (let* ((_%g201070201143%_
                                             (lambda (_%g201071201139%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g201071201139%_))))
                                            (_%g201069201430%_
                                             (lambda (_%g201071201147%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g201071201147%_))
                                                   (let ((_%e201079201150%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%g201071201147%_))))
                                                     (let ((_%hd201078201154%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201079201150%_)))
                                                           (_%tl201077201157%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201079201150%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl201077201157%_))
                                                           (let ((_%e201082201160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl201077201157%_))))
                     (let ((_%hd201081201164%_
                            (let ()
                              (declare (not safe))
                              (##car _%e201082201160%_)))
                           (_%tl201080201167%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e201082201160%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd201081201164%_))
                           (let ((_%e201085201170%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%hd201081201164%_))))
                             (let ((_%hd201084201174%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e201085201170%_)))
                                   (_%tl201083201177%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e201085201170%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl201083201177%_))
                                   (let ((_%e201088201180%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl201083201177%_))))
                                     (let ((_%hd201087201184%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201088201180%_)))
                                           (_%tl201086201187%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201088201180%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-datum?
                                              _%hd201087201184%_))
                                           (let ((_%e201089201190%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd201087201184%_))))
                                             (if (equal? _%e201089201190%_
                                                         'arguments:)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl201086201187%_))
                                                     (let ((_%e201092201194%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%tl201086201187%_))))
                                                       (let ((_%hd201091201198%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e201092201194%_)))
                     (_%tl201090201201%_
                      (let () (declare (not safe)) (##cdr _%e201092201194%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd201091201198%_))
                     (let ((_%e201095201204%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%hd201091201198%_))))
                       (let ((_%hd201094201208%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201095201204%_)))
                             (_%tl201093201211%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201095201204%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%hd201094201208%_))
                             (if (let ((__tmp202751 |gxc[1]#_g202752_|))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    __tmp202751
                                    _%hd201094201208%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201093201211%_))
                                     (let ((_%e201098201214%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201093201211%_))))
                                       (let ((_%hd201097201218%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201098201214%_)))
                                             (_%tl201096201221%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201098201214%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl201096201221%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl201090201201%_))
                                                 (let ((_%e201101201224%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl201090201201%_))))
                                                   (let ((_%hd201100201228%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201101201224%_)))
                                                         (_%tl201099201231%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201101201224%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-datum?
                                                            _%hd201100201228%_))
                                                         (let ((_%e201102201234%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd201100201228%_))))
                   (if (equal? _%e201102201234%_ 'return:)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl201099201231%_))
                           (let ((_%e201105201238%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%tl201099201231%_))))
                             (let ((_%hd201104201242%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e201105201238%_)))
                                   (_%tl201103201245%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e201105201238%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd201104201242%_))
                                   (let ((_%e201108201248%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%hd201104201242%_))))
                                     (let ((_%hd201107201252%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201108201248%_)))
                                           (_%tl201106201255%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201108201248%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd201107201252%_))
                                           (if (let ((__tmp202753
                                                      |gxc[1]#_g202754_|))
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  __tmp202753
                                                  _%hd201107201252%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl201106201255%_))
                                                   (let ((_%e201111201258%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl201106201255%_))))
                                                     (let ((_%hd201110201262%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201111201258%_)))
                                                           (_%tl201109201265%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201111201258%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl201109201265%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl201103201245%_))
                       (let ((_%e201114201268%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl201103201245%_))))
                         (let ((_%hd201113201272%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201114201268%_)))
                               (_%tl201112201275%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201114201268%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd201113201272%_))
                               (let ((_%e201115201278%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd201113201272%_))))
                                 (if (equal? _%e201115201278%_ 'effect:)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl201112201275%_))
                                         (let ((_%e201118201282%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%tl201112201275%_))))
                                           (let ((_%hd201117201286%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201118201282%_)))
                                                 (_%tl201116201289%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201118201282%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd201117201286%_))
                                                 (let ((_%e201121201292%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%hd201117201286%_))))
                                                   (let ((_%hd201120201296%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201121201292%_)))
                                                         (_%tl201119201299%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201121201292%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd201120201296%_))
                                                         (if (let ((__tmp202755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |gxc[1]#_g202756_|))
                       (declare (not safe))
                       (gx#free-identifier=? __tmp202755 _%hd201120201296%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl201119201299%_))
                         (let ((_%e201124201302%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl201119201299%_))))
                           (let ((_%hd201123201306%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e201124201302%_)))
                                 (_%tl201122201309%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e201124201302%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl201122201309%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201116201289%_))
                                     (let ((_%e201127201312%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201116201289%_))))
                                       (let ((_%hd201126201316%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201127201312%_)))
                                             (_%tl201125201319%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201127201312%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%hd201126201316%_))
                                             (let ((_%e201128201322%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd201126201316%_))))
                                               (if (equal? _%e201128201322%_
                                                           'unchecked:)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl201125201319%_))
                                                       (let ((_%e201131201326%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl201125201319%_))))
                 (let ((_%hd201130201330%_
                        (let ()
                          (declare (not safe))
                          (##car _%e201131201326%_)))
                       (_%tl201129201333%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e201131201326%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd201130201330%_))
                       (let ((_%e201134201336%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd201130201330%_))))
                         (let ((_%hd201133201340%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201134201336%_)))
                               (_%tl201132201343%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201134201336%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%hd201133201340%_))
                               (if (let ((__tmp202757 |gxc[1]#_g202758_|))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      __tmp202757
                                      _%hd201133201340%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl201132201343%_))
                                       (let ((_%e201137201346%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#syntax-e
                                                 _%tl201132201343%_))))
                                         (let ((_%hd201136201350%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e201137201346%_)))
                                               (_%tl201135201353%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e201137201346%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl201135201353%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl201129201333%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl201080201167%_))
                                                       ((lambda (_%L201356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L201358%_
                         _%L201359%_
                         _%L201360%_
                         _%L201361%_)
                  (let ((_%clause201422%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0
                                  '#f
                                  'make-!primitive-lambda))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201361%_ '()))
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
                                       (cons _%L201359%_ '()))
                                 '())))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (_%unchecked201424%_
                         (let () (declare (not safe)) (gx#stx-e _%L201356%_))))
                    (_%loop201035%_
                     _%rest201066%_
                     (let ((_%$e201426%_ _%unchecked201424%_))
                       (if _%$e201426%_ _%$e201426%_ _%unchecked-proc201040%_))
                     (cons _%clause201422%_ _%unchecked-clauses201041%_))))
                _%hd201136201350%_
                _%hd201123201306%_
                _%hd201110201262%_
                _%hd201097201218%_
                _%hd201078201154%_)
               (_%g201070201143%_ _%g201071201147%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201070201143%_
                                                    _%g201071201147%_))
                                               (_%g201070201143%_
                                                _%g201071201147%_))))
                                       (_%g201070201143%_ _%g201071201147%_))
                                   (_%g201070201143%_ _%g201071201147%_))
                               (_%g201070201143%_ _%g201071201147%_))))
                       (_%g201070201143%_ _%g201071201147%_))))
               (_%g201070201143%_ _%g201071201147%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201070201143%_
                                                    _%g201071201147%_)))
                                             (_%g201070201143%_
                                              _%g201071201147%_))))
                                     (_%g201070201143%_ _%g201071201147%_))
                                 (_%g201070201143%_ _%g201071201147%_))))
                         (_%g201070201143%_ _%g201071201147%_))
                     (_%g201070201143%_ _%g201071201147%_))
                 (_%g201070201143%_ _%g201071201147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g201070201143%_
                                                  _%g201071201147%_))))
                                         (_%g201070201143%_ _%g201071201147%_))
                                     (_%g201070201143%_ _%g201071201147%_)))
                               (_%g201070201143%_ _%g201071201147%_))))
                       (_%g201070201143%_ _%g201071201147%_))
                   (_%g201070201143%_ _%g201071201147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201070201143%_
                                                    _%g201071201147%_))
                                               (_%g201070201143%_
                                                _%g201071201147%_))
                                           (_%g201070201143%_
                                            _%g201071201147%_))))
                                   (_%g201070201143%_ _%g201071201147%_))))
                           (_%g201070201143%_ _%g201071201147%_))
                       (_%g201070201143%_ _%g201071201147%_)))
                 (_%g201070201143%_ _%g201071201147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g201070201143%_
                                                  _%g201071201147%_))
                                             (_%g201070201143%_
                                              _%g201071201147%_))))
                                     (_%g201070201143%_ _%g201071201147%_))
                                 (_%g201070201143%_ _%g201071201147%_))
                             (_%g201070201143%_ _%g201071201147%_))))
                     (_%g201070201143%_ _%g201071201147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201070201143%_
                                                      _%g201071201147%_))
                                                 (_%g201070201143%_
                                                  _%g201071201147%_)))
                                           (_%g201070201143%_
                                            _%g201071201147%_))))
                                   (_%g201070201143%_ _%g201071201147%_))))
                           (_%g201070201143%_ _%g201071201147%_))))
                   (_%g201070201143%_ _%g201071201147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201070201143%_
                                                    _%g201071201147%_)))))
                                       (_%g201069201430%_ _%hd201068%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest201042201050%_))
                                 (let ((_%hd201047201438%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest201042201050%_)))
                                       (_%tl201048201441%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest201042201050%_))))
                                   (let* ((_%hd201444%_ _%hd201047201438%_)
                                          (_%rest201447%_ _%tl201048201441%_))
                                     (_%K201046201434%_
                                      _%rest201447%_
                                      _%hd201444%_)))
                                 (_%else201044201062%_))))))
                    (begin
                      (let ((_g202750_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g202749_)
                                   (##vector-length _g202749_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g202750_ 2)))
                            (error "Context expects 2 values" _g202750_)))
                      (let ((_%unchecked-proc201450%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202749_ 0)))
                            (_%unchecked-clauses201452%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202749_ 1))))
                        (if _%unchecked-proc201450%_
                            (let* ((_%g201454201478%_
                                    (lambda (_%g201455201474%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g201455201474%_))))
                                   (_%g201453201565%_
                                    (lambda (_%g201455201482%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%g201455201482%_))
                                          (let ((_%e201460201485%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%g201455201482%_))))
                                            (let ((_%hd201459201489%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201460201485%_)))
                                                  (_%tl201458201492%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201460201485%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201458201492%_))
                                                  (let ((_%e201463201495%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201458201492%_))))
                                                    (let ((_%hd201462201499%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201463201495%_)))
                                                          (_%tl201461201502%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201463201495%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%hd201462201499%_))
                                                          (let ((_g202759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%hd201462201499%_ '0))))
                    (begin
                      (let ((_g202760_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g202759_)
                                   (##vector-length _g202759_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g202760_ 2)))
                            (error "Context expects 2 values" _g202760_)))
                      (let ((_%target201464201505%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202759_ 0)))
                            (_%tl201466201508%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202759_ 1))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201466201508%_))
                            (letrec ((_%loop201467201511%_
                                      (lambda (_%hd201465201515%_
                                               _%clause201471201518%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd201465201515%_))
                                            (let ((_%e201468201521%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd201465201515%_))))
                                              (let ((_%lp-hd201469201525%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201468201521%_)))
                                                    (_%lp-tl201470201528%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201468201521%_))))
                                                (_%loop201467201511%_
                                                 _%lp-tl201470201528%_
                                                 (cons _%lp-hd201469201525%_
                                                       _%clause201471201518%_))))
                                            (let ((_%clause201472201531%_
                                                   (reverse _%clause201471201518%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl201461201502%_))
                                                  ((lambda (_%L201535%_
                                                            _%L201537%_)
                                                     (let ()
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L201537%_
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
                                                   (let ((__tmp202761
                                                          (lambda (_%g201556201559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g201557201562%_)
                    (cons _%g201556201559%_ _%g201557201562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp202761
                                                      '()
                                                      _%L201535%_)))
                                             '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%clause201472201531%_
                                                   _%hd201459201489%_)
                                                  (_%g201454201478%_
                                                   _%g201455201482%_)))))))
                              (_%loop201467201511%_
                               _%target201464201505%_
                               '()))
                            (_%g201454201478%_ _%g201455201482%_)))))
                  (_%g201454201478%_ _%g201455201482%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g201454201478%_
                                                   _%g201455201482%_))))
                                          (_%g201454201478%_
                                           _%g201455201482%_)))))
                              (_%g201453201565%_
                               (list _%unchecked-proc201450%_
                                     _%unchecked-clauses201452%_)))
                            '(begin)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g200974200985%_))))
                                          (_%g200972201569%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'declare-type))
                                                 (cons _%L200833%_
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
                                            _%L200954%_
                                            _%L200956%_))
                                         (let ((__tmp202762
                                                (lambda (_%g201572201576%_
                                                         _%g201573201579%_
                                                         _%g201574201581%_)
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%g201573201579%_ '()))
                            (cons '#f
                                  (cons 'signature:
                                        (cons _%g201572201576%_ '())))))
                _%g201574201581%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp202762
                                            '()
                                            _%L200954%_
                                            _%L200956%_))))
                                 '()))
                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig200880200948%_
                                    _%arity200881200951%_))))))
                   (_%loop200874200906%_ _%target200871200900%_ '() '()))
                 (_%g200867200893%_ _%g200868200897%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200867200893%_
                                                _%g200868200897%_)))))
                                   (_%g200866201584%_ _%signatures200864%_))
                                 (_%g200750200774%_ _%g200751200778%_)))
                           _%case-signature200768200827%_
                           _%hd200758200795%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200763200807%_
                                                   _%target200760200801%_
                                                   '()))
                                                (_%g200750200774%_
                                                 _%g200751200778%_)))))
                                      (_%g200750200774%_ _%g200751200778%_))))
                              (_%g200750200774%_ _%g200751200778%_))))
                      (_%g200750200774%_ _%g200751200778%_)))))
          (_%g200749201588%_ _%stx200747%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx201596%_)
        (let* ((_%__stx202578202579%_ _%$stx201596%_)
               (_%g201602201662%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202578202579%_)))))
          (let ((_%__kont202581202582%_
                 (lambda (_%L201884%_ _%L201886%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201886%_ '()))
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
                                                       (cons _%L201886%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201884%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont202583202584%_
                 (lambda (_%L201809%_ _%L201811%_ _%L201812%_)
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
                     (cons _%L201811%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201809%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont202585202586%_
                 (lambda (_%L201723%_ _%L201725%_ _%L201726%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201726%_ '()))
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
                                                       (cons _%L201726%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201725%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201723%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202578202579%_))
                (let ((_%e201608201840%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202578202579%_))))
                  (let ((_%tl201606201847%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201608201840%_)))
                        (_%hd201607201844%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201608201840%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl201606201847%_))
                        (let ((_%e201611201850%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl201606201847%_))))
                          (let ((_%tl201609201857%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201611201850%_)))
                                (_%hd201610201854%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201611201850%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd201610201854%_))
                                (let ((_%e201612201860%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd201610201854%_))))
                                  (if (equal? _%e201612201860%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201609201857%_))
                                          (let ((_%e201615201864%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl201609201857%_))))
                                            (let ((_%tl201613201871%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201615201864%_)))
                                                  (_%hd201614201868%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201615201864%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201613201871%_))
                                                  (let ((_%e201618201874%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201613201871%_))))
                                                    (let ((_%tl201616201881%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201618201874%_)))
                                                          (_%hd201617201878%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201618201874%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201616201881%_))
                                                          (_%__kont202581202582%_
                                                           _%hd201617201878%_
                                                           _%hd201614201868%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201602201662%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201602201662%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201602201662%_)))
                                      (if (equal? _%e201612201860%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201609201857%_))
                                              (let ((_%e201631201779%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201609201857%_))))
                                                (let ((_%tl201629201786%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201631201779%_)))
                                                      (_%hd201630201783%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201631201779%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201629201786%_))
                                                      (let ((_%e201634201789%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl201629201786%_))))
                (let ((_%tl201632201796%_
                       (let () (declare (not safe)) (##cdr _%e201634201789%_)))
                      (_%hd201633201793%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201634201789%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201632201796%_))
                      (let ((_%e201637201799%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201632201796%_))))
                        (let ((_%tl201635201806%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201637201799%_)))
                              (_%hd201636201803%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201637201799%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201635201806%_))
                              (_%__kont202583202584%_
                               _%hd201636201803%_
                               _%hd201633201793%_
                               _%hd201630201783%_)
                              (let ()
                                (declare (not safe))
                                (_%g201602201662%_)))))
                      (let () (declare (not safe)) (_%g201602201662%_)))))
              (let () (declare (not safe)) (_%g201602201662%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g201602201662%_)))
                                          (if (equal? _%e201612201860%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201609201857%_))
                                                  (let ((_%e201650201693%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201609201857%_))))
                                                    (let ((_%tl201648201700%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201650201693%_)))
                                                          (_%hd201649201697%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201650201693%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201648201700%_))
                                                          (let ((_%e201653201703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl201648201700%_))))
                    (let ((_%tl201651201710%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201653201703%_)))
                          (_%hd201652201707%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201653201703%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201651201710%_))
                          (let ((_%e201656201713%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201651201710%_))))
                            (let ((_%tl201654201720%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201656201713%_)))
                                  (_%hd201655201717%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201656201713%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201654201720%_))
                                  (_%__kont202585202586%_
                                   _%hd201655201717%_
                                   _%hd201652201707%_
                                   _%hd201649201697%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g201602201662%_)))))
                          (let () (declare (not safe)) (_%g201602201662%_)))))
                  (let () (declare (not safe)) (_%g201602201662%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201602201662%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201602201662%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g201602201662%_)))))
                        (let () (declare (not safe)) (_%g201602201662%_)))))
                (let () (declare (not safe)) (_%g201602201662%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx201908%_)
        (let* ((_%g201912201932%_
                (lambda (_%g201913201928%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201913201928%_))))
               (_%g201911202003%_
                (lambda (_%g201913201936%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201913201936%_))
                      (let ((_%e201917201939%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201913201936%_))))
                        (let ((_%hd201916201943%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201917201939%_)))
                              (_%tl201915201946%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201917201939%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201915201946%_))
                              (let ((_g202763_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201915201946%_
                                        '0))))
                                (begin
                                  (let ((_g202764_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202763_)
                                               (##vector-length _g202763_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202764_ 2)))
                                        (error "Context expects 2 values"
                                               _g202764_)))
                                  (let ((_%target201918201949%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202763_ 0)))
                                        (_%tl201920201952%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202763_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201920201952%_))
                                        (letrec ((_%loop201921201955%_
                                                  (lambda (_%hd201919201959%_
                                                           _%decl201925201962%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201919201959%_))
                                                        (let ((_%e201922201965%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201919201959%_))))
                  (let ((_%lp-hd201923201969%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201922201965%_)))
                        (_%lp-tl201924201972%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201922201965%_))))
                    (_%loop201921201955%_
                     _%lp-tl201924201972%_
                     (cons _%lp-hd201923201969%_ _%decl201925201962%_))))
                (let ((_%decl201926201975%_ (reverse _%decl201925201962%_)))
                  ((lambda (_%L201979%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp202765
                                  (lambda (_%g201994201997%_ _%g201995202000%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g201994201997%_)
                                          _%g201995202000%_))))
                             (declare (not safe))
                             (__foldr1 __tmp202765 '() _%L201979%_))))
                   _%decl201926201975%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201921201955%_
                                           _%target201918201949%_
                                           '()))
                                        (_%g201912201932%_
                                         _%g201913201936%_)))))
                              (_%g201912201932%_ _%g201913201936%_))))
                      (_%g201912201932%_ _%g201913201936%_)))))
          (_%g201911202003%_ _%$stx201908%_))))))
