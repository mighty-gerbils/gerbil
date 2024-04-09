(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g202050_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202057_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202059_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202061_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202063_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202065_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202077_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202079_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202081_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202083_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202085_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx195468%_)
        (let* ((_%g195472195490%_
                (lambda (_%g195473195486%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195473195486%_))))
               (_%g195471195545%_
                (lambda (_%g195473195494%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195473195494%_))
                      (let ((_%e195476195497%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195473195494%_))))
                        (let ((_%hd195477195501%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195476195497%_)))
                              (_%tl195478195504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195476195497%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195478195504%_))
                              (let ((_%e195479195507%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195478195504%_))))
                                (let ((_%hd195480195511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195479195507%_)))
                                      (_%tl195481195514%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195479195507%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195481195514%_))
                                      (let ((_%e195482195517%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195481195514%_))))
                                        (let ((_%hd195483195521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195482195517%_)))
                                              (_%tl195484195524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195482195517%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195484195524%_))
                                              ((lambda (_%L195527%_
                                                        _%L195529%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L195529%_))
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
                               (cons _%L195529%_ '()))
                         (cons _%L195527%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g195472195490%_
                                                      _%g195473195494%_)))
                                               _%hd195483195521%_
                                               _%hd195480195511%_)
                                              (_%g195472195490%_
                                               _%g195473195494%_))))
                                      (_%g195472195490%_ _%g195473195494%_))))
                              (_%g195472195490%_ _%g195473195494%_))))
                      (_%g195472195490%_ _%g195473195494%_)))))
          (_%g195471195545%_ _%$stx195468%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx195549%_)
        (let* ((_%g195553195571%_
                (lambda (_%g195554195567%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195554195567%_))))
               (_%g195552195626%_
                (lambda (_%g195554195575%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195554195575%_))
                      (let ((_%e195557195578%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195554195575%_))))
                        (let ((_%hd195558195582%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195557195578%_)))
                              (_%tl195559195585%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195557195578%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195559195585%_))
                              (let ((_%e195560195588%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195559195585%_))))
                                (let ((_%hd195561195592%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195560195588%_)))
                                      (_%tl195562195595%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195560195588%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195562195595%_))
                                      (let ((_%e195563195598%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195562195595%_))))
                                        (let ((_%hd195564195602%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195563195598%_)))
                                              (_%tl195565195605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195563195598%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195565195605%_))
                                              ((lambda (_%L195608%_
                                                        _%L195610%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L195610%_))
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
                               (cons _%L195610%_ '()))
                         (cons _%L195608%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g195553195571%_
                                                      _%g195554195575%_)))
                                               _%hd195564195602%_
                                               _%hd195561195592%_)
                                              (_%g195553195571%_
                                               _%g195554195575%_))))
                                      (_%g195553195571%_ _%g195554195575%_))))
                              (_%g195553195571%_ _%g195554195575%_))))
                      (_%g195553195571%_ _%g195554195575%_)))))
          (_%g195552195626%_ _%$stx195549%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx195630%_)
        (let* ((_%g195634195663%_
                (lambda (_%g195635195659%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195635195659%_))))
               (_%g195633195763%_
                (lambda (_%g195635195667%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195635195667%_))
                      (let ((_%e195638195670%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195635195667%_))))
                        (let ((_%hd195639195674%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195638195670%_)))
                              (_%tl195640195677%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195638195670%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195640195677%_))
                              (let ((_g202028_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195640195677%_
                                        '0))))
                                (begin
                                  (let ((_g202029_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202028_)
                                               (##vector-length _g202028_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202029_ 2)))
                                        (error "Context expects 2 values"
                                               _g202029_)))
                                  (let ((_%target195641195680%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202028_ 0)))
                                        (_%tl195643195683%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202028_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195643195683%_))
                                        (letrec ((_%loop195644195686%_
                                                  (lambda (_%hd195642195690%_
                                                           _%type195648195693%_
                                                           _%symbol195649195695%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195642195690%_))
                                                        (let ((_%e195645195698%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195642195690%_))))
                  (let ((_%lp-hd195646195702%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195645195698%_)))
                        (_%lp-tl195647195705%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195645195698%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195646195702%_))
                        (let ((_%e195652195708%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195646195702%_))))
                          (let ((_%hd195653195712%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195652195708%_)))
                                (_%tl195654195715%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195652195708%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195654195715%_))
                                (let ((_%e195655195718%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195654195715%_))))
                                  (let ((_%hd195656195722%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195655195718%_)))
                                        (_%tl195657195725%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195655195718%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195657195725%_))
                                        (_%loop195644195686%_
                                         _%lp-tl195647195705%_
                                         (cons _%hd195656195722%_
                                               _%type195648195693%_)
                                         (cons _%hd195653195712%_
                                               _%symbol195649195695%_))
                                        (_%g195634195663%_
                                         _%g195635195667%_))))
                                (_%g195634195663%_ _%g195635195667%_))))
                        (_%g195634195663%_ _%g195635195667%_))))
                (let ((_%type195650195728%_ (reverse _%type195648195693%_))
                      (_%symbol195651195731%_
                       (reverse _%symbol195649195695%_)))
                  ((lambda (_%L195734%_ _%L195736%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L195734%_
                                _%L195736%_))
                             (let ((__tmp202030
                                    (lambda (_%g195751195755%_
                                             _%g195752195758%_
                                             _%g195753195760%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g195752195758%_
                                                        (cons _%g195751195755%_
                                                              '())))
                                            _%g195753195760%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202030
                                '()
                                _%L195734%_
                                _%L195736%_)))))
                   _%type195650195728%_
                   _%symbol195651195731%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195644195686%_
                                           _%target195641195680%_
                                           '()
                                           '()))
                                        (_%g195634195663%_
                                         _%g195635195667%_)))))
                              (_%g195634195663%_ _%g195635195667%_))))
                      (_%g195634195663%_ _%g195635195667%_)))))
          (_%g195633195763%_ _%$stx195630%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx195768%_)
        (let* ((_%__stx201339201340%_ _%$stx195768%_)
               (_%g195773195815%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201339201340%_)))))
          (let ((_%__kont201342201343%_
                 (lambda (_%L195943%_ _%L195945%_ _%L195946%_ _%L195947%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L195947%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L195946%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L195945%_ '()))
                                           (cons _%L195943%_ '())))))))
                (_%__kont201344201345%_
                 (lambda (_%L195862%_ _%L195864%_ _%L195865%_ _%L195866%_)
                   (cons _%L195866%_
                         (cons _%L195865%_
                               (cons _%L195864%_
                                     (cons _%L195862%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match201378201379%_
                   (lambda (_%e195779195893%_
                            _%hd195780195897%_
                            _%tl195781195900%_
                            _%e195782195903%_
                            _%hd195783195907%_
                            _%tl195784195910%_
                            _%e195785195913%_
                            _%hd195786195917%_
                            _%tl195787195920%_
                            _%e195788195923%_
                            _%hd195789195927%_
                            _%tl195790195930%_
                            _%e195791195933%_
                            _%hd195792195937%_
                            _%tl195793195940%_)
                     (let ((_%L195943%_ _%hd195792195937%_)
                           (_%L195945%_ _%hd195789195927%_)
                           (_%L195946%_ _%hd195786195917%_)
                           (_%L195947%_ _%hd195783195907%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195947%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195946%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195945%_)))
                           (_%__kont201342201343%_
                            _%L195943%_
                            _%L195945%_
                            _%L195946%_
                            _%L195947%_)
                           (let ()
                             (declare (not safe))
                             (_%g195773195815%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201339201340%_))
                  (let ((_%e195779195893%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201339201340%_))))
                    (let ((_%tl195781195900%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195779195893%_)))
                          (_%hd195780195897%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195779195893%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195781195900%_))
                          (let ((_%e195782195903%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl195781195900%_))))
                            (let ((_%tl195784195910%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195782195903%_)))
                                  (_%hd195783195907%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195782195903%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195784195910%_))
                                  (let ((_%e195785195913%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl195784195910%_))))
                                    (let ((_%tl195787195920%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195785195913%_)))
                                          (_%hd195786195917%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195785195913%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl195787195920%_))
                                          (let ((_%e195788195923%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl195787195920%_))))
                                            (let ((_%tl195790195930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e195788195923%_)))
                                                  (_%hd195789195927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e195788195923%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195790195930%_))
                                                  (let ((_%e195791195933%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl195790195930%_))))
                                                    (let ((_%tl195793195940%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195791195933%_)))
                                                          (_%hd195792195937%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195791195933%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195793195940%_))
                                                          (_%__match201378201379%_
                                                           _%e195779195893%_
                                                           _%hd195780195897%_
                                                           _%tl195781195900%_
                                                           _%e195782195903%_
                                                           _%hd195783195907%_
                                                           _%tl195784195910%_
                                                           _%e195785195913%_
                                                           _%hd195786195917%_
                                                           _%tl195787195920%_
                                                           _%e195788195923%_
                                                           _%hd195789195927%_
                                                           _%tl195790195930%_
                                                           _%e195791195933%_
                                                           _%hd195792195937%_
                                                           _%tl195793195940%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g195773195815%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195790195930%_))
                                                      (_%__kont201344201345%_
                                                       _%hd195789195927%_
                                                       _%hd195786195917%_
                                                       _%hd195783195907%_
                                                       _%hd195780195897%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g195773195815%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g195773195815%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g195773195815%_)))))
                          (let () (declare (not safe)) (_%g195773195815%_)))))
                  (let () (declare (not safe)) (_%g195773195815%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx195972%_)
        (let* ((_%g195976196011%_
                (lambda (_%g195977196007%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195977196007%_))))
               (_%g195975196130%_
                (lambda (_%g195977196015%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195977196015%_))
                      (let ((_%e195981196018%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195977196015%_))))
                        (let ((_%hd195982196022%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195981196018%_)))
                              (_%tl195983196025%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195981196018%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195983196025%_))
                              (let ((_g202031_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195983196025%_
                                        '0))))
                                (begin
                                  (let ((_g202032_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202031_)
                                               (##vector-length _g202031_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202032_ 2)))
                                        (error "Context expects 2 values"
                                               _g202032_)))
                                  (let ((_%target195984196028%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202031_ 0)))
                                        (_%tl195986196031%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202031_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195986196031%_))
                                        (letrec ((_%loop195987196034%_
                                                  (lambda (_%hd195985196038%_
                                                           _%symbol195991196041%_
                                                           _%method195992196043%_
                                                           _%type-t195993196045%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195985196038%_))
                                                        (let ((_%e195988196048%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195985196038%_))))
                  (let ((_%lp-hd195989196052%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195988196048%_)))
                        (_%lp-tl195990196055%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195988196048%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195989196052%_))
                        (let ((_%e195997196058%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195989196052%_))))
                          (let ((_%hd195998196062%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195997196058%_)))
                                (_%tl195999196065%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195997196058%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195999196065%_))
                                (let ((_%e196000196068%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195999196065%_))))
                                  (let ((_%hd196001196072%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196000196068%_)))
                                        (_%tl196002196075%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196000196068%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196002196075%_))
                                        (let ((_%e196003196078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196002196075%_))))
                                          (let ((_%hd196004196082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196003196078%_)))
                                                (_%tl196005196085%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196003196078%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196005196085%_))
                                                (_%loop195987196034%_
                                                 _%lp-tl195990196055%_
                                                 (cons _%hd196004196082%_
                                                       _%symbol195991196041%_)
                                                 (cons _%hd196001196072%_
                                                       _%method195992196043%_)
                                                 (cons _%hd195998196062%_
                                                       _%type-t195993196045%_))
                                                (_%g195976196011%_
                                                 _%g195977196015%_))))
                                        (_%g195976196011%_
                                         _%g195977196015%_))))
                                (_%g195976196011%_ _%g195977196015%_))))
                        (_%g195976196011%_ _%g195977196015%_))))
                (let ((_%symbol195994196088%_ (reverse _%symbol195991196041%_))
                      (_%method195995196091%_ (reverse _%method195992196043%_))
                      (_%type-t195996196093%_
                       (reverse _%type-t195993196045%_)))
                  ((lambda (_%L196096%_ _%L196098%_ _%L196099%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196096%_
                                _%L196098%_
                                _%L196099%_))
                             (let ((__tmp202033
                                    (lambda (_%g196115196120%_
                                             _%g196116196123%_
                                             _%g196117196125%_
                                             _%g196118196127%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g196117196125%_
                                                        (cons _%g196116196123%_
                                                              (cons _%g196115196120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g196118196127%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp202033
                                '()
                                _%L196096%_
                                _%L196098%_
                                _%L196099%_)))))
                   _%symbol195994196088%_
                   _%method195995196091%_
                   _%type-t195996196093%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195987196034%_
                                           _%target195984196028%_
                                           '()
                                           '()
                                           '()))
                                        (_%g195976196011%_
                                         _%g195977196015%_)))))
                              (_%g195976196011%_ _%g195977196015%_))))
                      (_%g195976196011%_ _%g195977196015%_)))))
          (_%g195975196130%_ _%$stx195972%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx196135%_)
        (let* ((_%g196139196172%_
                (lambda (_%g196140196168%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196140196168%_))))
               (_%g196138196286%_
                (lambda (_%g196140196176%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196140196176%_))
                      (let ((_%e196144196179%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196140196176%_))))
                        (let ((_%hd196145196183%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196144196179%_)))
                              (_%tl196146196186%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196144196179%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196146196186%_))
                              (let ((_%e196147196189%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196146196186%_))))
                                (let ((_%hd196148196193%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196147196189%_)))
                                      (_%tl196149196196%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196147196189%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196149196196%_))
                                      (let ((_g202034_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196149196196%_
                                                '0))))
                                        (begin
                                          (let ((_g202035_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202034_)
                                                       (##vector-length
                                                        _g202034_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202035_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202035_)))
                                          (let ((_%target196150196199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202034_ 0)))
                                                (_%tl196152196202%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202034_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196152196202%_))
                                                (letrec ((_%loop196153196205%_
                                                          (lambda (_%hd196151196209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol196157196212%_
                           _%method196158196214%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd196151196209%_))
                        (let ((_%e196154196217%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd196151196209%_))))
                          (let ((_%lp-hd196155196221%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196154196217%_)))
                                (_%lp-tl196156196224%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196154196217%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd196155196221%_))
                                (let ((_%e196161196227%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd196155196221%_))))
                                  (let ((_%hd196162196231%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196161196227%_)))
                                        (_%tl196163196234%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196161196227%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196163196234%_))
                                        (let ((_%e196164196237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196163196234%_))))
                                          (let ((_%hd196165196241%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196164196237%_)))
                                                (_%tl196166196244%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196164196237%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196166196244%_))
                                                (_%loop196153196205%_
                                                 _%lp-tl196156196224%_
                                                 (cons _%hd196165196241%_
                                                       _%symbol196157196212%_)
                                                 (cons _%hd196162196231%_
                                                       _%method196158196214%_))
                                                (_%g196139196172%_
                                                 _%g196140196176%_))))
                                        (_%g196139196172%_
                                         _%g196140196176%_))))
                                (_%g196139196172%_ _%g196140196176%_))))
                        (let ((_%symbol196159196247%_
                               (reverse _%symbol196157196212%_))
                              (_%method196160196250%_
                               (reverse _%method196158196214%_)))
                          ((lambda (_%L196253%_ _%L196255%_ _%L196256%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L196253%_
                                        _%L196255%_))
                                     (let ((__tmp202036
                                            (lambda (_%g196274196278%_
                                                     _%g196275196281%_
                                                     _%g196276196283%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L196256%_
                                                                (cons _%g196275196281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g196274196278%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g196276196283%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp202036
                                        '()
                                        _%L196253%_
                                        _%L196255%_)))))
                           _%symbol196159196247%_
                           _%method196160196250%_
                           _%hd196148196193%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop196153196205%_
                                                   _%target196150196199%_
                                                   '()
                                                   '()))
                                                (_%g196139196172%_
                                                 _%g196140196176%_)))))
                                      (_%g196139196172%_ _%g196140196176%_))))
                              (_%g196139196172%_ _%g196140196176%_))))
                      (_%g196139196172%_ _%g196140196176%_)))))
          (_%g196138196286%_ _%$stx196135%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx196291%_)
        (let* ((_%g196295196309%_
                (lambda (_%g196296196305%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196296196305%_))))
               (_%g196294196350%_
                (lambda (_%g196296196313%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196296196313%_))
                      (let ((_%e196298196316%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196296196313%_))))
                        (let ((_%hd196299196320%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196298196316%_)))
                              (_%tl196300196323%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196298196316%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196300196323%_))
                              (let ((_%e196301196326%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196300196323%_))))
                                (let ((_%hd196302196330%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196301196326%_)))
                                      (_%tl196303196333%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196301196326%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196303196333%_))
                                      ((lambda (_%L196336%_)
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
                                                           (cons _%L196336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196302196330%_)
                                      (_%g196295196309%_ _%g196296196313%_))))
                              (_%g196295196309%_ _%g196296196313%_))))
                      (_%g196295196309%_ _%g196296196313%_)))))
          (_%g196294196350%_ _%$stx196291%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx196354%_)
        (let* ((_%g196358196412%_
                (lambda (_%g196359196408%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196359196408%_))))
               (_%g196357196593%_
                (lambda (_%g196359196416%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196359196416%_))
                      (let ((_%e196371196419%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196359196416%_))))
                        (let ((_%hd196372196423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196371196419%_)))
                              (_%tl196373196426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196371196419%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196373196426%_))
                              (let ((_%e196374196429%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196373196426%_))))
                                (let ((_%hd196375196433%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196374196429%_)))
                                      (_%tl196376196436%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196374196429%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196376196436%_))
                                      (let ((_%e196377196439%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196376196436%_))))
                                        (let ((_%hd196378196443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196377196439%_)))
                                              (_%tl196379196446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196377196439%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196379196446%_))
                                              (let ((_%e196380196449%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196379196446%_))))
                                                (let ((_%hd196381196453%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196380196449%_)))
                                                      (_%tl196382196456%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196380196449%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196382196456%_))
                                                      (let ((_%e196383196459%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl196382196456%_))))
                (let ((_%hd196384196463%_
                       (let () (declare (not safe)) (##car _%e196383196459%_)))
                      (_%tl196385196466%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e196383196459%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196385196466%_))
                      (let ((_%e196386196469%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196385196466%_))))
                        (let ((_%hd196387196473%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196386196469%_)))
                              (_%tl196388196476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196386196469%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196388196476%_))
                              (let ((_%e196389196479%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196388196476%_))))
                                (let ((_%hd196390196483%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196389196479%_)))
                                      (_%tl196391196486%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196389196479%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196391196486%_))
                                      (let ((_%e196392196489%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196391196486%_))))
                                        (let ((_%hd196393196493%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196392196489%_)))
                                              (_%tl196394196496%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196392196489%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196394196496%_))
                                              (let ((_%e196395196499%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196394196496%_))))
                                                (let ((_%hd196396196503%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196395196499%_)))
                                                      (_%tl196397196506%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196395196499%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196397196506%_))
                                                      (let ((_%e196398196509%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl196397196506%_))))
                (let ((_%hd196399196513%_
                       (let () (declare (not safe)) (##car _%e196398196509%_)))
                      (_%tl196400196516%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e196398196509%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196400196516%_))
                      (let ((_%e196401196519%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196400196516%_))))
                        (let ((_%hd196402196523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196401196519%_)))
                              (_%tl196403196526%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196401196519%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196403196526%_))
                              (let ((_%e196404196529%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196403196526%_))))
                                (let ((_%hd196405196533%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196404196529%_)))
                                      (_%tl196406196536%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196404196529%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196406196536%_))
                                      ((lambda (_%L196539%_
                                                _%L196541%_
                                                _%L196542%_
                                                _%L196543%_
                                                _%L196544%_
                                                _%L196545%_
                                                _%L196546%_
                                                _%L196547%_
                                                _%L196548%_
                                                _%L196549%_
                                                _%L196550%_)
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
                                                           (cons _%L196550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L196549%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L196548%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196547%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196546%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L196545%_ '()))
                                           (cons _%L196544%_
                                                 (cons _%L196543%_
                                                       (cons _%L196542%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196541%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L196539%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd196405196533%_
                                       _%hd196402196523%_
                                       _%hd196399196513%_
                                       _%hd196396196503%_
                                       _%hd196393196493%_
                                       _%hd196390196483%_
                                       _%hd196387196473%_
                                       _%hd196384196463%_
                                       _%hd196381196453%_
                                       _%hd196378196443%_
                                       _%hd196375196433%_)
                                      (_%g196358196412%_ _%g196359196416%_))))
                              (_%g196358196412%_ _%g196359196416%_))))
                      (_%g196358196412%_ _%g196359196416%_))))
              (_%g196358196412%_ _%g196359196416%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196358196412%_
                                               _%g196359196416%_))))
                                      (_%g196358196412%_ _%g196359196416%_))))
                              (_%g196358196412%_ _%g196359196416%_))))
                      (_%g196358196412%_ _%g196359196416%_))))
              (_%g196358196412%_ _%g196359196416%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196358196412%_
                                               _%g196359196416%_))))
                                      (_%g196358196412%_ _%g196359196416%_))))
                              (_%g196358196412%_ _%g196359196416%_))))
                      (_%g196358196412%_ _%g196359196416%_)))))
          (_%g196357196593%_ _%$stx196354%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx196597%_)
        (let* ((_%g196601196615%_
                (lambda (_%g196602196611%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196602196611%_))))
               (_%g196600196656%_
                (lambda (_%g196602196619%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196602196619%_))
                      (let ((_%e196604196622%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196602196619%_))))
                        (let ((_%hd196605196626%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196604196622%_)))
                              (_%tl196606196629%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196604196622%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196606196629%_))
                              (let ((_%e196607196632%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196606196629%_))))
                                (let ((_%hd196608196636%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196607196632%_)))
                                      (_%tl196609196639%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196607196632%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196609196639%_))
                                      ((lambda (_%L196642%_)
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
                                                           (cons _%L196642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196608196636%_)
                                      (_%g196601196615%_ _%g196602196619%_))))
                              (_%g196601196615%_ _%g196602196619%_))))
                      (_%g196601196615%_ _%g196602196619%_)))))
          (_%g196600196656%_ _%$stx196597%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx196660%_)
        (let* ((_%g196664196678%_
                (lambda (_%g196665196674%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196665196674%_))))
               (_%g196663196719%_
                (lambda (_%g196665196682%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196665196682%_))
                      (let ((_%e196667196685%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196665196682%_))))
                        (let ((_%hd196668196689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196667196685%_)))
                              (_%tl196669196692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196667196685%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196669196692%_))
                              (let ((_%e196670196695%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196669196692%_))))
                                (let ((_%hd196671196699%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196670196695%_)))
                                      (_%tl196672196702%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196670196695%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196672196702%_))
                                      ((lambda (_%L196705%_)
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
                                                           (cons _%L196705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196671196699%_)
                                      (_%g196664196678%_ _%g196665196682%_))))
                              (_%g196664196678%_ _%g196665196682%_))))
                      (_%g196664196678%_ _%g196665196682%_)))))
          (_%g196663196719%_ _%$stx196660%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx196723%_)
        (let* ((_%g196727196749%_
                (lambda (_%g196728196745%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196728196745%_))))
               (_%g196726196818%_
                (lambda (_%g196728196753%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196728196753%_))
                      (let ((_%e196732196756%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196728196753%_))))
                        (let ((_%hd196733196760%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196732196756%_)))
                              (_%tl196734196763%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196732196756%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196734196763%_))
                              (let ((_%e196735196766%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196734196763%_))))
                                (let ((_%hd196736196770%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196735196766%_)))
                                      (_%tl196737196773%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196735196766%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196737196773%_))
                                      (let ((_%e196738196776%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196737196773%_))))
                                        (let ((_%hd196739196780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196738196776%_)))
                                              (_%tl196740196783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196738196776%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196740196783%_))
                                              (let ((_%e196741196786%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196740196783%_))))
                                                (let ((_%hd196742196790%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196741196786%_)))
                                                      (_%tl196743196793%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196741196786%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196743196793%_))
                                                      ((lambda (_%L196796%_
                                                                _%L196798%_
                                                                _%L196799%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196799%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196798%_ '()))
                                   (cons _%L196796%_ '())))))
               _%hd196742196790%_
               _%hd196739196780%_
               _%hd196736196770%_)
              (_%g196727196749%_ _%g196728196753%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196727196749%_
                                               _%g196728196753%_))))
                                      (_%g196727196749%_ _%g196728196753%_))))
                              (_%g196727196749%_ _%g196728196753%_))))
                      (_%g196727196749%_ _%g196728196753%_)))))
          (_%g196726196818%_ _%$stx196723%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx196822%_)
        (let* ((_%g196826196848%_
                (lambda (_%g196827196844%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196827196844%_))))
               (_%g196825196917%_
                (lambda (_%g196827196852%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196827196852%_))
                      (let ((_%e196831196855%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196827196852%_))))
                        (let ((_%hd196832196859%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196831196855%_)))
                              (_%tl196833196862%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196831196855%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196833196862%_))
                              (let ((_%e196834196865%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196833196862%_))))
                                (let ((_%hd196835196869%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196834196865%_)))
                                      (_%tl196836196872%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196834196865%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196836196872%_))
                                      (let ((_%e196837196875%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196836196872%_))))
                                        (let ((_%hd196838196879%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196837196875%_)))
                                              (_%tl196839196882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196837196875%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196839196882%_))
                                              (let ((_%e196840196885%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196839196882%_))))
                                                (let ((_%hd196841196889%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196840196885%_)))
                                                      (_%tl196842196892%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196840196885%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196842196892%_))
                                                      ((lambda (_%L196895%_
                                                                _%L196897%_
                                                                _%L196898%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196898%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196897%_ '()))
                                   (cons _%L196895%_ '())))))
               _%hd196841196889%_
               _%hd196838196879%_
               _%hd196835196869%_)
              (_%g196826196848%_ _%g196827196852%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196826196848%_
                                               _%g196827196852%_))))
                                      (_%g196826196848%_ _%g196827196852%_))))
                              (_%g196826196848%_ _%g196827196852%_))))
                      (_%g196826196848%_ _%g196827196852%_)))))
          (_%g196825196917%_ _%$stx196822%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx196921%_)
        (let* ((_%g196925196939%_
                (lambda (_%g196926196935%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196926196935%_))))
               (_%g196924196980%_
                (lambda (_%g196926196943%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196926196943%_))
                      (let ((_%e196928196946%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196926196943%_))))
                        (let ((_%hd196929196950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196928196946%_)))
                              (_%tl196930196953%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196928196946%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196930196953%_))
                              (let ((_%e196931196956%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196930196953%_))))
                                (let ((_%hd196932196960%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196931196956%_)))
                                      (_%tl196933196963%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196931196956%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196933196963%_))
                                      ((lambda (_%L196966%_)
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
                                                           (cons _%L196966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196932196960%_)
                                      (_%g196925196939%_ _%g196926196943%_))))
                              (_%g196925196939%_ _%g196926196943%_))))
                      (_%g196925196939%_ _%g196926196943%_)))))
          (_%g196924196980%_ _%$stx196921%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx196984%_)
        (let* ((_%g196988197006%_
                (lambda (_%g196989197002%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196989197002%_))))
               (_%g196987197061%_
                (lambda (_%g196989197010%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196989197010%_))
                      (let ((_%e196992197013%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196989197010%_))))
                        (let ((_%hd196993197017%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196992197013%_)))
                              (_%tl196994197020%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196992197013%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196994197020%_))
                              (let ((_%e196995197023%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196994197020%_))))
                                (let ((_%hd196996197027%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196995197023%_)))
                                      (_%tl196997197030%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196995197023%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196997197030%_))
                                      (let ((_%e196998197033%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196997197030%_))))
                                        (let ((_%hd196999197037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196998197033%_)))
                                              (_%tl197000197040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196998197033%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197000197040%_))
                                              ((lambda (_%L197043%_
                                                        _%L197045%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197045%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197043%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196999197037%_
                                               _%hd196996197027%_)
                                              (_%g196988197006%_
                                               _%g196989197010%_))))
                                      (_%g196988197006%_ _%g196989197010%_))))
                              (_%g196988197006%_ _%g196989197010%_))))
                      (_%g196988197006%_ _%g196989197010%_)))))
          (_%g196987197061%_ _%$stx196984%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx197065%_)
        (let* ((_%__stx201407201408%_ _%$stx197065%_)
               (_%g197072197133%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201407201408%_)))))
          (let ((_%__kont201410201411%_
                 (lambda (_%L197371%_ _%L197373%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197373%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197371%_ '()))
                                     '())))))
                (_%__kont201412201413%_
                 (lambda (_%L197310%_ _%L197312%_ _%L197313%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197313%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197312%_ '()))
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
                                 (cons _%L197310%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont201414201415%_
                 (lambda (_%L197234%_ _%L197236%_)
                   (cons _%L197236%_ (cons _%L197234%_ (cons '#f '())))))
                (_%__kont201416201417%_
                 (lambda (_%L197184%_ _%L197186%_ _%L197187%_)
                   (cons _%L197187%_
                         (cons _%L197186%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L197184%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201407201408%_))
                (let ((_%e197076197341%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201407201408%_))))
                  (let ((_%tl197078197348%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197076197341%_)))
                        (_%hd197077197345%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197076197341%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197078197348%_))
                        (let ((_%e197079197351%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl197078197348%_))))
                          (let ((_%tl197081197358%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197079197351%_)))
                                (_%hd197080197355%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197079197351%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197081197358%_))
                                (let ((_%e197082197361%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197081197358%_))))
                                  (let ((_%tl197084197368%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197082197361%_)))
                                        (_%hd197083197365%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197082197361%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197084197368%_))
                                        (_%__kont201410201411%_
                                         _%hd197083197365%_
                                         _%hd197080197355%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197084197368%_))
                                            (let ((_%e197097197286%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197084197368%_))))
                                              (let ((_%tl197099197293%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197097197286%_)))
                                                    (_%hd197098197290%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197097197286%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd197098197290%_))
                                                    (let ((_%e197100197296%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd197098197290%_))))
                                                      (if (equal? _%e197100197296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197099197293%_))
                      (let ((_%e197101197300%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197099197293%_))))
                        (let ((_%tl197103197307%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197101197300%_)))
                              (_%hd197102197304%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197101197300%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197103197307%_))
                              (_%__kont201412201413%_
                               _%hd197102197304%_
                               _%hd197083197365%_
                               _%hd197080197355%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd197083197365%_))
                                  (let ((_%e197124197170%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197083197365%_))))
                                    (declare (not safe))
                                    (_%g197072197133%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197072197133%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd197083197365%_))
                          (let ((_%e197124197170%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197083197365%_))))
                            (if (equal? _%e197124197170%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197099197293%_))
                                    (_%__kont201416201417%_
                                     _%hd197098197290%_
                                     _%hd197080197355%_
                                     _%hd197077197345%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197072197133%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g197072197133%_))))
                          (let () (declare (not safe)) (_%g197072197133%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd197083197365%_))
                      (let ((_%e197124197170%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197083197365%_))))
                        (if (equal? _%e197124197170%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197099197293%_))
                                (_%__kont201416201417%_
                                 _%hd197098197290%_
                                 _%hd197080197355%_
                                 _%hd197077197345%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197072197133%_)))
                            (let () (declare (not safe)) (_%g197072197133%_))))
                      (let () (declare (not safe)) (_%g197072197133%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd197083197365%_))
                                                        (let ((_%e197124197170%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd197083197365%_))))
                  (if (equal? _%e197124197170%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197099197293%_))
                          (_%__kont201416201417%_
                           _%hd197098197290%_
                           _%hd197080197355%_
                           _%hd197077197345%_)
                          (let () (declare (not safe)) (_%g197072197133%_)))
                      (let () (declare (not safe)) (_%g197072197133%_))))
                (let () (declare (not safe)) (_%g197072197133%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd197083197365%_))
                                                (let ((_%e197124197170%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd197083197365%_))))
                                                  (declare (not safe))
                                                  (_%g197072197133%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197072197133%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197081197358%_))
                                    (_%__kont201414201415%_
                                     _%hd197080197355%_
                                     _%hd197077197345%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197072197133%_))))))
                        (let () (declare (not safe)) (_%g197072197133%_)))))
                (let () (declare (not safe)) (_%g197072197133%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx197392%_)
        (let* ((_%g197396197425%_
                (lambda (_%g197397197421%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197397197421%_))))
               (_%g197395197534%_
                (lambda (_%g197397197429%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197397197429%_))
                      (let ((_%e197399197432%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197397197429%_))))
                        (let ((_%hd197400197436%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197399197432%_)))
                              (_%tl197401197439%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197399197432%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197401197439%_))
                              (let ((_g202037_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197401197439%_
                                        '0))))
                                (begin
                                  (let ((_g202038_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202037_)
                                               (##vector-length _g202037_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202038_ 2)))
                                        (error "Context expects 2 values"
                                               _g202038_)))
                                  (let ((_%target197402197442%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202037_ 0)))
                                        (_%tl197404197445%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202037_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197404197445%_))
                                        (letrec ((_%loop197405197448%_
                                                  (lambda (_%hd197403197452%_
                                                           _%clause197409197455%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197403197452%_))
                                                        (let ((_%e197406197458%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197403197452%_))))
                  (let ((_%lp-hd197407197462%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197406197458%_)))
                        (_%lp-tl197408197465%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197406197458%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd197407197462%_))
                        (let ((_g202039_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd197407197462%_
                                  '0))))
                          (begin
                            (let ((_g202040_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g202039_)
                                         (##vector-length _g202039_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g202040_ 2)))
                                  (error "Context expects 2 values"
                                         _g202040_)))
                            (let ((_%target197411197468%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202039_ 0)))
                                  (_%tl197413197471%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202039_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197413197471%_))
                                  (letrec ((_%loop197414197474%_
                                            (lambda (_%hd197412197478%_
                                                     _%clause197418197481%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd197412197478%_))
                                                  (let ((_%e197415197484%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd197412197478%_))))
                                                    (let ((_%lp-hd197416197488%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197415197484%_)))
                                                          (_%lp-tl197417197491%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197415197484%_))))
                                                      (_%loop197414197474%_
                                                       _%lp-tl197417197491%_
                                                       (cons _%lp-hd197416197488%_
                                                             _%clause197418197481%_))))
                                                  (let ((_%clause197419197494%_
                                                         (reverse _%clause197418197481%_)))
                                                    (_%loop197405197448%_
                                                     _%lp-tl197408197465%_
                                                     (cons _%clause197419197494%_
                                                           _%clause197409197455%_)))))))
                                    (_%loop197414197474%_
                                     _%target197411197468%_
                                     '()))
                                  (_%g197396197425%_ _%g197397197429%_)))))
                        (_%g197396197425%_ _%g197397197429%_))))
                (let ((_%clause197410197498%_
                       (reverse _%clause197409197455%_)))
                  ((lambda (_%L197502%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp202041
                                              (lambda (_%g197517197522%_
                                                       _%g197518197525%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp202042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g197519197528%_ _%g197520197531%_)
                             (cons _%g197519197528%_ _%g197520197531%_))))
                      (declare (not safe))
                      (__foldr1 __tmp202042 '() _%g197517197522%_)))
              _%g197518197525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp202041
                                          '()
                                          _%L197502%_)))
                                 '())))
                   _%clause197410197498%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197405197448%_
                                           _%target197402197442%_
                                           '()))
                                        (_%g197396197425%_
                                         _%g197397197429%_)))))
                              (_%g197396197425%_ _%g197397197429%_))))
                      (_%g197396197425%_ _%g197397197429%_)))))
          (_%g197395197534%_ _%$stx197392%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx197540%_)
        (let* ((_%g197544197562%_
                (lambda (_%g197545197558%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197545197558%_))))
               (_%g197543197617%_
                (lambda (_%g197545197566%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197545197566%_))
                      (let ((_%e197548197569%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197545197566%_))))
                        (let ((_%hd197549197573%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197548197569%_)))
                              (_%tl197550197576%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197548197569%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197550197576%_))
                              (let ((_%e197551197579%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197550197576%_))))
                                (let ((_%hd197552197583%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197551197579%_)))
                                      (_%tl197553197586%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197551197579%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197553197586%_))
                                      (let ((_%e197554197589%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197553197586%_))))
                                        (let ((_%hd197555197593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197554197589%_)))
                                              (_%tl197556197596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197554197589%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197556197596%_))
                                              ((lambda (_%L197599%_
                                                        _%L197601%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197601%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197599%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197555197593%_
                                               _%hd197552197583%_)
                                              (_%g197544197562%_
                                               _%g197545197566%_))))
                                      (_%g197544197562%_ _%g197545197566%_))))
                              (_%g197544197562%_ _%g197545197566%_))))
                      (_%g197544197562%_ _%g197545197566%_)))))
          (_%g197543197617%_ _%$stx197540%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx197621%_)
        (let* ((_%g197625197643%_
                (lambda (_%g197626197639%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197626197639%_))))
               (_%g197624197698%_
                (lambda (_%g197626197647%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197626197647%_))
                      (let ((_%e197629197650%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197626197647%_))))
                        (let ((_%hd197630197654%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197629197650%_)))
                              (_%tl197631197657%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197629197650%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197631197657%_))
                              (let ((_%e197632197660%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197631197657%_))))
                                (let ((_%hd197633197664%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197632197660%_)))
                                      (_%tl197634197667%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197632197660%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197634197667%_))
                                      (let ((_%e197635197670%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197634197667%_))))
                                        (let ((_%hd197636197674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197635197670%_)))
                                              (_%tl197637197677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197635197670%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197637197677%_))
                                              ((lambda (_%L197680%_
                                                        _%L197682%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197682%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197680%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197636197674%_
                                               _%hd197633197664%_)
                                              (_%g197625197643%_
                                               _%g197626197647%_))))
                                      (_%g197625197643%_ _%g197626197647%_))))
                              (_%g197625197643%_ _%g197626197647%_))))
                      (_%g197625197643%_ _%g197626197647%_)))))
          (_%g197624197698%_ _%$stx197621%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx197702%_)
        (let* ((_%g197706197735%_
                (lambda (_%g197707197731%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197707197731%_))))
               (_%g197705197835%_
                (lambda (_%g197707197739%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197707197739%_))
                      (let ((_%e197710197742%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197707197739%_))))
                        (let ((_%hd197711197746%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197710197742%_)))
                              (_%tl197712197749%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197710197742%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197712197749%_))
                              (let ((_g202043_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197712197749%_
                                        '0))))
                                (begin
                                  (let ((_g202044_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202043_)
                                               (##vector-length _g202043_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202044_ 2)))
                                        (error "Context expects 2 values"
                                               _g202044_)))
                                  (let ((_%target197713197752%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202043_ 0)))
                                        (_%tl197715197755%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202043_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197715197755%_))
                                        (letrec ((_%loop197716197758%_
                                                  (lambda (_%hd197714197762%_
                                                           _%rule197720197765%_
                                                           _%proc197721197767%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197714197762%_))
                                                        (let ((_%e197717197770%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197714197762%_))))
                  (let ((_%lp-hd197718197774%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197717197770%_)))
                        (_%lp-tl197719197777%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197717197770%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd197718197774%_))
                        (let ((_%e197724197780%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd197718197774%_))))
                          (let ((_%hd197725197784%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197724197780%_)))
                                (_%tl197726197787%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197724197780%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197726197787%_))
                                (let ((_%e197727197790%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197726197787%_))))
                                  (let ((_%hd197728197794%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197727197790%_)))
                                        (_%tl197729197797%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197727197790%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197729197797%_))
                                        (_%loop197716197758%_
                                         _%lp-tl197719197777%_
                                         (cons _%hd197728197794%_
                                               _%rule197720197765%_)
                                         (cons _%hd197725197784%_
                                               _%proc197721197767%_))
                                        (_%g197706197735%_
                                         _%g197707197739%_))))
                                (_%g197706197735%_ _%g197707197739%_))))
                        (_%g197706197735%_ _%g197707197739%_))))
                (let ((_%rule197722197800%_ (reverse _%rule197720197765%_))
                      (_%proc197723197803%_ (reverse _%proc197721197767%_)))
                  ((lambda (_%L197806%_ _%L197808%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L197806%_
                                _%L197808%_))
                             (let ((__tmp202045
                                    (lambda (_%g197823197827%_
                                             _%g197824197830%_
                                             _%g197825197832%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g197824197830%_
                                                        (cons _%g197823197827%_
                                                              '())))
                                            _%g197825197832%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202045
                                '()
                                _%L197806%_
                                _%L197808%_)))))
                   _%rule197722197800%_
                   _%proc197723197803%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197716197758%_
                                           _%target197713197752%_
                                           '()
                                           '()))
                                        (_%g197706197735%_
                                         _%g197707197739%_)))))
                              (_%g197706197735%_ _%g197707197739%_))))
                      (_%g197706197735%_ _%g197707197739%_)))))
          (_%g197705197835%_ _%$stx197702%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx197840%_)
        (let* ((_%g197844197862%_
                (lambda (_%g197845197858%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197845197858%_))))
               (_%g197843197917%_
                (lambda (_%g197845197866%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197845197866%_))
                      (let ((_%e197848197869%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197845197866%_))))
                        (let ((_%hd197849197873%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197848197869%_)))
                              (_%tl197850197876%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197848197869%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197850197876%_))
                              (let ((_%e197851197879%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197850197876%_))))
                                (let ((_%hd197852197883%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197851197879%_)))
                                      (_%tl197853197886%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197851197879%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197853197886%_))
                                      (let ((_%e197854197889%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197853197886%_))))
                                        (let ((_%hd197855197893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197854197889%_)))
                                              (_%tl197856197896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197854197889%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197856197896%_))
                                              ((lambda (_%L197899%_
                                                        _%L197901%_)
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
                                                   (cons _%L197901%_ '()))
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
                 (cons _%L197899%_ '())))
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
                                   (cons _%L197901%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197855197893%_
                                               _%hd197852197883%_)
                                              (_%g197844197862%_
                                               _%g197845197866%_))))
                                      (_%g197844197862%_ _%g197845197866%_))))
                              (_%g197844197862%_ _%g197845197866%_))))
                      (_%g197844197862%_ _%g197845197866%_)))))
          (_%g197843197917%_ _%$stx197840%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx197921%_)
        (let* ((_%__stx201525201526%_ _%$stx197921%_)
               (_%g197926197951%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201525201526%_)))))
          (let ((_%__kont201528201529%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont201530201531%_
                 (lambda (_%L197998%_ _%L198000%_ _%L198001%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L198001%_ (cons _%L198000%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L197998%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201525201526%_))
                (let ((_%e197928198027%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201525201526%_))))
                  (let ((_%tl197930198034%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197928198027%_)))
                        (_%hd197929198031%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197928198027%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl197930198034%_))
                        (_%__kont201528201529%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197930198034%_))
                            (let ((_%e197937197968%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl197930198034%_))))
                              (let ((_%tl197939197975%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197937197968%_)))
                                    (_%hd197938197972%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197937197968%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197938197972%_))
                                    (let ((_%e197940197978%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd197938197972%_))))
                                      (let ((_%tl197942197985%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197940197978%_)))
                                            (_%hd197941197982%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197940197978%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197942197985%_))
                                            (let ((_%e197943197988%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197942197985%_))))
                                              (let ((_%tl197945197995%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197943197988%_)))
                                                    (_%hd197944197992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197943197988%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197945197995%_))
                                                    (_%__kont201530201531%_
                                                     _%tl197939197975%_
                                                     _%hd197944197992%_
                                                     _%hd197941197982%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197926197951%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197926197951%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197926197951%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g197926197951%_))))))
                (let () (declare (not safe)) (_%g197926197951%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx198045%_)
        (let* ((_%__stx201569201570%_ _%$stx198045%_)
               (_%g198050198081%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201569201570%_)))))
          (let ((_%__kont201572201573%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont201574201575%_
                 (lambda (_%L198148%_ _%L198150%_ _%L198151%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L198151%_
                                           (let ((__tmp202046
                                                  (lambda (_%g198171198174%_
                                                           _%g198172198177%_)
                                                    (cons _%g198171198174%_
                                                          _%g198172198177%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp202046
                                              '()
                                              _%L198150%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L198148%_)
                                     '()))))))
            (let ((_%__match201612201613%_
                   (lambda (_%e198058198088%_
                            _%hd198059198092%_
                            _%tl198060198095%_
                            _%e198061198098%_
                            _%hd198062198102%_
                            _%tl198063198105%_
                            _%e198064198108%_
                            _%hd198065198112%_
                            _%tl198066198115%_
                            _%__splice201576201577%_
                            _%target198067198118%_
                            _%tl198069198121%_)
                     (letrec ((_%loop198070198124%_
                               (lambda (_%hd198068198128%_ _%sig198074198131%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd198068198128%_))
                                     (let ((_%e198071198134%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd198068198128%_))))
                                       (let ((_%lp-tl198073198141%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198071198134%_)))
                                             (_%lp-hd198072198138%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198071198134%_))))
                                         (_%loop198070198124%_
                                          _%lp-tl198073198141%_
                                          (cons _%lp-hd198072198138%_
                                                _%sig198074198131%_))))
                                     (let ((_%sig198075198144%_
                                            (reverse _%sig198074198131%_)))
                                       (_%__kont201574201575%_
                                        _%tl198063198105%_
                                        _%sig198075198144%_
                                        _%hd198065198112%_))))))
                       (_%loop198070198124%_ _%target198067198118%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201569201570%_))
                  (let ((_%e198052198187%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201569201570%_))))
                    (let ((_%tl198054198194%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198052198187%_)))
                          (_%hd198053198191%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198052198187%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198054198194%_))
                          (_%__kont201572201573%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198054198194%_))
                              (let ((_%e198061198098%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198054198194%_))))
                                (let ((_%tl198063198105%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198061198098%_)))
                                      (_%hd198062198102%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198061198098%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198062198102%_))
                                      (let ((_%e198064198108%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198062198102%_))))
                                        (let ((_%tl198066198115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198064198108%_)))
                                              (_%hd198065198112%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198064198108%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198066198115%_))
                                              (let ((_%__splice201576201577%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198066198115%_
                                                        '0))))
                                                (let ((_%tl198069198121%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201576201577%_
                                                          '1)))
                                                      (_%target198067198118%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201576201577%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198069198121%_))
                                                      (_%__match201612201613%_
                                                       _%e198052198187%_
                                                       _%hd198053198191%_
                                                       _%tl198054198194%_
                                                       _%e198061198098%_
                                                       _%hd198062198102%_
                                                       _%tl198063198105%_
                                                       _%e198064198108%_
                                                       _%hd198065198112%_
                                                       _%tl198066198115%_
                                                       _%__splice201576201577%_
                                                       _%target198067198118%_
                                                       _%tl198069198121%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198050198081%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198050198081%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198050198081%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198050198081%_))))))
                  (let () (declare (not safe)) (_%g198050198081%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx198206%_)
        (let* ((_%__stx201615201616%_ _%$stx198206%_)
               (_%g198211198258%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201615201616%_)))))
          (let ((_%__kont201618201619%_
                 (lambda (_%L198420%_ _%L198422%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L198422%_
                               (let ((__tmp202047
                                      (lambda (_%g198442198445%_
                                               _%g198443198448%_)
                                        (cons _%g198442198445%_
                                              _%g198443198448%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202047 '() _%L198420%_))))))
                (_%__kont201622201623%_
                 (lambda (_%L198315%_ _%L198317%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L198317%_
                               (let ((__tmp202048
                                      (lambda (_%g198334198337%_
                                               _%g198335198340%_)
                                        (cons _%g198334198337%_
                                              _%g198335198340%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202048 '() _%L198315%_)))))))
            (let* ((_%__match201682201683%_
                    (lambda (_%e198238198265%_
                             _%hd198239198269%_
                             _%tl198240198272%_
                             _%e198241198275%_
                             _%hd198242198279%_
                             _%tl198243198282%_
                             _%__splice201624201625%_
                             _%target198244198285%_
                             _%tl198246198288%_)
                      (letrec ((_%loop198247198291%_
                                (lambda (_%hd198245198295%_
                                         _%sig198251198298%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198245198295%_))
                                      (let ((_%e198248198301%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198245198295%_))))
                                        (let ((_%lp-tl198250198308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198248198301%_)))
                                              (_%lp-hd198249198305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198248198301%_))))
                                          (_%loop198247198291%_
                                           _%lp-tl198250198308%_
                                           (cons _%lp-hd198249198305%_
                                                 _%sig198251198298%_))))
                                      (let ((_%sig198252198311%_
                                             (reverse _%sig198251198298%_)))
                                        (_%__kont201622201623%_
                                         _%sig198252198311%_
                                         _%hd198242198279%_))))))
                        (_%loop198247198291%_ _%target198244198285%_ '()))))
                   (_%__match201674201675%_
                    (lambda (_%e198238198265%_
                             _%hd198239198269%_
                             _%tl198240198272%_
                             _%e198241198275%_
                             _%hd198242198279%_
                             _%tl198243198282%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl198243198282%_))
                          (let ((_%__splice201624201625%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl198243198282%_
                                    '0))))
                            (let ((_%tl198246198288%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice201624201625%_
                                      '1)))
                                  (_%target198244198285%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice201624201625%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198246198288%_))
                                  (_%__match201682201683%_
                                   _%e198238198265%_
                                   _%hd198239198269%_
                                   _%tl198240198272%_
                                   _%e198241198275%_
                                   _%hd198242198279%_
                                   _%tl198243198282%_
                                   _%__splice201624201625%_
                                   _%target198244198285%_
                                   _%tl198246198288%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g198211198258%_)))))
                          (let () (declare (not safe)) (_%g198211198258%_)))))
                   (_%__match201662201663%_
                    (lambda (_%e198215198350%_
                             _%hd198216198354%_
                             _%tl198217198357%_
                             _%e198218198360%_
                             _%hd198219198364%_
                             _%tl198220198367%_
                             _%e198221198370%_
                             _%hd198222198374%_
                             _%tl198223198377%_
                             _%e198224198380%_
                             _%hd198225198384%_
                             _%tl198226198387%_
                             _%__splice201620201621%_
                             _%target198227198390%_
                             _%tl198229198393%_)
                      (letrec ((_%loop198230198396%_
                                (lambda (_%hd198228198400%_
                                         _%sig198234198403%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198228198400%_))
                                      (let ((_%e198231198406%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198228198400%_))))
                                        (let ((_%lp-tl198233198413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198231198406%_)))
                                              (_%lp-hd198232198410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198231198406%_))))
                                          (_%loop198230198396%_
                                           _%lp-tl198233198413%_
                                           (cons _%lp-hd198232198410%_
                                                 _%sig198234198403%_))))
                                      (let ((_%sig198235198416%_
                                             (reverse _%sig198234198403%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl198223198377%_))
                                            (_%__kont201618201619%_
                                             _%sig198235198416%_
                                             _%hd198219198364%_)
                                            (_%__match201674201675%_
                                             _%e198215198350%_
                                             _%hd198216198354%_
                                             _%tl198217198357%_
                                             _%e198218198360%_
                                             _%hd198219198364%_
                                             _%tl198220198367%_)))))))
                        (_%loop198230198396%_ _%target198227198390%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201615201616%_))
                  (let ((_%e198215198350%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201615201616%_))))
                    (let ((_%tl198217198357%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198215198350%_)))
                          (_%hd198216198354%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198215198350%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198217198357%_))
                          (let ((_%e198218198360%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198217198357%_))))
                            (let ((_%tl198220198367%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198218198360%_)))
                                  (_%hd198219198364%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198218198360%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198220198367%_))
                                  (let ((_%e198221198370%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl198220198367%_))))
                                    (let ((_%tl198223198377%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198221198370%_)))
                                          (_%hd198222198374%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198221198370%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd198222198374%_))
                                          (let ((_%e198224198380%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd198222198374%_))))
                                            (let ((_%tl198226198387%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e198224198380%_)))
                                                  (_%hd198225198384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e198224198380%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd198225198384%_))
                                                  (if (let ((__tmp202049
                                                             |gxc[1]#_g202050_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp202049
                                                         _%hd198225198384%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl198226198387%_))
                                                          (let ((_%__splice201620201621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl198226198387%_ '0))))
                    (let ((_%tl198229198393%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201620201621%_ '1)))
                          (_%target198227198390%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201620201621%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198229198393%_))
                          (_%__match201662201663%_
                           _%e198215198350%_
                           _%hd198216198354%_
                           _%tl198217198357%_
                           _%e198218198360%_
                           _%hd198219198364%_
                           _%tl198220198367%_
                           _%e198221198370%_
                           _%hd198222198374%_
                           _%tl198223198377%_
                           _%e198224198380%_
                           _%hd198225198384%_
                           _%tl198226198387%_
                           _%__splice201620201621%_
                           _%target198227198390%_
                           _%tl198229198393%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198220198367%_))
                              (let ((_%__splice201624201625%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198220198367%_
                                        '0))))
                                (let ((_%tl198246198288%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice201624201625%_
                                          '1)))
                                      (_%target198244198285%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice201624201625%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198246198288%_))
                                      (_%__match201682201683%_
                                       _%e198215198350%_
                                       _%hd198216198354%_
                                       _%tl198217198357%_
                                       _%e198218198360%_
                                       _%hd198219198364%_
                                       _%tl198220198367%_
                                       _%__splice201624201625%_
                                       _%target198244198285%_
                                       _%tl198246198288%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g198211198258%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198211198258%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl198220198367%_))
                      (let ((_%__splice201624201625%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl198220198367%_
                                '0))))
                        (let ((_%tl198246198288%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201624201625%_ '1)))
                              (_%target198244198285%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201624201625%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl198246198288%_))
                              (_%__match201682201683%_
                               _%e198215198350%_
                               _%hd198216198354%_
                               _%tl198217198357%_
                               _%e198218198360%_
                               _%hd198219198364%_
                               _%tl198220198367%_
                               _%__splice201624201625%_
                               _%target198244198285%_
                               _%tl198246198288%_)
                              (let ()
                                (declare (not safe))
                                (_%g198211198258%_)))))
                      (let () (declare (not safe)) (_%g198211198258%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl198220198367%_))
                  (let ((_%__splice201624201625%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl198220198367%_ '0))))
                    (let ((_%tl198246198288%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201624201625%_ '1)))
                          (_%target198244198285%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201624201625%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198246198288%_))
                          (_%__match201682201683%_
                           _%e198215198350%_
                           _%hd198216198354%_
                           _%tl198217198357%_
                           _%e198218198360%_
                           _%hd198219198364%_
                           _%tl198220198367%_
                           _%__splice201624201625%_
                           _%target198244198285%_
                           _%tl198246198288%_)
                          (let () (declare (not safe)) (_%g198211198258%_)))))
                  (let () (declare (not safe)) (_%g198211198258%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl198220198367%_))
                                                      (let ((_%__splice201624201625%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl198220198367%_ '0))))
                (let ((_%tl198246198288%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201624201625%_ '1)))
                      (_%target198244198285%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201624201625%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198246198288%_))
                      (_%__match201682201683%_
                       _%e198215198350%_
                       _%hd198216198354%_
                       _%tl198217198357%_
                       _%e198218198360%_
                       _%hd198219198364%_
                       _%tl198220198367%_
                       _%__splice201624201625%_
                       _%target198244198285%_
                       _%tl198246198288%_)
                      (let () (declare (not safe)) (_%g198211198258%_)))))
              (let () (declare (not safe)) (_%g198211198258%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198220198367%_))
                                              (let ((_%__splice201624201625%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198220198367%_
                                                        '0))))
                                                (let ((_%tl198246198288%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201624201625%_
                                                          '1)))
                                                      (_%target198244198285%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201624201625%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198246198288%_))
                                                      (_%__match201682201683%_
                                                       _%e198215198350%_
                                                       _%hd198216198354%_
                                                       _%tl198217198357%_
                                                       _%e198218198360%_
                                                       _%hd198219198364%_
                                                       _%tl198220198367%_
                                                       _%__splice201624201625%_
                                                       _%target198244198285%_
                                                       _%tl198246198288%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198211198258%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198211198258%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl198220198367%_))
                                      (let ((_%__splice201624201625%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl198220198367%_
                                                '0))))
                                        (let ((_%tl198246198288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201624201625%_
                                                  '1)))
                                              (_%target198244198285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201624201625%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198246198288%_))
                                              (_%__match201682201683%_
                                               _%e198215198350%_
                                               _%hd198216198354%_
                                               _%tl198217198357%_
                                               _%e198218198360%_
                                               _%hd198219198364%_
                                               _%tl198220198367%_
                                               _%__splice201624201625%_
                                               _%target198244198285%_
                                               _%tl198246198288%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g198211198258%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198211198258%_))))))
                          (let () (declare (not safe)) (_%g198211198258%_)))))
                  (let () (declare (not safe)) (_%g198211198258%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx199605%_ _%id199607%_)
        (let ((_%proc199611%_
               (let ((__tmp202051
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id199607%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202051))))
          (if (procedure? _%proc199611%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx199605%_
                 _%id199607%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx199596%_ _%id199598%_)
        (let ((_%klass199602%_
               (let ((__tmp202052
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id199598%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202052))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass199602%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx199596%_
                 _%id199598%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx198846%_ _%proc198848%_ _%sig198849%_)
        (letrec ((_%signature-arity198851%_
                  (lambda (_%args199528%_)
                    (let _%loop199531%_ ((_%rest199534%_ _%args199528%_)
                                         (_%count199536%_ '0))
                      (let* ((_%rest199537199548%_ _%rest199534%_)
                             (_%E199541199554%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest199537199548%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K199544199585%_
                               (lambda (_%rest199582%_)
                                 (_%loop199531%_
                                  _%rest199582%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count199536%_ '1)))))
                              (_%K199543199574%_ (lambda () _%count199536%_))
                              (_%K199542199562%_
                               (lambda () (cons _%count199536%_ '()))))
                          (let ((_%try-match199539199578%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest199537199548%_))
                                       (_%K199543199574%_)
                                       (_%K199542199562%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest199537199548%_))
                                (let* ((_%tl199546199589%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest199537199548%_)))
                                       (_%rest199593%_ _%tl199546199589%_))
                                  (_%K199544199585%_ _%rest199593%_))
                                (_%try-match199539199578%_))))))))
                 (_%make-signature198853%_
                  (lambda (_%args199410%_
                           _%return199412%_
                           _%effect199413%_
                           _%unchecked199414%_)
                    (let ((__tmp202053
                           (lambda (_%g199415199417%_)
                             (|gxc[1]#verify-class!|
                              _%ctx198846%_
                              _%g199415199417%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp202053 _%args199410%_))
                    (|gxc[1]#verify-class!| _%ctx198846%_ _%return199412%_)
                    (if _%unchecked199414%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx198846%_
                         _%unchecked199414%_)
                        '#!void)
                    (let ((_%arity199421%_
                           (_%signature-arity198851%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args199410%_)))))
                      (if _%effect199413%_
                          (let ((_%effect199424%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect199413%_))))
                            (if (and (list? _%effect199424%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect199424%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx198846%_
                                   _%proc198848%_
                                   _%effect199424%_))))
                          '#!void)
                      (cons _%arity199421%_
                            (cons (let* ((_%g199427199450%_
                                          (lambda (_%g199428199446%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g199428199446%_))))
                                         (_%g199426199524%_
                                          (lambda (_%g199428199454%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g199428199454%_))
                                                (let ((_%e199433199457%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g199428199454%_))))
                                                  (let ((_%hd199434199461%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199433199457%_)))
                                                        (_%tl199435199464%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199433199457%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199435199464%_))
                                                        (let ((_%e199436199467%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl199435199464%_))))
                  (let ((_%hd199437199471%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199436199467%_)))
                        (_%tl199438199474%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199436199467%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl199438199474%_))
                        (let ((_%e199439199477%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199438199474%_))))
                          (let ((_%hd199440199481%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199439199477%_)))
                                (_%tl199441199484%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199439199477%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199441199484%_))
                                (let ((_%e199442199487%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199441199484%_))))
                                  (let ((_%hd199443199491%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199442199487%_)))
                                        (_%tl199444199494%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199442199487%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199444199494%_))
                                        ((lambda (_%L199497%_
                                                  _%L199499%_
                                                  _%L199500%_
                                                  _%L199501%_)
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
                           (cons _%L199501%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L199500%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L199499%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L199497%_ '()))
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
                                         _%hd199443199491%_
                                         _%hd199440199481%_
                                         _%hd199437199471%_
                                         _%hd199434199461%_)
                                        (_%g199427199450%_
                                         _%g199428199454%_))))
                                (_%g199427199450%_ _%g199428199454%_))))
                        (_%g199427199450%_ _%g199428199454%_))))
                (_%g199427199450%_ _%g199428199454%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199427199450%_
                                                 _%g199428199454%_)))))
                                    (_%g199426199524%_
                                     (list _%args199410%_
                                           _%return199412%_
                                           _%effect199413%_
                                           _%unchecked199414%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx198846%_ _%proc198848%_)
          (let* ((_%__stx201693201694%_ _%sig198849%_)
                 (_%g198860198963%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201693201694%_)))))
            (let ((_%__kont201696201697%_
                   (lambda (_%L199391%_ _%L199393%_)
                     (_%make-signature198853%_
                      _%L199393%_
                      _%L199391%_
                      '#f
                      '#f)))
                  (_%__kont201698201699%_
                   (lambda (_%L199342%_ _%L199344%_ _%L199345%_)
                     (_%make-signature198853%_
                      _%L199345%_
                      _%L199344%_
                      _%L199342%_
                      '#f)))
                  (_%__kont201700201701%_
                   (lambda (_%L199266%_ _%L199268%_ _%L199269%_)
                     (_%make-signature198853%_
                      _%L199269%_
                      _%L199268%_
                      _%L199266%_
                      (let ((__tmp202054
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc198848%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp202054)))))
                  (_%__kont201702201703%_
                   (lambda (_%L199172%_ _%L199174%_ _%L199175%_ _%L199176%_)
                     (_%make-signature198853%_
                      _%L199176%_
                      _%L199175%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L199172%_)))))
                  (_%__kont201704201705%_
                   (lambda (_%L199079%_ _%L199081%_)
                     (_%make-signature198853%_
                      _%L199081%_
                      _%L199079%_
                      '#f
                      (let ((__tmp202055
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc198848%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp202055)))))
                  (_%__kont201706201707%_
                   (lambda (_%L199014%_ _%L199016%_ _%L199017%_)
                     (_%make-signature198853%_
                      _%L199017%_
                      _%L199016%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L199014%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201693201694%_))
                  (let ((_%e198864199371%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201693201694%_))))
                    (let ((_%tl198866199378%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198864199371%_)))
                          (_%hd198865199375%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198864199371%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198866199378%_))
                          (let ((_%e198867199381%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198866199378%_))))
                            (let ((_%tl198869199388%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198867199381%_)))
                                  (_%hd198868199385%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198867199381%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198869199388%_))
                                  (_%__kont201696201697%_
                                   _%hd198868199385%_
                                   _%hd198865199375%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198869199388%_))
                                      (let ((_%e198879199318%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198869199388%_))))
                                        (let ((_%tl198881199325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198879199318%_)))
                                              (_%hd198880199322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198879199318%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd198880199322%_))
                                              (let ((_%e198882199328%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd198880199322%_))))
                                                (if (equal? _%e198882199328%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198881199325%_))
                                                        (let ((_%e198883199332%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl198881199325%_))))
                  (let ((_%tl198885199339%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198883199332%_)))
                        (_%hd198884199336%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198883199332%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198885199339%_))
                        (_%__kont201698201699%_
                         _%hd198884199336%_
                         _%hd198868199385%_
                         _%hd198865199375%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198885199339%_))
                            (let ((_%e198902199252%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198885199339%_))))
                              (let ((_%tl198904199259%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198902199252%_)))
                                    (_%hd198903199256%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198902199252%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd198903199256%_))
                                    (let ((_%e198905199262%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd198903199256%_))))
                                      (if (equal? _%e198905199262%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198904199259%_))
                                              (_%__kont201700201701%_
                                               _%hd198884199336%_
                                               _%hd198868199385%_
                                               _%hd198865199375%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198904199259%_))
                                                  (let ((_%e198927199162%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198904199259%_))))
                                                    (let ((_%tl198929199169%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198927199162%_)))
                                                          (_%hd198928199166%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198927199162%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198929199169%_))
                                                          (_%__kont201702201703%_
                                                           _%hd198928199166%_
                                                           _%hd198884199336%_
                                                           _%hd198868199385%_
                                                           _%hd198865199375%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g198860198963%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198860198963%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198860198963%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198860198963%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198860198963%_))))))
                (let () (declare (not safe)) (_%g198860198963%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e198882199328%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl198881199325%_))
                                                            (_%__kont201704201705%_
                                                             _%hd198868199385%_
                                                             _%hd198865199375%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl198881199325%_))
                        (let ((_%e198955199004%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198881199325%_))))
                          (let ((_%tl198957199011%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198955199004%_)))
                                (_%hd198956199008%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198955199004%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198957199011%_))
                                (_%__kont201706201707%_
                                 _%hd198956199008%_
                                 _%hd198868199385%_
                                 _%hd198865199375%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g198860198963%_)))))
                        (let () (declare (not safe)) (_%g198860198963%_))))
                (let () (declare (not safe)) (_%g198860198963%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g198860198963%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198860198963%_))))))
                          (let () (declare (not safe)) (_%g198860198963%_)))))
                  (let () (declare (not safe)) (_%g198860198963%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig198457%_)
        (let* ((_%g198460198540%_
                (lambda (_%g198461198536%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198461198536%_))))
               (_%g198459198842%_
                (lambda (_%g198461198544%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198461198544%_))
                      (let ((_%e198467198547%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198461198544%_))))
                        (let ((_%hd198468198551%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198467198547%_)))
                              (_%tl198469198554%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198467198547%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198469198554%_))
                              (let ((_%e198470198557%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198469198554%_))))
                                (let ((_%hd198471198561%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198470198557%_)))
                                      (_%tl198472198564%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198470198557%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd198471198561%_))
                                      (let ((_%e198473198567%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd198471198561%_))))
                                        (if (equal? _%e198473198567%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198472198564%_))
                                                (let ((_%e198474198571%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl198472198564%_))))
                                                  (let ((_%hd198475198575%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198474198571%_)))
                                                        (_%tl198476198578%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198474198571%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198475198575%_))
                                                        (let ((_%e198477198581%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198475198575%_))))
                  (let ((_%hd198478198585%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198477198581%_)))
                        (_%tl198479198588%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198477198581%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd198478198585%_))
                        (if (let ((__tmp202056 |gxc[1]#_g202057_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp202056
                               _%hd198478198585%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198479198588%_))
                                (let ((_%e198480198591%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198479198588%_))))
                                  (let ((_%hd198481198595%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198480198591%_)))
                                        (_%tl198482198598%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198480198591%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198482198598%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198476198578%_))
                                            (let ((_%e198483198601%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198476198578%_))))
                                              (let ((_%hd198484198605%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198483198601%_)))
                                                    (_%tl198485198608%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198483198601%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd198484198605%_))
                                                    (let ((_%e198486198611%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd198484198605%_))))
                                                      (if (equal? _%e198486198611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl198485198608%_))
                      (let ((_%e198487198615%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl198485198608%_))))
                        (let ((_%hd198488198619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198487198615%_)))
                              (_%tl198489198622%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198487198615%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd198488198619%_))
                              (let ((_%e198490198625%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd198488198619%_))))
                                (let ((_%hd198491198629%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198490198625%_)))
                                      (_%tl198492198632%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198490198625%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd198491198629%_))
                                      (if (let ((__tmp202058
                                                 |gxc[1]#_g202059_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp202058
                                             _%hd198491198629%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198492198632%_))
                                              (let ((_%e198493198635%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198492198632%_))))
                                                (let ((_%hd198494198639%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198493198635%_)))
                                                      (_%tl198495198642%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198493198635%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198495198642%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl198489198622%_))
                                                          (let ((_%e198496198645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl198489198622%_))))
                    (let ((_%hd198497198649%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198496198645%_)))
                          (_%tl198498198652%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198496198645%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd198497198649%_))
                          (let ((_%e198499198655%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd198497198649%_))))
                            (if (equal? _%e198499198655%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl198498198652%_))
                                    (let ((_%e198500198659%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl198498198652%_))))
                                      (let ((_%hd198501198663%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198500198659%_)))
                                            (_%tl198502198666%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198500198659%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd198501198663%_))
                                            (let ((_%e198503198669%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd198501198663%_))))
                                              (let ((_%hd198504198673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198503198669%_)))
                                                    (_%tl198505198676%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198503198669%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd198504198673%_))
                                                    (if (let ((__tmp202060
                                                               |gxc[1]#_g202061_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp202060
                                                           _%hd198504198673%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl198505198676%_))
                                                            (let ((_%e198506198679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl198505198676%_))))
                      (let ((_%hd198507198683%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198506198679%_)))
                            (_%tl198508198686%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198506198679%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198508198686%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198502198666%_))
                                (let ((_%e198509198689%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198502198666%_))))
                                  (let ((_%hd198510198693%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198509198689%_)))
                                        (_%tl198511198696%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198509198689%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd198510198693%_))
                                        (let ((_%e198512198699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd198510198693%_))))
                                          (if (equal? _%e198512198699%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198511198696%_))
                                                  (let ((_%e198513198703%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198511198696%_))))
                                                    (let ((_%hd198514198707%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198513198703%_)))
                                                          (_%tl198515198710%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198513198703%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd198514198707%_))
                                                          (let ((_%e198516198713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd198514198707%_))))
                    (let ((_%hd198517198717%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198516198713%_)))
                          (_%tl198518198720%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198516198713%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd198517198717%_))
                          (if (let ((__tmp202062 |gxc[1]#_g202063_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp202062
                                 _%hd198517198717%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198518198720%_))
                                  (let ((_%e198519198723%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl198518198720%_))))
                                    (let ((_%hd198520198727%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198519198723%_)))
                                          (_%tl198521198730%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198519198723%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198521198730%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198515198710%_))
                                              (let ((_%e198522198733%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198515198710%_))))
                                                (let ((_%hd198523198737%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198522198733%_)))
                                                      (_%tl198524198740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198522198733%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd198523198737%_))
                                                      (let ((_%e198525198743%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd198523198737%_))))
                (if (equal? _%e198525198743%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198524198740%_))
                        (let ((_%e198526198747%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198524198740%_))))
                          (let ((_%hd198527198751%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198526198747%_)))
                                (_%tl198528198754%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198526198747%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd198527198751%_))
                                (let ((_%e198529198757%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd198527198751%_))))
                                  (let ((_%hd198530198761%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198529198757%_)))
                                        (_%tl198531198764%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198529198757%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd198530198761%_))
                                        (if (let ((__tmp202064
                                                   |gxc[1]#_g202065_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp202064
                                               _%hd198530198761%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198531198764%_))
                                                (let ((_%e198532198767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl198531198764%_))))
                                                  (let ((_%hd198533198771%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198532198767%_)))
                                                        (_%tl198534198774%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198532198767%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198534198774%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl198528198754%_))
                                                            ((lambda (_%L198777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L198779%_
                              _%L198780%_
                              _%L198781%_
                              _%L198782%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L198779%_))
                           (cons _%L198779%_
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
                       (cons _%L198781%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L198777%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd198533198771%_
                     _%hd198520198727%_
                     _%hd198507198683%_
                     _%hd198494198639%_
                     _%hd198481198595%_)
                    (_%g198460198540%_ _%g198461198544%_))
                (_%g198460198540%_ _%g198461198544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g198460198540%_
                                                 _%g198461198544%_))
                                            (_%g198460198540%_
                                             _%g198461198544%_))
                                        (_%g198460198540%_
                                         _%g198461198544%_))))
                                (_%g198460198540%_ _%g198461198544%_))))
                        (_%g198460198540%_ _%g198461198544%_))
                    (_%g198460198540%_ _%g198461198544%_)))
              (_%g198460198540%_ _%g198461198544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198460198540%_
                                               _%g198461198544%_))
                                          (_%g198460198540%_
                                           _%g198461198544%_))))
                                  (_%g198460198540%_ _%g198461198544%_))
                              (_%g198460198540%_ _%g198461198544%_))
                          (_%g198460198540%_ _%g198461198544%_))))
                  (_%g198460198540%_ _%g198461198544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g198460198540%_
                                                   _%g198461198544%_))
                                              (_%g198460198540%_
                                               _%g198461198544%_)))
                                        (_%g198460198540%_
                                         _%g198461198544%_))))
                                (_%g198460198540%_ _%g198461198544%_))
                            (_%g198460198540%_ _%g198461198544%_))))
                    (_%g198460198540%_ _%g198461198544%_))
                (_%g198460198540%_ _%g198461198544%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g198460198540%_
                                                     _%g198461198544%_))))
                                            (_%g198460198540%_
                                             _%g198461198544%_))))
                                    (_%g198460198540%_ _%g198461198544%_))
                                (_%g198460198540%_ _%g198461198544%_)))
                          (_%g198460198540%_ _%g198461198544%_))))
                  (_%g198460198540%_ _%g198461198544%_))
              (_%g198460198540%_ _%g198461198544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198460198540%_
                                               _%g198461198544%_))
                                          (_%g198460198540%_
                                           _%g198461198544%_))
                                      (_%g198460198540%_ _%g198461198544%_))))
                              (_%g198460198540%_ _%g198461198544%_))))
                      (_%g198460198540%_ _%g198461198544%_))
                  (_%g198460198540%_ _%g198461198544%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g198460198540%_
                                                     _%g198461198544%_))))
                                            (_%g198460198540%_
                                             _%g198461198544%_))
                                        (_%g198460198540%_
                                         _%g198461198544%_))))
                                (_%g198460198540%_ _%g198461198544%_))
                            (_%g198460198540%_ _%g198461198544%_))
                        (_%g198460198540%_ _%g198461198544%_))))
                (_%g198460198540%_ _%g198461198544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g198460198540%_
                                                 _%g198461198544%_))
                                            (_%g198460198540%_
                                             _%g198461198544%_)))
                                      (_%g198460198540%_ _%g198461198544%_))))
                              (_%g198460198540%_ _%g198461198544%_))))
                      (_%g198460198540%_ _%g198461198544%_)))))
          (_%g198459198842%_ _%sig198457%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx199614%_)
        (let* ((_%g199617199635%_
                (lambda (_%g199618199631%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199618199631%_))))
               (_%g199616199690%_
                (lambda (_%g199618199639%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199618199639%_))
                      (let ((_%e199621199642%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199618199639%_))))
                        (let ((_%hd199622199646%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199621199642%_)))
                              (_%tl199623199649%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199621199642%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199623199649%_))
                              (let ((_%e199624199652%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199623199649%_))))
                                (let ((_%hd199625199656%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199624199652%_)))
                                      (_%tl199626199659%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199624199652%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199626199659%_))
                                      (let ((_%e199627199662%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199626199659%_))))
                                        (let ((_%hd199628199666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199627199662%_)))
                                              (_%tl199629199669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199627199662%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199629199669%_))
                                              ((lambda (_%L199672%_
                                                        _%L199674%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L199674%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L199672%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx199614%_
                                                        _%L199674%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx199614%_
                                                        _%L199672%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L199674%_
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
                                                   (cons _%L199672%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199617199635%_
                                                      _%g199618199639%_)))
                                               _%hd199628199666%_
                                               _%hd199625199656%_)
                                              (_%g199617199635%_
                                               _%g199618199639%_))))
                                      (_%g199617199635%_ _%g199618199639%_))))
                              (_%g199617199635%_ _%g199618199639%_))))
                      (_%g199617199635%_ _%g199618199639%_)))))
          (_%g199616199690%_ _%stx199614%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx199694%_)
        (let* ((_%g199697199721%_
                (lambda (_%g199698199717%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199698199717%_))))
               (_%g199696200004%_
                (lambda (_%g199698199725%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199698199725%_))
                      (let ((_%e199701199728%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199698199725%_))))
                        (let ((_%hd199702199732%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199701199728%_)))
                              (_%tl199703199735%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199701199728%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199703199735%_))
                              (let ((_%e199704199738%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199703199735%_))))
                                (let ((_%hd199705199742%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199704199738%_)))
                                      (_%tl199706199745%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199704199738%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199706199745%_))
                                      (let ((_g202066_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199706199745%_
                                                '0))))
                                        (begin
                                          (let ((_g202067_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202066_)
                                                       (##vector-length
                                                        _g202066_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202067_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202067_)))
                                          (let ((_%target199707199748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202066_ 0)))
                                                (_%tl199709199751%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202066_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199709199751%_))
                                                (letrec ((_%loop199710199754%_
                                                          (lambda (_%hd199708199758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature199714199761%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199708199758%_))
                        (let ((_%e199711199764%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd199708199758%_))))
                          (let ((_%lp-hd199712199768%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199711199764%_)))
                                (_%lp-tl199713199771%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199711199764%_))))
                            (_%loop199710199754%_
                             _%lp-tl199713199771%_
                             (cons _%lp-hd199712199768%_
                                   _%signature199714199761%_))))
                        (let ((_%signature199715199774%_
                               (reverse _%signature199714199761%_)))
                          ((lambda (_%L199778%_ _%L199780%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L199780%_))
                                 (let* ((_%g199798199813%_
                                         (lambda (_%g199799199809%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g199799199809%_))))
                                        (_%g199797199992%_
                                         (lambda (_%g199799199817%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g199799199817%_))
                                               (let ((_%e199802199820%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g199799199817%_))))
                                                 (let ((_%hd199803199824%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199802199820%_)))
                                                       (_%tl199804199827%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199802199820%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199804199827%_))
                                                       (let ((_%e199805199830%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl199804199827%_))))
                 (let ((_%hd199806199834%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199805199830%_)))
                       (_%tl199807199837%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199805199830%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199807199837%_))
                       ((lambda (_%L199840%_ _%L199842%_)
                          (let* ((_%g199858199866%_
                                  (lambda (_%g199859199862%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g199859199862%_))))
                                 (_%g199857199988%_
                                  (lambda (_%g199859199870%_)
                                    ((lambda (_%L199873%_)
                                       (let* ((_%unchecked199886%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L199840%_))
                                              (_%g199889199897%_
                                               (lambda (_%g199890199893%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g199890199893%_))))
                                              (_%g199888199920%_
                                               (lambda (_%g199890199901%_)
                                                 ((lambda (_%L199904%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L199873%_
                                                                (cons _%L199904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g199890199901%_))))
                                         (_%g199888199920%_
                                          (if _%unchecked199886%_
                                              (let* ((_%g199924199939%_
                                                      (lambda (_%g199925199935%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199925199935%_))))
                                                     (_%g199923199984%_
                                                      (lambda (_%g199925199943%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199925199943%_))
                                                            (let ((_%e199928199946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g199925199943%_))))
                      (let ((_%hd199929199950%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199928199946%_)))
                            (_%tl199930199953%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199928199946%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199930199953%_))
                            (let ((_%e199931199956%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl199930199953%_))))
                              (let ((_%hd199932199960%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199931199956%_)))
                                    (_%tl199933199963%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199931199956%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl199933199963%_))
                                    ((lambda (_%L199966%_ _%L199968%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L199968%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L199842%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L199966%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd199932199960%_
                                     _%hd199929199950%_)
                                    (_%g199924199939%_ _%g199925199943%_))))
                            (_%g199924199939%_ _%g199925199943%_))))
                    (_%g199924199939%_ _%g199925199943%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199923199984%_
                                                 _%unchecked199886%_))
                                              '(begin)))))
                                     _%g199859199870%_))))
                            (_%g199857199988%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L199780%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L199842%_ '()))
                   (cons '#f (cons 'signature: (cons _%L199840%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd199806199834%_
                        _%hd199803199824%_)
                       (_%g199798199813%_ _%g199799199817%_))))
               (_%g199798199813%_ _%g199799199817%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199798199813%_
                                                _%g199799199817%_)))))
                                   (_%g199797199992%_
                                    (|gxc[1]#parse-signature|
                                     _%stx199694%_
                                     _%L199780%_
                                     (let ((__tmp202068
                                            (lambda (_%g199995199998%_
                                                     _%g199996200001%_)
                                              (cons _%g199995199998%_
                                                    _%g199996200001%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp202068
                                        '()
                                        _%L199778%_)))))
                                 (_%g199697199721%_ _%g199698199725%_)))
                           _%signature199715199774%_
                           _%hd199705199742%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199710199754%_
                                                   _%target199707199748%_
                                                   '()))
                                                (_%g199697199721%_
                                                 _%g199698199725%_)))))
                                      (_%g199697199721%_ _%g199698199725%_))))
                              (_%g199697199721%_ _%g199698199725%_))))
                      (_%g199697199721%_ _%g199698199725%_)))))
          (_%g199696200004%_ _%stx199694%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx200009%_)
        (let* ((_%g200012200036%_
                (lambda (_%g200013200032%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200013200032%_))))
               (_%g200011200919%_
                (lambda (_%g200013200040%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200013200040%_))
                      (let ((_%e200016200043%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200013200040%_))))
                        (let ((_%hd200017200047%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200016200043%_)))
                              (_%tl200018200050%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200016200043%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200018200050%_))
                              (let ((_%e200019200053%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200018200050%_))))
                                (let ((_%hd200020200057%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200019200053%_)))
                                      (_%tl200021200060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200019200053%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200021200060%_))
                                      (let ((_g202069_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200021200060%_
                                                '0))))
                                        (begin
                                          (let ((_g202070_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202069_)
                                                       (##vector-length
                                                        _g202069_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202070_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202070_)))
                                          (let ((_%target200022200063%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202069_ 0)))
                                                (_%tl200024200066%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202069_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200024200066%_))
                                                (letrec ((_%loop200025200069%_
                                                          (lambda (_%hd200023200073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature200029200076%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200023200073%_))
                        (let ((_%e200026200079%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200023200073%_))))
                          (let ((_%lp-hd200027200083%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200026200079%_)))
                                (_%lp-tl200028200086%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200026200079%_))))
                            (_%loop200025200069%_
                             _%lp-tl200028200086%_
                             (cons _%lp-hd200027200083%_
                                   _%case-signature200029200076%_))))
                        (let ((_%case-signature200030200089%_
                               (reverse _%case-signature200029200076%_)))
                          ((lambda (_%L200093%_ _%L200095%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200095%_))
                                 (let* ((_%signatures200126%_
                                         (map (lambda (_%g200112200114%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx200009%_
                                                 _%L200095%_
                                                 _%g200112200114%_))
                                              (let ((__tmp202071
                                                     (lambda (_%g200117200120%_
                                                              _%g200118200123%_)
                                                       (cons _%g200117200120%_
                                                             _%g200118200123%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp202071
                                                 '()
                                                 _%L200093%_))))
                                        (_%g200129200155%_
                                         (lambda (_%g200130200151%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200130200151%_))))
                                        (_%g200128200915%_
                                         (lambda (_%g200130200159%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g200130200159%_))
                                               (let ((_g202072_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g200130200159%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g202073_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g202072_)
                        (##vector-length _g202072_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g202073_ 2)))
                 (error "Context expects 2 values" _g202073_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target200133200162%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202072_
                                                             0)))
                                                         (_%tl200135200165%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202072_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200135200165%_))
                                                         (letrec ((_%loop200136200168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd200134200172%_
                                    _%sig200140200175%_
                                    _%arity200141200177%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd200134200172%_))
                                 (let ((_%e200137200180%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd200134200172%_))))
                                   (let ((_%lp-hd200138200184%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200137200180%_)))
                                         (_%lp-tl200139200187%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200137200180%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd200138200184%_))
                                         (let ((_%e200144200190%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd200138200184%_))))
                                           (let ((_%hd200145200194%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200144200190%_)))
                                                 (_%tl200146200197%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200144200190%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200146200197%_))
                                                 (let ((_%e200147200200%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200146200197%_))))
                                                   (let ((_%hd200148200204%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200147200200%_)))
                                                         (_%tl200149200207%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200147200200%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200149200207%_))
                                                         (_%loop200136200168%_
                                                          _%lp-tl200139200187%_
                                                          (cons _%hd200148200204%_
                                                                _%sig200140200175%_)
                                                          (cons _%hd200145200194%_
                                                                _%arity200141200177%_))
                                                         (_%g200129200155%_
                                                          _%g200130200159%_))))
                                                 (_%g200129200155%_
                                                  _%g200130200159%_))))
                                         (_%g200129200155%_
                                          _%g200130200159%_))))
                                 (let ((_%sig200142200210%_
                                        (reverse _%sig200140200175%_))
                                       (_%arity200143200213%_
                                        (reverse _%arity200141200177%_)))
                                   ((lambda (_%L200216%_ _%L200218%_)
                                      (let* ((_%g200235200243%_
                                              (lambda (_%g200236200239%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g200236200239%_))))
                                             (_%g200234200900%_
                                              (lambda (_%g200236200247%_)
                                                ((lambda (_%L200250%_)
                                                   (let* ((_%g200263200271%_
                                                           (lambda (_%g200264200267%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g200264200267%_))))
                  (_%g200262200293%_
                   (lambda (_%g200264200275%_)
                     ((lambda (_%L200278%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L200250%_ (cons _%L200278%_ '()))))
                      _%g200264200275%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200262200293%_
                                                      (let ((_g202074_
                                                             (let _%loop200297%_ ((_%rest200300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures200126%_)
                                          (_%unchecked-proc200302%_ '#f)
                                          (_%unchecked-clauses200303%_ '()))
                       (let* ((_%rest200304200312%_ _%rest200300%_)
                              (_%else200306200324%_
                               (lambda ()
                                 (values _%unchecked-proc200302%_
                                         (reverse!
                                          _%unchecked-clauses200303%_))))
                              (_%K200308200765%_
                               (lambda (_%rest200328%_ _%hd200330%_)
                                 (let* ((_%g200332200419%_
                                         (lambda (_%g200333200415%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200333200415%_))))
                                        (_%g200331200761%_
                                         (lambda (_%g200333200423%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g200333200423%_))
                                               (let ((_%e200340200426%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g200333200423%_))))
                                                 (let ((_%hd200341200430%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200340200426%_)))
                                                       (_%tl200342200433%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200340200426%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200342200433%_))
                                                       (let ((_%e200343200436%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl200342200433%_))))
                 (let ((_%hd200344200440%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200343200436%_)))
                       (_%tl200345200443%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200343200436%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd200344200440%_))
                       (let ((_%e200346200446%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd200344200440%_))))
                         (let ((_%hd200347200450%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e200346200446%_)))
                               (_%tl200348200453%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e200346200446%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl200348200453%_))
                               (let ((_%e200349200456%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl200348200453%_))))
                                 (let ((_%hd200350200460%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e200349200456%_)))
                                       (_%tl200351200463%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e200349200456%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd200350200460%_))
                                       (let ((_%e200352200466%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd200350200460%_))))
                                         (if (equal? _%e200352200466%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200351200463%_))
                                                 (let ((_%e200353200470%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200351200463%_))))
                                                   (let ((_%hd200354200474%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200353200470%_)))
                                                         (_%tl200355200477%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200353200470%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd200354200474%_))
                                                         (let ((_%e200356200480%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd200354200474%_))))
                   (let ((_%hd200357200484%_
                          (let ()
                            (declare (not safe))
                            (##car _%e200356200480%_)))
                         (_%tl200358200487%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e200356200480%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd200357200484%_))
                         (if (let ((__tmp202076 |gxc[1]#_g202077_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp202076
                                _%hd200357200484%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl200358200487%_))
                                 (let ((_%e200359200490%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl200358200487%_))))
                                   (let ((_%hd200360200494%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200359200490%_)))
                                         (_%tl200361200497%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200359200490%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl200361200497%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl200355200477%_))
                                             (let ((_%e200362200500%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl200355200477%_))))
                                               (let ((_%hd200363200504%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200362200500%_)))
                                                     (_%tl200364200507%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200362200500%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd200363200504%_))
                                                     (let ((_%e200365200510%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd200363200504%_))))
                                                       (if (equal? _%e200365200510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl200364200507%_))
                       (let ((_%e200366200514%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl200364200507%_))))
                         (let ((_%hd200367200518%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e200366200514%_)))
                               (_%tl200368200521%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e200366200514%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd200367200518%_))
                               (let ((_%e200369200524%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd200367200518%_))))
                                 (let ((_%hd200370200528%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e200369200524%_)))
                                       (_%tl200371200531%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e200369200524%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd200370200528%_))
                                       (if (let ((__tmp202078
                                                  |gxc[1]#_g202079_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp202078
                                              _%hd200370200528%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl200371200531%_))
                                               (let ((_%e200372200534%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl200371200531%_))))
                                                 (let ((_%hd200373200538%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200372200534%_)))
                                                       (_%tl200374200541%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200372200534%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl200374200541%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl200368200521%_))
                                                           (let ((_%e200375200544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl200368200521%_))))
                     (let ((_%hd200376200548%_
                            (let ()
                              (declare (not safe))
                              (##car _%e200375200544%_)))
                           (_%tl200377200551%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e200375200544%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd200376200548%_))
                           (let ((_%e200378200554%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd200376200548%_))))
                             (if (equal? _%e200378200554%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl200377200551%_))
                                     (let ((_%e200379200558%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl200377200551%_))))
                                       (let ((_%hd200380200562%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e200379200558%_)))
                                             (_%tl200381200565%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e200379200558%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd200380200562%_))
                                             (let ((_%e200382200568%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd200380200562%_))))
                                               (let ((_%hd200383200572%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200382200568%_)))
                                                     (_%tl200384200575%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200382200568%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd200383200572%_))
                                                     (if (let ((__tmp202080
                                                                |gxc[1]#_g202081_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp202080
                                                            _%hd200383200572%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl200384200575%_))
                     (let ((_%e200385200578%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl200384200575%_))))
                       (let ((_%hd200386200582%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200385200578%_)))
                             (_%tl200387200585%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200385200578%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200387200585%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl200381200565%_))
                                 (let ((_%e200388200588%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl200381200565%_))))
                                   (let ((_%hd200389200592%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200388200588%_)))
                                         (_%tl200390200595%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200388200588%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd200389200592%_))
                                         (let ((_%e200391200598%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd200389200592%_))))
                                           (if (equal? _%e200391200598%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl200390200595%_))
                                                   (let ((_%e200392200602%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl200390200595%_))))
                                                     (let ((_%hd200393200606%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e200392200602%_)))
                                                           (_%tl200394200609%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e200392200602%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd200393200606%_))
                                                           (let ((_%e200395200612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd200393200606%_))))
                     (let ((_%hd200396200616%_
                            (let ()
                              (declare (not safe))
                              (##car _%e200395200612%_)))
                           (_%tl200397200619%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e200395200612%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd200396200616%_))
                           (if (let ((__tmp202082 |gxc[1]#_g202083_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp202082
                                  _%hd200396200616%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl200397200619%_))
                                   (let ((_%e200398200622%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl200397200619%_))))
                                     (let ((_%hd200399200626%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e200398200622%_)))
                                           (_%tl200400200629%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e200398200622%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl200400200629%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl200394200609%_))
                                               (let ((_%e200401200632%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl200394200609%_))))
                                                 (let ((_%hd200402200636%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200401200632%_)))
                                                       (_%tl200403200639%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200401200632%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd200402200636%_))
                                                       (let ((_%e200404200642%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd200402200636%_))))
                 (if (equal? _%e200404200642%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl200403200639%_))
                         (let ((_%e200405200646%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl200403200639%_))))
                           (let ((_%hd200406200650%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e200405200646%_)))
                                 (_%tl200407200653%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e200405200646%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd200406200650%_))
                                 (let ((_%e200408200656%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd200406200650%_))))
                                   (let ((_%hd200409200660%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200408200656%_)))
                                         (_%tl200410200663%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200408200656%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd200409200660%_))
                                         (if (let ((__tmp202084
                                                    |gxc[1]#_g202085_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp202084
                                                _%hd200409200660%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200410200663%_))
                                                 (let ((_%e200411200666%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200410200663%_))))
                                                   (let ((_%hd200412200670%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200411200666%_)))
                                                         (_%tl200413200673%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200411200666%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200413200673%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl200407200653%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl200345200443%_))
                         ((lambda (_%L200676%_
                                   _%L200678%_
                                   _%L200679%_
                                   _%L200680%_
                                   _%L200681%_
                                   _%L200682%_)
                            (let ((_%clause200753%_
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
                                                     (cons _%L200682%_ '()))
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
                                                 (cons _%L200680%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200676%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked200755%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L200678%_))))
                              (_%loop200297%_
                               _%rest200328%_
                               (let ((_%$e200757%_ _%unchecked200755%_))
                                 (if _%$e200757%_
                                     _%$e200757%_
                                     _%unchecked-proc200302%_))
                               (cons _%clause200753%_
                                     _%unchecked-clauses200303%_))))
                          _%hd200412200670%_
                          _%hd200399200626%_
                          _%hd200386200582%_
                          _%hd200373200538%_
                          _%hd200360200494%_
                          _%hd200341200430%_)
                         (_%g200332200419%_ _%g200333200423%_))
                     (_%g200332200419%_ _%g200333200423%_))
                 (_%g200332200419%_ _%g200333200423%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g200332200419%_
                                                  _%g200333200423%_))
                                             (_%g200332200419%_
                                              _%g200333200423%_))
                                         (_%g200332200419%_
                                          _%g200333200423%_))))
                                 (_%g200332200419%_ _%g200333200423%_))))
                         (_%g200332200419%_ _%g200333200423%_))
                     (_%g200332200419%_ _%g200333200423%_)))
               (_%g200332200419%_ _%g200333200423%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200332200419%_
                                                _%g200333200423%_))
                                           (_%g200332200419%_
                                            _%g200333200423%_))))
                                   (_%g200332200419%_ _%g200333200423%_))
                               (_%g200332200419%_ _%g200333200423%_))
                           (_%g200332200419%_ _%g200333200423%_))))
                   (_%g200332200419%_ _%g200333200423%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g200332200419%_
                                                    _%g200333200423%_))
                                               (_%g200332200419%_
                                                _%g200333200423%_)))
                                         (_%g200332200419%_
                                          _%g200333200423%_))))
                                 (_%g200332200419%_ _%g200333200423%_))
                             (_%g200332200419%_ _%g200333200423%_))))
                     (_%g200332200419%_ _%g200333200423%_))
                 (_%g200332200419%_ _%g200333200423%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200332200419%_
                                                      _%g200333200423%_))))
                                             (_%g200332200419%_
                                              _%g200333200423%_))))
                                     (_%g200332200419%_ _%g200333200423%_))
                                 (_%g200332200419%_ _%g200333200423%_)))
                           (_%g200332200419%_ _%g200333200423%_))))
                   (_%g200332200419%_ _%g200333200423%_))
               (_%g200332200419%_ _%g200333200423%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200332200419%_
                                                _%g200333200423%_))
                                           (_%g200332200419%_
                                            _%g200333200423%_))
                                       (_%g200332200419%_ _%g200333200423%_))))
                               (_%g200332200419%_ _%g200333200423%_))))
                       (_%g200332200419%_ _%g200333200423%_))
                   (_%g200332200419%_ _%g200333200423%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200332200419%_
                                                      _%g200333200423%_))))
                                             (_%g200332200419%_
                                              _%g200333200423%_))
                                         (_%g200332200419%_
                                          _%g200333200423%_))))
                                 (_%g200332200419%_ _%g200333200423%_))
                             (_%g200332200419%_ _%g200333200423%_))
                         (_%g200332200419%_ _%g200333200423%_))))
                 (_%g200332200419%_ _%g200333200423%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g200332200419%_
                                                  _%g200333200423%_))
                                             (_%g200332200419%_
                                              _%g200333200423%_)))
                                       (_%g200332200419%_ _%g200333200423%_))))
                               (_%g200332200419%_ _%g200333200423%_))))
                       (_%g200332200419%_ _%g200333200423%_))))
               (_%g200332200419%_ _%g200333200423%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200332200419%_
                                                _%g200333200423%_)))))
                                   (_%g200331200761%_ _%hd200330%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest200304200312%_))
                             (let ((_%hd200309200769%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest200304200312%_)))
                                   (_%tl200310200772%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest200304200312%_))))
                               (let* ((_%hd200775%_ _%hd200309200769%_)
                                      (_%rest200778%_ _%tl200310200772%_))
                                 (_%K200308200765%_
                                  _%rest200778%_
                                  _%hd200775%_)))
                             (_%else200306200324%_))))))
                (begin
                  (let ((_g202075_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g202074_)
                               (##vector-length _g202074_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g202075_ 2)))
                        (error "Context expects 2 values" _g202075_)))
                  (let ((_%unchecked-proc200781%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g202074_ 0)))
                        (_%unchecked-clauses200783%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g202074_ 1))))
                    (if _%unchecked-proc200781%_
                        (let* ((_%g200785200809%_
                                (lambda (_%g200786200805%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g200786200805%_))))
                               (_%g200784200896%_
                                (lambda (_%g200786200813%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g200786200813%_))
                                      (let ((_%e200789200816%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g200786200813%_))))
                                        (let ((_%hd200790200820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200789200816%_)))
                                              (_%tl200791200823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200789200816%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200791200823%_))
                                              (let ((_%e200792200826%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200791200823%_))))
                                                (let ((_%hd200793200830%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200792200826%_)))
                                                      (_%tl200794200833%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200792200826%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd200793200830%_))
                                                      (let ((_g202086_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd200793200830%_ '0))))
                (begin
                  (let ((_g202087_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g202086_)
                               (##vector-length _g202086_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g202087_ 2)))
                        (error "Context expects 2 values" _g202087_)))
                  (let ((_%target200795200836%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g202086_ 0)))
                        (_%tl200797200839%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g202086_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl200797200839%_))
                        (letrec ((_%loop200798200842%_
                                  (lambda (_%hd200796200846%_
                                           _%clause200802200849%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd200796200846%_))
                                        (let ((_%e200799200852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd200796200846%_))))
                                          (let ((_%lp-hd200800200856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200799200852%_)))
                                                (_%lp-tl200801200859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200799200852%_))))
                                            (_%loop200798200842%_
                                             _%lp-tl200801200859%_
                                             (cons _%lp-hd200800200856%_
                                                   _%clause200802200849%_))))
                                        (let ((_%clause200803200862%_
                                               (reverse _%clause200802200849%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200794200833%_))
                                              ((lambda (_%L200866%_
                                                        _%L200868%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L200868%_
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
                                             (let ((__tmp202088
                                                    (lambda (_%g200887200890%_
                                                             _%g200888200893%_)
                                                      (cons _%g200887200890%_
                                                            _%g200888200893%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp202088
                                                '()
                                                _%L200866%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause200803200862%_
                                               _%hd200790200820%_)
                                              (_%g200785200809%_
                                               _%g200786200813%_)))))))
                          (_%loop200798200842%_ _%target200795200836%_ '()))
                        (_%g200785200809%_ _%g200786200813%_)))))
              (_%g200785200809%_ _%g200786200813%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200785200809%_
                                               _%g200786200813%_))))
                                      (_%g200785200809%_ _%g200786200813%_)))))
                          (_%g200784200896%_
                           (list _%unchecked-proc200781%_
                                 _%unchecked-clauses200783%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g200236200247%_))))
                                        (_%g200234200900%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L200095%_
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
                                          _%L200216%_
                                          _%L200218%_))
                                       (let ((__tmp202089
                                              (lambda (_%g200903200907%_
                                                       _%g200904200910%_
                                                       _%g200905200912%_)
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
                                (cons _%g200904200910%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g200903200907%_ '())))))
              _%g200905200912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp202089
                                          '()
                                          _%L200216%_
                                          _%L200218%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig200142200210%_
                                    _%arity200143200213%_))))))
                   (_%loop200136200168%_ _%target200133200162%_ '() '()))
                 (_%g200129200155%_ _%g200130200159%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200129200155%_
                                                _%g200130200159%_)))))
                                   (_%g200128200915%_ _%signatures200126%_))
                                 (_%g200012200036%_ _%g200013200040%_)))
                           _%case-signature200030200089%_
                           _%hd200020200057%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200025200069%_
                                                   _%target200022200063%_
                                                   '()))
                                                (_%g200012200036%_
                                                 _%g200013200040%_)))))
                                      (_%g200012200036%_ _%g200013200040%_))))
                              (_%g200012200036%_ _%g200013200040%_))))
                      (_%g200012200036%_ _%g200013200040%_)))))
          (_%g200011200919%_ _%stx200009%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx200927%_)
        (let* ((_%__stx201909201910%_ _%$stx200927%_)
               (_%g200933200993%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201909201910%_)))))
          (let ((_%__kont201912201913%_
                 (lambda (_%L201215%_ _%L201217%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201217%_ '()))
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
                                                       (cons _%L201217%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201215%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201914201915%_
                 (lambda (_%L201140%_ _%L201142%_ _%L201143%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201143%_ '()))
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
                                                       (cons _%L201143%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201142%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201140%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201916201917%_
                 (lambda (_%L201054%_ _%L201056%_ _%L201057%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201057%_ '()))
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
                                                       (cons _%L201057%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201056%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201054%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201909201910%_))
                (let ((_%e200937201171%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201909201910%_))))
                  (let ((_%tl200939201178%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200937201171%_)))
                        (_%hd200938201175%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200937201171%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200939201178%_))
                        (let ((_%e200940201181%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200939201178%_))))
                          (let ((_%tl200942201188%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200940201181%_)))
                                (_%hd200941201185%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200940201181%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd200941201185%_))
                                (let ((_%e200943201191%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200941201185%_))))
                                  (if (equal? _%e200943201191%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200942201188%_))
                                          (let ((_%e200944201195%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl200942201188%_))))
                                            (let ((_%tl200946201202%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200944201195%_)))
                                                  (_%hd200945201199%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200944201195%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200946201202%_))
                                                  (let ((_%e200947201205%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200946201202%_))))
                                                    (let ((_%tl200949201212%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200947201205%_)))
                                                          (_%hd200948201209%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200947201205%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200949201212%_))
                                                          (_%__kont201912201913%_
                                                           _%hd200948201209%_
                                                           _%hd200945201199%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200933200993%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200933200993%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200933200993%_)))
                                      (if (equal? _%e200943201191%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200942201188%_))
                                              (let ((_%e200960201110%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200942201188%_))))
                                                (let ((_%tl200962201117%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200960201110%_)))
                                                      (_%hd200961201114%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200960201110%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200962201117%_))
                                                      (let ((_%e200963201120%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl200962201117%_))))
                (let ((_%tl200965201127%_
                       (let () (declare (not safe)) (##cdr _%e200963201120%_)))
                      (_%hd200964201124%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200963201120%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200965201127%_))
                      (let ((_%e200966201130%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl200965201127%_))))
                        (let ((_%tl200968201137%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200966201130%_)))
                              (_%hd200967201134%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200966201130%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200968201137%_))
                              (_%__kont201914201915%_
                               _%hd200967201134%_
                               _%hd200964201124%_
                               _%hd200961201114%_)
                              (let ()
                                (declare (not safe))
                                (_%g200933200993%_)))))
                      (let () (declare (not safe)) (_%g200933200993%_)))))
              (let () (declare (not safe)) (_%g200933200993%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200933200993%_)))
                                          (if (equal? _%e200943201191%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200942201188%_))
                                                  (let ((_%e200979201024%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200942201188%_))))
                                                    (let ((_%tl200981201031%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200979201024%_)))
                                                          (_%hd200980201028%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200979201024%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200981201031%_))
                                                          (let ((_%e200982201034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl200981201031%_))))
                    (let ((_%tl200984201041%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200982201034%_)))
                          (_%hd200983201038%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200982201034%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200984201041%_))
                          (let ((_%e200985201044%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200984201041%_))))
                            (let ((_%tl200987201051%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200985201044%_)))
                                  (_%hd200986201048%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200985201044%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200987201051%_))
                                  (_%__kont201916201917%_
                                   _%hd200986201048%_
                                   _%hd200983201038%_
                                   _%hd200980201028%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g200933200993%_)))))
                          (let () (declare (not safe)) (_%g200933200993%_)))))
                  (let () (declare (not safe)) (_%g200933200993%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200933200993%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200933200993%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200933200993%_)))))
                        (let () (declare (not safe)) (_%g200933200993%_)))))
                (let () (declare (not safe)) (_%g200933200993%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx201239%_)
        (let* ((_%g201243201263%_
                (lambda (_%g201244201259%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201244201259%_))))
               (_%g201242201334%_
                (lambda (_%g201244201267%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201244201267%_))
                      (let ((_%e201246201270%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201244201267%_))))
                        (let ((_%hd201247201274%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201246201270%_)))
                              (_%tl201248201277%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201246201270%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201248201277%_))
                              (let ((_g202090_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201248201277%_
                                        '0))))
                                (begin
                                  (let ((_g202091_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202090_)
                                               (##vector-length _g202090_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202091_ 2)))
                                        (error "Context expects 2 values"
                                               _g202091_)))
                                  (let ((_%target201249201280%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202090_ 0)))
                                        (_%tl201251201283%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202090_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201251201283%_))
                                        (letrec ((_%loop201252201286%_
                                                  (lambda (_%hd201250201290%_
                                                           _%decl201256201293%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201250201290%_))
                                                        (let ((_%e201253201296%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201250201290%_))))
                  (let ((_%lp-hd201254201300%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201253201296%_)))
                        (_%lp-tl201255201303%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201253201296%_))))
                    (_%loop201252201286%_
                     _%lp-tl201255201303%_
                     (cons _%lp-hd201254201300%_ _%decl201256201293%_))))
                (let ((_%decl201257201306%_ (reverse _%decl201256201293%_)))
                  ((lambda (_%L201310%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp202092
                                  (lambda (_%g201325201328%_ _%g201326201331%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g201325201328%_)
                                          _%g201326201331%_))))
                             (declare (not safe))
                             (__foldr1 __tmp202092 '() _%L201310%_))))
                   _%decl201257201306%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201252201286%_
                                           _%target201249201280%_
                                           '()))
                                        (_%g201243201263%_
                                         _%g201244201267%_)))))
                              (_%g201243201263%_ _%g201244201267%_))))
                      (_%g201243201263%_ _%g201244201267%_)))))
          (_%g201242201334%_ _%$stx201239%_))))))
