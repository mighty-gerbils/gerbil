(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g202736_|
    (##structure
     gx#syntax-quote::t
     '@list
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
  (define |gxc[1]#_g202769_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202771_|
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
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx196292%_)
        (let* ((_%g196296196314%_
                (lambda (_%g196297196310%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196297196310%_))))
               (_%g196295196369%_
                (lambda (_%g196297196318%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196297196318%_))
                      (let ((_%e196302196321%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196297196318%_))))
                        (let ((_%hd196301196325%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196302196321%_)))
                              (_%tl196300196328%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196302196321%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196300196328%_))
                              (let ((_%e196305196331%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196300196328%_))))
                                (let ((_%hd196304196335%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196305196331%_)))
                                      (_%tl196303196338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196305196331%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196303196338%_))
                                      (let ((_%e196308196341%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196303196338%_))))
                                        (let ((_%hd196307196345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196308196341%_)))
                                              (_%tl196306196348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196308196341%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196306196348%_))
                                              ((lambda (_%L196351%_
                                                        _%L196353%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196353%_))
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
                               (cons _%L196353%_ '()))
                         (cons _%L196351%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196296196314%_
                                                      _%g196297196318%_)))
                                               _%hd196307196345%_
                                               _%hd196304196335%_)
                                              (_%g196296196314%_
                                               _%g196297196318%_))))
                                      (_%g196296196314%_ _%g196297196318%_))))
                              (_%g196296196314%_ _%g196297196318%_))))
                      (_%g196296196314%_ _%g196297196318%_)))))
          (_%g196295196369%_ _%$stx196292%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx196373%_)
        (let* ((_%g196377196395%_
                (lambda (_%g196378196391%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196378196391%_))))
               (_%g196376196450%_
                (lambda (_%g196378196399%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196378196399%_))
                      (let ((_%e196383196402%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196378196399%_))))
                        (let ((_%hd196382196406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196383196402%_)))
                              (_%tl196381196409%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196383196402%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196381196409%_))
                              (let ((_%e196386196412%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196381196409%_))))
                                (let ((_%hd196385196416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196386196412%_)))
                                      (_%tl196384196419%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196386196412%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196384196419%_))
                                      (let ((_%e196389196422%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196384196419%_))))
                                        (let ((_%hd196388196426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196389196422%_)))
                                              (_%tl196387196429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196389196422%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196387196429%_))
                                              ((lambda (_%L196432%_
                                                        _%L196434%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196434%_))
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
                               (cons _%L196434%_ '()))
                         (cons _%L196432%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196377196395%_
                                                      _%g196378196399%_)))
                                               _%hd196388196426%_
                                               _%hd196385196416%_)
                                              (_%g196377196395%_
                                               _%g196378196399%_))))
                                      (_%g196377196395%_ _%g196378196399%_))))
                              (_%g196377196395%_ _%g196378196399%_))))
                      (_%g196377196395%_ _%g196378196399%_)))))
          (_%g196376196450%_ _%$stx196373%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx196454%_)
        (let* ((_%g196458196487%_
                (lambda (_%g196459196483%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196459196483%_))))
               (_%g196457196587%_
                (lambda (_%g196459196491%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196459196491%_))
                      (let ((_%e196464196494%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196459196491%_))))
                        (let ((_%hd196463196498%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196464196494%_)))
                              (_%tl196462196501%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196464196494%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196462196501%_))
                              (let ((_g202714_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196462196501%_
                                        '0))))
                                (begin
                                  (let ((_g202715_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202714_)
                                               (##vector-length _g202714_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202715_ 2)))
                                        (error "Context expects 2 values"
                                               _g202715_)))
                                  (let ((_%target196465196504%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202714_ 0)))
                                        (_%tl196467196507%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202714_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196467196507%_))
                                        (letrec ((_%loop196468196510%_
                                                  (lambda (_%hd196466196514%_
                                                           _%type196472196517%_
                                                           _%symbol196473196519%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196466196514%_))
                                                        (let ((_%e196469196522%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196466196514%_))))
                  (let ((_%lp-hd196470196526%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196469196522%_)))
                        (_%lp-tl196471196529%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196469196522%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196470196526%_))
                        (let ((_%e196478196532%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196470196526%_))))
                          (let ((_%hd196477196536%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196478196532%_)))
                                (_%tl196476196539%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196478196532%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196476196539%_))
                                (let ((_%e196481196542%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196476196539%_))))
                                  (let ((_%hd196480196546%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196481196542%_)))
                                        (_%tl196479196549%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196481196542%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196479196549%_))
                                        (_%loop196468196510%_
                                         _%lp-tl196471196529%_
                                         (cons _%hd196480196546%_
                                               _%type196472196517%_)
                                         (cons _%hd196477196536%_
                                               _%symbol196473196519%_))
                                        (_%g196458196487%_
                                         _%g196459196491%_))))
                                (_%g196458196487%_ _%g196459196491%_))))
                        (_%g196458196487%_ _%g196459196491%_))))
                (let ((_%type196474196552%_ (reverse _%type196472196517%_))
                      (_%symbol196475196555%_
                       (reverse _%symbol196473196519%_)))
                  ((lambda (_%L196558%_ _%L196560%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196558%_
                                _%L196560%_))
                             (let ((__tmp202716
                                    (lambda (_%g196575196579%_
                                             _%g196576196582%_
                                             _%g196577196584%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g196576196582%_
                                                        (cons _%g196575196579%_
                                                              '())))
                                            _%g196577196584%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202716
                                '()
                                _%L196558%_
                                _%L196560%_)))))
                   _%type196474196552%_
                   _%symbol196475196555%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196468196510%_
                                           _%target196465196504%_
                                           '()
                                           '()))
                                        (_%g196458196487%_
                                         _%g196459196491%_)))))
                              (_%g196458196487%_ _%g196459196491%_))))
                      (_%g196458196487%_ _%g196459196491%_)))))
          (_%g196457196587%_ _%$stx196454%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx196592%_)
        (let* ((_%__stx202025202026%_ _%$stx196592%_)
               (_%g196597196639%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202025202026%_)))))
          (let ((_%__kont202028202029%_
                 (lambda (_%L196767%_ _%L196769%_ _%L196770%_ _%L196771%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196771%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196770%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L196769%_ '()))
                                           (cons _%L196767%_ '())))))))
                (_%__kont202030202031%_
                 (lambda (_%L196686%_ _%L196688%_ _%L196689%_ _%L196690%_)
                   (cons _%L196690%_
                         (cons _%L196689%_
                               (cons _%L196688%_
                                     (cons _%L196686%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match202064202065%_
                   (lambda (_%e196605196717%_
                            _%hd196604196721%_
                            _%tl196603196724%_
                            _%e196608196727%_
                            _%hd196607196731%_
                            _%tl196606196734%_
                            _%e196611196737%_
                            _%hd196610196741%_
                            _%tl196609196744%_
                            _%e196614196747%_
                            _%hd196613196751%_
                            _%tl196612196754%_
                            _%e196617196757%_
                            _%hd196616196761%_
                            _%tl196615196764%_)
                     (let ((_%L196767%_ _%hd196616196761%_)
                           (_%L196769%_ _%hd196613196751%_)
                           (_%L196770%_ _%hd196610196741%_)
                           (_%L196771%_ _%hd196607196731%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196771%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196770%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196769%_)))
                           (_%__kont202028202029%_
                            _%L196767%_
                            _%L196769%_
                            _%L196770%_
                            _%L196771%_)
                           (let ()
                             (declare (not safe))
                             (_%g196597196639%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202025202026%_))
                  (let ((_%e196605196717%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202025202026%_))))
                    (let ((_%tl196603196724%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196605196717%_)))
                          (_%hd196604196721%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196605196717%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196603196724%_))
                          (let ((_%e196608196727%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl196603196724%_))))
                            (let ((_%tl196606196734%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196608196727%_)))
                                  (_%hd196607196731%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196608196727%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196606196734%_))
                                  (let ((_%e196611196737%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl196606196734%_))))
                                    (let ((_%tl196609196744%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196611196737%_)))
                                          (_%hd196610196741%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196611196737%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196609196744%_))
                                          (let ((_%e196614196747%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl196609196744%_))))
                                            (let ((_%tl196612196754%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196614196747%_)))
                                                  (_%hd196613196751%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196614196747%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196612196754%_))
                                                  (let ((_%e196617196757%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl196612196754%_))))
                                                    (let ((_%tl196615196764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196617196757%_)))
                                                          (_%hd196616196761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196617196757%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196615196764%_))
                                                          (_%__match202064202065%_
                                                           _%e196605196717%_
                                                           _%hd196604196721%_
                                                           _%tl196603196724%_
                                                           _%e196608196727%_
                                                           _%hd196607196731%_
                                                           _%tl196606196734%_
                                                           _%e196611196737%_
                                                           _%hd196610196741%_
                                                           _%tl196609196744%_
                                                           _%e196614196747%_
                                                           _%hd196613196751%_
                                                           _%tl196612196754%_
                                                           _%e196617196757%_
                                                           _%hd196616196761%_
                                                           _%tl196615196764%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g196597196639%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196612196754%_))
                                                      (_%__kont202030202031%_
                                                       _%hd196613196751%_
                                                       _%hd196610196741%_
                                                       _%hd196607196731%_
                                                       _%hd196604196721%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g196597196639%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g196597196639%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g196597196639%_)))))
                          (let () (declare (not safe)) (_%g196597196639%_)))))
                  (let () (declare (not safe)) (_%g196597196639%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx196796%_)
        (let* ((_%g196800196835%_
                (lambda (_%g196801196831%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196801196831%_))))
               (_%g196799196954%_
                (lambda (_%g196801196839%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196801196839%_))
                      (let ((_%e196807196842%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196801196839%_))))
                        (let ((_%hd196806196846%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196807196842%_)))
                              (_%tl196805196849%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196807196842%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196805196849%_))
                              (let ((_g202717_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196805196849%_
                                        '0))))
                                (begin
                                  (let ((_g202718_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202717_)
                                               (##vector-length _g202717_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202718_ 2)))
                                        (error "Context expects 2 values"
                                               _g202718_)))
                                  (let ((_%target196808196852%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202717_ 0)))
                                        (_%tl196810196855%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202717_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196810196855%_))
                                        (letrec ((_%loop196811196858%_
                                                  (lambda (_%hd196809196862%_
                                                           _%symbol196815196865%_
                                                           _%method196816196867%_
                                                           _%type-t196817196869%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196809196862%_))
                                                        (let ((_%e196812196872%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196809196862%_))))
                  (let ((_%lp-hd196813196876%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196812196872%_)))
                        (_%lp-tl196814196879%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196812196872%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196813196876%_))
                        (let ((_%e196823196882%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196813196876%_))))
                          (let ((_%hd196822196886%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196823196882%_)))
                                (_%tl196821196889%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196823196882%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196821196889%_))
                                (let ((_%e196826196892%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196821196889%_))))
                                  (let ((_%hd196825196896%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196826196892%_)))
                                        (_%tl196824196899%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196826196892%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196824196899%_))
                                        (let ((_%e196829196902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196824196899%_))))
                                          (let ((_%hd196828196906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196829196902%_)))
                                                (_%tl196827196909%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196829196902%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196827196909%_))
                                                (_%loop196811196858%_
                                                 _%lp-tl196814196879%_
                                                 (cons _%hd196828196906%_
                                                       _%symbol196815196865%_)
                                                 (cons _%hd196825196896%_
                                                       _%method196816196867%_)
                                                 (cons _%hd196822196886%_
                                                       _%type-t196817196869%_))
                                                (_%g196800196835%_
                                                 _%g196801196839%_))))
                                        (_%g196800196835%_
                                         _%g196801196839%_))))
                                (_%g196800196835%_ _%g196801196839%_))))
                        (_%g196800196835%_ _%g196801196839%_))))
                (let ((_%symbol196818196912%_ (reverse _%symbol196815196865%_))
                      (_%method196819196915%_ (reverse _%method196816196867%_))
                      (_%type-t196820196917%_
                       (reverse _%type-t196817196869%_)))
                  ((lambda (_%L196920%_ _%L196922%_ _%L196923%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196920%_
                                _%L196922%_
                                _%L196923%_))
                             (let ((__tmp202719
                                    (lambda (_%g196939196944%_
                                             _%g196940196947%_
                                             _%g196941196949%_
                                             _%g196942196951%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g196941196949%_
                                                        (cons _%g196940196947%_
                                                              (cons _%g196939196944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g196942196951%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp202719
                                '()
                                _%L196920%_
                                _%L196922%_
                                _%L196923%_)))))
                   _%symbol196818196912%_
                   _%method196819196915%_
                   _%type-t196820196917%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196811196858%_
                                           _%target196808196852%_
                                           '()
                                           '()
                                           '()))
                                        (_%g196800196835%_
                                         _%g196801196839%_)))))
                              (_%g196800196835%_ _%g196801196839%_))))
                      (_%g196800196835%_ _%g196801196839%_)))))
          (_%g196799196954%_ _%$stx196796%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx196959%_)
        (let* ((_%g196963196996%_
                (lambda (_%g196964196992%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196964196992%_))))
               (_%g196962197110%_
                (lambda (_%g196964197000%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196964197000%_))
                      (let ((_%e196970197003%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196964197000%_))))
                        (let ((_%hd196969197007%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196970197003%_)))
                              (_%tl196968197010%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196970197003%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196968197010%_))
                              (let ((_%e196973197013%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196968197010%_))))
                                (let ((_%hd196972197017%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196973197013%_)))
                                      (_%tl196971197020%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196973197013%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196971197020%_))
                                      (let ((_g202720_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196971197020%_
                                                '0))))
                                        (begin
                                          (let ((_g202721_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202720_)
                                                       (##vector-length
                                                        _g202720_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202721_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202721_)))
                                          (let ((_%target196974197023%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202720_ 0)))
                                                (_%tl196976197026%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202720_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196976197026%_))
                                                (letrec ((_%loop196977197029%_
                                                          (lambda (_%hd196975197033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol196981197036%_
                           _%method196982197038%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd196975197033%_))
                        (let ((_%e196978197041%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd196975197033%_))))
                          (let ((_%lp-hd196979197045%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196978197041%_)))
                                (_%lp-tl196980197048%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196978197041%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd196979197045%_))
                                (let ((_%e196987197051%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd196979197045%_))))
                                  (let ((_%hd196986197055%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196987197051%_)))
                                        (_%tl196985197058%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196987197051%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196985197058%_))
                                        (let ((_%e196990197061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196985197058%_))))
                                          (let ((_%hd196989197065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196990197061%_)))
                                                (_%tl196988197068%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196990197061%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196988197068%_))
                                                (_%loop196977197029%_
                                                 _%lp-tl196980197048%_
                                                 (cons _%hd196989197065%_
                                                       _%symbol196981197036%_)
                                                 (cons _%hd196986197055%_
                                                       _%method196982197038%_))
                                                (_%g196963196996%_
                                                 _%g196964197000%_))))
                                        (_%g196963196996%_
                                         _%g196964197000%_))))
                                (_%g196963196996%_ _%g196964197000%_))))
                        (let ((_%symbol196983197071%_
                               (reverse _%symbol196981197036%_))
                              (_%method196984197074%_
                               (reverse _%method196982197038%_)))
                          ((lambda (_%L197077%_ _%L197079%_ _%L197080%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L197077%_
                                        _%L197079%_))
                                     (let ((__tmp202722
                                            (lambda (_%g197098197102%_
                                                     _%g197099197105%_
                                                     _%g197100197107%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L197080%_
                                                                (cons _%g197099197105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g197098197102%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g197100197107%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp202722
                                        '()
                                        _%L197077%_
                                        _%L197079%_)))))
                           _%symbol196983197071%_
                           _%method196984197074%_
                           _%hd196972197017%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop196977197029%_
                                                   _%target196974197023%_
                                                   '()
                                                   '()))
                                                (_%g196963196996%_
                                                 _%g196964197000%_)))))
                                      (_%g196963196996%_ _%g196964197000%_))))
                              (_%g196963196996%_ _%g196964197000%_))))
                      (_%g196963196996%_ _%g196964197000%_)))))
          (_%g196962197110%_ _%$stx196959%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx197115%_)
        (let* ((_%g197119197133%_
                (lambda (_%g197120197129%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197120197129%_))))
               (_%g197118197174%_
                (lambda (_%g197120197137%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197120197137%_))
                      (let ((_%e197124197140%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197120197137%_))))
                        (let ((_%hd197123197144%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197124197140%_)))
                              (_%tl197122197147%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197124197140%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197122197147%_))
                              (let ((_%e197127197150%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197122197147%_))))
                                (let ((_%hd197126197154%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197127197150%_)))
                                      (_%tl197125197157%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197127197150%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197125197157%_))
                                      ((lambda (_%L197160%_)
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
                                                           (cons _%L197160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197126197154%_)
                                      (_%g197119197133%_ _%g197120197137%_))))
                              (_%g197119197133%_ _%g197120197137%_))))
                      (_%g197119197133%_ _%g197120197137%_)))))
          (_%g197118197174%_ _%$stx197115%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx197178%_)
        (let* ((_%g197182197236%_
                (lambda (_%g197183197232%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197183197232%_))))
               (_%g197181197417%_
                (lambda (_%g197183197240%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197183197240%_))
                      (let ((_%e197197197243%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197183197240%_))))
                        (let ((_%hd197196197247%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197197197243%_)))
                              (_%tl197195197250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197197197243%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197195197250%_))
                              (let ((_%e197200197253%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197195197250%_))))
                                (let ((_%hd197199197257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197200197253%_)))
                                      (_%tl197198197260%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197200197253%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197198197260%_))
                                      (let ((_%e197203197263%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197198197260%_))))
                                        (let ((_%hd197202197267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197203197263%_)))
                                              (_%tl197201197270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197203197263%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197201197270%_))
                                              (let ((_%e197206197273%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197201197270%_))))
                                                (let ((_%hd197205197277%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197206197273%_)))
                                                      (_%tl197204197280%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197206197273%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197204197280%_))
                                                      (let ((_%e197209197283%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197204197280%_))))
                (let ((_%hd197208197287%_
                       (let () (declare (not safe)) (##car _%e197209197283%_)))
                      (_%tl197207197290%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197209197283%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197207197290%_))
                      (let ((_%e197212197293%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197207197290%_))))
                        (let ((_%hd197211197297%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197212197293%_)))
                              (_%tl197210197300%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197212197293%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197210197300%_))
                              (let ((_%e197215197303%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197210197300%_))))
                                (let ((_%hd197214197307%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197215197303%_)))
                                      (_%tl197213197310%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197215197303%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197213197310%_))
                                      (let ((_%e197218197313%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197213197310%_))))
                                        (let ((_%hd197217197317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197218197313%_)))
                                              (_%tl197216197320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197218197313%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197216197320%_))
                                              (let ((_%e197221197323%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197216197320%_))))
                                                (let ((_%hd197220197327%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197221197323%_)))
                                                      (_%tl197219197330%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197221197323%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197219197330%_))
                                                      (let ((_%e197224197333%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197219197330%_))))
                (let ((_%hd197223197337%_
                       (let () (declare (not safe)) (##car _%e197224197333%_)))
                      (_%tl197222197340%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197224197333%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197222197340%_))
                      (let ((_%e197227197343%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197222197340%_))))
                        (let ((_%hd197226197347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197227197343%_)))
                              (_%tl197225197350%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197227197343%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197225197350%_))
                              (let ((_%e197230197353%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197225197350%_))))
                                (let ((_%hd197229197357%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197230197353%_)))
                                      (_%tl197228197360%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197230197353%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197228197360%_))
                                      ((lambda (_%L197363%_
                                                _%L197365%_
                                                _%L197366%_
                                                _%L197367%_
                                                _%L197368%_
                                                _%L197369%_
                                                _%L197370%_
                                                _%L197371%_
                                                _%L197372%_
                                                _%L197373%_
                                                _%L197374%_)
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
                                                           (cons _%L197374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L197373%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L197372%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197371%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197370%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L197369%_ '()))
                                           (cons _%L197368%_
                                                 (cons _%L197367%_
                                                       (cons _%L197366%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197365%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L197363%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd197229197357%_
                                       _%hd197226197347%_
                                       _%hd197223197337%_
                                       _%hd197220197327%_
                                       _%hd197217197317%_
                                       _%hd197214197307%_
                                       _%hd197211197297%_
                                       _%hd197208197287%_
                                       _%hd197205197277%_
                                       _%hd197202197267%_
                                       _%hd197199197257%_)
                                      (_%g197182197236%_ _%g197183197240%_))))
                              (_%g197182197236%_ _%g197183197240%_))))
                      (_%g197182197236%_ _%g197183197240%_))))
              (_%g197182197236%_ _%g197183197240%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197182197236%_
                                               _%g197183197240%_))))
                                      (_%g197182197236%_ _%g197183197240%_))))
                              (_%g197182197236%_ _%g197183197240%_))))
                      (_%g197182197236%_ _%g197183197240%_))))
              (_%g197182197236%_ _%g197183197240%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197182197236%_
                                               _%g197183197240%_))))
                                      (_%g197182197236%_ _%g197183197240%_))))
                              (_%g197182197236%_ _%g197183197240%_))))
                      (_%g197182197236%_ _%g197183197240%_)))))
          (_%g197181197417%_ _%$stx197178%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx197421%_)
        (let* ((_%g197425197439%_
                (lambda (_%g197426197435%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197426197435%_))))
               (_%g197424197480%_
                (lambda (_%g197426197443%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197426197443%_))
                      (let ((_%e197430197446%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197426197443%_))))
                        (let ((_%hd197429197450%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197430197446%_)))
                              (_%tl197428197453%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197430197446%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197428197453%_))
                              (let ((_%e197433197456%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197428197453%_))))
                                (let ((_%hd197432197460%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197433197456%_)))
                                      (_%tl197431197463%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197433197456%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197431197463%_))
                                      ((lambda (_%L197466%_)
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
                                                           (cons _%L197466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197432197460%_)
                                      (_%g197425197439%_ _%g197426197443%_))))
                              (_%g197425197439%_ _%g197426197443%_))))
                      (_%g197425197439%_ _%g197426197443%_)))))
          (_%g197424197480%_ _%$stx197421%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx197484%_)
        (let* ((_%g197488197502%_
                (lambda (_%g197489197498%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197489197498%_))))
               (_%g197487197543%_
                (lambda (_%g197489197506%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197489197506%_))
                      (let ((_%e197493197509%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197489197506%_))))
                        (let ((_%hd197492197513%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197493197509%_)))
                              (_%tl197491197516%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197493197509%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197491197516%_))
                              (let ((_%e197496197519%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197491197516%_))))
                                (let ((_%hd197495197523%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197496197519%_)))
                                      (_%tl197494197526%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197496197519%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197494197526%_))
                                      ((lambda (_%L197529%_)
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
                                                           (cons _%L197529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197495197523%_)
                                      (_%g197488197502%_ _%g197489197506%_))))
                              (_%g197488197502%_ _%g197489197506%_))))
                      (_%g197488197502%_ _%g197489197506%_)))))
          (_%g197487197543%_ _%$stx197484%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx197547%_)
        (let* ((_%g197551197573%_
                (lambda (_%g197552197569%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197552197569%_))))
               (_%g197550197642%_
                (lambda (_%g197552197577%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197552197577%_))
                      (let ((_%e197558197580%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197552197577%_))))
                        (let ((_%hd197557197584%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197558197580%_)))
                              (_%tl197556197587%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197558197580%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197556197587%_))
                              (let ((_%e197561197590%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197556197587%_))))
                                (let ((_%hd197560197594%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197561197590%_)))
                                      (_%tl197559197597%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197561197590%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197559197597%_))
                                      (let ((_%e197564197600%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197559197597%_))))
                                        (let ((_%hd197563197604%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197564197600%_)))
                                              (_%tl197562197607%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197564197600%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197562197607%_))
                                              (let ((_%e197567197610%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197562197607%_))))
                                                (let ((_%hd197566197614%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197567197610%_)))
                                                      (_%tl197565197617%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197567197610%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197565197617%_))
                                                      ((lambda (_%L197620%_
                                                                _%L197622%_
                                                                _%L197623%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197623%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L197622%_ '()))
                                   (cons _%L197620%_ '())))))
               _%hd197566197614%_
               _%hd197563197604%_
               _%hd197560197594%_)
              (_%g197551197573%_ _%g197552197577%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197551197573%_
                                               _%g197552197577%_))))
                                      (_%g197551197573%_ _%g197552197577%_))))
                              (_%g197551197573%_ _%g197552197577%_))))
                      (_%g197551197573%_ _%g197552197577%_)))))
          (_%g197550197642%_ _%$stx197547%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx197646%_)
        (let* ((_%g197650197672%_
                (lambda (_%g197651197668%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197651197668%_))))
               (_%g197649197741%_
                (lambda (_%g197651197676%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197651197676%_))
                      (let ((_%e197657197679%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197651197676%_))))
                        (let ((_%hd197656197683%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197657197679%_)))
                              (_%tl197655197686%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197657197679%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197655197686%_))
                              (let ((_%e197660197689%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197655197686%_))))
                                (let ((_%hd197659197693%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197660197689%_)))
                                      (_%tl197658197696%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197660197689%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197658197696%_))
                                      (let ((_%e197663197699%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197658197696%_))))
                                        (let ((_%hd197662197703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197663197699%_)))
                                              (_%tl197661197706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197663197699%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197661197706%_))
                                              (let ((_%e197666197709%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197661197706%_))))
                                                (let ((_%hd197665197713%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197666197709%_)))
                                                      (_%tl197664197716%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197666197709%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197664197716%_))
                                                      ((lambda (_%L197719%_
                                                                _%L197721%_
                                                                _%L197722%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197722%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L197721%_ '()))
                                   (cons _%L197719%_ '())))))
               _%hd197665197713%_
               _%hd197662197703%_
               _%hd197659197693%_)
              (_%g197650197672%_ _%g197651197676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197650197672%_
                                               _%g197651197676%_))))
                                      (_%g197650197672%_ _%g197651197676%_))))
                              (_%g197650197672%_ _%g197651197676%_))))
                      (_%g197650197672%_ _%g197651197676%_)))))
          (_%g197649197741%_ _%$stx197646%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx197745%_)
        (let* ((_%g197749197763%_
                (lambda (_%g197750197759%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197750197759%_))))
               (_%g197748197804%_
                (lambda (_%g197750197767%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197750197767%_))
                      (let ((_%e197754197770%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197750197767%_))))
                        (let ((_%hd197753197774%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197754197770%_)))
                              (_%tl197752197777%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197754197770%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197752197777%_))
                              (let ((_%e197757197780%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197752197777%_))))
                                (let ((_%hd197756197784%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197757197780%_)))
                                      (_%tl197755197787%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197757197780%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197755197787%_))
                                      ((lambda (_%L197790%_)
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
                                                           (cons _%L197790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197756197784%_)
                                      (_%g197749197763%_ _%g197750197767%_))))
                              (_%g197749197763%_ _%g197750197767%_))))
                      (_%g197749197763%_ _%g197750197767%_)))))
          (_%g197748197804%_ _%$stx197745%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx197808%_)
        (let* ((_%g197812197830%_
                (lambda (_%g197813197826%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197813197826%_))))
               (_%g197811197885%_
                (lambda (_%g197813197834%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197813197834%_))
                      (let ((_%e197818197837%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197813197834%_))))
                        (let ((_%hd197817197841%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197818197837%_)))
                              (_%tl197816197844%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197818197837%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197816197844%_))
                              (let ((_%e197821197847%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197816197844%_))))
                                (let ((_%hd197820197851%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197821197847%_)))
                                      (_%tl197819197854%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197821197847%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197819197854%_))
                                      (let ((_%e197824197857%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197819197854%_))))
                                        (let ((_%hd197823197861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197824197857%_)))
                                              (_%tl197822197864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197824197857%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197822197864%_))
                                              ((lambda (_%L197867%_
                                                        _%L197869%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197869%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197867%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197823197861%_
                                               _%hd197820197851%_)
                                              (_%g197812197830%_
                                               _%g197813197834%_))))
                                      (_%g197812197830%_ _%g197813197834%_))))
                              (_%g197812197830%_ _%g197813197834%_))))
                      (_%g197812197830%_ _%g197813197834%_)))))
          (_%g197811197885%_ _%$stx197808%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx197889%_)
        (let* ((_%__stx202093202094%_ _%$stx197889%_)
               (_%g197896197957%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202093202094%_)))))
          (let ((_%__kont202096202097%_
                 (lambda (_%L198195%_ _%L198197%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198197%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198195%_ '()))
                                     '())))))
                (_%__kont202098202099%_
                 (lambda (_%L198134%_ _%L198136%_ _%L198137%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198137%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198136%_ '()))
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
                                 (cons _%L198134%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont202100202101%_
                 (lambda (_%L198058%_ _%L198060%_)
                   (cons _%L198060%_ (cons _%L198058%_ (cons '#f '())))))
                (_%__kont202102202103%_
                 (lambda (_%L198008%_ _%L198010%_ _%L198011%_)
                   (cons _%L198011%_
                         (cons _%L198010%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L198008%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202093202094%_))
                (let ((_%e197902198165%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202093202094%_))))
                  (let ((_%tl197900198172%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197902198165%_)))
                        (_%hd197901198169%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197902198165%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197900198172%_))
                        (let ((_%e197905198175%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl197900198172%_))))
                          (let ((_%tl197903198182%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197905198175%_)))
                                (_%hd197904198179%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197905198175%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197903198182%_))
                                (let ((_%e197908198185%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197903198182%_))))
                                  (let ((_%tl197906198192%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197908198185%_)))
                                        (_%hd197907198189%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197908198185%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197906198192%_))
                                        (_%__kont202096202097%_
                                         _%hd197907198189%_
                                         _%hd197904198179%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197906198192%_))
                                            (let ((_%e197923198110%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197906198192%_))))
                                              (let ((_%tl197921198117%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197923198110%_)))
                                                    (_%hd197922198114%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197923198110%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd197922198114%_))
                                                    (let ((_%e197924198120%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd197922198114%_))))
                                                      (if (equal? _%e197924198120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197921198117%_))
                      (let ((_%e197927198124%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197921198117%_))))
                        (let ((_%tl197925198131%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197927198124%_)))
                              (_%hd197926198128%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197927198124%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197925198131%_))
                              (_%__kont202098202099%_
                               _%hd197926198128%_
                               _%hd197907198189%_
                               _%hd197904198179%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd197907198189%_))
                                  (let ((_%e197948197994%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197907198189%_))))
                                    (declare (not safe))
                                    (_%g197896197957%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197896197957%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd197907198189%_))
                          (let ((_%e197948197994%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197907198189%_))))
                            (if (equal? _%e197948197994%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197921198117%_))
                                    (_%__kont202102202103%_
                                     _%hd197922198114%_
                                     _%hd197904198179%_
                                     _%hd197901198169%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197896197957%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g197896197957%_))))
                          (let () (declare (not safe)) (_%g197896197957%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd197907198189%_))
                      (let ((_%e197948197994%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197907198189%_))))
                        (if (equal? _%e197948197994%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197921198117%_))
                                (_%__kont202102202103%_
                                 _%hd197922198114%_
                                 _%hd197904198179%_
                                 _%hd197901198169%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197896197957%_)))
                            (let () (declare (not safe)) (_%g197896197957%_))))
                      (let () (declare (not safe)) (_%g197896197957%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd197907198189%_))
                                                        (let ((_%e197948197994%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd197907198189%_))))
                  (if (equal? _%e197948197994%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197921198117%_))
                          (_%__kont202102202103%_
                           _%hd197922198114%_
                           _%hd197904198179%_
                           _%hd197901198169%_)
                          (let () (declare (not safe)) (_%g197896197957%_)))
                      (let () (declare (not safe)) (_%g197896197957%_))))
                (let () (declare (not safe)) (_%g197896197957%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd197907198189%_))
                                                (let ((_%e197948197994%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd197907198189%_))))
                                                  (declare (not safe))
                                                  (_%g197896197957%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197896197957%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197903198182%_))
                                    (_%__kont202100202101%_
                                     _%hd197904198179%_
                                     _%hd197901198169%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197896197957%_))))))
                        (let () (declare (not safe)) (_%g197896197957%_)))))
                (let () (declare (not safe)) (_%g197896197957%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx198216%_)
        (let* ((_%g198220198249%_
                (lambda (_%g198221198245%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198221198245%_))))
               (_%g198219198358%_
                (lambda (_%g198221198253%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198221198253%_))
                      (let ((_%e198225198256%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198221198253%_))))
                        (let ((_%hd198224198260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198225198256%_)))
                              (_%tl198223198263%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198225198256%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198223198263%_))
                              (let ((_g202723_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198223198263%_
                                        '0))))
                                (begin
                                  (let ((_g202724_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202723_)
                                               (##vector-length _g202723_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202724_ 2)))
                                        (error "Context expects 2 values"
                                               _g202724_)))
                                  (let ((_%target198226198266%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202723_ 0)))
                                        (_%tl198228198269%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202723_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198228198269%_))
                                        (letrec ((_%loop198229198272%_
                                                  (lambda (_%hd198227198276%_
                                                           _%clause198233198279%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198227198276%_))
                                                        (let ((_%e198230198282%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198227198276%_))))
                  (let ((_%lp-hd198231198286%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198230198282%_)))
                        (_%lp-tl198232198289%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198230198282%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd198231198286%_))
                        (let ((_g202725_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd198231198286%_
                                  '0))))
                          (begin
                            (let ((_g202726_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g202725_)
                                         (##vector-length _g202725_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g202726_ 2)))
                                  (error "Context expects 2 values"
                                         _g202726_)))
                            (let ((_%target198235198292%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202725_ 0)))
                                  (_%tl198237198295%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202725_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198237198295%_))
                                  (letrec ((_%loop198238198298%_
                                            (lambda (_%hd198236198302%_
                                                     _%clause198242198305%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198236198302%_))
                                                  (let ((_%e198239198308%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd198236198302%_))))
                                                    (let ((_%lp-hd198240198312%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198239198308%_)))
                                                          (_%lp-tl198241198315%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198239198308%_))))
                                                      (_%loop198238198298%_
                                                       _%lp-tl198241198315%_
                                                       (cons _%lp-hd198240198312%_
                                                             _%clause198242198305%_))))
                                                  (let ((_%clause198243198318%_
                                                         (reverse _%clause198242198305%_)))
                                                    (_%loop198229198272%_
                                                     _%lp-tl198232198289%_
                                                     (cons _%clause198243198318%_
                                                           _%clause198233198279%_)))))))
                                    (_%loop198238198298%_
                                     _%target198235198292%_
                                     '()))
                                  (_%g198220198249%_ _%g198221198253%_)))))
                        (_%g198220198249%_ _%g198221198253%_))))
                (let ((_%clause198234198322%_
                       (reverse _%clause198233198279%_)))
                  ((lambda (_%L198326%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp202727
                                              (lambda (_%g198341198346%_
                                                       _%g198342198349%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp202728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g198343198352%_ _%g198344198355%_)
                             (cons _%g198343198352%_ _%g198344198355%_))))
                      (declare (not safe))
                      (__foldr1 __tmp202728 '() _%g198341198346%_)))
              _%g198342198349%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp202727
                                          '()
                                          _%L198326%_)))
                                 '())))
                   _%clause198234198322%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198229198272%_
                                           _%target198226198266%_
                                           '()))
                                        (_%g198220198249%_
                                         _%g198221198253%_)))))
                              (_%g198220198249%_ _%g198221198253%_))))
                      (_%g198220198249%_ _%g198221198253%_)))))
          (_%g198219198358%_ _%$stx198216%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx198364%_)
        (let* ((_%g198368198386%_
                (lambda (_%g198369198382%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198369198382%_))))
               (_%g198367198441%_
                (lambda (_%g198369198390%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198369198390%_))
                      (let ((_%e198374198393%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198369198390%_))))
                        (let ((_%hd198373198397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198374198393%_)))
                              (_%tl198372198400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198374198393%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198372198400%_))
                              (let ((_%e198377198403%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198372198400%_))))
                                (let ((_%hd198376198407%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198377198403%_)))
                                      (_%tl198375198410%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198377198403%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198375198410%_))
                                      (let ((_%e198380198413%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198375198410%_))))
                                        (let ((_%hd198379198417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198380198413%_)))
                                              (_%tl198378198420%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198380198413%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198378198420%_))
                                              ((lambda (_%L198423%_
                                                        _%L198425%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198425%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198423%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198379198417%_
                                               _%hd198376198407%_)
                                              (_%g198368198386%_
                                               _%g198369198390%_))))
                                      (_%g198368198386%_ _%g198369198390%_))))
                              (_%g198368198386%_ _%g198369198390%_))))
                      (_%g198368198386%_ _%g198369198390%_)))))
          (_%g198367198441%_ _%$stx198364%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx198445%_)
        (let* ((_%g198449198467%_
                (lambda (_%g198450198463%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198450198463%_))))
               (_%g198448198522%_
                (lambda (_%g198450198471%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198450198471%_))
                      (let ((_%e198455198474%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198450198471%_))))
                        (let ((_%hd198454198478%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198455198474%_)))
                              (_%tl198453198481%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198455198474%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198453198481%_))
                              (let ((_%e198458198484%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198453198481%_))))
                                (let ((_%hd198457198488%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198458198484%_)))
                                      (_%tl198456198491%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198458198484%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198456198491%_))
                                      (let ((_%e198461198494%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198456198491%_))))
                                        (let ((_%hd198460198498%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198461198494%_)))
                                              (_%tl198459198501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198461198494%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198459198501%_))
                                              ((lambda (_%L198504%_
                                                        _%L198506%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198506%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198504%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198460198498%_
                                               _%hd198457198488%_)
                                              (_%g198449198467%_
                                               _%g198450198471%_))))
                                      (_%g198449198467%_ _%g198450198471%_))))
                              (_%g198449198467%_ _%g198450198471%_))))
                      (_%g198449198467%_ _%g198450198471%_)))))
          (_%g198448198522%_ _%$stx198445%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx198526%_)
        (let* ((_%g198530198559%_
                (lambda (_%g198531198555%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198531198555%_))))
               (_%g198529198659%_
                (lambda (_%g198531198563%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198531198563%_))
                      (let ((_%e198536198566%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198531198563%_))))
                        (let ((_%hd198535198570%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198536198566%_)))
                              (_%tl198534198573%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198536198566%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198534198573%_))
                              (let ((_g202729_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198534198573%_
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
                                  (let ((_%target198537198576%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202729_ 0)))
                                        (_%tl198539198579%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202729_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198539198579%_))
                                        (letrec ((_%loop198540198582%_
                                                  (lambda (_%hd198538198586%_
                                                           _%rule198544198589%_
                                                           _%proc198545198591%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198538198586%_))
                                                        (let ((_%e198541198594%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198538198586%_))))
                  (let ((_%lp-hd198542198598%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198541198594%_)))
                        (_%lp-tl198543198601%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198541198594%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd198542198598%_))
                        (let ((_%e198550198604%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd198542198598%_))))
                          (let ((_%hd198549198608%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198550198604%_)))
                                (_%tl198548198611%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198550198604%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198548198611%_))
                                (let ((_%e198553198614%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198548198611%_))))
                                  (let ((_%hd198552198618%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198553198614%_)))
                                        (_%tl198551198621%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198553198614%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198551198621%_))
                                        (_%loop198540198582%_
                                         _%lp-tl198543198601%_
                                         (cons _%hd198552198618%_
                                               _%rule198544198589%_)
                                         (cons _%hd198549198608%_
                                               _%proc198545198591%_))
                                        (_%g198530198559%_
                                         _%g198531198563%_))))
                                (_%g198530198559%_ _%g198531198563%_))))
                        (_%g198530198559%_ _%g198531198563%_))))
                (let ((_%rule198546198624%_ (reverse _%rule198544198589%_))
                      (_%proc198547198627%_ (reverse _%proc198545198591%_)))
                  ((lambda (_%L198630%_ _%L198632%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L198630%_
                                _%L198632%_))
                             (let ((__tmp202731
                                    (lambda (_%g198647198651%_
                                             _%g198648198654%_
                                             _%g198649198656%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g198648198654%_
                                                        (cons _%g198647198651%_
                                                              '())))
                                            _%g198649198656%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202731
                                '()
                                _%L198630%_
                                _%L198632%_)))))
                   _%rule198546198624%_
                   _%proc198547198627%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198540198582%_
                                           _%target198537198576%_
                                           '()
                                           '()))
                                        (_%g198530198559%_
                                         _%g198531198563%_)))))
                              (_%g198530198559%_ _%g198531198563%_))))
                      (_%g198530198559%_ _%g198531198563%_)))))
          (_%g198529198659%_ _%$stx198526%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx198664%_)
        (let* ((_%g198668198686%_
                (lambda (_%g198669198682%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198669198682%_))))
               (_%g198667198741%_
                (lambda (_%g198669198690%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198669198690%_))
                      (let ((_%e198674198693%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198669198690%_))))
                        (let ((_%hd198673198697%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198674198693%_)))
                              (_%tl198672198700%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198674198693%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198672198700%_))
                              (let ((_%e198677198703%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198672198700%_))))
                                (let ((_%hd198676198707%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198677198703%_)))
                                      (_%tl198675198710%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198677198703%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198675198710%_))
                                      (let ((_%e198680198713%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198675198710%_))))
                                        (let ((_%hd198679198717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198680198713%_)))
                                              (_%tl198678198720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198680198713%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198678198720%_))
                                              ((lambda (_%L198723%_
                                                        _%L198725%_)
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
                                                   (cons _%L198725%_ '()))
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
                 (cons _%L198723%_ '())))
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
                                   (cons _%L198725%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198679198717%_
                                               _%hd198676198707%_)
                                              (_%g198668198686%_
                                               _%g198669198690%_))))
                                      (_%g198668198686%_ _%g198669198690%_))))
                              (_%g198668198686%_ _%g198669198690%_))))
                      (_%g198668198686%_ _%g198669198690%_)))))
          (_%g198667198741%_ _%$stx198664%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx198745%_)
        (let* ((_%__stx202211202212%_ _%$stx198745%_)
               (_%g198750198775%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202211202212%_)))))
          (let ((_%__kont202214202215%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202216202217%_
                 (lambda (_%L198822%_ _%L198824%_ _%L198825%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L198825%_ (cons _%L198824%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L198822%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202211202212%_))
                (let ((_%e198754198851%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202211202212%_))))
                  (let ((_%tl198752198858%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198754198851%_)))
                        (_%hd198753198855%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198754198851%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198752198858%_))
                        (_%__kont202214202215%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198752198858%_))
                            (let ((_%e198763198792%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198752198858%_))))
                              (let ((_%tl198761198799%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198763198792%_)))
                                    (_%hd198762198796%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198763198792%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd198762198796%_))
                                    (let ((_%e198766198802%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd198762198796%_))))
                                      (let ((_%tl198764198809%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198766198802%_)))
                                            (_%hd198765198806%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198766198802%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198764198809%_))
                                            (let ((_%e198769198812%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198764198809%_))))
                                              (let ((_%tl198767198819%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198769198812%_)))
                                                    (_%hd198768198816%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198769198812%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl198767198819%_))
                                                    (_%__kont202216202217%_
                                                     _%tl198761198799%_
                                                     _%hd198768198816%_
                                                     _%hd198765198806%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198750198775%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g198750198775%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198750198775%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198750198775%_))))))
                (let () (declare (not safe)) (_%g198750198775%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx198869%_)
        (let* ((_%__stx202255202256%_ _%$stx198869%_)
               (_%g198874198905%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202255202256%_)))))
          (let ((_%__kont202258202259%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202260202261%_
                 (lambda (_%L198972%_ _%L198974%_ _%L198975%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L198975%_
                                           (let ((__tmp202732
                                                  (lambda (_%g198995198998%_
                                                           _%g198996199001%_)
                                                    (cons _%g198995198998%_
                                                          _%g198996199001%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp202732
                                              '()
                                              _%L198974%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L198972%_)
                                     '()))))))
            (let ((_%__match202298202299%_
                   (lambda (_%e198884198912%_
                            _%hd198883198916%_
                            _%tl198882198919%_
                            _%e198887198922%_
                            _%hd198886198926%_
                            _%tl198885198929%_
                            _%e198890198932%_
                            _%hd198889198936%_
                            _%tl198888198939%_
                            _%__splice202262202263%_
                            _%target198891198942%_
                            _%tl198893198945%_)
                     (letrec ((_%loop198894198948%_
                               (lambda (_%hd198892198952%_ _%sig198898198955%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd198892198952%_))
                                     (let ((_%e198895198958%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd198892198952%_))))
                                       (let ((_%lp-tl198897198965%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198895198958%_)))
                                             (_%lp-hd198896198962%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198895198958%_))))
                                         (_%loop198894198948%_
                                          _%lp-tl198897198965%_
                                          (cons _%lp-hd198896198962%_
                                                _%sig198898198955%_))))
                                     (let ((_%sig198899198968%_
                                            (reverse _%sig198898198955%_)))
                                       (_%__kont202260202261%_
                                        _%tl198885198929%_
                                        _%sig198899198968%_
                                        _%hd198889198936%_))))))
                       (_%loop198894198948%_ _%target198891198942%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202255202256%_))
                  (let ((_%e198878199011%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202255202256%_))))
                    (let ((_%tl198876199018%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198878199011%_)))
                          (_%hd198877199015%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198878199011%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198876199018%_))
                          (_%__kont202258202259%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198876199018%_))
                              (let ((_%e198887198922%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198876199018%_))))
                                (let ((_%tl198885198929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198887198922%_)))
                                      (_%hd198886198926%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198887198922%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198886198926%_))
                                      (let ((_%e198890198932%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198886198926%_))))
                                        (let ((_%tl198888198939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198890198932%_)))
                                              (_%hd198889198936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198890198932%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198888198939%_))
                                              (let ((_%__splice202262202263%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198888198939%_
                                                        '0))))
                                                (let ((_%tl198893198945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202262202263%_
                                                          '1)))
                                                      (_%target198891198942%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202262202263%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198893198945%_))
                                                      (_%__match202298202299%_
                                                       _%e198878199011%_
                                                       _%hd198877199015%_
                                                       _%tl198876199018%_
                                                       _%e198887198922%_
                                                       _%hd198886198926%_
                                                       _%tl198885198929%_
                                                       _%e198890198932%_
                                                       _%hd198889198936%_
                                                       _%tl198888198939%_
                                                       _%__splice202262202263%_
                                                       _%target198891198942%_
                                                       _%tl198893198945%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198874198905%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198874198905%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198874198905%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198874198905%_))))))
                  (let () (declare (not safe)) (_%g198874198905%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx199030%_)
        (let* ((_%__stx202301202302%_ _%$stx199030%_)
               (_%g199035199082%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202301202302%_)))))
          (let ((_%__kont202304202305%_
                 (lambda (_%L199244%_ _%L199246%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L199246%_
                               (let ((__tmp202733
                                      (lambda (_%g199266199269%_
                                               _%g199267199272%_)
                                        (cons _%g199266199269%_
                                              _%g199267199272%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202733 '() _%L199244%_))))))
                (_%__kont202308202309%_
                 (lambda (_%L199139%_ _%L199141%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L199141%_
                               (let ((__tmp202734
                                      (lambda (_%g199158199161%_
                                               _%g199159199164%_)
                                        (cons _%g199158199161%_
                                              _%g199159199164%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202734 '() _%L199139%_)))))))
            (let* ((_%__match202368202369%_
                    (lambda (_%e199064199089%_
                             _%hd199063199093%_
                             _%tl199062199096%_
                             _%e199067199099%_
                             _%hd199066199103%_
                             _%tl199065199106%_
                             _%__splice202310202311%_
                             _%target199068199109%_
                             _%tl199070199112%_)
                      (letrec ((_%loop199071199115%_
                                (lambda (_%hd199069199119%_
                                         _%sig199075199122%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199069199119%_))
                                      (let ((_%e199072199125%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199069199119%_))))
                                        (let ((_%lp-tl199074199132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199072199125%_)))
                                              (_%lp-hd199073199129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199072199125%_))))
                                          (_%loop199071199115%_
                                           _%lp-tl199074199132%_
                                           (cons _%lp-hd199073199129%_
                                                 _%sig199075199122%_))))
                                      (let ((_%sig199076199135%_
                                             (reverse _%sig199075199122%_)))
                                        (_%__kont202308202309%_
                                         _%sig199076199135%_
                                         _%hd199066199103%_))))))
                        (_%loop199071199115%_ _%target199068199109%_ '()))))
                   (_%__match202360202361%_
                    (lambda (_%e199064199089%_
                             _%hd199063199093%_
                             _%tl199062199096%_
                             _%e199067199099%_
                             _%hd199066199103%_
                             _%tl199065199106%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl199065199106%_))
                          (let ((_%__splice202310202311%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl199065199106%_
                                    '0))))
                            (let ((_%tl199070199112%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202310202311%_
                                      '1)))
                                  (_%target199068199109%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202310202311%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199070199112%_))
                                  (_%__match202368202369%_
                                   _%e199064199089%_
                                   _%hd199063199093%_
                                   _%tl199062199096%_
                                   _%e199067199099%_
                                   _%hd199066199103%_
                                   _%tl199065199106%_
                                   _%__splice202310202311%_
                                   _%target199068199109%_
                                   _%tl199070199112%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g199035199082%_)))))
                          (let () (declare (not safe)) (_%g199035199082%_)))))
                   (_%__match202348202349%_
                    (lambda (_%e199041199174%_
                             _%hd199040199178%_
                             _%tl199039199181%_
                             _%e199044199184%_
                             _%hd199043199188%_
                             _%tl199042199191%_
                             _%e199047199194%_
                             _%hd199046199198%_
                             _%tl199045199201%_
                             _%e199050199204%_
                             _%hd199049199208%_
                             _%tl199048199211%_
                             _%__splice202306202307%_
                             _%target199051199214%_
                             _%tl199053199217%_)
                      (letrec ((_%loop199054199220%_
                                (lambda (_%hd199052199224%_
                                         _%sig199058199227%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199052199224%_))
                                      (let ((_%e199055199230%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199052199224%_))))
                                        (let ((_%lp-tl199057199237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199055199230%_)))
                                              (_%lp-hd199056199234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199055199230%_))))
                                          (_%loop199054199220%_
                                           _%lp-tl199057199237%_
                                           (cons _%lp-hd199056199234%_
                                                 _%sig199058199227%_))))
                                      (let ((_%sig199059199240%_
                                             (reverse _%sig199058199227%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199045199201%_))
                                            (_%__kont202304202305%_
                                             _%sig199059199240%_
                                             _%hd199043199188%_)
                                            (_%__match202360202361%_
                                             _%e199041199174%_
                                             _%hd199040199178%_
                                             _%tl199039199181%_
                                             _%e199044199184%_
                                             _%hd199043199188%_
                                             _%tl199042199191%_)))))))
                        (_%loop199054199220%_ _%target199051199214%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202301202302%_))
                  (let ((_%e199041199174%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202301202302%_))))
                    (let ((_%tl199039199181%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199041199174%_)))
                          (_%hd199040199178%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199041199174%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199039199181%_))
                          (let ((_%e199044199184%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199039199181%_))))
                            (let ((_%tl199042199191%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199044199184%_)))
                                  (_%hd199043199188%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199044199184%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199042199191%_))
                                  (let ((_%e199047199194%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199042199191%_))))
                                    (let ((_%tl199045199201%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199047199194%_)))
                                          (_%hd199046199198%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199047199194%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd199046199198%_))
                                          (let ((_%e199050199204%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd199046199198%_))))
                                            (let ((_%tl199048199211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199050199204%_)))
                                                  (_%hd199049199208%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199050199204%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd199049199208%_))
                                                  (if (let ((__tmp202735
                                                             |gxc[1]#_g202736_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp202735
                                                         _%hd199049199208%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl199048199211%_))
                                                          (let ((_%__splice202306202307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl199048199211%_ '0))))
                    (let ((_%tl199053199217%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202306202307%_ '1)))
                          (_%target199051199214%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202306202307%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199053199217%_))
                          (_%__match202348202349%_
                           _%e199041199174%_
                           _%hd199040199178%_
                           _%tl199039199181%_
                           _%e199044199184%_
                           _%hd199043199188%_
                           _%tl199042199191%_
                           _%e199047199194%_
                           _%hd199046199198%_
                           _%tl199045199201%_
                           _%e199050199204%_
                           _%hd199049199208%_
                           _%tl199048199211%_
                           _%__splice202306202307%_
                           _%target199051199214%_
                           _%tl199053199217%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl199042199191%_))
                              (let ((_%__splice202310202311%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl199042199191%_
                                        '0))))
                                (let ((_%tl199070199112%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202310202311%_
                                          '1)))
                                      (_%target199068199109%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202310202311%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199070199112%_))
                                      (_%__match202368202369%_
                                       _%e199041199174%_
                                       _%hd199040199178%_
                                       _%tl199039199181%_
                                       _%e199044199184%_
                                       _%hd199043199188%_
                                       _%tl199042199191%_
                                       _%__splice202310202311%_
                                       _%target199068199109%_
                                       _%tl199070199112%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g199035199082%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199035199082%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl199042199191%_))
                      (let ((_%__splice202310202311%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl199042199191%_
                                '0))))
                        (let ((_%tl199070199112%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202310202311%_ '1)))
                              (_%target199068199109%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202310202311%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199070199112%_))
                              (_%__match202368202369%_
                               _%e199041199174%_
                               _%hd199040199178%_
                               _%tl199039199181%_
                               _%e199044199184%_
                               _%hd199043199188%_
                               _%tl199042199191%_
                               _%__splice202310202311%_
                               _%target199068199109%_
                               _%tl199070199112%_)
                              (let ()
                                (declare (not safe))
                                (_%g199035199082%_)))))
                      (let () (declare (not safe)) (_%g199035199082%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl199042199191%_))
                  (let ((_%__splice202310202311%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl199042199191%_ '0))))
                    (let ((_%tl199070199112%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202310202311%_ '1)))
                          (_%target199068199109%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202310202311%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199070199112%_))
                          (_%__match202368202369%_
                           _%e199041199174%_
                           _%hd199040199178%_
                           _%tl199039199181%_
                           _%e199044199184%_
                           _%hd199043199188%_
                           _%tl199042199191%_
                           _%__splice202310202311%_
                           _%target199068199109%_
                           _%tl199070199112%_)
                          (let () (declare (not safe)) (_%g199035199082%_)))))
                  (let () (declare (not safe)) (_%g199035199082%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl199042199191%_))
                                                      (let ((_%__splice202310202311%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl199042199191%_ '0))))
                (let ((_%tl199070199112%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202310202311%_ '1)))
                      (_%target199068199109%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202310202311%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199070199112%_))
                      (_%__match202368202369%_
                       _%e199041199174%_
                       _%hd199040199178%_
                       _%tl199039199181%_
                       _%e199044199184%_
                       _%hd199043199188%_
                       _%tl199042199191%_
                       _%__splice202310202311%_
                       _%target199068199109%_
                       _%tl199070199112%_)
                      (let () (declare (not safe)) (_%g199035199082%_)))))
              (let () (declare (not safe)) (_%g199035199082%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl199042199191%_))
                                              (let ((_%__splice202310202311%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl199042199191%_
                                                        '0))))
                                                (let ((_%tl199070199112%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202310202311%_
                                                          '1)))
                                                      (_%target199068199109%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202310202311%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199070199112%_))
                                                      (_%__match202368202369%_
                                                       _%e199041199174%_
                                                       _%hd199040199178%_
                                                       _%tl199039199181%_
                                                       _%e199044199184%_
                                                       _%hd199043199188%_
                                                       _%tl199042199191%_
                                                       _%__splice202310202311%_
                                                       _%target199068199109%_
                                                       _%tl199070199112%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g199035199082%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199035199082%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199042199191%_))
                                      (let ((_%__splice202310202311%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199042199191%_
                                                '0))))
                                        (let ((_%tl199070199112%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202310202311%_
                                                  '1)))
                                              (_%target199068199109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202310202311%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199070199112%_))
                                              (_%__match202368202369%_
                                               _%e199041199174%_
                                               _%hd199040199178%_
                                               _%tl199039199181%_
                                               _%e199044199184%_
                                               _%hd199043199188%_
                                               _%tl199042199191%_
                                               _%__splice202310202311%_
                                               _%target199068199109%_
                                               _%tl199070199112%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g199035199082%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199035199082%_))))))
                          (let () (declare (not safe)) (_%g199035199082%_)))))
                  (let () (declare (not safe)) (_%g199035199082%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx200360%_ _%id200362%_)
        (let ((_%proc200366%_
               (let ((__tmp202737
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200362%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202737))))
          (if (let () (declare (not safe)) (procedure? _%proc200366%_))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx200360%_
                 _%id200362%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx200351%_ _%id200353%_)
        (let ((_%klass200357%_
               (let ((__tmp202738
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200353%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202738))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass200357%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx200351%_
                 _%id200353%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx199601%_ _%proc199603%_ _%sig199604%_)
        (letrec ((_%signature-arity199606%_
                  (lambda (_%args200283%_)
                    (let _%loop200286%_ ((_%rest200289%_ _%args200283%_)
                                         (_%count200291%_ '0))
                      (let* ((_%rest200292200303%_ _%rest200289%_)
                             (_%E200296200309%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest200292200303%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K200299200340%_
                               (lambda (_%rest200337%_)
                                 (let ((__tmp202739
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%count200291%_ '1))))
                                   (declare (not safe))
                                   (_%loop200286%_
                                    _%rest200337%_
                                    __tmp202739))))
                              (_%K200298200329%_ (lambda () _%count200291%_))
                              (_%K200297200317%_
                               (lambda () (cons _%count200291%_ '()))))
                          (let ((_%try-match200294200333%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest200292200303%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K200298200329%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K200297200317%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest200292200303%_))
                                (let* ((_%tl200301200344%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest200292200303%_)))
                                       (_%rest200348%_ _%tl200301200344%_))
                                  (declare (not safe))
                                  (_%K200299200340%_ _%rest200348%_))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match200294200333%_)))))))))
                 (_%make-signature199608%_
                  (lambda (_%args200165%_
                           _%return200167%_
                           _%effect200168%_
                           _%unchecked200169%_)
                    (let ((__tmp202740
                           (lambda (_%g200170200172%_)
                             (let ()
                               (declare (not safe))
                               (|gxc[1]#verify-class!|
                                _%ctx199601%_
                                _%g200170200172%_)))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp202740 _%args200165%_))
                    (let ()
                      (declare (not safe))
                      (|gxc[1]#verify-class!| _%ctx199601%_ _%return200167%_))
                    (if _%unchecked200169%_
                        (let ()
                          (declare (not safe))
                          (|gxc[1]#verify-procedure!|
                           _%ctx199601%_
                           _%unchecked200169%_))
                        '#!void)
                    (let ((_%arity200176%_
                           (let ((__tmp202741
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-map1 gx#stx-e _%args200165%_))))
                             (declare (not safe))
                             (_%signature-arity199606%_ __tmp202741))))
                      (if _%effect200168%_
                          (let ((_%effect200179%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect200168%_))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (list? _%effect200179%_))
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect200179%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx199601%_
                                   _%proc199603%_
                                   _%effect200179%_))))
                          '#!void)
                      (cons _%arity200176%_
                            (cons (let* ((_%g200182200205%_
                                          (lambda (_%g200183200201%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g200183200201%_))))
                                         (_%g200181200279%_
                                          (lambda (_%g200183200209%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g200183200209%_))
                                                (let ((_%e200190200212%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g200183200209%_))))
                                                  (let ((_%hd200189200216%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200190200212%_)))
                                                        (_%tl200188200219%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200190200212%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200188200219%_))
                                                        (let ((_%e200193200222%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl200188200219%_))))
                  (let ((_%hd200192200226%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200193200222%_)))
                        (_%tl200191200229%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200193200222%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200191200229%_))
                        (let ((_%e200196200232%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200191200229%_))))
                          (let ((_%hd200195200236%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200196200232%_)))
                                (_%tl200194200239%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200196200232%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200194200239%_))
                                (let ((_%e200199200242%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200194200239%_))))
                                  (let ((_%hd200198200246%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200199200242%_)))
                                        (_%tl200197200249%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200199200242%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200197200249%_))
                                        ((lambda (_%L200252%_
                                                  _%L200254%_
                                                  _%L200255%_
                                                  _%L200256%_)
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
                             (cons _%L200256%_ '()))
                       (cons 'return:
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L200255%_ '()))
                                   (cons 'effect:
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L200254%_ '()))
                                               (cons 'unchecked:
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L200252%_ '()))
                   '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd200198200246%_
                                         _%hd200195200236%_
                                         _%hd200192200226%_
                                         _%hd200189200216%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g200182200205%_
                                           _%g200183200209%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200182200205%_ _%g200183200209%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g200182200205%_ _%g200183200209%_)))))
                (let ()
                  (declare (not safe))
                  (_%g200182200205%_ _%g200183200209%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200182200205%_
                                                   _%g200183200209%_)))))
                                         (__tmp202742
                                          (list _%args200165%_
                                                _%return200167%_
                                                _%effect200168%_
                                                _%unchecked200169%_)))
                                    (declare (not safe))
                                    (_%g200181200279%_ __tmp202742))
                                  '()))))))
          (let ()
            (declare (not safe))
            (|gxc[1]#verify-procedure!| _%ctx199601%_ _%proc199603%_))
          (let* ((_%__stx202379202380%_ _%sig199604%_)
                 (_%g199615199718%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx202379202380%_)))))
            (let ((_%__kont202382202383%_
                   (lambda (_%L200146%_ _%L200148%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature199608%_
                        _%L200148%_
                        _%L200146%_
                        '#f
                        '#f))))
                  (_%__kont202384202385%_
                   (lambda (_%L200097%_ _%L200099%_ _%L200100%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature199608%_
                        _%L200100%_
                        _%L200099%_
                        _%L200097%_
                        '#f))))
                  (_%__kont202386202387%_
                   (lambda (_%L200021%_ _%L200023%_ _%L200024%_)
                     (let ((__tmp202743
                            (let ((__tmp202744
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc199603%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp202744))))
                       (declare (not safe))
                       (_%make-signature199608%_
                        _%L200024%_
                        _%L200023%_
                        _%L200021%_
                        __tmp202743))))
                  (_%__kont202388202389%_
                   (lambda (_%L199927%_ _%L199929%_ _%L199930%_ _%L199931%_)
                     (let ((__tmp202745
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L199927%_))))
                       (declare (not safe))
                       (_%make-signature199608%_
                        _%L199931%_
                        _%L199930%_
                        '#f
                        __tmp202745))))
                  (_%__kont202390202391%_
                   (lambda (_%L199834%_ _%L199836%_)
                     (let ((__tmp202746
                            (let ((__tmp202747
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc199603%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp202747))))
                       (declare (not safe))
                       (_%make-signature199608%_
                        _%L199836%_
                        _%L199834%_
                        '#f
                        __tmp202746))))
                  (_%__kont202392202393%_
                   (lambda (_%L199769%_ _%L199771%_ _%L199772%_)
                     (let ((__tmp202748
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L199769%_))))
                       (declare (not safe))
                       (_%make-signature199608%_
                        _%L199772%_
                        _%L199771%_
                        '#f
                        __tmp202748)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202379202380%_))
                  (let ((_%e199621200126%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202379202380%_))))
                    (let ((_%tl199619200133%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199621200126%_)))
                          (_%hd199620200130%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199621200126%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199619200133%_))
                          (let ((_%e199624200136%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199619200133%_))))
                            (let ((_%tl199622200143%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199624200136%_)))
                                  (_%hd199623200140%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199624200136%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199622200143%_))
                                  (_%__kont202382202383%_
                                   _%hd199623200140%_
                                   _%hd199620200130%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199622200143%_))
                                      (let ((_%e199636200073%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199622200143%_))))
                                        (let ((_%tl199634200080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199636200073%_)))
                                              (_%hd199635200077%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199636200073%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd199635200077%_))
                                              (let ((_%e199637200083%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd199635200077%_))))
                                                (if (equal? _%e199637200083%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199634200080%_))
                                                        (let ((_%e199640200087%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl199634200080%_))))
                  (let ((_%tl199638200094%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199640200087%_)))
                        (_%hd199639200091%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199640200087%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl199638200094%_))
                        (_%__kont202384202385%_
                         _%hd199639200091%_
                         _%hd199623200140%_
                         _%hd199620200130%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199638200094%_))
                            (let ((_%e199659200007%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl199638200094%_))))
                              (let ((_%tl199657200014%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199659200007%_)))
                                    (_%hd199658200011%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199659200007%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd199658200011%_))
                                    (let ((_%e199660200017%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199658200011%_))))
                                      (if (equal? _%e199660200017%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199657200014%_))
                                              (_%__kont202386202387%_
                                               _%hd199639200091%_
                                               _%hd199623200140%_
                                               _%hd199620200130%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199657200014%_))
                                                  (let ((_%e199684199917%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199657200014%_))))
                                                    (let ((_%tl199682199924%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199684199917%_)))
                                                          (_%hd199683199921%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199684199917%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199682199924%_))
                                                          (_%__kont202388202389%_
                                                           _%hd199683199921%_
                                                           _%hd199639200091%_
                                                           _%hd199623200140%_
                                                           _%hd199620200130%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g199615199718%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199615199718%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199615199718%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199615199718%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g199615199718%_))))))
                (let () (declare (not safe)) (_%g199615199718%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e199637200083%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl199634200080%_))
                                                            (_%__kont202390202391%_
                                                             _%hd199623200140%_
                                                             _%hd199620200130%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl199634200080%_))
                        (let ((_%e199712199759%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199634200080%_))))
                          (let ((_%tl199710199766%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199712199759%_)))
                                (_%hd199711199763%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199712199759%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199710199766%_))
                                (_%__kont202392202393%_
                                 _%hd199711199763%_
                                 _%hd199623200140%_
                                 _%hd199620200130%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g199615199718%_)))))
                        (let () (declare (not safe)) (_%g199615199718%_))))
                (let () (declare (not safe)) (_%g199615199718%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199615199718%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199615199718%_))))))
                          (let () (declare (not safe)) (_%g199615199718%_)))))
                  (let () (declare (not safe)) (_%g199615199718%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig199281%_)
        (let* ((_%g199284199350%_
                (lambda (_%g199285199346%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199285199346%_))))
               (_%g199283199597%_
                (lambda (_%g199285199354%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199285199354%_))
                      (let ((_%e199292199357%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199285199354%_))))
                        (let ((_%hd199291199361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199292199357%_)))
                              (_%tl199290199364%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199292199357%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199290199364%_))
                              (let ((_%e199295199367%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199290199364%_))))
                                (let ((_%hd199294199371%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199295199367%_)))
                                      (_%tl199293199374%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199295199367%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd199294199371%_))
                                      (let ((_%e199296199377%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd199294199371%_))))
                                        (if (equal? _%e199296199377%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199293199374%_))
                                                (let ((_%e199299199381%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl199293199374%_))))
                                                  (let ((_%hd199298199385%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199299199381%_)))
                                                        (_%tl199297199388%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199299199381%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199298199385%_))
                                                        (let ((_%e199302199391%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd199298199385%_))))
                  (let ((_%hd199301199395%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199302199391%_)))
                        (_%tl199300199398%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199302199391%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd199301199395%_))
                        (if (let ((__tmp202749 |gxc[1]#_g202750_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp202749
                               _%hd199301199395%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199300199398%_))
                                (let ((_%e199305199401%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199300199398%_))))
                                  (let ((_%hd199304199405%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199305199401%_)))
                                        (_%tl199303199408%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199305199401%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199303199408%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199297199388%_))
                                            (let ((_%e199308199411%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl199297199388%_))))
                                              (let ((_%hd199307199415%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199308199411%_)))
                                                    (_%tl199306199418%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199308199411%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd199307199415%_))
                                                    (let ((_%e199309199421%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd199307199415%_))))
                                                      (if (equal? _%e199309199421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl199306199418%_))
                      (let ((_%e199312199425%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl199306199418%_))))
                        (let ((_%hd199311199429%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199312199425%_)))
                              (_%tl199310199432%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199312199425%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199311199429%_))
                              (let ((_%e199315199435%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd199311199429%_))))
                                (let ((_%hd199314199439%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199315199435%_)))
                                      (_%tl199313199442%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199315199435%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199314199439%_))
                                      (if (let ((__tmp202751
                                                 |gxc[1]#_g202752_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp202751
                                             _%hd199314199439%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199313199442%_))
                                              (let ((_%e199318199445%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl199313199442%_))))
                                                (let ((_%hd199317199449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199318199445%_)))
                                                      (_%tl199316199452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199318199445%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199316199452%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199310199432%_))
                                                          (let ((_%e199321199455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl199310199432%_))))
                    (let ((_%hd199320199459%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199321199455%_)))
                          (_%tl199319199462%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199321199455%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd199320199459%_))
                          (let ((_%e199322199465%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199320199459%_))))
                            (if (equal? _%e199322199465%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199319199462%_))
                                    (let ((_%e199325199469%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl199319199462%_))))
                                      (let ((_%hd199324199473%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199325199469%_)))
                                            (_%tl199323199476%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199325199469%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199324199473%_))
                                            (let ((_%e199328199479%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd199324199473%_))))
                                              (let ((_%hd199327199483%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199328199479%_)))
                                                    (_%tl199326199486%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199328199479%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199327199483%_))
                                                    (if (let ((__tmp202753
                                                               |gxc[1]#_g202754_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp202753
                                                           _%hd199327199483%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199326199486%_))
                                                            (let ((_%e199331199489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl199326199486%_))))
                      (let ((_%hd199330199493%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199331199489%_)))
                            (_%tl199329199496%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199331199489%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199329199496%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199323199476%_))
                                (let ((_%e199334199499%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199323199476%_))))
                                  (let ((_%hd199333199503%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199334199499%_)))
                                        (_%tl199332199506%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199334199499%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd199333199503%_))
                                        (let ((_%e199335199509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199333199503%_))))
                                          (if (equal? _%e199335199509%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199332199506%_))
                                                  (let ((_%e199338199513%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199332199506%_))))
                                                    (let ((_%hd199337199517%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199338199513%_)))
                                                          (_%tl199336199520%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199338199513%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199337199517%_))
                                                          (let ((_%e199341199523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd199337199517%_))))
                    (let ((_%hd199340199527%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199341199523%_)))
                          (_%tl199339199530%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199341199523%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd199340199527%_))
                          (if (let ((__tmp202755 |gxc[1]#_g202756_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp202755
                                 _%hd199340199527%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199339199530%_))
                                  (let ((_%e199344199533%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199339199530%_))))
                                    (let ((_%hd199343199537%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199344199533%_)))
                                          (_%tl199342199540%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199344199533%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199342199540%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199336199520%_))
                                              ((lambda (_%L199543%_
                                                        _%L199545%_
                                                        _%L199546%_
                                                        _%L199547%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L199543%_))
                                                     (cons _%L199543%_
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
                                                 (cons _%L199546%_ '()))
                                           '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#f))
                                               _%hd199343199537%_
                                               _%hd199330199493%_
                                               _%hd199317199449%_
                                               _%hd199304199405%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g199284199350%_
                                                 _%g199285199354%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199284199350%_
                                             _%g199285199354%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199284199350%_ _%g199285199354%_)))
                              (let ()
                                (declare (not safe))
                                (_%g199284199350%_ _%g199285199354%_)))
                          (let ()
                            (declare (not safe))
                            (_%g199284199350%_ _%g199285199354%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g199284199350%_ _%g199285199354%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199284199350%_
                                                     _%g199285199354%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199284199350%_
                                                 _%g199285199354%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199284199350%_
                                           _%g199285199354%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199284199350%_ _%g199285199354%_)))
                            (let ()
                              (declare (not safe))
                              (_%g199284199350%_ _%g199285199354%_)))))
                    (let ()
                      (declare (not safe))
                      (_%g199284199350%_ _%g199285199354%_)))
                (let ()
                  (declare (not safe))
                  (_%g199284199350%_ _%g199285199354%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199284199350%_
                                                       _%g199285199354%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199284199350%_
                                               _%g199285199354%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199284199350%_ _%g199285199354%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g199284199350%_ _%g199285199354%_))))
                          (let ()
                            (declare (not safe))
                            (_%g199284199350%_ _%g199285199354%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g199284199350%_ _%g199285199354%_)))
              (let ()
                (declare (not safe))
                (_%g199284199350%_ _%g199285199354%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199284199350%_
                                                 _%g199285199354%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199284199350%_
                                             _%g199285199354%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199284199350%_
                                         _%g199285199354%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199284199350%_ _%g199285199354%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g199284199350%_ _%g199285199354%_)))
                  (let ()
                    (declare (not safe))
                    (_%g199284199350%_ _%g199285199354%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199284199350%_
                                                       _%g199285199354%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199284199350%_
                                               _%g199285199354%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199284199350%_
                                           _%g199285199354%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199284199350%_ _%g199285199354%_)))
                            (let ()
                              (declare (not safe))
                              (_%g199284199350%_ _%g199285199354%_)))
                        (let ()
                          (declare (not safe))
                          (_%g199284199350%_ _%g199285199354%_)))))
                (let ()
                  (declare (not safe))
                  (_%g199284199350%_ _%g199285199354%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199284199350%_
                                                   _%g199285199354%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199284199350%_
                                               _%g199285199354%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199284199350%_
                                         _%g199285199354%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199284199350%_ _%g199285199354%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g199284199350%_ _%g199285199354%_))))))
          (declare (not safe))
          (_%g199283199597%_ _%sig199281%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx200369%_)
        (let* ((_%g200372200390%_
                (lambda (_%g200373200386%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200373200386%_))))
               (_%g200371200445%_
                (lambda (_%g200373200394%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200373200394%_))
                      (let ((_%e200378200397%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200373200394%_))))
                        (let ((_%hd200377200401%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200378200397%_)))
                              (_%tl200376200404%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200378200397%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200376200404%_))
                              (let ((_%e200381200407%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200376200404%_))))
                                (let ((_%hd200380200411%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200381200407%_)))
                                      (_%tl200379200414%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200381200407%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200379200414%_))
                                      (let ((_%e200384200417%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200379200414%_))))
                                        (let ((_%hd200383200421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200384200417%_)))
                                              (_%tl200382200424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200384200417%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200382200424%_))
                                              ((lambda (_%L200427%_
                                                        _%L200429%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200429%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200427%_)))
                                                     (begin
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-procedure!|
                                                          _%stx200369%_
                                                          _%L200429%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-class!|
                                                          _%stx200369%_
                                                          _%L200427%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L200429%_
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
                                                   (cons _%L200427%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200372200390%_
                                                      _%g200373200394%_)))
                                               _%hd200383200421%_
                                               _%hd200380200411%_)
                                              (_%g200372200390%_
                                               _%g200373200394%_))))
                                      (_%g200372200390%_ _%g200373200394%_))))
                              (_%g200372200390%_ _%g200373200394%_))))
                      (_%g200372200390%_ _%g200373200394%_)))))
          (_%g200371200445%_ _%stx200369%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx200449%_)
        (let* ((_%g200452200476%_
                (lambda (_%g200453200472%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200453200472%_))))
               (_%g200451200759%_
                (lambda (_%g200453200480%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200453200480%_))
                      (let ((_%e200458200483%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200453200480%_))))
                        (let ((_%hd200457200487%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200458200483%_)))
                              (_%tl200456200490%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200458200483%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200456200490%_))
                              (let ((_%e200461200493%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200456200490%_))))
                                (let ((_%hd200460200497%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200461200493%_)))
                                      (_%tl200459200500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200461200493%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200459200500%_))
                                      (let ((_g202757_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200459200500%_
                                                '0))))
                                        (begin
                                          (let ((_g202758_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202757_)
                                                       (##vector-length
                                                        _g202757_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202758_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202758_)))
                                          (let ((_%target200462200503%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202757_ 0)))
                                                (_%tl200464200506%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202757_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200464200506%_))
                                                (letrec ((_%loop200465200509%_
                                                          (lambda (_%hd200463200513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature200469200516%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200463200513%_))
                        (let ((_%e200466200519%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200463200513%_))))
                          (let ((_%lp-hd200467200523%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200466200519%_)))
                                (_%lp-tl200468200526%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200466200519%_))))
                            (_%loop200465200509%_
                             _%lp-tl200468200526%_
                             (cons _%lp-hd200467200523%_
                                   _%signature200469200516%_))))
                        (let ((_%signature200470200529%_
                               (reverse _%signature200469200516%_)))
                          ((lambda (_%L200533%_ _%L200535%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200535%_))
                                 (let* ((_%g200553200568%_
                                         (lambda (_%g200554200564%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200554200564%_))))
                                        (_%g200552200747%_
                                         (lambda (_%g200554200572%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g200554200572%_))
                                               (let ((_%e200559200575%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g200554200572%_))))
                                                 (let ((_%hd200558200579%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200559200575%_)))
                                                       (_%tl200557200582%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200559200575%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200557200582%_))
                                                       (let ((_%e200562200585%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl200557200582%_))))
                 (let ((_%hd200561200589%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200562200585%_)))
                       (_%tl200560200592%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200562200585%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl200560200592%_))
                       ((lambda (_%L200595%_ _%L200597%_)
                          (let ()
                            (let* ((_%g200613200621%_
                                    (lambda (_%g200614200617%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g200614200617%_))))
                                   (_%g200612200743%_
                                    (lambda (_%g200614200625%_)
                                      ((lambda (_%L200628%_)
                                         (let ()
                                           (let* ((_%unchecked200641%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (|gxc[1]#signature->unchecked-signature|
                                                      _%L200595%_)))
                                                  (_%g200644200652%_
                                                   (lambda (_%g200645200648%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g200645200648%_))))
                                                  (_%g200643200675%_
                                                   (lambda (_%g200645200656%_)
                                                     ((lambda (_%L200659%_)
                                                        (let ()
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (cons _%L200628%_ (cons _%L200659%_ '())))))
              _%g200645200656%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g200643200675%_
                                              (if _%unchecked200641%_
                                                  (let* ((_%g200679200694%_
                                                          (lambda (_%g200680200690%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g200680200690%_))))
                                                         (_%g200678200739%_
                                                          (lambda (_%g200680200698%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g200680200698%_))
                        (let ((_%e200685200701%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%g200680200698%_))))
                          (let ((_%hd200684200705%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200685200701%_)))
                                (_%tl200683200708%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200685200701%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200683200708%_))
                                (let ((_%e200688200711%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200683200708%_))))
                                  (let ((_%hd200687200715%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200688200711%_)))
                                        (_%tl200686200718%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200688200711%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200686200718%_))
                                        ((lambda (_%L200721%_ _%L200723%_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type))
                                                   (cons _%L200723%_
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L200597%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons _%L200721%_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd200687200715%_
                                         _%hd200684200705%_)
                                        (_%g200679200694%_
                                         _%g200680200698%_))))
                                (_%g200679200694%_ _%g200680200698%_))))
                        (_%g200679200694%_ _%g200680200698%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g200678200739%_
                                                     _%unchecked200641%_))
                                                  '(begin))))))
                                       _%g200614200625%_))))
                              (_%g200612200743%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'declare-type))
                                     (cons _%L200535%_
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!primitive-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200597%_ '()))
                     (cons '#f (cons 'signature: (cons _%L200595%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                        _%hd200561200589%_
                        _%hd200558200579%_)
                       (_%g200553200568%_ _%g200554200572%_))))
               (_%g200553200568%_ _%g200554200572%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200553200568%_
                                                _%g200554200572%_)))))
                                   (_%g200552200747%_
                                    (let ((__tmp202759
                                           (let ((__tmp202760
                                                  (lambda (_%g200750200753%_
                                                           _%g200751200756%_)
                                                    (cons _%g200750200753%_
                                                          _%g200751200756%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp202760
                                              '()
                                              _%L200533%_))))
                                      (declare (not safe))
                                      (|gxc[1]#parse-signature|
                                       _%stx200449%_
                                       _%L200535%_
                                       __tmp202759))))
                                 (_%g200452200476%_ _%g200453200480%_)))
                           _%signature200470200529%_
                           _%hd200460200497%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200465200509%_
                                                   _%target200462200503%_
                                                   '()))
                                                (_%g200452200476%_
                                                 _%g200453200480%_)))))
                                      (_%g200452200476%_ _%g200453200480%_))))
                              (_%g200452200476%_ _%g200453200480%_))))
                      (_%g200452200476%_ _%g200453200480%_)))))
          (_%g200451200759%_ _%stx200449%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx200764%_)
        (let* ((_%g200767200791%_
                (lambda (_%g200768200787%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200768200787%_))))
               (_%g200766201605%_
                (lambda (_%g200768200795%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200768200795%_))
                      (let ((_%e200773200798%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200768200795%_))))
                        (let ((_%hd200772200802%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200773200798%_)))
                              (_%tl200771200805%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200773200798%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200771200805%_))
                              (let ((_%e200776200808%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200771200805%_))))
                                (let ((_%hd200775200812%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200776200808%_)))
                                      (_%tl200774200815%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200776200808%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200774200815%_))
                                      (let ((_g202761_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200774200815%_
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
                                          (let ((_%target200777200818%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202761_ 0)))
                                                (_%tl200779200821%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202761_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200779200821%_))
                                                (letrec ((_%loop200780200824%_
                                                          (lambda (_%hd200778200828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature200784200831%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200778200828%_))
                        (let ((_%e200781200834%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200778200828%_))))
                          (let ((_%lp-hd200782200838%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200781200834%_)))
                                (_%lp-tl200783200841%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200781200834%_))))
                            (_%loop200780200824%_
                             _%lp-tl200783200841%_
                             (cons _%lp-hd200782200838%_
                                   _%case-signature200784200831%_))))
                        (let ((_%case-signature200785200844%_
                               (reverse _%case-signature200784200831%_)))
                          ((lambda (_%L200848%_ _%L200850%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200850%_))
                                 (let* ((_%signatures200881%_
                                         (map (lambda (_%g200867200869%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (|gxc[1]#parse-signature|
                                                   _%stx200764%_
                                                   _%L200850%_
                                                   _%g200867200869%_)))
                                              (let ((__tmp202763
                                                     (lambda (_%g200872200875%_
                                                              _%g200873200878%_)
                                                       (cons _%g200872200875%_
                                                             _%g200873200878%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp202763
                                                 '()
                                                 _%L200848%_))))
                                        (_%g200884200910%_
                                         (lambda (_%g200885200906%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200885200906%_))))
                                        (_%g200883201601%_
                                         (lambda (_%g200885200914%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g200885200914%_))
                                               (let ((_g202764_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g200885200914%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g202765_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g202764_)
                        (##vector-length _g202764_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g202765_ 2)))
                 (error "Context expects 2 values" _g202765_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target200888200917%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202764_
                                                             0)))
                                                         (_%tl200890200920%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202764_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200890200920%_))
                                                         (letrec ((_%loop200891200923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd200889200927%_
                                    _%sig200895200930%_
                                    _%arity200896200932%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd200889200927%_))
                                 (let ((_%e200892200935%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd200889200927%_))))
                                   (let ((_%lp-hd200893200939%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200892200935%_)))
                                         (_%lp-tl200894200942%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200892200935%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd200893200939%_))
                                         (let ((_%e200901200945%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd200893200939%_))))
                                           (let ((_%hd200900200949%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200901200945%_)))
                                                 (_%tl200899200952%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200901200945%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200899200952%_))
                                                 (let ((_%e200904200955%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200899200952%_))))
                                                   (let ((_%hd200903200959%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200904200955%_)))
                                                         (_%tl200902200962%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200904200955%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200902200962%_))
                                                         (_%loop200891200923%_
                                                          _%lp-tl200894200942%_
                                                          (cons _%hd200903200959%_
                                                                _%sig200895200930%_)
                                                          (cons _%hd200900200949%_
                                                                _%arity200896200932%_))
                                                         (_%g200884200910%_
                                                          _%g200885200914%_))))
                                                 (_%g200884200910%_
                                                  _%g200885200914%_))))
                                         (_%g200884200910%_
                                          _%g200885200914%_))))
                                 (let ((_%sig200897200965%_
                                        (reverse _%sig200895200930%_))
                                       (_%arity200898200968%_
                                        (reverse _%arity200896200932%_)))
                                   ((lambda (_%L200971%_ _%L200973%_)
                                      (let ()
                                        (let* ((_%g200990200998%_
                                                (lambda (_%g200991200994%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g200991200994%_))))
                                               (_%g200989201586%_
                                                (lambda (_%g200991201002%_)
                                                  ((lambda (_%L201005%_)
                                                     (let ()
                                                       (let* ((_%g201018201026%_
                                                               (lambda (_%g201019201022%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g201019201022%_))))
                      (_%g201017201048%_
                       (lambda (_%g201019201030%_)
                         ((lambda (_%L201033%_)
                            (let ()
                              (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'begin))
                                    (cons _%L201005%_
                                          (cons _%L201033%_ '())))))
                          _%g201019201030%_))))
                 (_%g201017201048%_
                  (let ((_g202766_
                         (let _%loop201052%_ ((_%rest201055%_
                                               _%signatures200881%_)
                                              (_%unchecked-proc201057%_ '#f)
                                              (_%unchecked-clauses201058%_
                                               '()))
                           (let* ((_%rest201059201067%_ _%rest201055%_)
                                  (_%else201061201079%_
                                   (lambda ()
                                     (values _%unchecked-proc201057%_
                                             (reverse!
                                              _%unchecked-clauses201058%_))))
                                  (_%K201063201451%_
                                   (lambda (_%rest201083%_ _%hd201085%_)
                                     (let* ((_%g201087201160%_
                                             (lambda (_%g201088201156%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g201088201156%_))))
                                            (_%g201086201447%_
                                             (lambda (_%g201088201164%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g201088201164%_))
                                                   (let ((_%e201096201167%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%g201088201164%_))))
                                                     (let ((_%hd201095201171%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201096201167%_)))
                                                           (_%tl201094201174%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201096201167%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl201094201174%_))
                                                           (let ((_%e201099201177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl201094201174%_))))
                     (let ((_%hd201098201181%_
                            (let ()
                              (declare (not safe))
                              (##car _%e201099201177%_)))
                           (_%tl201097201184%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e201099201177%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd201098201181%_))
                           (let ((_%e201102201187%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%hd201098201181%_))))
                             (let ((_%hd201101201191%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e201102201187%_)))
                                   (_%tl201100201194%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e201102201187%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl201100201194%_))
                                   (let ((_%e201105201197%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl201100201194%_))))
                                     (let ((_%hd201104201201%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201105201197%_)))
                                           (_%tl201103201204%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201105201197%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-datum?
                                              _%hd201104201201%_))
                                           (let ((_%e201106201207%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd201104201201%_))))
                                             (if (equal? _%e201106201207%_
                                                         'arguments:)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl201103201204%_))
                                                     (let ((_%e201109201211%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%tl201103201204%_))))
                                                       (let ((_%hd201108201215%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e201109201211%_)))
                     (_%tl201107201218%_
                      (let () (declare (not safe)) (##cdr _%e201109201211%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd201108201215%_))
                     (let ((_%e201112201221%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%hd201108201215%_))))
                       (let ((_%hd201111201225%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201112201221%_)))
                             (_%tl201110201228%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201112201221%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%hd201111201225%_))
                             (if (let ((__tmp202768 |gxc[1]#_g202769_|))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    __tmp202768
                                    _%hd201111201225%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201110201228%_))
                                     (let ((_%e201115201231%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201110201228%_))))
                                       (let ((_%hd201114201235%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201115201231%_)))
                                             (_%tl201113201238%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201115201231%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl201113201238%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl201107201218%_))
                                                 (let ((_%e201118201241%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl201107201218%_))))
                                                   (let ((_%hd201117201245%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201118201241%_)))
                                                         (_%tl201116201248%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201118201241%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-datum?
                                                            _%hd201117201245%_))
                                                         (let ((_%e201119201251%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd201117201245%_))))
                   (if (equal? _%e201119201251%_ 'return:)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl201116201248%_))
                           (let ((_%e201122201255%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%tl201116201248%_))))
                             (let ((_%hd201121201259%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e201122201255%_)))
                                   (_%tl201120201262%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e201122201255%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd201121201259%_))
                                   (let ((_%e201125201265%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%hd201121201259%_))))
                                     (let ((_%hd201124201269%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201125201265%_)))
                                           (_%tl201123201272%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201125201265%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd201124201269%_))
                                           (if (let ((__tmp202770
                                                      |gxc[1]#_g202771_|))
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  __tmp202770
                                                  _%hd201124201269%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl201123201272%_))
                                                   (let ((_%e201128201275%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl201123201272%_))))
                                                     (let ((_%hd201127201279%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201128201275%_)))
                                                           (_%tl201126201282%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201128201275%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl201126201282%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl201120201262%_))
                       (let ((_%e201131201285%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl201120201262%_))))
                         (let ((_%hd201130201289%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201131201285%_)))
                               (_%tl201129201292%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201131201285%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd201130201289%_))
                               (let ((_%e201132201295%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd201130201289%_))))
                                 (if (equal? _%e201132201295%_ 'effect:)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl201129201292%_))
                                         (let ((_%e201135201299%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%tl201129201292%_))))
                                           (let ((_%hd201134201303%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201135201299%_)))
                                                 (_%tl201133201306%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201135201299%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd201134201303%_))
                                                 (let ((_%e201138201309%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%hd201134201303%_))))
                                                   (let ((_%hd201137201313%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201138201309%_)))
                                                         (_%tl201136201316%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201138201309%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd201137201313%_))
                                                         (if (let ((__tmp202772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |gxc[1]#_g202773_|))
                       (declare (not safe))
                       (gx#free-identifier=? __tmp202772 _%hd201137201313%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl201136201316%_))
                         (let ((_%e201141201319%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl201136201316%_))))
                           (let ((_%hd201140201323%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e201141201319%_)))
                                 (_%tl201139201326%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e201141201319%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl201139201326%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201133201306%_))
                                     (let ((_%e201144201329%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201133201306%_))))
                                       (let ((_%hd201143201333%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201144201329%_)))
                                             (_%tl201142201336%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201144201329%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%hd201143201333%_))
                                             (let ((_%e201145201339%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd201143201333%_))))
                                               (if (equal? _%e201145201339%_
                                                           'unchecked:)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl201142201336%_))
                                                       (let ((_%e201148201343%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl201142201336%_))))
                 (let ((_%hd201147201347%_
                        (let ()
                          (declare (not safe))
                          (##car _%e201148201343%_)))
                       (_%tl201146201350%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e201148201343%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd201147201347%_))
                       (let ((_%e201151201353%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd201147201347%_))))
                         (let ((_%hd201150201357%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201151201353%_)))
                               (_%tl201149201360%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201151201353%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%hd201150201357%_))
                               (if (let ((__tmp202774 |gxc[1]#_g202775_|))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      __tmp202774
                                      _%hd201150201357%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl201149201360%_))
                                       (let ((_%e201154201363%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#syntax-e
                                                 _%tl201149201360%_))))
                                         (let ((_%hd201153201367%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e201154201363%_)))
                                               (_%tl201152201370%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e201154201363%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl201152201370%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl201146201350%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl201097201184%_))
                                                       ((lambda (_%L201373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L201375%_
                         _%L201376%_
                         _%L201377%_
                         _%L201378%_)
                  (let ((_%clause201439%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0
                                  '#f
                                  'make-!primitive-lambda))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201378%_ '()))
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
                                       (cons _%L201376%_ '()))
                                 '())))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (_%unchecked201441%_
                         (let () (declare (not safe)) (gx#stx-e _%L201373%_))))
                    (_%loop201052%_
                     _%rest201083%_
                     (let ((_%$e201443%_ _%unchecked201441%_))
                       (if _%$e201443%_ _%$e201443%_ _%unchecked-proc201057%_))
                     (cons _%clause201439%_ _%unchecked-clauses201058%_))))
                _%hd201153201367%_
                _%hd201140201323%_
                _%hd201127201279%_
                _%hd201114201235%_
                _%hd201095201171%_)
               (_%g201087201160%_ _%g201088201164%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201087201160%_
                                                    _%g201088201164%_))
                                               (_%g201087201160%_
                                                _%g201088201164%_))))
                                       (_%g201087201160%_ _%g201088201164%_))
                                   (_%g201087201160%_ _%g201088201164%_))
                               (_%g201087201160%_ _%g201088201164%_))))
                       (_%g201087201160%_ _%g201088201164%_))))
               (_%g201087201160%_ _%g201088201164%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201087201160%_
                                                    _%g201088201164%_)))
                                             (_%g201087201160%_
                                              _%g201088201164%_))))
                                     (_%g201087201160%_ _%g201088201164%_))
                                 (_%g201087201160%_ _%g201088201164%_))))
                         (_%g201087201160%_ _%g201088201164%_))
                     (_%g201087201160%_ _%g201088201164%_))
                 (_%g201087201160%_ _%g201088201164%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g201087201160%_
                                                  _%g201088201164%_))))
                                         (_%g201087201160%_ _%g201088201164%_))
                                     (_%g201087201160%_ _%g201088201164%_)))
                               (_%g201087201160%_ _%g201088201164%_))))
                       (_%g201087201160%_ _%g201088201164%_))
                   (_%g201087201160%_ _%g201088201164%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201087201160%_
                                                    _%g201088201164%_))
                                               (_%g201087201160%_
                                                _%g201088201164%_))
                                           (_%g201087201160%_
                                            _%g201088201164%_))))
                                   (_%g201087201160%_ _%g201088201164%_))))
                           (_%g201087201160%_ _%g201088201164%_))
                       (_%g201087201160%_ _%g201088201164%_)))
                 (_%g201087201160%_ _%g201088201164%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g201087201160%_
                                                  _%g201088201164%_))
                                             (_%g201087201160%_
                                              _%g201088201164%_))))
                                     (_%g201087201160%_ _%g201088201164%_))
                                 (_%g201087201160%_ _%g201088201164%_))
                             (_%g201087201160%_ _%g201088201164%_))))
                     (_%g201087201160%_ _%g201088201164%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201087201160%_
                                                      _%g201088201164%_))
                                                 (_%g201087201160%_
                                                  _%g201088201164%_)))
                                           (_%g201087201160%_
                                            _%g201088201164%_))))
                                   (_%g201087201160%_ _%g201088201164%_))))
                           (_%g201087201160%_ _%g201088201164%_))))
                   (_%g201087201160%_ _%g201088201164%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201087201160%_
                                                    _%g201088201164%_)))))
                                       (_%g201086201447%_ _%hd201085%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest201059201067%_))
                                 (let ((_%hd201064201455%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest201059201067%_)))
                                       (_%tl201065201458%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest201059201067%_))))
                                   (let* ((_%hd201461%_ _%hd201064201455%_)
                                          (_%rest201464%_ _%tl201065201458%_))
                                     (_%K201063201451%_
                                      _%rest201464%_
                                      _%hd201461%_)))
                                 (_%else201061201079%_))))))
                    (begin
                      (let ((_g202767_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g202766_)
                                   (##vector-length _g202766_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g202767_ 2)))
                            (error "Context expects 2 values" _g202767_)))
                      (let ((_%unchecked-proc201467%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202766_ 0)))
                            (_%unchecked-clauses201469%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202766_ 1))))
                        (if _%unchecked-proc201467%_
                            (let* ((_%g201471201495%_
                                    (lambda (_%g201472201491%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g201472201491%_))))
                                   (_%g201470201582%_
                                    (lambda (_%g201472201499%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%g201472201499%_))
                                          (let ((_%e201477201502%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%g201472201499%_))))
                                            (let ((_%hd201476201506%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201477201502%_)))
                                                  (_%tl201475201509%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201477201502%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201475201509%_))
                                                  (let ((_%e201480201512%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201475201509%_))))
                                                    (let ((_%hd201479201516%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201480201512%_)))
                                                          (_%tl201478201519%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201480201512%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%hd201479201516%_))
                                                          (let ((_g202776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%hd201479201516%_ '0))))
                    (begin
                      (let ((_g202777_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g202776_)
                                   (##vector-length _g202776_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g202777_ 2)))
                            (error "Context expects 2 values" _g202777_)))
                      (let ((_%target201481201522%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202776_ 0)))
                            (_%tl201483201525%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202776_ 1))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201483201525%_))
                            (letrec ((_%loop201484201528%_
                                      (lambda (_%hd201482201532%_
                                               _%clause201488201535%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd201482201532%_))
                                            (let ((_%e201485201538%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd201482201532%_))))
                                              (let ((_%lp-hd201486201542%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201485201538%_)))
                                                    (_%lp-tl201487201545%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201485201538%_))))
                                                (_%loop201484201528%_
                                                 _%lp-tl201487201545%_
                                                 (cons _%lp-hd201486201542%_
                                                       _%clause201488201535%_))))
                                            (let ((_%clause201489201548%_
                                                   (reverse _%clause201488201535%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl201478201519%_))
                                                  ((lambda (_%L201552%_
                                                            _%L201554%_)
                                                     (let ()
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L201554%_
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
                                                   (let ((__tmp202778
                                                          (lambda (_%g201573201576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g201574201579%_)
                    (cons _%g201573201576%_ _%g201574201579%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp202778
                                                      '()
                                                      _%L201552%_)))
                                             '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%clause201489201548%_
                                                   _%hd201476201506%_)
                                                  (_%g201471201495%_
                                                   _%g201472201499%_)))))))
                              (_%loop201484201528%_
                               _%target201481201522%_
                               '()))
                            (_%g201471201495%_ _%g201472201499%_)))))
                  (_%g201471201495%_ _%g201472201499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g201471201495%_
                                                   _%g201472201499%_))))
                                          (_%g201471201495%_
                                           _%g201472201499%_)))))
                              (_%g201470201582%_
                               (list _%unchecked-proc201467%_
                                     _%unchecked-clauses201469%_)))
                            '(begin)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g200991201002%_))))
                                          (_%g200989201586%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'declare-type))
                                                 (cons _%L200850%_
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
                                            _%L200971%_
                                            _%L200973%_))
                                         (let ((__tmp202779
                                                (lambda (_%g201589201593%_
                                                         _%g201590201596%_
                                                         _%g201591201598%_)
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%g201590201596%_ '()))
                            (cons '#f
                                  (cons 'signature:
                                        (cons _%g201589201593%_ '())))))
                _%g201591201598%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp202779
                                            '()
                                            _%L200971%_
                                            _%L200973%_))))
                                 '()))
                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig200897200965%_
                                    _%arity200898200968%_))))))
                   (_%loop200891200923%_ _%target200888200917%_ '() '()))
                 (_%g200884200910%_ _%g200885200914%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200884200910%_
                                                _%g200885200914%_)))))
                                   (_%g200883201601%_ _%signatures200881%_))
                                 (_%g200767200791%_ _%g200768200795%_)))
                           _%case-signature200785200844%_
                           _%hd200775200812%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200780200824%_
                                                   _%target200777200818%_
                                                   '()))
                                                (_%g200767200791%_
                                                 _%g200768200795%_)))))
                                      (_%g200767200791%_ _%g200768200795%_))))
                              (_%g200767200791%_ _%g200768200795%_))))
                      (_%g200767200791%_ _%g200768200795%_)))))
          (_%g200766201605%_ _%stx200764%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx201613%_)
        (let* ((_%__stx202595202596%_ _%$stx201613%_)
               (_%g201619201679%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202595202596%_)))))
          (let ((_%__kont202598202599%_
                 (lambda (_%L201901%_ _%L201903%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201903%_ '()))
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
                                                       (cons _%L201903%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201901%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont202600202601%_
                 (lambda (_%L201826%_ _%L201828%_ _%L201829%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201829%_ '()))
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
                                                       (cons _%L201829%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201828%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201826%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont202602202603%_
                 (lambda (_%L201740%_ _%L201742%_ _%L201743%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201743%_ '()))
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
                                                       (cons _%L201743%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201742%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201740%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202595202596%_))
                (let ((_%e201625201857%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202595202596%_))))
                  (let ((_%tl201623201864%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201625201857%_)))
                        (_%hd201624201861%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201625201857%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl201623201864%_))
                        (let ((_%e201628201867%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl201623201864%_))))
                          (let ((_%tl201626201874%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201628201867%_)))
                                (_%hd201627201871%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201628201867%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd201627201871%_))
                                (let ((_%e201629201877%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd201627201871%_))))
                                  (if (equal? _%e201629201877%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201626201874%_))
                                          (let ((_%e201632201881%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl201626201874%_))))
                                            (let ((_%tl201630201888%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201632201881%_)))
                                                  (_%hd201631201885%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201632201881%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201630201888%_))
                                                  (let ((_%e201635201891%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201630201888%_))))
                                                    (let ((_%tl201633201898%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201635201891%_)))
                                                          (_%hd201634201895%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201635201891%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201633201898%_))
                                                          (_%__kont202598202599%_
                                                           _%hd201634201895%_
                                                           _%hd201631201885%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201619201679%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201619201679%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201619201679%_)))
                                      (if (equal? _%e201629201877%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201626201874%_))
                                              (let ((_%e201648201796%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201626201874%_))))
                                                (let ((_%tl201646201803%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201648201796%_)))
                                                      (_%hd201647201800%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201648201796%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201646201803%_))
                                                      (let ((_%e201651201806%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl201646201803%_))))
                (let ((_%tl201649201813%_
                       (let () (declare (not safe)) (##cdr _%e201651201806%_)))
                      (_%hd201650201810%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201651201806%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201649201813%_))
                      (let ((_%e201654201816%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201649201813%_))))
                        (let ((_%tl201652201823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201654201816%_)))
                              (_%hd201653201820%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201654201816%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201652201823%_))
                              (_%__kont202600202601%_
                               _%hd201653201820%_
                               _%hd201650201810%_
                               _%hd201647201800%_)
                              (let ()
                                (declare (not safe))
                                (_%g201619201679%_)))))
                      (let () (declare (not safe)) (_%g201619201679%_)))))
              (let () (declare (not safe)) (_%g201619201679%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g201619201679%_)))
                                          (if (equal? _%e201629201877%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201626201874%_))
                                                  (let ((_%e201667201710%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201626201874%_))))
                                                    (let ((_%tl201665201717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201667201710%_)))
                                                          (_%hd201666201714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201667201710%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201665201717%_))
                                                          (let ((_%e201670201720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl201665201717%_))))
                    (let ((_%tl201668201727%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201670201720%_)))
                          (_%hd201669201724%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201670201720%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201668201727%_))
                          (let ((_%e201673201730%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201668201727%_))))
                            (let ((_%tl201671201737%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201673201730%_)))
                                  (_%hd201672201734%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201673201730%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201671201737%_))
                                  (_%__kont202602202603%_
                                   _%hd201672201734%_
                                   _%hd201669201724%_
                                   _%hd201666201714%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g201619201679%_)))))
                          (let () (declare (not safe)) (_%g201619201679%_)))))
                  (let () (declare (not safe)) (_%g201619201679%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201619201679%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201619201679%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g201619201679%_)))))
                        (let () (declare (not safe)) (_%g201619201679%_)))))
                (let () (declare (not safe)) (_%g201619201679%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx201925%_)
        (let* ((_%g201929201949%_
                (lambda (_%g201930201945%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201930201945%_))))
               (_%g201928202020%_
                (lambda (_%g201930201953%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201930201953%_))
                      (let ((_%e201934201956%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201930201953%_))))
                        (let ((_%hd201933201960%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201934201956%_)))
                              (_%tl201932201963%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201934201956%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201932201963%_))
                              (let ((_g202780_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201932201963%_
                                        '0))))
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
                                        (error "Context expects 2 values"
                                               _g202781_)))
                                  (let ((_%target201935201966%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202780_ 0)))
                                        (_%tl201937201969%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202780_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201937201969%_))
                                        (letrec ((_%loop201938201972%_
                                                  (lambda (_%hd201936201976%_
                                                           _%decl201942201979%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201936201976%_))
                                                        (let ((_%e201939201982%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201936201976%_))))
                  (let ((_%lp-hd201940201986%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201939201982%_)))
                        (_%lp-tl201941201989%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201939201982%_))))
                    (_%loop201938201972%_
                     _%lp-tl201941201989%_
                     (cons _%lp-hd201940201986%_ _%decl201942201979%_))))
                (let ((_%decl201943201992%_ (reverse _%decl201942201979%_)))
                  ((lambda (_%L201996%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp202782
                                  (lambda (_%g202011202014%_ _%g202012202017%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g202011202014%_)
                                          _%g202012202017%_))))
                             (declare (not safe))
                             (__foldr1 __tmp202782 '() _%L201996%_))))
                   _%decl201943201992%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201938201972%_
                                           _%target201935201966%_
                                           '()))
                                        (_%g201929201949%_
                                         _%g201930201953%_)))))
                              (_%g201929201949%_ _%g201930201953%_))))
                      (_%g201929201949%_ _%g201930201953%_)))))
          (_%g201928202020%_ _%$stx201925%_))))))
