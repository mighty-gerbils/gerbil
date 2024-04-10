(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g202057_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202064_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202066_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202068_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202070_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202072_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202084_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202086_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202088_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202090_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202092_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx195475%_)
        (let* ((_%g195479195497%_
                (lambda (_%g195480195493%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195480195493%_))))
               (_%g195478195552%_
                (lambda (_%g195480195501%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195480195501%_))
                      (let ((_%e195483195504%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195480195501%_))))
                        (let ((_%hd195484195508%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195483195504%_)))
                              (_%tl195485195511%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195483195504%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195485195511%_))
                              (let ((_%e195486195514%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195485195511%_))))
                                (let ((_%hd195487195518%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195486195514%_)))
                                      (_%tl195488195521%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195486195514%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195488195521%_))
                                      (let ((_%e195489195524%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195488195521%_))))
                                        (let ((_%hd195490195528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195489195524%_)))
                                              (_%tl195491195531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195489195524%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195491195531%_))
                                              ((lambda (_%L195534%_
                                                        _%L195536%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L195536%_))
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
                               (cons _%L195536%_ '()))
                         (cons _%L195534%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g195479195497%_
                                                      _%g195480195501%_)))
                                               _%hd195490195528%_
                                               _%hd195487195518%_)
                                              (_%g195479195497%_
                                               _%g195480195501%_))))
                                      (_%g195479195497%_ _%g195480195501%_))))
                              (_%g195479195497%_ _%g195480195501%_))))
                      (_%g195479195497%_ _%g195480195501%_)))))
          (_%g195478195552%_ _%$stx195475%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx195556%_)
        (let* ((_%g195560195578%_
                (lambda (_%g195561195574%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195561195574%_))))
               (_%g195559195633%_
                (lambda (_%g195561195582%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195561195582%_))
                      (let ((_%e195564195585%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195561195582%_))))
                        (let ((_%hd195565195589%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195564195585%_)))
                              (_%tl195566195592%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195564195585%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195566195592%_))
                              (let ((_%e195567195595%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195566195592%_))))
                                (let ((_%hd195568195599%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195567195595%_)))
                                      (_%tl195569195602%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195567195595%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195569195602%_))
                                      (let ((_%e195570195605%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195569195602%_))))
                                        (let ((_%hd195571195609%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195570195605%_)))
                                              (_%tl195572195612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195570195605%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195572195612%_))
                                              ((lambda (_%L195615%_
                                                        _%L195617%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L195617%_))
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
                               (cons _%L195617%_ '()))
                         (cons _%L195615%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g195560195578%_
                                                      _%g195561195582%_)))
                                               _%hd195571195609%_
                                               _%hd195568195599%_)
                                              (_%g195560195578%_
                                               _%g195561195582%_))))
                                      (_%g195560195578%_ _%g195561195582%_))))
                              (_%g195560195578%_ _%g195561195582%_))))
                      (_%g195560195578%_ _%g195561195582%_)))))
          (_%g195559195633%_ _%$stx195556%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx195637%_)
        (let* ((_%g195641195670%_
                (lambda (_%g195642195666%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195642195666%_))))
               (_%g195640195770%_
                (lambda (_%g195642195674%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195642195674%_))
                      (let ((_%e195645195677%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195642195674%_))))
                        (let ((_%hd195646195681%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195645195677%_)))
                              (_%tl195647195684%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195645195677%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195647195684%_))
                              (let ((_g202035_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195647195684%_
                                        '0))))
                                (begin
                                  (let ((_g202036_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202035_)
                                               (##vector-length _g202035_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202036_ 2)))
                                        (error "Context expects 2 values"
                                               _g202036_)))
                                  (let ((_%target195648195687%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202035_ 0)))
                                        (_%tl195650195690%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202035_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195650195690%_))
                                        (letrec ((_%loop195651195693%_
                                                  (lambda (_%hd195649195697%_
                                                           _%type195655195700%_
                                                           _%symbol195656195702%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195649195697%_))
                                                        (let ((_%e195652195705%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195649195697%_))))
                  (let ((_%lp-hd195653195709%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195652195705%_)))
                        (_%lp-tl195654195712%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195652195705%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195653195709%_))
                        (let ((_%e195659195715%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195653195709%_))))
                          (let ((_%hd195660195719%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195659195715%_)))
                                (_%tl195661195722%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195659195715%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195661195722%_))
                                (let ((_%e195662195725%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195661195722%_))))
                                  (let ((_%hd195663195729%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195662195725%_)))
                                        (_%tl195664195732%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195662195725%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195664195732%_))
                                        (_%loop195651195693%_
                                         _%lp-tl195654195712%_
                                         (cons _%hd195663195729%_
                                               _%type195655195700%_)
                                         (cons _%hd195660195719%_
                                               _%symbol195656195702%_))
                                        (_%g195641195670%_
                                         _%g195642195674%_))))
                                (_%g195641195670%_ _%g195642195674%_))))
                        (_%g195641195670%_ _%g195642195674%_))))
                (let ((_%type195657195735%_ (reverse _%type195655195700%_))
                      (_%symbol195658195738%_
                       (reverse _%symbol195656195702%_)))
                  ((lambda (_%L195741%_ _%L195743%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L195741%_
                                _%L195743%_))
                             (let ((__tmp202037
                                    (lambda (_%g195758195762%_
                                             _%g195759195765%_
                                             _%g195760195767%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g195759195765%_
                                                        (cons _%g195758195762%_
                                                              '())))
                                            _%g195760195767%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202037
                                '()
                                _%L195741%_
                                _%L195743%_)))))
                   _%type195657195735%_
                   _%symbol195658195738%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195651195693%_
                                           _%target195648195687%_
                                           '()
                                           '()))
                                        (_%g195641195670%_
                                         _%g195642195674%_)))))
                              (_%g195641195670%_ _%g195642195674%_))))
                      (_%g195641195670%_ _%g195642195674%_)))))
          (_%g195640195770%_ _%$stx195637%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx195775%_)
        (let* ((_%__stx201346201347%_ _%$stx195775%_)
               (_%g195780195822%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201346201347%_)))))
          (let ((_%__kont201349201350%_
                 (lambda (_%L195950%_ _%L195952%_ _%L195953%_ _%L195954%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L195954%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L195953%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L195952%_ '()))
                                           (cons _%L195950%_ '())))))))
                (_%__kont201351201352%_
                 (lambda (_%L195869%_ _%L195871%_ _%L195872%_ _%L195873%_)
                   (cons _%L195873%_
                         (cons _%L195872%_
                               (cons _%L195871%_
                                     (cons _%L195869%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match201385201386%_
                   (lambda (_%e195786195900%_
                            _%hd195787195904%_
                            _%tl195788195907%_
                            _%e195789195910%_
                            _%hd195790195914%_
                            _%tl195791195917%_
                            _%e195792195920%_
                            _%hd195793195924%_
                            _%tl195794195927%_
                            _%e195795195930%_
                            _%hd195796195934%_
                            _%tl195797195937%_
                            _%e195798195940%_
                            _%hd195799195944%_
                            _%tl195800195947%_)
                     (let ((_%L195950%_ _%hd195799195944%_)
                           (_%L195952%_ _%hd195796195934%_)
                           (_%L195953%_ _%hd195793195924%_)
                           (_%L195954%_ _%hd195790195914%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195954%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195953%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195952%_)))
                           (_%__kont201349201350%_
                            _%L195950%_
                            _%L195952%_
                            _%L195953%_
                            _%L195954%_)
                           (let ()
                             (declare (not safe))
                             (_%g195780195822%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201346201347%_))
                  (let ((_%e195786195900%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201346201347%_))))
                    (let ((_%tl195788195907%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195786195900%_)))
                          (_%hd195787195904%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195786195900%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195788195907%_))
                          (let ((_%e195789195910%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl195788195907%_))))
                            (let ((_%tl195791195917%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195789195910%_)))
                                  (_%hd195790195914%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195789195910%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195791195917%_))
                                  (let ((_%e195792195920%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl195791195917%_))))
                                    (let ((_%tl195794195927%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195792195920%_)))
                                          (_%hd195793195924%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195792195920%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl195794195927%_))
                                          (let ((_%e195795195930%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl195794195927%_))))
                                            (let ((_%tl195797195937%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e195795195930%_)))
                                                  (_%hd195796195934%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e195795195930%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195797195937%_))
                                                  (let ((_%e195798195940%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl195797195937%_))))
                                                    (let ((_%tl195800195947%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195798195940%_)))
                                                          (_%hd195799195944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195798195940%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195800195947%_))
                                                          (_%__match201385201386%_
                                                           _%e195786195900%_
                                                           _%hd195787195904%_
                                                           _%tl195788195907%_
                                                           _%e195789195910%_
                                                           _%hd195790195914%_
                                                           _%tl195791195917%_
                                                           _%e195792195920%_
                                                           _%hd195793195924%_
                                                           _%tl195794195927%_
                                                           _%e195795195930%_
                                                           _%hd195796195934%_
                                                           _%tl195797195937%_
                                                           _%e195798195940%_
                                                           _%hd195799195944%_
                                                           _%tl195800195947%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g195780195822%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195797195937%_))
                                                      (_%__kont201351201352%_
                                                       _%hd195796195934%_
                                                       _%hd195793195924%_
                                                       _%hd195790195914%_
                                                       _%hd195787195904%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g195780195822%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g195780195822%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g195780195822%_)))))
                          (let () (declare (not safe)) (_%g195780195822%_)))))
                  (let () (declare (not safe)) (_%g195780195822%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx195979%_)
        (let* ((_%g195983196018%_
                (lambda (_%g195984196014%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195984196014%_))))
               (_%g195982196137%_
                (lambda (_%g195984196022%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195984196022%_))
                      (let ((_%e195988196025%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195984196022%_))))
                        (let ((_%hd195989196029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195988196025%_)))
                              (_%tl195990196032%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195988196025%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195990196032%_))
                              (let ((_g202038_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195990196032%_
                                        '0))))
                                (begin
                                  (let ((_g202039_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202038_)
                                               (##vector-length _g202038_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202039_ 2)))
                                        (error "Context expects 2 values"
                                               _g202039_)))
                                  (let ((_%target195991196035%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202038_ 0)))
                                        (_%tl195993196038%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202038_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195993196038%_))
                                        (letrec ((_%loop195994196041%_
                                                  (lambda (_%hd195992196045%_
                                                           _%symbol195998196048%_
                                                           _%method195999196050%_
                                                           _%type-t196000196052%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195992196045%_))
                                                        (let ((_%e195995196055%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195992196045%_))))
                  (let ((_%lp-hd195996196059%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195995196055%_)))
                        (_%lp-tl195997196062%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195995196055%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195996196059%_))
                        (let ((_%e196004196065%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195996196059%_))))
                          (let ((_%hd196005196069%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196004196065%_)))
                                (_%tl196006196072%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196004196065%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196006196072%_))
                                (let ((_%e196007196075%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196006196072%_))))
                                  (let ((_%hd196008196079%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196007196075%_)))
                                        (_%tl196009196082%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196007196075%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196009196082%_))
                                        (let ((_%e196010196085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196009196082%_))))
                                          (let ((_%hd196011196089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196010196085%_)))
                                                (_%tl196012196092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196010196085%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196012196092%_))
                                                (_%loop195994196041%_
                                                 _%lp-tl195997196062%_
                                                 (cons _%hd196011196089%_
                                                       _%symbol195998196048%_)
                                                 (cons _%hd196008196079%_
                                                       _%method195999196050%_)
                                                 (cons _%hd196005196069%_
                                                       _%type-t196000196052%_))
                                                (_%g195983196018%_
                                                 _%g195984196022%_))))
                                        (_%g195983196018%_
                                         _%g195984196022%_))))
                                (_%g195983196018%_ _%g195984196022%_))))
                        (_%g195983196018%_ _%g195984196022%_))))
                (let ((_%symbol196001196095%_ (reverse _%symbol195998196048%_))
                      (_%method196002196098%_ (reverse _%method195999196050%_))
                      (_%type-t196003196100%_
                       (reverse _%type-t196000196052%_)))
                  ((lambda (_%L196103%_ _%L196105%_ _%L196106%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196103%_
                                _%L196105%_
                                _%L196106%_))
                             (let ((__tmp202040
                                    (lambda (_%g196122196127%_
                                             _%g196123196130%_
                                             _%g196124196132%_
                                             _%g196125196134%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g196124196132%_
                                                        (cons _%g196123196130%_
                                                              (cons _%g196122196127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g196125196134%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp202040
                                '()
                                _%L196103%_
                                _%L196105%_
                                _%L196106%_)))))
                   _%symbol196001196095%_
                   _%method196002196098%_
                   _%type-t196003196100%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195994196041%_
                                           _%target195991196035%_
                                           '()
                                           '()
                                           '()))
                                        (_%g195983196018%_
                                         _%g195984196022%_)))))
                              (_%g195983196018%_ _%g195984196022%_))))
                      (_%g195983196018%_ _%g195984196022%_)))))
          (_%g195982196137%_ _%$stx195979%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx196142%_)
        (let* ((_%g196146196179%_
                (lambda (_%g196147196175%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196147196175%_))))
               (_%g196145196293%_
                (lambda (_%g196147196183%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196147196183%_))
                      (let ((_%e196151196186%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196147196183%_))))
                        (let ((_%hd196152196190%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196151196186%_)))
                              (_%tl196153196193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196151196186%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196153196193%_))
                              (let ((_%e196154196196%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196153196193%_))))
                                (let ((_%hd196155196200%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196154196196%_)))
                                      (_%tl196156196203%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196154196196%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196156196203%_))
                                      (let ((_g202041_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196156196203%_
                                                '0))))
                                        (begin
                                          (let ((_g202042_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202041_)
                                                       (##vector-length
                                                        _g202041_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202042_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202042_)))
                                          (let ((_%target196157196206%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202041_ 0)))
                                                (_%tl196159196209%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202041_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196159196209%_))
                                                (letrec ((_%loop196160196212%_
                                                          (lambda (_%hd196158196216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol196164196219%_
                           _%method196165196221%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd196158196216%_))
                        (let ((_%e196161196224%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd196158196216%_))))
                          (let ((_%lp-hd196162196228%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196161196224%_)))
                                (_%lp-tl196163196231%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196161196224%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd196162196228%_))
                                (let ((_%e196168196234%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd196162196228%_))))
                                  (let ((_%hd196169196238%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196168196234%_)))
                                        (_%tl196170196241%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196168196234%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196170196241%_))
                                        (let ((_%e196171196244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196170196241%_))))
                                          (let ((_%hd196172196248%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196171196244%_)))
                                                (_%tl196173196251%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196171196244%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196173196251%_))
                                                (_%loop196160196212%_
                                                 _%lp-tl196163196231%_
                                                 (cons _%hd196172196248%_
                                                       _%symbol196164196219%_)
                                                 (cons _%hd196169196238%_
                                                       _%method196165196221%_))
                                                (_%g196146196179%_
                                                 _%g196147196183%_))))
                                        (_%g196146196179%_
                                         _%g196147196183%_))))
                                (_%g196146196179%_ _%g196147196183%_))))
                        (let ((_%symbol196166196254%_
                               (reverse _%symbol196164196219%_))
                              (_%method196167196257%_
                               (reverse _%method196165196221%_)))
                          ((lambda (_%L196260%_ _%L196262%_ _%L196263%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L196260%_
                                        _%L196262%_))
                                     (let ((__tmp202043
                                            (lambda (_%g196281196285%_
                                                     _%g196282196288%_
                                                     _%g196283196290%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L196263%_
                                                                (cons _%g196282196288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g196281196285%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g196283196290%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp202043
                                        '()
                                        _%L196260%_
                                        _%L196262%_)))))
                           _%symbol196166196254%_
                           _%method196167196257%_
                           _%hd196155196200%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop196160196212%_
                                                   _%target196157196206%_
                                                   '()
                                                   '()))
                                                (_%g196146196179%_
                                                 _%g196147196183%_)))))
                                      (_%g196146196179%_ _%g196147196183%_))))
                              (_%g196146196179%_ _%g196147196183%_))))
                      (_%g196146196179%_ _%g196147196183%_)))))
          (_%g196145196293%_ _%$stx196142%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx196298%_)
        (let* ((_%g196302196316%_
                (lambda (_%g196303196312%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196303196312%_))))
               (_%g196301196357%_
                (lambda (_%g196303196320%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196303196320%_))
                      (let ((_%e196305196323%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196303196320%_))))
                        (let ((_%hd196306196327%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196305196323%_)))
                              (_%tl196307196330%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196305196323%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196307196330%_))
                              (let ((_%e196308196333%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196307196330%_))))
                                (let ((_%hd196309196337%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196308196333%_)))
                                      (_%tl196310196340%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196308196333%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196310196340%_))
                                      ((lambda (_%L196343%_)
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
                                                           (cons _%L196343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196309196337%_)
                                      (_%g196302196316%_ _%g196303196320%_))))
                              (_%g196302196316%_ _%g196303196320%_))))
                      (_%g196302196316%_ _%g196303196320%_)))))
          (_%g196301196357%_ _%$stx196298%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx196361%_)
        (let* ((_%g196365196419%_
                (lambda (_%g196366196415%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196366196415%_))))
               (_%g196364196600%_
                (lambda (_%g196366196423%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196366196423%_))
                      (let ((_%e196378196426%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196366196423%_))))
                        (let ((_%hd196379196430%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196378196426%_)))
                              (_%tl196380196433%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196378196426%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196380196433%_))
                              (let ((_%e196381196436%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196380196433%_))))
                                (let ((_%hd196382196440%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196381196436%_)))
                                      (_%tl196383196443%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196381196436%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196383196443%_))
                                      (let ((_%e196384196446%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196383196443%_))))
                                        (let ((_%hd196385196450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196384196446%_)))
                                              (_%tl196386196453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196384196446%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196386196453%_))
                                              (let ((_%e196387196456%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196386196453%_))))
                                                (let ((_%hd196388196460%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196387196456%_)))
                                                      (_%tl196389196463%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196387196456%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196389196463%_))
                                                      (let ((_%e196390196466%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl196389196463%_))))
                (let ((_%hd196391196470%_
                       (let () (declare (not safe)) (##car _%e196390196466%_)))
                      (_%tl196392196473%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e196390196466%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196392196473%_))
                      (let ((_%e196393196476%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196392196473%_))))
                        (let ((_%hd196394196480%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196393196476%_)))
                              (_%tl196395196483%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196393196476%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196395196483%_))
                              (let ((_%e196396196486%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196395196483%_))))
                                (let ((_%hd196397196490%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196396196486%_)))
                                      (_%tl196398196493%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196396196486%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196398196493%_))
                                      (let ((_%e196399196496%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196398196493%_))))
                                        (let ((_%hd196400196500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196399196496%_)))
                                              (_%tl196401196503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196399196496%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196401196503%_))
                                              (let ((_%e196402196506%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196401196503%_))))
                                                (let ((_%hd196403196510%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196402196506%_)))
                                                      (_%tl196404196513%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196402196506%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196404196513%_))
                                                      (let ((_%e196405196516%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl196404196513%_))))
                (let ((_%hd196406196520%_
                       (let () (declare (not safe)) (##car _%e196405196516%_)))
                      (_%tl196407196523%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e196405196516%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196407196523%_))
                      (let ((_%e196408196526%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196407196523%_))))
                        (let ((_%hd196409196530%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196408196526%_)))
                              (_%tl196410196533%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196408196526%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196410196533%_))
                              (let ((_%e196411196536%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196410196533%_))))
                                (let ((_%hd196412196540%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196411196536%_)))
                                      (_%tl196413196543%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196411196536%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196413196543%_))
                                      ((lambda (_%L196546%_
                                                _%L196548%_
                                                _%L196549%_
                                                _%L196550%_
                                                _%L196551%_
                                                _%L196552%_
                                                _%L196553%_
                                                _%L196554%_
                                                _%L196555%_
                                                _%L196556%_
                                                _%L196557%_)
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
                                                           (cons _%L196557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L196556%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L196555%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196554%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196553%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L196552%_ '()))
                                           (cons _%L196551%_
                                                 (cons _%L196550%_
                                                       (cons _%L196549%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196548%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L196546%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd196412196540%_
                                       _%hd196409196530%_
                                       _%hd196406196520%_
                                       _%hd196403196510%_
                                       _%hd196400196500%_
                                       _%hd196397196490%_
                                       _%hd196394196480%_
                                       _%hd196391196470%_
                                       _%hd196388196460%_
                                       _%hd196385196450%_
                                       _%hd196382196440%_)
                                      (_%g196365196419%_ _%g196366196423%_))))
                              (_%g196365196419%_ _%g196366196423%_))))
                      (_%g196365196419%_ _%g196366196423%_))))
              (_%g196365196419%_ _%g196366196423%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196365196419%_
                                               _%g196366196423%_))))
                                      (_%g196365196419%_ _%g196366196423%_))))
                              (_%g196365196419%_ _%g196366196423%_))))
                      (_%g196365196419%_ _%g196366196423%_))))
              (_%g196365196419%_ _%g196366196423%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196365196419%_
                                               _%g196366196423%_))))
                                      (_%g196365196419%_ _%g196366196423%_))))
                              (_%g196365196419%_ _%g196366196423%_))))
                      (_%g196365196419%_ _%g196366196423%_)))))
          (_%g196364196600%_ _%$stx196361%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx196604%_)
        (let* ((_%g196608196622%_
                (lambda (_%g196609196618%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196609196618%_))))
               (_%g196607196663%_
                (lambda (_%g196609196626%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196609196626%_))
                      (let ((_%e196611196629%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196609196626%_))))
                        (let ((_%hd196612196633%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196611196629%_)))
                              (_%tl196613196636%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196611196629%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196613196636%_))
                              (let ((_%e196614196639%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196613196636%_))))
                                (let ((_%hd196615196643%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196614196639%_)))
                                      (_%tl196616196646%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196614196639%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196616196646%_))
                                      ((lambda (_%L196649%_)
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
                                                           (cons _%L196649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196615196643%_)
                                      (_%g196608196622%_ _%g196609196626%_))))
                              (_%g196608196622%_ _%g196609196626%_))))
                      (_%g196608196622%_ _%g196609196626%_)))))
          (_%g196607196663%_ _%$stx196604%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx196667%_)
        (let* ((_%g196671196685%_
                (lambda (_%g196672196681%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196672196681%_))))
               (_%g196670196726%_
                (lambda (_%g196672196689%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196672196689%_))
                      (let ((_%e196674196692%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196672196689%_))))
                        (let ((_%hd196675196696%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196674196692%_)))
                              (_%tl196676196699%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196674196692%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196676196699%_))
                              (let ((_%e196677196702%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196676196699%_))))
                                (let ((_%hd196678196706%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196677196702%_)))
                                      (_%tl196679196709%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196677196702%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196679196709%_))
                                      ((lambda (_%L196712%_)
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
                                                           (cons _%L196712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196678196706%_)
                                      (_%g196671196685%_ _%g196672196689%_))))
                              (_%g196671196685%_ _%g196672196689%_))))
                      (_%g196671196685%_ _%g196672196689%_)))))
          (_%g196670196726%_ _%$stx196667%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx196730%_)
        (let* ((_%g196734196756%_
                (lambda (_%g196735196752%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196735196752%_))))
               (_%g196733196825%_
                (lambda (_%g196735196760%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196735196760%_))
                      (let ((_%e196739196763%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196735196760%_))))
                        (let ((_%hd196740196767%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196739196763%_)))
                              (_%tl196741196770%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196739196763%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196741196770%_))
                              (let ((_%e196742196773%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196741196770%_))))
                                (let ((_%hd196743196777%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196742196773%_)))
                                      (_%tl196744196780%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196742196773%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196744196780%_))
                                      (let ((_%e196745196783%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196744196780%_))))
                                        (let ((_%hd196746196787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196745196783%_)))
                                              (_%tl196747196790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196745196783%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196747196790%_))
                                              (let ((_%e196748196793%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196747196790%_))))
                                                (let ((_%hd196749196797%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196748196793%_)))
                                                      (_%tl196750196800%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196748196793%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196750196800%_))
                                                      ((lambda (_%L196803%_
                                                                _%L196805%_
                                                                _%L196806%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196806%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196805%_ '()))
                                   (cons _%L196803%_ '())))))
               _%hd196749196797%_
               _%hd196746196787%_
               _%hd196743196777%_)
              (_%g196734196756%_ _%g196735196760%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196734196756%_
                                               _%g196735196760%_))))
                                      (_%g196734196756%_ _%g196735196760%_))))
                              (_%g196734196756%_ _%g196735196760%_))))
                      (_%g196734196756%_ _%g196735196760%_)))))
          (_%g196733196825%_ _%$stx196730%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx196829%_)
        (let* ((_%g196833196855%_
                (lambda (_%g196834196851%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196834196851%_))))
               (_%g196832196924%_
                (lambda (_%g196834196859%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196834196859%_))
                      (let ((_%e196838196862%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196834196859%_))))
                        (let ((_%hd196839196866%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196838196862%_)))
                              (_%tl196840196869%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196838196862%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196840196869%_))
                              (let ((_%e196841196872%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196840196869%_))))
                                (let ((_%hd196842196876%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196841196872%_)))
                                      (_%tl196843196879%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196841196872%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196843196879%_))
                                      (let ((_%e196844196882%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196843196879%_))))
                                        (let ((_%hd196845196886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196844196882%_)))
                                              (_%tl196846196889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196844196882%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196846196889%_))
                                              (let ((_%e196847196892%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196846196889%_))))
                                                (let ((_%hd196848196896%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196847196892%_)))
                                                      (_%tl196849196899%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196847196892%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196849196899%_))
                                                      ((lambda (_%L196902%_
                                                                _%L196904%_
                                                                _%L196905%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196905%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196904%_ '()))
                                   (cons _%L196902%_ '())))))
               _%hd196848196896%_
               _%hd196845196886%_
               _%hd196842196876%_)
              (_%g196833196855%_ _%g196834196859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196833196855%_
                                               _%g196834196859%_))))
                                      (_%g196833196855%_ _%g196834196859%_))))
                              (_%g196833196855%_ _%g196834196859%_))))
                      (_%g196833196855%_ _%g196834196859%_)))))
          (_%g196832196924%_ _%$stx196829%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx196928%_)
        (let* ((_%g196932196946%_
                (lambda (_%g196933196942%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196933196942%_))))
               (_%g196931196987%_
                (lambda (_%g196933196950%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196933196950%_))
                      (let ((_%e196935196953%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196933196950%_))))
                        (let ((_%hd196936196957%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196935196953%_)))
                              (_%tl196937196960%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196935196953%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196937196960%_))
                              (let ((_%e196938196963%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196937196960%_))))
                                (let ((_%hd196939196967%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196938196963%_)))
                                      (_%tl196940196970%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196938196963%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196940196970%_))
                                      ((lambda (_%L196973%_)
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
                                                           (cons _%L196973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196939196967%_)
                                      (_%g196932196946%_ _%g196933196950%_))))
                              (_%g196932196946%_ _%g196933196950%_))))
                      (_%g196932196946%_ _%g196933196950%_)))))
          (_%g196931196987%_ _%$stx196928%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx196991%_)
        (let* ((_%g196995197013%_
                (lambda (_%g196996197009%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196996197009%_))))
               (_%g196994197068%_
                (lambda (_%g196996197017%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196996197017%_))
                      (let ((_%e196999197020%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196996197017%_))))
                        (let ((_%hd197000197024%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196999197020%_)))
                              (_%tl197001197027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196999197020%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197001197027%_))
                              (let ((_%e197002197030%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197001197027%_))))
                                (let ((_%hd197003197034%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197002197030%_)))
                                      (_%tl197004197037%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197002197030%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197004197037%_))
                                      (let ((_%e197005197040%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197004197037%_))))
                                        (let ((_%hd197006197044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197005197040%_)))
                                              (_%tl197007197047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197005197040%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197007197047%_))
                                              ((lambda (_%L197050%_
                                                        _%L197052%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197052%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197050%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197006197044%_
                                               _%hd197003197034%_)
                                              (_%g196995197013%_
                                               _%g196996197017%_))))
                                      (_%g196995197013%_ _%g196996197017%_))))
                              (_%g196995197013%_ _%g196996197017%_))))
                      (_%g196995197013%_ _%g196996197017%_)))))
          (_%g196994197068%_ _%$stx196991%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx197072%_)
        (let* ((_%__stx201414201415%_ _%$stx197072%_)
               (_%g197079197140%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201414201415%_)))))
          (let ((_%__kont201417201418%_
                 (lambda (_%L197378%_ _%L197380%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197380%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197378%_ '()))
                                     '())))))
                (_%__kont201419201420%_
                 (lambda (_%L197317%_ _%L197319%_ _%L197320%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197320%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197319%_ '()))
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
                                 (cons _%L197317%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont201421201422%_
                 (lambda (_%L197241%_ _%L197243%_)
                   (cons _%L197243%_ (cons _%L197241%_ (cons '#f '())))))
                (_%__kont201423201424%_
                 (lambda (_%L197191%_ _%L197193%_ _%L197194%_)
                   (cons _%L197194%_
                         (cons _%L197193%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L197191%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201414201415%_))
                (let ((_%e197083197348%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201414201415%_))))
                  (let ((_%tl197085197355%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197083197348%_)))
                        (_%hd197084197352%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197083197348%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197085197355%_))
                        (let ((_%e197086197358%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl197085197355%_))))
                          (let ((_%tl197088197365%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197086197358%_)))
                                (_%hd197087197362%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197086197358%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197088197365%_))
                                (let ((_%e197089197368%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197088197365%_))))
                                  (let ((_%tl197091197375%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197089197368%_)))
                                        (_%hd197090197372%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197089197368%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197091197375%_))
                                        (_%__kont201417201418%_
                                         _%hd197090197372%_
                                         _%hd197087197362%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197091197375%_))
                                            (let ((_%e197104197293%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197091197375%_))))
                                              (let ((_%tl197106197300%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197104197293%_)))
                                                    (_%hd197105197297%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197104197293%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd197105197297%_))
                                                    (let ((_%e197107197303%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd197105197297%_))))
                                                      (if (equal? _%e197107197303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197106197300%_))
                      (let ((_%e197108197307%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197106197300%_))))
                        (let ((_%tl197110197314%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197108197307%_)))
                              (_%hd197109197311%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197108197307%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197110197314%_))
                              (_%__kont201419201420%_
                               _%hd197109197311%_
                               _%hd197090197372%_
                               _%hd197087197362%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd197090197372%_))
                                  (let ((_%e197131197177%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197090197372%_))))
                                    (declare (not safe))
                                    (_%g197079197140%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197079197140%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd197090197372%_))
                          (let ((_%e197131197177%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197090197372%_))))
                            (if (equal? _%e197131197177%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197106197300%_))
                                    (_%__kont201423201424%_
                                     _%hd197105197297%_
                                     _%hd197087197362%_
                                     _%hd197084197352%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197079197140%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g197079197140%_))))
                          (let () (declare (not safe)) (_%g197079197140%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd197090197372%_))
                      (let ((_%e197131197177%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197090197372%_))))
                        (if (equal? _%e197131197177%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197106197300%_))
                                (_%__kont201423201424%_
                                 _%hd197105197297%_
                                 _%hd197087197362%_
                                 _%hd197084197352%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197079197140%_)))
                            (let () (declare (not safe)) (_%g197079197140%_))))
                      (let () (declare (not safe)) (_%g197079197140%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd197090197372%_))
                                                        (let ((_%e197131197177%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd197090197372%_))))
                  (if (equal? _%e197131197177%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197106197300%_))
                          (_%__kont201423201424%_
                           _%hd197105197297%_
                           _%hd197087197362%_
                           _%hd197084197352%_)
                          (let () (declare (not safe)) (_%g197079197140%_)))
                      (let () (declare (not safe)) (_%g197079197140%_))))
                (let () (declare (not safe)) (_%g197079197140%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd197090197372%_))
                                                (let ((_%e197131197177%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd197090197372%_))))
                                                  (declare (not safe))
                                                  (_%g197079197140%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197079197140%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197088197365%_))
                                    (_%__kont201421201422%_
                                     _%hd197087197362%_
                                     _%hd197084197352%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197079197140%_))))))
                        (let () (declare (not safe)) (_%g197079197140%_)))))
                (let () (declare (not safe)) (_%g197079197140%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx197399%_)
        (let* ((_%g197403197432%_
                (lambda (_%g197404197428%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197404197428%_))))
               (_%g197402197541%_
                (lambda (_%g197404197436%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197404197436%_))
                      (let ((_%e197406197439%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197404197436%_))))
                        (let ((_%hd197407197443%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197406197439%_)))
                              (_%tl197408197446%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197406197439%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197408197446%_))
                              (let ((_g202044_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197408197446%_
                                        '0))))
                                (begin
                                  (let ((_g202045_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202044_)
                                               (##vector-length _g202044_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202045_ 2)))
                                        (error "Context expects 2 values"
                                               _g202045_)))
                                  (let ((_%target197409197449%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202044_ 0)))
                                        (_%tl197411197452%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202044_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197411197452%_))
                                        (letrec ((_%loop197412197455%_
                                                  (lambda (_%hd197410197459%_
                                                           _%clause197416197462%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197410197459%_))
                                                        (let ((_%e197413197465%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197410197459%_))))
                  (let ((_%lp-hd197414197469%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197413197465%_)))
                        (_%lp-tl197415197472%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197413197465%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd197414197469%_))
                        (let ((_g202046_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd197414197469%_
                                  '0))))
                          (begin
                            (let ((_g202047_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g202046_)
                                         (##vector-length _g202046_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g202047_ 2)))
                                  (error "Context expects 2 values"
                                         _g202047_)))
                            (let ((_%target197418197475%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202046_ 0)))
                                  (_%tl197420197478%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202046_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197420197478%_))
                                  (letrec ((_%loop197421197481%_
                                            (lambda (_%hd197419197485%_
                                                     _%clause197425197488%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd197419197485%_))
                                                  (let ((_%e197422197491%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd197419197485%_))))
                                                    (let ((_%lp-hd197423197495%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197422197491%_)))
                                                          (_%lp-tl197424197498%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197422197491%_))))
                                                      (_%loop197421197481%_
                                                       _%lp-tl197424197498%_
                                                       (cons _%lp-hd197423197495%_
                                                             _%clause197425197488%_))))
                                                  (let ((_%clause197426197501%_
                                                         (reverse _%clause197425197488%_)))
                                                    (_%loop197412197455%_
                                                     _%lp-tl197415197472%_
                                                     (cons _%clause197426197501%_
                                                           _%clause197416197462%_)))))))
                                    (_%loop197421197481%_
                                     _%target197418197475%_
                                     '()))
                                  (_%g197403197432%_ _%g197404197436%_)))))
                        (_%g197403197432%_ _%g197404197436%_))))
                (let ((_%clause197417197505%_
                       (reverse _%clause197416197462%_)))
                  ((lambda (_%L197509%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp202048
                                              (lambda (_%g197524197529%_
                                                       _%g197525197532%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp202049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g197526197535%_ _%g197527197538%_)
                             (cons _%g197526197535%_ _%g197527197538%_))))
                      (declare (not safe))
                      (__foldr1 __tmp202049 '() _%g197524197529%_)))
              _%g197525197532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp202048
                                          '()
                                          _%L197509%_)))
                                 '())))
                   _%clause197417197505%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197412197455%_
                                           _%target197409197449%_
                                           '()))
                                        (_%g197403197432%_
                                         _%g197404197436%_)))))
                              (_%g197403197432%_ _%g197404197436%_))))
                      (_%g197403197432%_ _%g197404197436%_)))))
          (_%g197402197541%_ _%$stx197399%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx197547%_)
        (let* ((_%g197551197569%_
                (lambda (_%g197552197565%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197552197565%_))))
               (_%g197550197624%_
                (lambda (_%g197552197573%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197552197573%_))
                      (let ((_%e197555197576%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197552197573%_))))
                        (let ((_%hd197556197580%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197555197576%_)))
                              (_%tl197557197583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197555197576%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197557197583%_))
                              (let ((_%e197558197586%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197557197583%_))))
                                (let ((_%hd197559197590%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197558197586%_)))
                                      (_%tl197560197593%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197558197586%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197560197593%_))
                                      (let ((_%e197561197596%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197560197593%_))))
                                        (let ((_%hd197562197600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197561197596%_)))
                                              (_%tl197563197603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197561197596%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197563197603%_))
                                              ((lambda (_%L197606%_
                                                        _%L197608%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197608%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197606%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197562197600%_
                                               _%hd197559197590%_)
                                              (_%g197551197569%_
                                               _%g197552197573%_))))
                                      (_%g197551197569%_ _%g197552197573%_))))
                              (_%g197551197569%_ _%g197552197573%_))))
                      (_%g197551197569%_ _%g197552197573%_)))))
          (_%g197550197624%_ _%$stx197547%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx197628%_)
        (let* ((_%g197632197650%_
                (lambda (_%g197633197646%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197633197646%_))))
               (_%g197631197705%_
                (lambda (_%g197633197654%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197633197654%_))
                      (let ((_%e197636197657%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197633197654%_))))
                        (let ((_%hd197637197661%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197636197657%_)))
                              (_%tl197638197664%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197636197657%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197638197664%_))
                              (let ((_%e197639197667%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197638197664%_))))
                                (let ((_%hd197640197671%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197639197667%_)))
                                      (_%tl197641197674%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197639197667%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197641197674%_))
                                      (let ((_%e197642197677%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197641197674%_))))
                                        (let ((_%hd197643197681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197642197677%_)))
                                              (_%tl197644197684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197642197677%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197644197684%_))
                                              ((lambda (_%L197687%_
                                                        _%L197689%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197689%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197687%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197643197681%_
                                               _%hd197640197671%_)
                                              (_%g197632197650%_
                                               _%g197633197654%_))))
                                      (_%g197632197650%_ _%g197633197654%_))))
                              (_%g197632197650%_ _%g197633197654%_))))
                      (_%g197632197650%_ _%g197633197654%_)))))
          (_%g197631197705%_ _%$stx197628%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx197709%_)
        (let* ((_%g197713197742%_
                (lambda (_%g197714197738%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197714197738%_))))
               (_%g197712197842%_
                (lambda (_%g197714197746%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197714197746%_))
                      (let ((_%e197717197749%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197714197746%_))))
                        (let ((_%hd197718197753%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197717197749%_)))
                              (_%tl197719197756%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197717197749%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197719197756%_))
                              (let ((_g202050_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197719197756%_
                                        '0))))
                                (begin
                                  (let ((_g202051_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202050_)
                                               (##vector-length _g202050_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202051_ 2)))
                                        (error "Context expects 2 values"
                                               _g202051_)))
                                  (let ((_%target197720197759%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202050_ 0)))
                                        (_%tl197722197762%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202050_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197722197762%_))
                                        (letrec ((_%loop197723197765%_
                                                  (lambda (_%hd197721197769%_
                                                           _%rule197727197772%_
                                                           _%proc197728197774%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197721197769%_))
                                                        (let ((_%e197724197777%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197721197769%_))))
                  (let ((_%lp-hd197725197781%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197724197777%_)))
                        (_%lp-tl197726197784%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197724197777%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd197725197781%_))
                        (let ((_%e197731197787%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd197725197781%_))))
                          (let ((_%hd197732197791%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197731197787%_)))
                                (_%tl197733197794%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197731197787%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197733197794%_))
                                (let ((_%e197734197797%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197733197794%_))))
                                  (let ((_%hd197735197801%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197734197797%_)))
                                        (_%tl197736197804%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197734197797%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197736197804%_))
                                        (_%loop197723197765%_
                                         _%lp-tl197726197784%_
                                         (cons _%hd197735197801%_
                                               _%rule197727197772%_)
                                         (cons _%hd197732197791%_
                                               _%proc197728197774%_))
                                        (_%g197713197742%_
                                         _%g197714197746%_))))
                                (_%g197713197742%_ _%g197714197746%_))))
                        (_%g197713197742%_ _%g197714197746%_))))
                (let ((_%rule197729197807%_ (reverse _%rule197727197772%_))
                      (_%proc197730197810%_ (reverse _%proc197728197774%_)))
                  ((lambda (_%L197813%_ _%L197815%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L197813%_
                                _%L197815%_))
                             (let ((__tmp202052
                                    (lambda (_%g197830197834%_
                                             _%g197831197837%_
                                             _%g197832197839%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g197831197837%_
                                                        (cons _%g197830197834%_
                                                              '())))
                                            _%g197832197839%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202052
                                '()
                                _%L197813%_
                                _%L197815%_)))))
                   _%rule197729197807%_
                   _%proc197730197810%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197723197765%_
                                           _%target197720197759%_
                                           '()
                                           '()))
                                        (_%g197713197742%_
                                         _%g197714197746%_)))))
                              (_%g197713197742%_ _%g197714197746%_))))
                      (_%g197713197742%_ _%g197714197746%_)))))
          (_%g197712197842%_ _%$stx197709%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx197847%_)
        (let* ((_%g197851197869%_
                (lambda (_%g197852197865%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197852197865%_))))
               (_%g197850197924%_
                (lambda (_%g197852197873%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197852197873%_))
                      (let ((_%e197855197876%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197852197873%_))))
                        (let ((_%hd197856197880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197855197876%_)))
                              (_%tl197857197883%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197855197876%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197857197883%_))
                              (let ((_%e197858197886%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197857197883%_))))
                                (let ((_%hd197859197890%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197858197886%_)))
                                      (_%tl197860197893%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197858197886%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197860197893%_))
                                      (let ((_%e197861197896%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197860197893%_))))
                                        (let ((_%hd197862197900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197861197896%_)))
                                              (_%tl197863197903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197861197896%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197863197903%_))
                                              ((lambda (_%L197906%_
                                                        _%L197908%_)
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
                                                   (cons _%L197908%_ '()))
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
                 (cons _%L197906%_ '())))
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
                                   (cons _%L197908%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197862197900%_
                                               _%hd197859197890%_)
                                              (_%g197851197869%_
                                               _%g197852197873%_))))
                                      (_%g197851197869%_ _%g197852197873%_))))
                              (_%g197851197869%_ _%g197852197873%_))))
                      (_%g197851197869%_ _%g197852197873%_)))))
          (_%g197850197924%_ _%$stx197847%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx197928%_)
        (let* ((_%__stx201532201533%_ _%$stx197928%_)
               (_%g197933197958%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201532201533%_)))))
          (let ((_%__kont201535201536%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont201537201538%_
                 (lambda (_%L198005%_ _%L198007%_ _%L198008%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L198008%_ (cons _%L198007%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L198005%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201532201533%_))
                (let ((_%e197935198034%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201532201533%_))))
                  (let ((_%tl197937198041%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197935198034%_)))
                        (_%hd197936198038%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197935198034%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl197937198041%_))
                        (_%__kont201535201536%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197937198041%_))
                            (let ((_%e197944197975%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl197937198041%_))))
                              (let ((_%tl197946197982%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197944197975%_)))
                                    (_%hd197945197979%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197944197975%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197945197979%_))
                                    (let ((_%e197947197985%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd197945197979%_))))
                                      (let ((_%tl197949197992%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197947197985%_)))
                                            (_%hd197948197989%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197947197985%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197949197992%_))
                                            (let ((_%e197950197995%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197949197992%_))))
                                              (let ((_%tl197952198002%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197950197995%_)))
                                                    (_%hd197951197999%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197950197995%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197952198002%_))
                                                    (_%__kont201537201538%_
                                                     _%tl197946197982%_
                                                     _%hd197951197999%_
                                                     _%hd197948197989%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197933197958%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197933197958%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197933197958%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g197933197958%_))))))
                (let () (declare (not safe)) (_%g197933197958%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx198052%_)
        (let* ((_%__stx201576201577%_ _%$stx198052%_)
               (_%g198057198088%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201576201577%_)))))
          (let ((_%__kont201579201580%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont201581201582%_
                 (lambda (_%L198155%_ _%L198157%_ _%L198158%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L198158%_
                                           (let ((__tmp202053
                                                  (lambda (_%g198178198181%_
                                                           _%g198179198184%_)
                                                    (cons _%g198178198181%_
                                                          _%g198179198184%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp202053
                                              '()
                                              _%L198157%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L198155%_)
                                     '()))))))
            (let ((_%__match201619201620%_
                   (lambda (_%e198065198095%_
                            _%hd198066198099%_
                            _%tl198067198102%_
                            _%e198068198105%_
                            _%hd198069198109%_
                            _%tl198070198112%_
                            _%e198071198115%_
                            _%hd198072198119%_
                            _%tl198073198122%_
                            _%__splice201583201584%_
                            _%target198074198125%_
                            _%tl198076198128%_)
                     (letrec ((_%loop198077198131%_
                               (lambda (_%hd198075198135%_ _%sig198081198138%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd198075198135%_))
                                     (let ((_%e198078198141%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd198075198135%_))))
                                       (let ((_%lp-tl198080198148%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198078198141%_)))
                                             (_%lp-hd198079198145%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198078198141%_))))
                                         (_%loop198077198131%_
                                          _%lp-tl198080198148%_
                                          (cons _%lp-hd198079198145%_
                                                _%sig198081198138%_))))
                                     (let ((_%sig198082198151%_
                                            (reverse _%sig198081198138%_)))
                                       (_%__kont201581201582%_
                                        _%tl198070198112%_
                                        _%sig198082198151%_
                                        _%hd198072198119%_))))))
                       (_%loop198077198131%_ _%target198074198125%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201576201577%_))
                  (let ((_%e198059198194%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201576201577%_))))
                    (let ((_%tl198061198201%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198059198194%_)))
                          (_%hd198060198198%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198059198194%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198061198201%_))
                          (_%__kont201579201580%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198061198201%_))
                              (let ((_%e198068198105%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198061198201%_))))
                                (let ((_%tl198070198112%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198068198105%_)))
                                      (_%hd198069198109%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198068198105%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198069198109%_))
                                      (let ((_%e198071198115%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198069198109%_))))
                                        (let ((_%tl198073198122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198071198115%_)))
                                              (_%hd198072198119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198071198115%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198073198122%_))
                                              (let ((_%__splice201583201584%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198073198122%_
                                                        '0))))
                                                (let ((_%tl198076198128%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201583201584%_
                                                          '1)))
                                                      (_%target198074198125%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201583201584%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198076198128%_))
                                                      (_%__match201619201620%_
                                                       _%e198059198194%_
                                                       _%hd198060198198%_
                                                       _%tl198061198201%_
                                                       _%e198068198105%_
                                                       _%hd198069198109%_
                                                       _%tl198070198112%_
                                                       _%e198071198115%_
                                                       _%hd198072198119%_
                                                       _%tl198073198122%_
                                                       _%__splice201583201584%_
                                                       _%target198074198125%_
                                                       _%tl198076198128%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198057198088%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198057198088%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198057198088%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198057198088%_))))))
                  (let () (declare (not safe)) (_%g198057198088%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx198213%_)
        (let* ((_%__stx201622201623%_ _%$stx198213%_)
               (_%g198218198265%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201622201623%_)))))
          (let ((_%__kont201625201626%_
                 (lambda (_%L198427%_ _%L198429%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L198429%_
                               (let ((__tmp202054
                                      (lambda (_%g198449198452%_
                                               _%g198450198455%_)
                                        (cons _%g198449198452%_
                                              _%g198450198455%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202054 '() _%L198427%_))))))
                (_%__kont201629201630%_
                 (lambda (_%L198322%_ _%L198324%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L198324%_
                               (let ((__tmp202055
                                      (lambda (_%g198341198344%_
                                               _%g198342198347%_)
                                        (cons _%g198341198344%_
                                              _%g198342198347%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202055 '() _%L198322%_)))))))
            (let* ((_%__match201689201690%_
                    (lambda (_%e198245198272%_
                             _%hd198246198276%_
                             _%tl198247198279%_
                             _%e198248198282%_
                             _%hd198249198286%_
                             _%tl198250198289%_
                             _%__splice201631201632%_
                             _%target198251198292%_
                             _%tl198253198295%_)
                      (letrec ((_%loop198254198298%_
                                (lambda (_%hd198252198302%_
                                         _%sig198258198305%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198252198302%_))
                                      (let ((_%e198255198308%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198252198302%_))))
                                        (let ((_%lp-tl198257198315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198255198308%_)))
                                              (_%lp-hd198256198312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198255198308%_))))
                                          (_%loop198254198298%_
                                           _%lp-tl198257198315%_
                                           (cons _%lp-hd198256198312%_
                                                 _%sig198258198305%_))))
                                      (let ((_%sig198259198318%_
                                             (reverse _%sig198258198305%_)))
                                        (_%__kont201629201630%_
                                         _%sig198259198318%_
                                         _%hd198249198286%_))))))
                        (_%loop198254198298%_ _%target198251198292%_ '()))))
                   (_%__match201681201682%_
                    (lambda (_%e198245198272%_
                             _%hd198246198276%_
                             _%tl198247198279%_
                             _%e198248198282%_
                             _%hd198249198286%_
                             _%tl198250198289%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl198250198289%_))
                          (let ((_%__splice201631201632%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl198250198289%_
                                    '0))))
                            (let ((_%tl198253198295%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice201631201632%_
                                      '1)))
                                  (_%target198251198292%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice201631201632%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198253198295%_))
                                  (_%__match201689201690%_
                                   _%e198245198272%_
                                   _%hd198246198276%_
                                   _%tl198247198279%_
                                   _%e198248198282%_
                                   _%hd198249198286%_
                                   _%tl198250198289%_
                                   _%__splice201631201632%_
                                   _%target198251198292%_
                                   _%tl198253198295%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g198218198265%_)))))
                          (let () (declare (not safe)) (_%g198218198265%_)))))
                   (_%__match201669201670%_
                    (lambda (_%e198222198357%_
                             _%hd198223198361%_
                             _%tl198224198364%_
                             _%e198225198367%_
                             _%hd198226198371%_
                             _%tl198227198374%_
                             _%e198228198377%_
                             _%hd198229198381%_
                             _%tl198230198384%_
                             _%e198231198387%_
                             _%hd198232198391%_
                             _%tl198233198394%_
                             _%__splice201627201628%_
                             _%target198234198397%_
                             _%tl198236198400%_)
                      (letrec ((_%loop198237198403%_
                                (lambda (_%hd198235198407%_
                                         _%sig198241198410%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198235198407%_))
                                      (let ((_%e198238198413%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198235198407%_))))
                                        (let ((_%lp-tl198240198420%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198238198413%_)))
                                              (_%lp-hd198239198417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198238198413%_))))
                                          (_%loop198237198403%_
                                           _%lp-tl198240198420%_
                                           (cons _%lp-hd198239198417%_
                                                 _%sig198241198410%_))))
                                      (let ((_%sig198242198423%_
                                             (reverse _%sig198241198410%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl198230198384%_))
                                            (_%__kont201625201626%_
                                             _%sig198242198423%_
                                             _%hd198226198371%_)
                                            (_%__match201681201682%_
                                             _%e198222198357%_
                                             _%hd198223198361%_
                                             _%tl198224198364%_
                                             _%e198225198367%_
                                             _%hd198226198371%_
                                             _%tl198227198374%_)))))))
                        (_%loop198237198403%_ _%target198234198397%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201622201623%_))
                  (let ((_%e198222198357%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201622201623%_))))
                    (let ((_%tl198224198364%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198222198357%_)))
                          (_%hd198223198361%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198222198357%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198224198364%_))
                          (let ((_%e198225198367%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198224198364%_))))
                            (let ((_%tl198227198374%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198225198367%_)))
                                  (_%hd198226198371%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198225198367%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198227198374%_))
                                  (let ((_%e198228198377%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl198227198374%_))))
                                    (let ((_%tl198230198384%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198228198377%_)))
                                          (_%hd198229198381%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198228198377%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd198229198381%_))
                                          (let ((_%e198231198387%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd198229198381%_))))
                                            (let ((_%tl198233198394%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e198231198387%_)))
                                                  (_%hd198232198391%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e198231198387%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd198232198391%_))
                                                  (if (let ((__tmp202056
                                                             |gxc[1]#_g202057_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp202056
                                                         _%hd198232198391%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl198233198394%_))
                                                          (let ((_%__splice201627201628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl198233198394%_ '0))))
                    (let ((_%tl198236198400%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201627201628%_ '1)))
                          (_%target198234198397%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201627201628%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198236198400%_))
                          (_%__match201669201670%_
                           _%e198222198357%_
                           _%hd198223198361%_
                           _%tl198224198364%_
                           _%e198225198367%_
                           _%hd198226198371%_
                           _%tl198227198374%_
                           _%e198228198377%_
                           _%hd198229198381%_
                           _%tl198230198384%_
                           _%e198231198387%_
                           _%hd198232198391%_
                           _%tl198233198394%_
                           _%__splice201627201628%_
                           _%target198234198397%_
                           _%tl198236198400%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198227198374%_))
                              (let ((_%__splice201631201632%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198227198374%_
                                        '0))))
                                (let ((_%tl198253198295%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice201631201632%_
                                          '1)))
                                      (_%target198251198292%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice201631201632%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198253198295%_))
                                      (_%__match201689201690%_
                                       _%e198222198357%_
                                       _%hd198223198361%_
                                       _%tl198224198364%_
                                       _%e198225198367%_
                                       _%hd198226198371%_
                                       _%tl198227198374%_
                                       _%__splice201631201632%_
                                       _%target198251198292%_
                                       _%tl198253198295%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g198218198265%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198218198265%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl198227198374%_))
                      (let ((_%__splice201631201632%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl198227198374%_
                                '0))))
                        (let ((_%tl198253198295%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201631201632%_ '1)))
                              (_%target198251198292%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201631201632%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl198253198295%_))
                              (_%__match201689201690%_
                               _%e198222198357%_
                               _%hd198223198361%_
                               _%tl198224198364%_
                               _%e198225198367%_
                               _%hd198226198371%_
                               _%tl198227198374%_
                               _%__splice201631201632%_
                               _%target198251198292%_
                               _%tl198253198295%_)
                              (let ()
                                (declare (not safe))
                                (_%g198218198265%_)))))
                      (let () (declare (not safe)) (_%g198218198265%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl198227198374%_))
                  (let ((_%__splice201631201632%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl198227198374%_ '0))))
                    (let ((_%tl198253198295%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201631201632%_ '1)))
                          (_%target198251198292%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201631201632%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198253198295%_))
                          (_%__match201689201690%_
                           _%e198222198357%_
                           _%hd198223198361%_
                           _%tl198224198364%_
                           _%e198225198367%_
                           _%hd198226198371%_
                           _%tl198227198374%_
                           _%__splice201631201632%_
                           _%target198251198292%_
                           _%tl198253198295%_)
                          (let () (declare (not safe)) (_%g198218198265%_)))))
                  (let () (declare (not safe)) (_%g198218198265%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl198227198374%_))
                                                      (let ((_%__splice201631201632%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl198227198374%_ '0))))
                (let ((_%tl198253198295%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201631201632%_ '1)))
                      (_%target198251198292%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201631201632%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198253198295%_))
                      (_%__match201689201690%_
                       _%e198222198357%_
                       _%hd198223198361%_
                       _%tl198224198364%_
                       _%e198225198367%_
                       _%hd198226198371%_
                       _%tl198227198374%_
                       _%__splice201631201632%_
                       _%target198251198292%_
                       _%tl198253198295%_)
                      (let () (declare (not safe)) (_%g198218198265%_)))))
              (let () (declare (not safe)) (_%g198218198265%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198227198374%_))
                                              (let ((_%__splice201631201632%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198227198374%_
                                                        '0))))
                                                (let ((_%tl198253198295%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201631201632%_
                                                          '1)))
                                                      (_%target198251198292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201631201632%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198253198295%_))
                                                      (_%__match201689201690%_
                                                       _%e198222198357%_
                                                       _%hd198223198361%_
                                                       _%tl198224198364%_
                                                       _%e198225198367%_
                                                       _%hd198226198371%_
                                                       _%tl198227198374%_
                                                       _%__splice201631201632%_
                                                       _%target198251198292%_
                                                       _%tl198253198295%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198218198265%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198218198265%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl198227198374%_))
                                      (let ((_%__splice201631201632%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl198227198374%_
                                                '0))))
                                        (let ((_%tl198253198295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201631201632%_
                                                  '1)))
                                              (_%target198251198292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201631201632%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198253198295%_))
                                              (_%__match201689201690%_
                                               _%e198222198357%_
                                               _%hd198223198361%_
                                               _%tl198224198364%_
                                               _%e198225198367%_
                                               _%hd198226198371%_
                                               _%tl198227198374%_
                                               _%__splice201631201632%_
                                               _%target198251198292%_
                                               _%tl198253198295%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g198218198265%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198218198265%_))))))
                          (let () (declare (not safe)) (_%g198218198265%_)))))
                  (let () (declare (not safe)) (_%g198218198265%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx199612%_ _%id199614%_)
        (let ((_%proc199618%_
               (let ((__tmp202058
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id199614%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202058))))
          (if (procedure? _%proc199618%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx199612%_
                 _%id199614%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx199603%_ _%id199605%_)
        (let ((_%klass199609%_
               (let ((__tmp202059
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id199605%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202059))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass199609%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx199603%_
                 _%id199605%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx198853%_ _%proc198855%_ _%sig198856%_)
        (letrec ((_%signature-arity198858%_
                  (lambda (_%args199535%_)
                    (let _%loop199538%_ ((_%rest199541%_ _%args199535%_)
                                         (_%count199543%_ '0))
                      (let* ((_%rest199544199555%_ _%rest199541%_)
                             (_%E199548199561%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest199544199555%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K199551199592%_
                               (lambda (_%rest199589%_)
                                 (_%loop199538%_
                                  _%rest199589%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count199543%_ '1)))))
                              (_%K199550199581%_ (lambda () _%count199543%_))
                              (_%K199549199569%_
                               (lambda () (cons _%count199543%_ '()))))
                          (let ((_%try-match199546199585%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest199544199555%_))
                                       (_%K199550199581%_)
                                       (_%K199549199569%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest199544199555%_))
                                (let* ((_%tl199553199596%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest199544199555%_)))
                                       (_%rest199600%_ _%tl199553199596%_))
                                  (_%K199551199592%_ _%rest199600%_))
                                (_%try-match199546199585%_))))))))
                 (_%make-signature198860%_
                  (lambda (_%args199417%_
                           _%return199419%_
                           _%effect199420%_
                           _%unchecked199421%_)
                    (let ((__tmp202060
                           (lambda (_%g199422199424%_)
                             (|gxc[1]#verify-class!|
                              _%ctx198853%_
                              _%g199422199424%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp202060 _%args199417%_))
                    (|gxc[1]#verify-class!| _%ctx198853%_ _%return199419%_)
                    (if _%unchecked199421%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx198853%_
                         _%unchecked199421%_)
                        '#!void)
                    (let ((_%arity199428%_
                           (_%signature-arity198858%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args199417%_)))))
                      (if _%effect199420%_
                          (let ((_%effect199431%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect199420%_))))
                            (if (and (list? _%effect199431%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect199431%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx198853%_
                                   _%proc198855%_
                                   _%effect199431%_))))
                          '#!void)
                      (cons _%arity199428%_
                            (cons (let* ((_%g199434199457%_
                                          (lambda (_%g199435199453%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g199435199453%_))))
                                         (_%g199433199531%_
                                          (lambda (_%g199435199461%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g199435199461%_))
                                                (let ((_%e199440199464%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g199435199461%_))))
                                                  (let ((_%hd199441199468%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199440199464%_)))
                                                        (_%tl199442199471%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199440199464%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199442199471%_))
                                                        (let ((_%e199443199474%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl199442199471%_))))
                  (let ((_%hd199444199478%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199443199474%_)))
                        (_%tl199445199481%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199443199474%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl199445199481%_))
                        (let ((_%e199446199484%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199445199481%_))))
                          (let ((_%hd199447199488%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199446199484%_)))
                                (_%tl199448199491%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199446199484%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199448199491%_))
                                (let ((_%e199449199494%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199448199491%_))))
                                  (let ((_%hd199450199498%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199449199494%_)))
                                        (_%tl199451199501%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199449199494%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199451199501%_))
                                        ((lambda (_%L199504%_
                                                  _%L199506%_
                                                  _%L199507%_
                                                  _%L199508%_)
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
                           (cons _%L199508%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L199507%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L199506%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L199504%_ '()))
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
                                         _%hd199450199498%_
                                         _%hd199447199488%_
                                         _%hd199444199478%_
                                         _%hd199441199468%_)
                                        (_%g199434199457%_
                                         _%g199435199461%_))))
                                (_%g199434199457%_ _%g199435199461%_))))
                        (_%g199434199457%_ _%g199435199461%_))))
                (_%g199434199457%_ _%g199435199461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199434199457%_
                                                 _%g199435199461%_)))))
                                    (_%g199433199531%_
                                     (list _%args199417%_
                                           _%return199419%_
                                           _%effect199420%_
                                           _%unchecked199421%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx198853%_ _%proc198855%_)
          (let* ((_%__stx201700201701%_ _%sig198856%_)
                 (_%g198867198970%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201700201701%_)))))
            (let ((_%__kont201703201704%_
                   (lambda (_%L199398%_ _%L199400%_)
                     (_%make-signature198860%_
                      _%L199400%_
                      _%L199398%_
                      '#f
                      '#f)))
                  (_%__kont201705201706%_
                   (lambda (_%L199349%_ _%L199351%_ _%L199352%_)
                     (_%make-signature198860%_
                      _%L199352%_
                      _%L199351%_
                      _%L199349%_
                      '#f)))
                  (_%__kont201707201708%_
                   (lambda (_%L199273%_ _%L199275%_ _%L199276%_)
                     (_%make-signature198860%_
                      _%L199276%_
                      _%L199275%_
                      _%L199273%_
                      (let ((__tmp202061
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc198855%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp202061)))))
                  (_%__kont201709201710%_
                   (lambda (_%L199179%_ _%L199181%_ _%L199182%_ _%L199183%_)
                     (_%make-signature198860%_
                      _%L199183%_
                      _%L199182%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L199179%_)))))
                  (_%__kont201711201712%_
                   (lambda (_%L199086%_ _%L199088%_)
                     (_%make-signature198860%_
                      _%L199088%_
                      _%L199086%_
                      '#f
                      (let ((__tmp202062
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc198855%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp202062)))))
                  (_%__kont201713201714%_
                   (lambda (_%L199021%_ _%L199023%_ _%L199024%_)
                     (_%make-signature198860%_
                      _%L199024%_
                      _%L199023%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L199021%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201700201701%_))
                  (let ((_%e198871199378%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201700201701%_))))
                    (let ((_%tl198873199385%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198871199378%_)))
                          (_%hd198872199382%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198871199378%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198873199385%_))
                          (let ((_%e198874199388%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198873199385%_))))
                            (let ((_%tl198876199395%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198874199388%_)))
                                  (_%hd198875199392%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198874199388%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198876199395%_))
                                  (_%__kont201703201704%_
                                   _%hd198875199392%_
                                   _%hd198872199382%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198876199395%_))
                                      (let ((_%e198886199325%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198876199395%_))))
                                        (let ((_%tl198888199332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198886199325%_)))
                                              (_%hd198887199329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198886199325%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd198887199329%_))
                                              (let ((_%e198889199335%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd198887199329%_))))
                                                (if (equal? _%e198889199335%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198888199332%_))
                                                        (let ((_%e198890199339%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl198888199332%_))))
                  (let ((_%tl198892199346%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198890199339%_)))
                        (_%hd198891199343%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198890199339%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198892199346%_))
                        (_%__kont201705201706%_
                         _%hd198891199343%_
                         _%hd198875199392%_
                         _%hd198872199382%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198892199346%_))
                            (let ((_%e198909199259%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198892199346%_))))
                              (let ((_%tl198911199266%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198909199259%_)))
                                    (_%hd198910199263%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198909199259%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd198910199263%_))
                                    (let ((_%e198912199269%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd198910199263%_))))
                                      (if (equal? _%e198912199269%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198911199266%_))
                                              (_%__kont201707201708%_
                                               _%hd198891199343%_
                                               _%hd198875199392%_
                                               _%hd198872199382%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198911199266%_))
                                                  (let ((_%e198934199169%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198911199266%_))))
                                                    (let ((_%tl198936199176%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198934199169%_)))
                                                          (_%hd198935199173%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198934199169%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198936199176%_))
                                                          (_%__kont201709201710%_
                                                           _%hd198935199173%_
                                                           _%hd198891199343%_
                                                           _%hd198875199392%_
                                                           _%hd198872199382%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g198867198970%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198867198970%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198867198970%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198867198970%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198867198970%_))))))
                (let () (declare (not safe)) (_%g198867198970%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e198889199335%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl198888199332%_))
                                                            (_%__kont201711201712%_
                                                             _%hd198875199392%_
                                                             _%hd198872199382%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl198888199332%_))
                        (let ((_%e198962199011%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198888199332%_))))
                          (let ((_%tl198964199018%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198962199011%_)))
                                (_%hd198963199015%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198962199011%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198964199018%_))
                                (_%__kont201713201714%_
                                 _%hd198963199015%_
                                 _%hd198875199392%_
                                 _%hd198872199382%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g198867198970%_)))))
                        (let () (declare (not safe)) (_%g198867198970%_))))
                (let () (declare (not safe)) (_%g198867198970%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g198867198970%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198867198970%_))))))
                          (let () (declare (not safe)) (_%g198867198970%_)))))
                  (let () (declare (not safe)) (_%g198867198970%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig198464%_)
        (let* ((_%g198467198547%_
                (lambda (_%g198468198543%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198468198543%_))))
               (_%g198466198849%_
                (lambda (_%g198468198551%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198468198551%_))
                      (let ((_%e198474198554%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198468198551%_))))
                        (let ((_%hd198475198558%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198474198554%_)))
                              (_%tl198476198561%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198474198554%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198476198561%_))
                              (let ((_%e198477198564%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198476198561%_))))
                                (let ((_%hd198478198568%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198477198564%_)))
                                      (_%tl198479198571%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198477198564%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd198478198568%_))
                                      (let ((_%e198480198574%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd198478198568%_))))
                                        (if (equal? _%e198480198574%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198479198571%_))
                                                (let ((_%e198481198578%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl198479198571%_))))
                                                  (let ((_%hd198482198582%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198481198578%_)))
                                                        (_%tl198483198585%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198481198578%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198482198582%_))
                                                        (let ((_%e198484198588%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198482198582%_))))
                  (let ((_%hd198485198592%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198484198588%_)))
                        (_%tl198486198595%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198484198588%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd198485198592%_))
                        (if (let ((__tmp202063 |gxc[1]#_g202064_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp202063
                               _%hd198485198592%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198486198595%_))
                                (let ((_%e198487198598%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198486198595%_))))
                                  (let ((_%hd198488198602%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198487198598%_)))
                                        (_%tl198489198605%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198487198598%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198489198605%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198483198585%_))
                                            (let ((_%e198490198608%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198483198585%_))))
                                              (let ((_%hd198491198612%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198490198608%_)))
                                                    (_%tl198492198615%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198490198608%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd198491198612%_))
                                                    (let ((_%e198493198618%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd198491198612%_))))
                                                      (if (equal? _%e198493198618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl198492198615%_))
                      (let ((_%e198494198622%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl198492198615%_))))
                        (let ((_%hd198495198626%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198494198622%_)))
                              (_%tl198496198629%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198494198622%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd198495198626%_))
                              (let ((_%e198497198632%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd198495198626%_))))
                                (let ((_%hd198498198636%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198497198632%_)))
                                      (_%tl198499198639%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198497198632%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd198498198636%_))
                                      (if (let ((__tmp202065
                                                 |gxc[1]#_g202066_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp202065
                                             _%hd198498198636%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198499198639%_))
                                              (let ((_%e198500198642%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198499198639%_))))
                                                (let ((_%hd198501198646%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198500198642%_)))
                                                      (_%tl198502198649%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198500198642%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198502198649%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl198496198629%_))
                                                          (let ((_%e198503198652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl198496198629%_))))
                    (let ((_%hd198504198656%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198503198652%_)))
                          (_%tl198505198659%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198503198652%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd198504198656%_))
                          (let ((_%e198506198662%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd198504198656%_))))
                            (if (equal? _%e198506198662%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl198505198659%_))
                                    (let ((_%e198507198666%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl198505198659%_))))
                                      (let ((_%hd198508198670%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198507198666%_)))
                                            (_%tl198509198673%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198507198666%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd198508198670%_))
                                            (let ((_%e198510198676%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd198508198670%_))))
                                              (let ((_%hd198511198680%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198510198676%_)))
                                                    (_%tl198512198683%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198510198676%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd198511198680%_))
                                                    (if (let ((__tmp202067
                                                               |gxc[1]#_g202068_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp202067
                                                           _%hd198511198680%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl198512198683%_))
                                                            (let ((_%e198513198686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl198512198683%_))))
                      (let ((_%hd198514198690%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198513198686%_)))
                            (_%tl198515198693%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198513198686%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198515198693%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198509198673%_))
                                (let ((_%e198516198696%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198509198673%_))))
                                  (let ((_%hd198517198700%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198516198696%_)))
                                        (_%tl198518198703%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198516198696%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd198517198700%_))
                                        (let ((_%e198519198706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd198517198700%_))))
                                          (if (equal? _%e198519198706%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198518198703%_))
                                                  (let ((_%e198520198710%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198518198703%_))))
                                                    (let ((_%hd198521198714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198520198710%_)))
                                                          (_%tl198522198717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198520198710%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd198521198714%_))
                                                          (let ((_%e198523198720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd198521198714%_))))
                    (let ((_%hd198524198724%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198523198720%_)))
                          (_%tl198525198727%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198523198720%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd198524198724%_))
                          (if (let ((__tmp202069 |gxc[1]#_g202070_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp202069
                                 _%hd198524198724%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198525198727%_))
                                  (let ((_%e198526198730%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl198525198727%_))))
                                    (let ((_%hd198527198734%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198526198730%_)))
                                          (_%tl198528198737%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198526198730%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198528198737%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198522198717%_))
                                              (let ((_%e198529198740%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198522198717%_))))
                                                (let ((_%hd198530198744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198529198740%_)))
                                                      (_%tl198531198747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198529198740%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd198530198744%_))
                                                      (let ((_%e198532198750%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd198530198744%_))))
                (if (equal? _%e198532198750%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198531198747%_))
                        (let ((_%e198533198754%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198531198747%_))))
                          (let ((_%hd198534198758%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198533198754%_)))
                                (_%tl198535198761%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198533198754%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd198534198758%_))
                                (let ((_%e198536198764%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd198534198758%_))))
                                  (let ((_%hd198537198768%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198536198764%_)))
                                        (_%tl198538198771%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198536198764%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd198537198768%_))
                                        (if (let ((__tmp202071
                                                   |gxc[1]#_g202072_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp202071
                                               _%hd198537198768%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198538198771%_))
                                                (let ((_%e198539198774%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl198538198771%_))))
                                                  (let ((_%hd198540198778%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198539198774%_)))
                                                        (_%tl198541198781%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198539198774%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198541198781%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl198535198761%_))
                                                            ((lambda (_%L198784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L198786%_
                              _%L198787%_
                              _%L198788%_
                              _%L198789%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L198786%_))
                           (cons _%L198786%_
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
                       (cons _%L198788%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L198784%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd198540198778%_
                     _%hd198527198734%_
                     _%hd198514198690%_
                     _%hd198501198646%_
                     _%hd198488198602%_)
                    (_%g198467198547%_ _%g198468198551%_))
                (_%g198467198547%_ _%g198468198551%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g198467198547%_
                                                 _%g198468198551%_))
                                            (_%g198467198547%_
                                             _%g198468198551%_))
                                        (_%g198467198547%_
                                         _%g198468198551%_))))
                                (_%g198467198547%_ _%g198468198551%_))))
                        (_%g198467198547%_ _%g198468198551%_))
                    (_%g198467198547%_ _%g198468198551%_)))
              (_%g198467198547%_ _%g198468198551%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198467198547%_
                                               _%g198468198551%_))
                                          (_%g198467198547%_
                                           _%g198468198551%_))))
                                  (_%g198467198547%_ _%g198468198551%_))
                              (_%g198467198547%_ _%g198468198551%_))
                          (_%g198467198547%_ _%g198468198551%_))))
                  (_%g198467198547%_ _%g198468198551%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g198467198547%_
                                                   _%g198468198551%_))
                                              (_%g198467198547%_
                                               _%g198468198551%_)))
                                        (_%g198467198547%_
                                         _%g198468198551%_))))
                                (_%g198467198547%_ _%g198468198551%_))
                            (_%g198467198547%_ _%g198468198551%_))))
                    (_%g198467198547%_ _%g198468198551%_))
                (_%g198467198547%_ _%g198468198551%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g198467198547%_
                                                     _%g198468198551%_))))
                                            (_%g198467198547%_
                                             _%g198468198551%_))))
                                    (_%g198467198547%_ _%g198468198551%_))
                                (_%g198467198547%_ _%g198468198551%_)))
                          (_%g198467198547%_ _%g198468198551%_))))
                  (_%g198467198547%_ _%g198468198551%_))
              (_%g198467198547%_ _%g198468198551%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198467198547%_
                                               _%g198468198551%_))
                                          (_%g198467198547%_
                                           _%g198468198551%_))
                                      (_%g198467198547%_ _%g198468198551%_))))
                              (_%g198467198547%_ _%g198468198551%_))))
                      (_%g198467198547%_ _%g198468198551%_))
                  (_%g198467198547%_ _%g198468198551%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g198467198547%_
                                                     _%g198468198551%_))))
                                            (_%g198467198547%_
                                             _%g198468198551%_))
                                        (_%g198467198547%_
                                         _%g198468198551%_))))
                                (_%g198467198547%_ _%g198468198551%_))
                            (_%g198467198547%_ _%g198468198551%_))
                        (_%g198467198547%_ _%g198468198551%_))))
                (_%g198467198547%_ _%g198468198551%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g198467198547%_
                                                 _%g198468198551%_))
                                            (_%g198467198547%_
                                             _%g198468198551%_)))
                                      (_%g198467198547%_ _%g198468198551%_))))
                              (_%g198467198547%_ _%g198468198551%_))))
                      (_%g198467198547%_ _%g198468198551%_)))))
          (_%g198466198849%_ _%sig198464%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx199621%_)
        (let* ((_%g199624199642%_
                (lambda (_%g199625199638%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199625199638%_))))
               (_%g199623199697%_
                (lambda (_%g199625199646%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199625199646%_))
                      (let ((_%e199628199649%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199625199646%_))))
                        (let ((_%hd199629199653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199628199649%_)))
                              (_%tl199630199656%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199628199649%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199630199656%_))
                              (let ((_%e199631199659%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199630199656%_))))
                                (let ((_%hd199632199663%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199631199659%_)))
                                      (_%tl199633199666%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199631199659%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199633199666%_))
                                      (let ((_%e199634199669%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199633199666%_))))
                                        (let ((_%hd199635199673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199634199669%_)))
                                              (_%tl199636199676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199634199669%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199636199676%_))
                                              ((lambda (_%L199679%_
                                                        _%L199681%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L199681%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L199679%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx199621%_
                                                        _%L199681%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx199621%_
                                                        _%L199679%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L199681%_
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
                                                   (cons _%L199679%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199624199642%_
                                                      _%g199625199646%_)))
                                               _%hd199635199673%_
                                               _%hd199632199663%_)
                                              (_%g199624199642%_
                                               _%g199625199646%_))))
                                      (_%g199624199642%_ _%g199625199646%_))))
                              (_%g199624199642%_ _%g199625199646%_))))
                      (_%g199624199642%_ _%g199625199646%_)))))
          (_%g199623199697%_ _%stx199621%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx199701%_)
        (let* ((_%g199704199728%_
                (lambda (_%g199705199724%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199705199724%_))))
               (_%g199703200011%_
                (lambda (_%g199705199732%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199705199732%_))
                      (let ((_%e199708199735%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199705199732%_))))
                        (let ((_%hd199709199739%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199708199735%_)))
                              (_%tl199710199742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199708199735%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199710199742%_))
                              (let ((_%e199711199745%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199710199742%_))))
                                (let ((_%hd199712199749%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199711199745%_)))
                                      (_%tl199713199752%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199711199745%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199713199752%_))
                                      (let ((_g202073_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199713199752%_
                                                '0))))
                                        (begin
                                          (let ((_g202074_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202073_)
                                                       (##vector-length
                                                        _g202073_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202074_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202074_)))
                                          (let ((_%target199714199755%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202073_ 0)))
                                                (_%tl199716199758%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202073_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199716199758%_))
                                                (letrec ((_%loop199717199761%_
                                                          (lambda (_%hd199715199765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature199721199768%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199715199765%_))
                        (let ((_%e199718199771%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd199715199765%_))))
                          (let ((_%lp-hd199719199775%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199718199771%_)))
                                (_%lp-tl199720199778%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199718199771%_))))
                            (_%loop199717199761%_
                             _%lp-tl199720199778%_
                             (cons _%lp-hd199719199775%_
                                   _%signature199721199768%_))))
                        (let ((_%signature199722199781%_
                               (reverse _%signature199721199768%_)))
                          ((lambda (_%L199785%_ _%L199787%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L199787%_))
                                 (let* ((_%g199805199820%_
                                         (lambda (_%g199806199816%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g199806199816%_))))
                                        (_%g199804199999%_
                                         (lambda (_%g199806199824%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g199806199824%_))
                                               (let ((_%e199809199827%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g199806199824%_))))
                                                 (let ((_%hd199810199831%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199809199827%_)))
                                                       (_%tl199811199834%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199809199827%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199811199834%_))
                                                       (let ((_%e199812199837%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl199811199834%_))))
                 (let ((_%hd199813199841%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199812199837%_)))
                       (_%tl199814199844%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199812199837%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199814199844%_))
                       ((lambda (_%L199847%_ _%L199849%_)
                          (let* ((_%g199865199873%_
                                  (lambda (_%g199866199869%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g199866199869%_))))
                                 (_%g199864199995%_
                                  (lambda (_%g199866199877%_)
                                    ((lambda (_%L199880%_)
                                       (let* ((_%unchecked199893%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L199847%_))
                                              (_%g199896199904%_
                                               (lambda (_%g199897199900%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g199897199900%_))))
                                              (_%g199895199927%_
                                               (lambda (_%g199897199908%_)
                                                 ((lambda (_%L199911%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L199880%_
                                                                (cons _%L199911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g199897199908%_))))
                                         (_%g199895199927%_
                                          (if _%unchecked199893%_
                                              (let* ((_%g199931199946%_
                                                      (lambda (_%g199932199942%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199932199942%_))))
                                                     (_%g199930199991%_
                                                      (lambda (_%g199932199950%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199932199950%_))
                                                            (let ((_%e199935199953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g199932199950%_))))
                      (let ((_%hd199936199957%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199935199953%_)))
                            (_%tl199937199960%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199935199953%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199937199960%_))
                            (let ((_%e199938199963%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl199937199960%_))))
                              (let ((_%hd199939199967%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199938199963%_)))
                                    (_%tl199940199970%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199938199963%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl199940199970%_))
                                    ((lambda (_%L199973%_ _%L199975%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L199975%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L199849%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L199973%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd199939199967%_
                                     _%hd199936199957%_)
                                    (_%g199931199946%_ _%g199932199950%_))))
                            (_%g199931199946%_ _%g199932199950%_))))
                    (_%g199931199946%_ _%g199932199950%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199930199991%_
                                                 _%unchecked199893%_))
                                              '(begin)))))
                                     _%g199866199877%_))))
                            (_%g199864199995%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L199787%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L199849%_ '()))
                   (cons '#f (cons 'signature: (cons _%L199847%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd199813199841%_
                        _%hd199810199831%_)
                       (_%g199805199820%_ _%g199806199824%_))))
               (_%g199805199820%_ _%g199806199824%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199805199820%_
                                                _%g199806199824%_)))))
                                   (_%g199804199999%_
                                    (|gxc[1]#parse-signature|
                                     _%stx199701%_
                                     _%L199787%_
                                     (let ((__tmp202075
                                            (lambda (_%g200002200005%_
                                                     _%g200003200008%_)
                                              (cons _%g200002200005%_
                                                    _%g200003200008%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp202075
                                        '()
                                        _%L199785%_)))))
                                 (_%g199704199728%_ _%g199705199732%_)))
                           _%signature199722199781%_
                           _%hd199712199749%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199717199761%_
                                                   _%target199714199755%_
                                                   '()))
                                                (_%g199704199728%_
                                                 _%g199705199732%_)))))
                                      (_%g199704199728%_ _%g199705199732%_))))
                              (_%g199704199728%_ _%g199705199732%_))))
                      (_%g199704199728%_ _%g199705199732%_)))))
          (_%g199703200011%_ _%stx199701%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx200016%_)
        (let* ((_%g200019200043%_
                (lambda (_%g200020200039%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200020200039%_))))
               (_%g200018200926%_
                (lambda (_%g200020200047%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200020200047%_))
                      (let ((_%e200023200050%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200020200047%_))))
                        (let ((_%hd200024200054%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200023200050%_)))
                              (_%tl200025200057%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200023200050%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200025200057%_))
                              (let ((_%e200026200060%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200025200057%_))))
                                (let ((_%hd200027200064%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200026200060%_)))
                                      (_%tl200028200067%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200026200060%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200028200067%_))
                                      (let ((_g202076_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200028200067%_
                                                '0))))
                                        (begin
                                          (let ((_g202077_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202076_)
                                                       (##vector-length
                                                        _g202076_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202077_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202077_)))
                                          (let ((_%target200029200070%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202076_ 0)))
                                                (_%tl200031200073%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202076_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200031200073%_))
                                                (letrec ((_%loop200032200076%_
                                                          (lambda (_%hd200030200080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature200036200083%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200030200080%_))
                        (let ((_%e200033200086%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200030200080%_))))
                          (let ((_%lp-hd200034200090%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200033200086%_)))
                                (_%lp-tl200035200093%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200033200086%_))))
                            (_%loop200032200076%_
                             _%lp-tl200035200093%_
                             (cons _%lp-hd200034200090%_
                                   _%case-signature200036200083%_))))
                        (let ((_%case-signature200037200096%_
                               (reverse _%case-signature200036200083%_)))
                          ((lambda (_%L200100%_ _%L200102%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200102%_))
                                 (let* ((_%signatures200133%_
                                         (map (lambda (_%g200119200121%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx200016%_
                                                 _%L200102%_
                                                 _%g200119200121%_))
                                              (let ((__tmp202078
                                                     (lambda (_%g200124200127%_
                                                              _%g200125200130%_)
                                                       (cons _%g200124200127%_
                                                             _%g200125200130%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp202078
                                                 '()
                                                 _%L200100%_))))
                                        (_%g200136200162%_
                                         (lambda (_%g200137200158%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200137200158%_))))
                                        (_%g200135200922%_
                                         (lambda (_%g200137200166%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g200137200166%_))
                                               (let ((_g202079_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g200137200166%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g202080_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g202079_)
                        (##vector-length _g202079_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g202080_ 2)))
                 (error "Context expects 2 values" _g202080_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target200140200169%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202079_
                                                             0)))
                                                         (_%tl200142200172%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202079_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200142200172%_))
                                                         (letrec ((_%loop200143200175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd200141200179%_
                                    _%sig200147200182%_
                                    _%arity200148200184%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd200141200179%_))
                                 (let ((_%e200144200187%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd200141200179%_))))
                                   (let ((_%lp-hd200145200191%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200144200187%_)))
                                         (_%lp-tl200146200194%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200144200187%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd200145200191%_))
                                         (let ((_%e200151200197%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd200145200191%_))))
                                           (let ((_%hd200152200201%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200151200197%_)))
                                                 (_%tl200153200204%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200151200197%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200153200204%_))
                                                 (let ((_%e200154200207%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200153200204%_))))
                                                   (let ((_%hd200155200211%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200154200207%_)))
                                                         (_%tl200156200214%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200154200207%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200156200214%_))
                                                         (_%loop200143200175%_
                                                          _%lp-tl200146200194%_
                                                          (cons _%hd200155200211%_
                                                                _%sig200147200182%_)
                                                          (cons _%hd200152200201%_
                                                                _%arity200148200184%_))
                                                         (_%g200136200162%_
                                                          _%g200137200166%_))))
                                                 (_%g200136200162%_
                                                  _%g200137200166%_))))
                                         (_%g200136200162%_
                                          _%g200137200166%_))))
                                 (let ((_%sig200149200217%_
                                        (reverse _%sig200147200182%_))
                                       (_%arity200150200220%_
                                        (reverse _%arity200148200184%_)))
                                   ((lambda (_%L200223%_ _%L200225%_)
                                      (let* ((_%g200242200250%_
                                              (lambda (_%g200243200246%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g200243200246%_))))
                                             (_%g200241200907%_
                                              (lambda (_%g200243200254%_)
                                                ((lambda (_%L200257%_)
                                                   (let* ((_%g200270200278%_
                                                           (lambda (_%g200271200274%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g200271200274%_))))
                  (_%g200269200300%_
                   (lambda (_%g200271200282%_)
                     ((lambda (_%L200285%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L200257%_ (cons _%L200285%_ '()))))
                      _%g200271200282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200269200300%_
                                                      (let ((_g202081_
                                                             (let _%loop200304%_ ((_%rest200307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures200133%_)
                                          (_%unchecked-proc200309%_ '#f)
                                          (_%unchecked-clauses200310%_ '()))
                       (let* ((_%rest200311200319%_ _%rest200307%_)
                              (_%else200313200331%_
                               (lambda ()
                                 (values _%unchecked-proc200309%_
                                         (reverse!
                                          _%unchecked-clauses200310%_))))
                              (_%K200315200772%_
                               (lambda (_%rest200335%_ _%hd200337%_)
                                 (let* ((_%g200339200426%_
                                         (lambda (_%g200340200422%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200340200422%_))))
                                        (_%g200338200768%_
                                         (lambda (_%g200340200430%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g200340200430%_))
                                               (let ((_%e200347200433%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g200340200430%_))))
                                                 (let ((_%hd200348200437%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200347200433%_)))
                                                       (_%tl200349200440%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200347200433%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200349200440%_))
                                                       (let ((_%e200350200443%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl200349200440%_))))
                 (let ((_%hd200351200447%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200350200443%_)))
                       (_%tl200352200450%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200350200443%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd200351200447%_))
                       (let ((_%e200353200453%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd200351200447%_))))
                         (let ((_%hd200354200457%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e200353200453%_)))
                               (_%tl200355200460%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e200353200453%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl200355200460%_))
                               (let ((_%e200356200463%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl200355200460%_))))
                                 (let ((_%hd200357200467%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e200356200463%_)))
                                       (_%tl200358200470%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e200356200463%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd200357200467%_))
                                       (let ((_%e200359200473%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd200357200467%_))))
                                         (if (equal? _%e200359200473%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200358200470%_))
                                                 (let ((_%e200360200477%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200358200470%_))))
                                                   (let ((_%hd200361200481%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200360200477%_)))
                                                         (_%tl200362200484%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200360200477%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd200361200481%_))
                                                         (let ((_%e200363200487%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd200361200481%_))))
                   (let ((_%hd200364200491%_
                          (let ()
                            (declare (not safe))
                            (##car _%e200363200487%_)))
                         (_%tl200365200494%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e200363200487%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd200364200491%_))
                         (if (let ((__tmp202083 |gxc[1]#_g202084_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp202083
                                _%hd200364200491%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl200365200494%_))
                                 (let ((_%e200366200497%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl200365200494%_))))
                                   (let ((_%hd200367200501%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200366200497%_)))
                                         (_%tl200368200504%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200366200497%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl200368200504%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl200362200484%_))
                                             (let ((_%e200369200507%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl200362200484%_))))
                                               (let ((_%hd200370200511%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200369200507%_)))
                                                     (_%tl200371200514%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200369200507%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd200370200511%_))
                                                     (let ((_%e200372200517%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd200370200511%_))))
                                                       (if (equal? _%e200372200517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl200371200514%_))
                       (let ((_%e200373200521%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl200371200514%_))))
                         (let ((_%hd200374200525%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e200373200521%_)))
                               (_%tl200375200528%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e200373200521%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd200374200525%_))
                               (let ((_%e200376200531%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd200374200525%_))))
                                 (let ((_%hd200377200535%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e200376200531%_)))
                                       (_%tl200378200538%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e200376200531%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd200377200535%_))
                                       (if (let ((__tmp202085
                                                  |gxc[1]#_g202086_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp202085
                                              _%hd200377200535%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl200378200538%_))
                                               (let ((_%e200379200541%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl200378200538%_))))
                                                 (let ((_%hd200380200545%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200379200541%_)))
                                                       (_%tl200381200548%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200379200541%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl200381200548%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl200375200528%_))
                                                           (let ((_%e200382200551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl200375200528%_))))
                     (let ((_%hd200383200555%_
                            (let ()
                              (declare (not safe))
                              (##car _%e200382200551%_)))
                           (_%tl200384200558%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e200382200551%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd200383200555%_))
                           (let ((_%e200385200561%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd200383200555%_))))
                             (if (equal? _%e200385200561%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl200384200558%_))
                                     (let ((_%e200386200565%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl200384200558%_))))
                                       (let ((_%hd200387200569%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e200386200565%_)))
                                             (_%tl200388200572%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e200386200565%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd200387200569%_))
                                             (let ((_%e200389200575%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd200387200569%_))))
                                               (let ((_%hd200390200579%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200389200575%_)))
                                                     (_%tl200391200582%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200389200575%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd200390200579%_))
                                                     (if (let ((__tmp202087
                                                                |gxc[1]#_g202088_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp202087
                                                            _%hd200390200579%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl200391200582%_))
                     (let ((_%e200392200585%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl200391200582%_))))
                       (let ((_%hd200393200589%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200392200585%_)))
                             (_%tl200394200592%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200392200585%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200394200592%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl200388200572%_))
                                 (let ((_%e200395200595%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl200388200572%_))))
                                   (let ((_%hd200396200599%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200395200595%_)))
                                         (_%tl200397200602%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200395200595%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd200396200599%_))
                                         (let ((_%e200398200605%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd200396200599%_))))
                                           (if (equal? _%e200398200605%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl200397200602%_))
                                                   (let ((_%e200399200609%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl200397200602%_))))
                                                     (let ((_%hd200400200613%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e200399200609%_)))
                                                           (_%tl200401200616%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e200399200609%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd200400200613%_))
                                                           (let ((_%e200402200619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd200400200613%_))))
                     (let ((_%hd200403200623%_
                            (let ()
                              (declare (not safe))
                              (##car _%e200402200619%_)))
                           (_%tl200404200626%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e200402200619%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd200403200623%_))
                           (if (let ((__tmp202089 |gxc[1]#_g202090_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp202089
                                  _%hd200403200623%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl200404200626%_))
                                   (let ((_%e200405200629%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl200404200626%_))))
                                     (let ((_%hd200406200633%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e200405200629%_)))
                                           (_%tl200407200636%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e200405200629%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl200407200636%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl200401200616%_))
                                               (let ((_%e200408200639%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl200401200616%_))))
                                                 (let ((_%hd200409200643%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200408200639%_)))
                                                       (_%tl200410200646%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200408200639%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd200409200643%_))
                                                       (let ((_%e200411200649%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd200409200643%_))))
                 (if (equal? _%e200411200649%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl200410200646%_))
                         (let ((_%e200412200653%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl200410200646%_))))
                           (let ((_%hd200413200657%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e200412200653%_)))
                                 (_%tl200414200660%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e200412200653%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd200413200657%_))
                                 (let ((_%e200415200663%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd200413200657%_))))
                                   (let ((_%hd200416200667%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200415200663%_)))
                                         (_%tl200417200670%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200415200663%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd200416200667%_))
                                         (if (let ((__tmp202091
                                                    |gxc[1]#_g202092_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp202091
                                                _%hd200416200667%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200417200670%_))
                                                 (let ((_%e200418200673%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200417200670%_))))
                                                   (let ((_%hd200419200677%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200418200673%_)))
                                                         (_%tl200420200680%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200418200673%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200420200680%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl200414200660%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl200352200450%_))
                         ((lambda (_%L200683%_
                                   _%L200685%_
                                   _%L200686%_
                                   _%L200687%_
                                   _%L200688%_
                                   _%L200689%_)
                            (let ((_%clause200760%_
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
                                                     (cons _%L200689%_ '()))
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
                                                 (cons _%L200687%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200683%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked200762%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L200685%_))))
                              (_%loop200304%_
                               _%rest200335%_
                               (let ((_%$e200764%_ _%unchecked200762%_))
                                 (if _%$e200764%_
                                     _%$e200764%_
                                     _%unchecked-proc200309%_))
                               (cons _%clause200760%_
                                     _%unchecked-clauses200310%_))))
                          _%hd200419200677%_
                          _%hd200406200633%_
                          _%hd200393200589%_
                          _%hd200380200545%_
                          _%hd200367200501%_
                          _%hd200348200437%_)
                         (_%g200339200426%_ _%g200340200430%_))
                     (_%g200339200426%_ _%g200340200430%_))
                 (_%g200339200426%_ _%g200340200430%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g200339200426%_
                                                  _%g200340200430%_))
                                             (_%g200339200426%_
                                              _%g200340200430%_))
                                         (_%g200339200426%_
                                          _%g200340200430%_))))
                                 (_%g200339200426%_ _%g200340200430%_))))
                         (_%g200339200426%_ _%g200340200430%_))
                     (_%g200339200426%_ _%g200340200430%_)))
               (_%g200339200426%_ _%g200340200430%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200339200426%_
                                                _%g200340200430%_))
                                           (_%g200339200426%_
                                            _%g200340200430%_))))
                                   (_%g200339200426%_ _%g200340200430%_))
                               (_%g200339200426%_ _%g200340200430%_))
                           (_%g200339200426%_ _%g200340200430%_))))
                   (_%g200339200426%_ _%g200340200430%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g200339200426%_
                                                    _%g200340200430%_))
                                               (_%g200339200426%_
                                                _%g200340200430%_)))
                                         (_%g200339200426%_
                                          _%g200340200430%_))))
                                 (_%g200339200426%_ _%g200340200430%_))
                             (_%g200339200426%_ _%g200340200430%_))))
                     (_%g200339200426%_ _%g200340200430%_))
                 (_%g200339200426%_ _%g200340200430%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200339200426%_
                                                      _%g200340200430%_))))
                                             (_%g200339200426%_
                                              _%g200340200430%_))))
                                     (_%g200339200426%_ _%g200340200430%_))
                                 (_%g200339200426%_ _%g200340200430%_)))
                           (_%g200339200426%_ _%g200340200430%_))))
                   (_%g200339200426%_ _%g200340200430%_))
               (_%g200339200426%_ _%g200340200430%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200339200426%_
                                                _%g200340200430%_))
                                           (_%g200339200426%_
                                            _%g200340200430%_))
                                       (_%g200339200426%_ _%g200340200430%_))))
                               (_%g200339200426%_ _%g200340200430%_))))
                       (_%g200339200426%_ _%g200340200430%_))
                   (_%g200339200426%_ _%g200340200430%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200339200426%_
                                                      _%g200340200430%_))))
                                             (_%g200339200426%_
                                              _%g200340200430%_))
                                         (_%g200339200426%_
                                          _%g200340200430%_))))
                                 (_%g200339200426%_ _%g200340200430%_))
                             (_%g200339200426%_ _%g200340200430%_))
                         (_%g200339200426%_ _%g200340200430%_))))
                 (_%g200339200426%_ _%g200340200430%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g200339200426%_
                                                  _%g200340200430%_))
                                             (_%g200339200426%_
                                              _%g200340200430%_)))
                                       (_%g200339200426%_ _%g200340200430%_))))
                               (_%g200339200426%_ _%g200340200430%_))))
                       (_%g200339200426%_ _%g200340200430%_))))
               (_%g200339200426%_ _%g200340200430%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200339200426%_
                                                _%g200340200430%_)))))
                                   (_%g200338200768%_ _%hd200337%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest200311200319%_))
                             (let ((_%hd200316200776%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest200311200319%_)))
                                   (_%tl200317200779%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest200311200319%_))))
                               (let* ((_%hd200782%_ _%hd200316200776%_)
                                      (_%rest200785%_ _%tl200317200779%_))
                                 (_%K200315200772%_
                                  _%rest200785%_
                                  _%hd200782%_)))
                             (_%else200313200331%_))))))
                (begin
                  (let ((_g202082_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g202081_)
                               (##vector-length _g202081_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g202082_ 2)))
                        (error "Context expects 2 values" _g202082_)))
                  (let ((_%unchecked-proc200788%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g202081_ 0)))
                        (_%unchecked-clauses200790%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g202081_ 1))))
                    (if _%unchecked-proc200788%_
                        (let* ((_%g200792200816%_
                                (lambda (_%g200793200812%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g200793200812%_))))
                               (_%g200791200903%_
                                (lambda (_%g200793200820%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g200793200820%_))
                                      (let ((_%e200796200823%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g200793200820%_))))
                                        (let ((_%hd200797200827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200796200823%_)))
                                              (_%tl200798200830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200796200823%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200798200830%_))
                                              (let ((_%e200799200833%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200798200830%_))))
                                                (let ((_%hd200800200837%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200799200833%_)))
                                                      (_%tl200801200840%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200799200833%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd200800200837%_))
                                                      (let ((_g202093_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd200800200837%_ '0))))
                (begin
                  (let ((_g202094_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g202093_)
                               (##vector-length _g202093_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g202094_ 2)))
                        (error "Context expects 2 values" _g202094_)))
                  (let ((_%target200802200843%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g202093_ 0)))
                        (_%tl200804200846%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g202093_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl200804200846%_))
                        (letrec ((_%loop200805200849%_
                                  (lambda (_%hd200803200853%_
                                           _%clause200809200856%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd200803200853%_))
                                        (let ((_%e200806200859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd200803200853%_))))
                                          (let ((_%lp-hd200807200863%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200806200859%_)))
                                                (_%lp-tl200808200866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200806200859%_))))
                                            (_%loop200805200849%_
                                             _%lp-tl200808200866%_
                                             (cons _%lp-hd200807200863%_
                                                   _%clause200809200856%_))))
                                        (let ((_%clause200810200869%_
                                               (reverse _%clause200809200856%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200801200840%_))
                                              ((lambda (_%L200873%_
                                                        _%L200875%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L200875%_
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
                                             (let ((__tmp202095
                                                    (lambda (_%g200894200897%_
                                                             _%g200895200900%_)
                                                      (cons _%g200894200897%_
                                                            _%g200895200900%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp202095
                                                '()
                                                _%L200873%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause200810200869%_
                                               _%hd200797200827%_)
                                              (_%g200792200816%_
                                               _%g200793200820%_)))))))
                          (_%loop200805200849%_ _%target200802200843%_ '()))
                        (_%g200792200816%_ _%g200793200820%_)))))
              (_%g200792200816%_ _%g200793200820%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200792200816%_
                                               _%g200793200820%_))))
                                      (_%g200792200816%_ _%g200793200820%_)))))
                          (_%g200791200903%_
                           (list _%unchecked-proc200788%_
                                 _%unchecked-clauses200790%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g200243200254%_))))
                                        (_%g200241200907%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L200102%_
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
                                          _%L200223%_
                                          _%L200225%_))
                                       (let ((__tmp202096
                                              (lambda (_%g200910200914%_
                                                       _%g200911200917%_
                                                       _%g200912200919%_)
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
                                (cons _%g200911200917%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g200910200914%_ '())))))
              _%g200912200919%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp202096
                                          '()
                                          _%L200223%_
                                          _%L200225%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig200149200217%_
                                    _%arity200150200220%_))))))
                   (_%loop200143200175%_ _%target200140200169%_ '() '()))
                 (_%g200136200162%_ _%g200137200166%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200136200162%_
                                                _%g200137200166%_)))))
                                   (_%g200135200922%_ _%signatures200133%_))
                                 (_%g200019200043%_ _%g200020200047%_)))
                           _%case-signature200037200096%_
                           _%hd200027200064%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200032200076%_
                                                   _%target200029200070%_
                                                   '()))
                                                (_%g200019200043%_
                                                 _%g200020200047%_)))))
                                      (_%g200019200043%_ _%g200020200047%_))))
                              (_%g200019200043%_ _%g200020200047%_))))
                      (_%g200019200043%_ _%g200020200047%_)))))
          (_%g200018200926%_ _%stx200016%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx200934%_)
        (let* ((_%__stx201916201917%_ _%$stx200934%_)
               (_%g200940201000%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201916201917%_)))))
          (let ((_%__kont201919201920%_
                 (lambda (_%L201222%_ _%L201224%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201224%_ '()))
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
                                                       (cons _%L201224%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201222%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201921201922%_
                 (lambda (_%L201147%_ _%L201149%_ _%L201150%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201150%_ '()))
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
                                                       (cons _%L201150%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201149%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201147%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201923201924%_
                 (lambda (_%L201061%_ _%L201063%_ _%L201064%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201064%_ '()))
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
                                                       (cons _%L201064%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201063%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201061%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201916201917%_))
                (let ((_%e200944201178%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201916201917%_))))
                  (let ((_%tl200946201185%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200944201178%_)))
                        (_%hd200945201182%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200944201178%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200946201185%_))
                        (let ((_%e200947201188%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200946201185%_))))
                          (let ((_%tl200949201195%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200947201188%_)))
                                (_%hd200948201192%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200947201188%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd200948201192%_))
                                (let ((_%e200950201198%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200948201192%_))))
                                  (if (equal? _%e200950201198%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200949201195%_))
                                          (let ((_%e200951201202%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl200949201195%_))))
                                            (let ((_%tl200953201209%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200951201202%_)))
                                                  (_%hd200952201206%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200951201202%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200953201209%_))
                                                  (let ((_%e200954201212%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200953201209%_))))
                                                    (let ((_%tl200956201219%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200954201212%_)))
                                                          (_%hd200955201216%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200954201212%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200956201219%_))
                                                          (_%__kont201919201920%_
                                                           _%hd200955201216%_
                                                           _%hd200952201206%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200940201000%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200940201000%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200940201000%_)))
                                      (if (equal? _%e200950201198%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200949201195%_))
                                              (let ((_%e200967201117%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200949201195%_))))
                                                (let ((_%tl200969201124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200967201117%_)))
                                                      (_%hd200968201121%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200967201117%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200969201124%_))
                                                      (let ((_%e200970201127%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl200969201124%_))))
                (let ((_%tl200972201134%_
                       (let () (declare (not safe)) (##cdr _%e200970201127%_)))
                      (_%hd200971201131%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200970201127%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200972201134%_))
                      (let ((_%e200973201137%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl200972201134%_))))
                        (let ((_%tl200975201144%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200973201137%_)))
                              (_%hd200974201141%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200973201137%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200975201144%_))
                              (_%__kont201921201922%_
                               _%hd200974201141%_
                               _%hd200971201131%_
                               _%hd200968201121%_)
                              (let ()
                                (declare (not safe))
                                (_%g200940201000%_)))))
                      (let () (declare (not safe)) (_%g200940201000%_)))))
              (let () (declare (not safe)) (_%g200940201000%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200940201000%_)))
                                          (if (equal? _%e200950201198%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200949201195%_))
                                                  (let ((_%e200986201031%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200949201195%_))))
                                                    (let ((_%tl200988201038%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200986201031%_)))
                                                          (_%hd200987201035%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200986201031%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200988201038%_))
                                                          (let ((_%e200989201041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl200988201038%_))))
                    (let ((_%tl200991201048%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200989201041%_)))
                          (_%hd200990201045%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200989201041%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200991201048%_))
                          (let ((_%e200992201051%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200991201048%_))))
                            (let ((_%tl200994201058%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200992201051%_)))
                                  (_%hd200993201055%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200992201051%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200994201058%_))
                                  (_%__kont201923201924%_
                                   _%hd200993201055%_
                                   _%hd200990201045%_
                                   _%hd200987201035%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g200940201000%_)))))
                          (let () (declare (not safe)) (_%g200940201000%_)))))
                  (let () (declare (not safe)) (_%g200940201000%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200940201000%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200940201000%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200940201000%_)))))
                        (let () (declare (not safe)) (_%g200940201000%_)))))
                (let () (declare (not safe)) (_%g200940201000%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx201246%_)
        (let* ((_%g201250201270%_
                (lambda (_%g201251201266%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201251201266%_))))
               (_%g201249201341%_
                (lambda (_%g201251201274%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201251201274%_))
                      (let ((_%e201253201277%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201251201274%_))))
                        (let ((_%hd201254201281%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201253201277%_)))
                              (_%tl201255201284%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201253201277%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201255201284%_))
                              (let ((_g202097_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201255201284%_
                                        '0))))
                                (begin
                                  (let ((_g202098_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202097_)
                                               (##vector-length _g202097_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202098_ 2)))
                                        (error "Context expects 2 values"
                                               _g202098_)))
                                  (let ((_%target201256201287%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202097_ 0)))
                                        (_%tl201258201290%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202097_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201258201290%_))
                                        (letrec ((_%loop201259201293%_
                                                  (lambda (_%hd201257201297%_
                                                           _%decl201263201300%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201257201297%_))
                                                        (let ((_%e201260201303%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201257201297%_))))
                  (let ((_%lp-hd201261201307%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201260201303%_)))
                        (_%lp-tl201262201310%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201260201303%_))))
                    (_%loop201259201293%_
                     _%lp-tl201262201310%_
                     (cons _%lp-hd201261201307%_ _%decl201263201300%_))))
                (let ((_%decl201264201313%_ (reverse _%decl201263201300%_)))
                  ((lambda (_%L201317%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp202099
                                  (lambda (_%g201332201335%_ _%g201333201338%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g201332201335%_)
                                          _%g201333201338%_))))
                             (declare (not safe))
                             (__foldr1 __tmp202099 '() _%L201317%_))))
                   _%decl201264201313%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201259201293%_
                                           _%target201256201287%_
                                           '()))
                                        (_%g201250201270%_
                                         _%g201251201274%_)))))
                              (_%g201250201270%_ _%g201251201274%_))))
                      (_%g201250201270%_ _%g201251201274%_)))))
          (_%g201249201341%_ _%$stx201246%_))))))
