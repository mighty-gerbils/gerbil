(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g207711_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207718_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207720_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207722_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207724_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207726_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207738_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207740_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207742_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207744_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207746_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx201129%_)
        (let* ((_%g201133201151%_
                (lambda (_%g201134201147%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201134201147%_))))
               (_%g201132201206%_
                (lambda (_%g201134201155%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201134201155%_))
                      (let ((_%e201137201158%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201134201155%_))))
                        (let ((_%hd201138201162%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201137201158%_)))
                              (_%tl201139201165%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201137201158%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201139201165%_))
                              (let ((_%e201140201168%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201139201165%_))))
                                (let ((_%hd201141201172%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201140201168%_)))
                                      (_%tl201142201175%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201140201168%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201142201175%_))
                                      (let ((_%e201143201178%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201142201175%_))))
                                        (let ((_%hd201144201182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201143201178%_)))
                                              (_%tl201145201185%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201143201178%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201145201185%_))
                                              ((lambda (_%L201188%_
                                                        _%L201190%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L201190%_))
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
                               (cons _%L201190%_ '()))
                         (cons _%L201188%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201133201151%_
                                                      _%g201134201155%_)))
                                               _%hd201144201182%_
                                               _%hd201141201172%_)
                                              (_%g201133201151%_
                                               _%g201134201155%_))))
                                      (_%g201133201151%_ _%g201134201155%_))))
                              (_%g201133201151%_ _%g201134201155%_))))
                      (_%g201133201151%_ _%g201134201155%_)))))
          (_%g201132201206%_ _%$stx201129%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx201210%_)
        (let* ((_%g201214201232%_
                (lambda (_%g201215201228%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201215201228%_))))
               (_%g201213201287%_
                (lambda (_%g201215201236%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201215201236%_))
                      (let ((_%e201218201239%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201215201236%_))))
                        (let ((_%hd201219201243%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201218201239%_)))
                              (_%tl201220201246%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201218201239%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201220201246%_))
                              (let ((_%e201221201249%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201220201246%_))))
                                (let ((_%hd201222201253%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201221201249%_)))
                                      (_%tl201223201256%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201221201249%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201223201256%_))
                                      (let ((_%e201224201259%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201223201256%_))))
                                        (let ((_%hd201225201263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201224201259%_)))
                                              (_%tl201226201266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201224201259%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201226201266%_))
                                              ((lambda (_%L201269%_
                                                        _%L201271%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L201271%_))
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
                               (cons _%L201271%_ '()))
                         (cons _%L201269%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201214201232%_
                                                      _%g201215201236%_)))
                                               _%hd201225201263%_
                                               _%hd201222201253%_)
                                              (_%g201214201232%_
                                               _%g201215201236%_))))
                                      (_%g201214201232%_ _%g201215201236%_))))
                              (_%g201214201232%_ _%g201215201236%_))))
                      (_%g201214201232%_ _%g201215201236%_)))))
          (_%g201213201287%_ _%$stx201210%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx201291%_)
        (let* ((_%g201295201324%_
                (lambda (_%g201296201320%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201296201320%_))))
               (_%g201294201424%_
                (lambda (_%g201296201328%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201296201328%_))
                      (let ((_%e201299201331%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201296201328%_))))
                        (let ((_%hd201300201335%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201299201331%_)))
                              (_%tl201301201338%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201299201331%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201301201338%_))
                              (let ((_g207689_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201301201338%_
                                        '0))))
                                (begin
                                  (let ((_g207690_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207689_)
                                               (##vector-length _g207689_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207690_ 2)))
                                        (error "Context expects 2 values"
                                               _g207690_)))
                                  (let ((_%target201302201341%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207689_ 0)))
                                        (_%tl201304201344%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207689_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201304201344%_))
                                        (letrec ((_%loop201305201347%_
                                                  (lambda (_%hd201303201351%_
                                                           _%type201309201354%_
                                                           _%symbol201310201356%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201303201351%_))
                                                        (let ((_%e201306201359%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201303201351%_))))
                  (let ((_%lp-hd201307201363%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201306201359%_)))
                        (_%lp-tl201308201366%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201306201359%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd201307201363%_))
                        (let ((_%e201313201369%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd201307201363%_))))
                          (let ((_%hd201314201373%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201313201369%_)))
                                (_%tl201315201376%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201313201369%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201315201376%_))
                                (let ((_%e201316201379%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl201315201376%_))))
                                  (let ((_%hd201317201383%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201316201379%_)))
                                        (_%tl201318201386%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201316201379%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201318201386%_))
                                        (_%loop201305201347%_
                                         _%lp-tl201308201366%_
                                         (cons _%hd201317201383%_
                                               _%type201309201354%_)
                                         (cons _%hd201314201373%_
                                               _%symbol201310201356%_))
                                        (_%g201295201324%_
                                         _%g201296201328%_))))
                                (_%g201295201324%_ _%g201296201328%_))))
                        (_%g201295201324%_ _%g201296201328%_))))
                (let ((_%type201311201389%_ (reverse _%type201309201354%_))
                      (_%symbol201312201392%_
                       (reverse _%symbol201310201356%_)))
                  ((lambda (_%L201395%_ _%L201397%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L201395%_
                                _%L201397%_))
                             (let ((__tmp207691
                                    (lambda (_%g201412201416%_
                                             _%g201413201419%_
                                             _%g201414201421%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g201413201419%_
                                                        (cons _%g201412201416%_
                                                              '())))
                                            _%g201414201421%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp207691
                                '()
                                _%L201395%_
                                _%L201397%_)))))
                   _%type201311201389%_
                   _%symbol201312201392%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201305201347%_
                                           _%target201302201341%_
                                           '()
                                           '()))
                                        (_%g201295201324%_
                                         _%g201296201328%_)))))
                              (_%g201295201324%_ _%g201296201328%_))))
                      (_%g201295201324%_ _%g201296201328%_)))))
          (_%g201294201424%_ _%$stx201291%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx201429%_)
        (let* ((_%__stx207000207001%_ _%$stx201429%_)
               (_%g201434201476%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207000207001%_)))))
          (let ((_%__kont207003207004%_
                 (lambda (_%L201604%_ _%L201606%_ _%L201607%_ _%L201608%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201608%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201607%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L201606%_ '()))
                                           (cons _%L201604%_ '())))))))
                (_%__kont207005207006%_
                 (lambda (_%L201523%_ _%L201525%_ _%L201526%_ _%L201527%_)
                   (cons _%L201527%_
                         (cons _%L201526%_
                               (cons _%L201525%_
                                     (cons _%L201523%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match207039207040%_
                   (lambda (_%e201440201554%_
                            _%hd201441201558%_
                            _%tl201442201561%_
                            _%e201443201564%_
                            _%hd201444201568%_
                            _%tl201445201571%_
                            _%e201446201574%_
                            _%hd201447201578%_
                            _%tl201448201581%_
                            _%e201449201584%_
                            _%hd201450201588%_
                            _%tl201451201591%_
                            _%e201452201594%_
                            _%hd201453201598%_
                            _%tl201454201601%_)
                     (let ((_%L201604%_ _%hd201453201598%_)
                           (_%L201606%_ _%hd201450201588%_)
                           (_%L201607%_ _%hd201447201578%_)
                           (_%L201608%_ _%hd201444201568%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L201608%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L201607%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L201606%_)))
                           (_%__kont207003207004%_
                            _%L201604%_
                            _%L201606%_
                            _%L201607%_
                            _%L201608%_)
                           (let ()
                             (declare (not safe))
                             (_%g201434201476%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207000207001%_))
                  (let ((_%e201440201554%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx207000207001%_))))
                    (let ((_%tl201442201561%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201440201554%_)))
                          (_%hd201441201558%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201440201554%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201442201561%_))
                          (let ((_%e201443201564%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201442201561%_))))
                            (let ((_%tl201445201571%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201443201564%_)))
                                  (_%hd201444201568%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201443201564%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201445201571%_))
                                  (let ((_%e201446201574%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl201445201571%_))))
                                    (let ((_%tl201448201581%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201446201574%_)))
                                          (_%hd201447201578%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201446201574%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201448201581%_))
                                          (let ((_%e201449201584%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl201448201581%_))))
                                            (let ((_%tl201451201591%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201449201584%_)))
                                                  (_%hd201450201588%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201449201584%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201451201591%_))
                                                  (let ((_%e201452201594%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201451201591%_))))
                                                    (let ((_%tl201454201601%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201452201594%_)))
                                                          (_%hd201453201598%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201452201594%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201454201601%_))
                                                          (_%__match207039207040%_
                                                           _%e201440201554%_
                                                           _%hd201441201558%_
                                                           _%tl201442201561%_
                                                           _%e201443201564%_
                                                           _%hd201444201568%_
                                                           _%tl201445201571%_
                                                           _%e201446201574%_
                                                           _%hd201447201578%_
                                                           _%tl201448201581%_
                                                           _%e201449201584%_
                                                           _%hd201450201588%_
                                                           _%tl201451201591%_
                                                           _%e201452201594%_
                                                           _%hd201453201598%_
                                                           _%tl201454201601%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201434201476%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201451201591%_))
                                                      (_%__kont207005207006%_
                                                       _%hd201450201588%_
                                                       _%hd201447201578%_
                                                       _%hd201444201568%_
                                                       _%hd201441201558%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g201434201476%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201434201476%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201434201476%_)))))
                          (let () (declare (not safe)) (_%g201434201476%_)))))
                  (let () (declare (not safe)) (_%g201434201476%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx201633%_)
        (let* ((_%g201637201672%_
                (lambda (_%g201638201668%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201638201668%_))))
               (_%g201636201791%_
                (lambda (_%g201638201676%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201638201676%_))
                      (let ((_%e201642201679%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201638201676%_))))
                        (let ((_%hd201643201683%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201642201679%_)))
                              (_%tl201644201686%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201642201679%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201644201686%_))
                              (let ((_g207692_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201644201686%_
                                        '0))))
                                (begin
                                  (let ((_g207693_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207692_)
                                               (##vector-length _g207692_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207693_ 2)))
                                        (error "Context expects 2 values"
                                               _g207693_)))
                                  (let ((_%target201645201689%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207692_ 0)))
                                        (_%tl201647201692%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207692_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201647201692%_))
                                        (letrec ((_%loop201648201695%_
                                                  (lambda (_%hd201646201699%_
                                                           _%symbol201652201702%_
                                                           _%method201653201704%_
                                                           _%type-t201654201706%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201646201699%_))
                                                        (let ((_%e201649201709%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201646201699%_))))
                  (let ((_%lp-hd201650201713%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201649201709%_)))
                        (_%lp-tl201651201716%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201649201709%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd201650201713%_))
                        (let ((_%e201658201719%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd201650201713%_))))
                          (let ((_%hd201659201723%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201658201719%_)))
                                (_%tl201660201726%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201658201719%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201660201726%_))
                                (let ((_%e201661201729%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl201660201726%_))))
                                  (let ((_%hd201662201733%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201661201729%_)))
                                        (_%tl201663201736%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201661201729%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201663201736%_))
                                        (let ((_%e201664201739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl201663201736%_))))
                                          (let ((_%hd201665201743%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201664201739%_)))
                                                (_%tl201666201746%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201664201739%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201666201746%_))
                                                (_%loop201648201695%_
                                                 _%lp-tl201651201716%_
                                                 (cons _%hd201665201743%_
                                                       _%symbol201652201702%_)
                                                 (cons _%hd201662201733%_
                                                       _%method201653201704%_)
                                                 (cons _%hd201659201723%_
                                                       _%type-t201654201706%_))
                                                (_%g201637201672%_
                                                 _%g201638201676%_))))
                                        (_%g201637201672%_
                                         _%g201638201676%_))))
                                (_%g201637201672%_ _%g201638201676%_))))
                        (_%g201637201672%_ _%g201638201676%_))))
                (let ((_%symbol201655201749%_ (reverse _%symbol201652201702%_))
                      (_%method201656201752%_ (reverse _%method201653201704%_))
                      (_%type-t201657201754%_
                       (reverse _%type-t201654201706%_)))
                  ((lambda (_%L201757%_ _%L201759%_ _%L201760%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L201757%_
                                _%L201759%_
                                _%L201760%_))
                             (let ((__tmp207694
                                    (lambda (_%g201776201781%_
                                             _%g201777201784%_
                                             _%g201778201786%_
                                             _%g201779201788%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g201778201786%_
                                                        (cons _%g201777201784%_
                                                              (cons _%g201776201781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g201779201788%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp207694
                                '()
                                _%L201757%_
                                _%L201759%_
                                _%L201760%_)))))
                   _%symbol201655201749%_
                   _%method201656201752%_
                   _%type-t201657201754%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201648201695%_
                                           _%target201645201689%_
                                           '()
                                           '()
                                           '()))
                                        (_%g201637201672%_
                                         _%g201638201676%_)))))
                              (_%g201637201672%_ _%g201638201676%_))))
                      (_%g201637201672%_ _%g201638201676%_)))))
          (_%g201636201791%_ _%$stx201633%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx201796%_)
        (let* ((_%g201800201833%_
                (lambda (_%g201801201829%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201801201829%_))))
               (_%g201799201947%_
                (lambda (_%g201801201837%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201801201837%_))
                      (let ((_%e201805201840%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201801201837%_))))
                        (let ((_%hd201806201844%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201805201840%_)))
                              (_%tl201807201847%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201805201840%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201807201847%_))
                              (let ((_%e201808201850%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201807201847%_))))
                                (let ((_%hd201809201854%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201808201850%_)))
                                      (_%tl201810201857%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201808201850%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl201810201857%_))
                                      (let ((_g207695_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl201810201857%_
                                                '0))))
                                        (begin
                                          (let ((_g207696_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207695_)
                                                       (##vector-length
                                                        _g207695_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207696_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207696_)))
                                          (let ((_%target201811201860%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g207695_ 0)))
                                                (_%tl201813201863%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g207695_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201813201863%_))
                                                (letrec ((_%loop201814201866%_
                                                          (lambda (_%hd201812201870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol201818201873%_
                           _%method201819201875%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201812201870%_))
                        (let ((_%e201815201878%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd201812201870%_))))
                          (let ((_%lp-hd201816201882%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201815201878%_)))
                                (_%lp-tl201817201885%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201815201878%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd201816201882%_))
                                (let ((_%e201822201888%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd201816201882%_))))
                                  (let ((_%hd201823201892%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201822201888%_)))
                                        (_%tl201824201895%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201822201888%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201824201895%_))
                                        (let ((_%e201825201898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl201824201895%_))))
                                          (let ((_%hd201826201902%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201825201898%_)))
                                                (_%tl201827201905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201825201898%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201827201905%_))
                                                (_%loop201814201866%_
                                                 _%lp-tl201817201885%_
                                                 (cons _%hd201826201902%_
                                                       _%symbol201818201873%_)
                                                 (cons _%hd201823201892%_
                                                       _%method201819201875%_))
                                                (_%g201800201833%_
                                                 _%g201801201837%_))))
                                        (_%g201800201833%_
                                         _%g201801201837%_))))
                                (_%g201800201833%_ _%g201801201837%_))))
                        (let ((_%symbol201820201908%_
                               (reverse _%symbol201818201873%_))
                              (_%method201821201911%_
                               (reverse _%method201819201875%_)))
                          ((lambda (_%L201914%_ _%L201916%_ _%L201917%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L201914%_
                                        _%L201916%_))
                                     (let ((__tmp207697
                                            (lambda (_%g201935201939%_
                                                     _%g201936201942%_
                                                     _%g201937201944%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L201917%_
                                                                (cons _%g201936201942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g201935201939%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g201937201944%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp207697
                                        '()
                                        _%L201914%_
                                        _%L201916%_)))))
                           _%symbol201820201908%_
                           _%method201821201911%_
                           _%hd201809201854%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop201814201866%_
                                                   _%target201811201860%_
                                                   '()
                                                   '()))
                                                (_%g201800201833%_
                                                 _%g201801201837%_)))))
                                      (_%g201800201833%_ _%g201801201837%_))))
                              (_%g201800201833%_ _%g201801201837%_))))
                      (_%g201800201833%_ _%g201801201837%_)))))
          (_%g201799201947%_ _%$stx201796%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx201952%_)
        (let* ((_%g201956201970%_
                (lambda (_%g201957201966%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201957201966%_))))
               (_%g201955202011%_
                (lambda (_%g201957201974%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201957201974%_))
                      (let ((_%e201959201977%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201957201974%_))))
                        (let ((_%hd201960201981%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201959201977%_)))
                              (_%tl201961201984%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201959201977%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201961201984%_))
                              (let ((_%e201962201987%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201961201984%_))))
                                (let ((_%hd201963201991%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201962201987%_)))
                                      (_%tl201964201994%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201962201987%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201964201994%_))
                                      ((lambda (_%L201997%_)
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
                                                           (cons _%L201997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd201963201991%_)
                                      (_%g201956201970%_ _%g201957201974%_))))
                              (_%g201956201970%_ _%g201957201974%_))))
                      (_%g201956201970%_ _%g201957201974%_)))))
          (_%g201955202011%_ _%$stx201952%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx202015%_)
        (let* ((_%g202019202073%_
                (lambda (_%g202020202069%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202020202069%_))))
               (_%g202018202254%_
                (lambda (_%g202020202077%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202020202077%_))
                      (let ((_%e202032202080%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202020202077%_))))
                        (let ((_%hd202033202084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202032202080%_)))
                              (_%tl202034202087%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202032202080%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202034202087%_))
                              (let ((_%e202035202090%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202034202087%_))))
                                (let ((_%hd202036202094%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202035202090%_)))
                                      (_%tl202037202097%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202035202090%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202037202097%_))
                                      (let ((_%e202038202100%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202037202097%_))))
                                        (let ((_%hd202039202104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202038202100%_)))
                                              (_%tl202040202107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202038202100%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202040202107%_))
                                              (let ((_%e202041202110%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202040202107%_))))
                                                (let ((_%hd202042202114%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202041202110%_)))
                                                      (_%tl202043202117%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202041202110%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl202043202117%_))
                                                      (let ((_%e202044202120%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl202043202117%_))))
                (let ((_%hd202045202124%_
                       (let () (declare (not safe)) (##car _%e202044202120%_)))
                      (_%tl202046202127%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e202044202120%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl202046202127%_))
                      (let ((_%e202047202130%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl202046202127%_))))
                        (let ((_%hd202048202134%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202047202130%_)))
                              (_%tl202049202137%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202047202130%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202049202137%_))
                              (let ((_%e202050202140%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202049202137%_))))
                                (let ((_%hd202051202144%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202050202140%_)))
                                      (_%tl202052202147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202050202140%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202052202147%_))
                                      (let ((_%e202053202150%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202052202147%_))))
                                        (let ((_%hd202054202154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202053202150%_)))
                                              (_%tl202055202157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202053202150%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202055202157%_))
                                              (let ((_%e202056202160%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202055202157%_))))
                                                (let ((_%hd202057202164%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202056202160%_)))
                                                      (_%tl202058202167%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202056202160%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl202058202167%_))
                                                      (let ((_%e202059202170%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl202058202167%_))))
                (let ((_%hd202060202174%_
                       (let () (declare (not safe)) (##car _%e202059202170%_)))
                      (_%tl202061202177%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e202059202170%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl202061202177%_))
                      (let ((_%e202062202180%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl202061202177%_))))
                        (let ((_%hd202063202184%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202062202180%_)))
                              (_%tl202064202187%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202062202180%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202064202187%_))
                              (let ((_%e202065202190%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202064202187%_))))
                                (let ((_%hd202066202194%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202065202190%_)))
                                      (_%tl202067202197%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202065202190%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202067202197%_))
                                      ((lambda (_%L202200%_
                                                _%L202202%_
                                                _%L202203%_
                                                _%L202204%_
                                                _%L202205%_
                                                _%L202206%_
                                                _%L202207%_
                                                _%L202208%_
                                                _%L202209%_
                                                _%L202210%_
                                                _%L202211%_)
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
                                                           (cons _%L202211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L202210%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L202209%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202208%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L202207%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L202206%_ '()))
                                           (cons _%L202205%_
                                                 (cons _%L202204%_
                                                       (cons _%L202203%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L202202%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L202200%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd202066202194%_
                                       _%hd202063202184%_
                                       _%hd202060202174%_
                                       _%hd202057202164%_
                                       _%hd202054202154%_
                                       _%hd202051202144%_
                                       _%hd202048202134%_
                                       _%hd202045202124%_
                                       _%hd202042202114%_
                                       _%hd202039202104%_
                                       _%hd202036202094%_)
                                      (_%g202019202073%_ _%g202020202077%_))))
                              (_%g202019202073%_ _%g202020202077%_))))
                      (_%g202019202073%_ _%g202020202077%_))))
              (_%g202019202073%_ _%g202020202077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202019202073%_
                                               _%g202020202077%_))))
                                      (_%g202019202073%_ _%g202020202077%_))))
                              (_%g202019202073%_ _%g202020202077%_))))
                      (_%g202019202073%_ _%g202020202077%_))))
              (_%g202019202073%_ _%g202020202077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202019202073%_
                                               _%g202020202077%_))))
                                      (_%g202019202073%_ _%g202020202077%_))))
                              (_%g202019202073%_ _%g202020202077%_))))
                      (_%g202019202073%_ _%g202020202077%_)))))
          (_%g202018202254%_ _%$stx202015%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx202258%_)
        (let* ((_%g202262202276%_
                (lambda (_%g202263202272%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202263202272%_))))
               (_%g202261202317%_
                (lambda (_%g202263202280%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202263202280%_))
                      (let ((_%e202265202283%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202263202280%_))))
                        (let ((_%hd202266202287%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202265202283%_)))
                              (_%tl202267202290%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202265202283%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202267202290%_))
                              (let ((_%e202268202293%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202267202290%_))))
                                (let ((_%hd202269202297%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202268202293%_)))
                                      (_%tl202270202300%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202268202293%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202270202300%_))
                                      ((lambda (_%L202303%_)
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
                                                           (cons _%L202303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd202269202297%_)
                                      (_%g202262202276%_ _%g202263202280%_))))
                              (_%g202262202276%_ _%g202263202280%_))))
                      (_%g202262202276%_ _%g202263202280%_)))))
          (_%g202261202317%_ _%$stx202258%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx202321%_)
        (let* ((_%g202325202339%_
                (lambda (_%g202326202335%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202326202335%_))))
               (_%g202324202380%_
                (lambda (_%g202326202343%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202326202343%_))
                      (let ((_%e202328202346%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202326202343%_))))
                        (let ((_%hd202329202350%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202328202346%_)))
                              (_%tl202330202353%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202328202346%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202330202353%_))
                              (let ((_%e202331202356%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202330202353%_))))
                                (let ((_%hd202332202360%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202331202356%_)))
                                      (_%tl202333202363%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202331202356%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202333202363%_))
                                      ((lambda (_%L202366%_)
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
                                                           (cons _%L202366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd202332202360%_)
                                      (_%g202325202339%_ _%g202326202343%_))))
                              (_%g202325202339%_ _%g202326202343%_))))
                      (_%g202325202339%_ _%g202326202343%_)))))
          (_%g202324202380%_ _%$stx202321%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx202384%_)
        (let* ((_%g202388202410%_
                (lambda (_%g202389202406%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202389202406%_))))
               (_%g202387202479%_
                (lambda (_%g202389202414%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202389202414%_))
                      (let ((_%e202393202417%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202389202414%_))))
                        (let ((_%hd202394202421%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202393202417%_)))
                              (_%tl202395202424%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202393202417%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202395202424%_))
                              (let ((_%e202396202427%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202395202424%_))))
                                (let ((_%hd202397202431%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202396202427%_)))
                                      (_%tl202398202434%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202396202427%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202398202434%_))
                                      (let ((_%e202399202437%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202398202434%_))))
                                        (let ((_%hd202400202441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202399202437%_)))
                                              (_%tl202401202444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202399202437%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202401202444%_))
                                              (let ((_%e202402202447%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202401202444%_))))
                                                (let ((_%hd202403202451%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202402202447%_)))
                                                      (_%tl202404202454%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202402202447%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202404202454%_))
                                                      ((lambda (_%L202457%_
                                                                _%L202459%_
                                                                _%L202460%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L202460%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L202459%_ '()))
                                   (cons _%L202457%_ '())))))
               _%hd202403202451%_
               _%hd202400202441%_
               _%hd202397202431%_)
              (_%g202388202410%_ _%g202389202414%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202388202410%_
                                               _%g202389202414%_))))
                                      (_%g202388202410%_ _%g202389202414%_))))
                              (_%g202388202410%_ _%g202389202414%_))))
                      (_%g202388202410%_ _%g202389202414%_)))))
          (_%g202387202479%_ _%$stx202384%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx202483%_)
        (let* ((_%g202487202509%_
                (lambda (_%g202488202505%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202488202505%_))))
               (_%g202486202578%_
                (lambda (_%g202488202513%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202488202513%_))
                      (let ((_%e202492202516%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202488202513%_))))
                        (let ((_%hd202493202520%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202492202516%_)))
                              (_%tl202494202523%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202492202516%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202494202523%_))
                              (let ((_%e202495202526%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202494202523%_))))
                                (let ((_%hd202496202530%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202495202526%_)))
                                      (_%tl202497202533%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202495202526%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202497202533%_))
                                      (let ((_%e202498202536%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202497202533%_))))
                                        (let ((_%hd202499202540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202498202536%_)))
                                              (_%tl202500202543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202498202536%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202500202543%_))
                                              (let ((_%e202501202546%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202500202543%_))))
                                                (let ((_%hd202502202550%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202501202546%_)))
                                                      (_%tl202503202553%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202501202546%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202503202553%_))
                                                      ((lambda (_%L202556%_
                                                                _%L202558%_
                                                                _%L202559%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L202559%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L202558%_ '()))
                                   (cons _%L202556%_ '())))))
               _%hd202502202550%_
               _%hd202499202540%_
               _%hd202496202530%_)
              (_%g202487202509%_ _%g202488202513%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202487202509%_
                                               _%g202488202513%_))))
                                      (_%g202487202509%_ _%g202488202513%_))))
                              (_%g202487202509%_ _%g202488202513%_))))
                      (_%g202487202509%_ _%g202488202513%_)))))
          (_%g202486202578%_ _%$stx202483%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx202582%_)
        (let* ((_%g202586202600%_
                (lambda (_%g202587202596%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202587202596%_))))
               (_%g202585202641%_
                (lambda (_%g202587202604%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202587202604%_))
                      (let ((_%e202589202607%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202587202604%_))))
                        (let ((_%hd202590202611%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202589202607%_)))
                              (_%tl202591202614%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202589202607%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202591202614%_))
                              (let ((_%e202592202617%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202591202614%_))))
                                (let ((_%hd202593202621%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202592202617%_)))
                                      (_%tl202594202624%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202592202617%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202594202624%_))
                                      ((lambda (_%L202627%_)
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
                                                           (cons _%L202627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd202593202621%_)
                                      (_%g202586202600%_ _%g202587202604%_))))
                              (_%g202586202600%_ _%g202587202604%_))))
                      (_%g202586202600%_ _%g202587202604%_)))))
          (_%g202585202641%_ _%$stx202582%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx202645%_)
        (let* ((_%g202649202667%_
                (lambda (_%g202650202663%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202650202663%_))))
               (_%g202648202722%_
                (lambda (_%g202650202671%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202650202671%_))
                      (let ((_%e202653202674%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202650202671%_))))
                        (let ((_%hd202654202678%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202653202674%_)))
                              (_%tl202655202681%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202653202674%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202655202681%_))
                              (let ((_%e202656202684%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202655202681%_))))
                                (let ((_%hd202657202688%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202656202684%_)))
                                      (_%tl202658202691%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202656202684%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202658202691%_))
                                      (let ((_%e202659202694%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202658202691%_))))
                                        (let ((_%hd202660202698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202659202694%_)))
                                              (_%tl202661202701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202659202694%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202661202701%_))
                                              ((lambda (_%L202704%_
                                                        _%L202706%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L202706%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L202704%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd202660202698%_
                                               _%hd202657202688%_)
                                              (_%g202649202667%_
                                               _%g202650202671%_))))
                                      (_%g202649202667%_ _%g202650202671%_))))
                              (_%g202649202667%_ _%g202650202671%_))))
                      (_%g202649202667%_ _%g202650202671%_)))))
          (_%g202648202722%_ _%$stx202645%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx202726%_)
        (let* ((_%__stx207068207069%_ _%$stx202726%_)
               (_%g202733202794%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207068207069%_)))))
          (let ((_%__kont207071207072%_
                 (lambda (_%L203032%_ _%L203034%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203034%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L203032%_ '()))
                                     '())))))
                (_%__kont207073207074%_
                 (lambda (_%L202971%_ _%L202973%_ _%L202974%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202974%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L202973%_ '()))
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
                                 (cons _%L202971%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont207075207076%_
                 (lambda (_%L202895%_ _%L202897%_)
                   (cons _%L202897%_ (cons _%L202895%_ (cons '#f '())))))
                (_%__kont207077207078%_
                 (lambda (_%L202845%_ _%L202847%_ _%L202848%_)
                   (cons _%L202848%_
                         (cons _%L202847%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L202845%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx207068207069%_))
                (let ((_%e202737203002%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx207068207069%_))))
                  (let ((_%tl202739203009%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202737203002%_)))
                        (_%hd202738203006%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202737203002%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl202739203009%_))
                        (let ((_%e202740203012%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl202739203009%_))))
                          (let ((_%tl202742203019%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202740203012%_)))
                                (_%hd202741203016%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202740203012%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202742203019%_))
                                (let ((_%e202743203022%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl202742203019%_))))
                                  (let ((_%tl202745203029%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202743203022%_)))
                                        (_%hd202744203026%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202743203022%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202745203029%_))
                                        (_%__kont207071207072%_
                                         _%hd202744203026%_
                                         _%hd202741203016%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202745203029%_))
                                            (let ((_%e202758202947%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl202745203029%_))))
                                              (let ((_%tl202760202954%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202758202947%_)))
                                                    (_%hd202759202951%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202758202947%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd202759202951%_))
                                                    (let ((_%e202761202957%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd202759202951%_))))
                                                      (if (equal? _%e202761202957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl202760202954%_))
                      (let ((_%e202762202961%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl202760202954%_))))
                        (let ((_%tl202764202968%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202762202961%_)))
                              (_%hd202763202965%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202762202961%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202764202968%_))
                              (_%__kont207073207074%_
                               _%hd202763202965%_
                               _%hd202744203026%_
                               _%hd202741203016%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd202744203026%_))
                                  (let ((_%e202785202831%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd202744203026%_))))
                                    (declare (not safe))
                                    (_%g202733202794%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g202733202794%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd202744203026%_))
                          (let ((_%e202785202831%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd202744203026%_))))
                            (if (equal? _%e202785202831%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl202760202954%_))
                                    (_%__kont207077207078%_
                                     _%hd202759202951%_
                                     _%hd202741203016%_
                                     _%hd202738203006%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g202733202794%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g202733202794%_))))
                          (let () (declare (not safe)) (_%g202733202794%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd202744203026%_))
                      (let ((_%e202785202831%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd202744203026%_))))
                        (if (equal? _%e202785202831%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202760202954%_))
                                (_%__kont207077207078%_
                                 _%hd202759202951%_
                                 _%hd202741203016%_
                                 _%hd202738203006%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g202733202794%_)))
                            (let () (declare (not safe)) (_%g202733202794%_))))
                      (let () (declare (not safe)) (_%g202733202794%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd202744203026%_))
                                                        (let ((_%e202785202831%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd202744203026%_))))
                  (if (equal? _%e202785202831%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202760202954%_))
                          (_%__kont207077207078%_
                           _%hd202759202951%_
                           _%hd202741203016%_
                           _%hd202738203006%_)
                          (let () (declare (not safe)) (_%g202733202794%_)))
                      (let () (declare (not safe)) (_%g202733202794%_))))
                (let () (declare (not safe)) (_%g202733202794%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd202744203026%_))
                                                (let ((_%e202785202831%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202744203026%_))))
                                                  (declare (not safe))
                                                  (_%g202733202794%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g202733202794%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl202742203019%_))
                                    (_%__kont207075207076%_
                                     _%hd202741203016%_
                                     _%hd202738203006%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g202733202794%_))))))
                        (let () (declare (not safe)) (_%g202733202794%_)))))
                (let () (declare (not safe)) (_%g202733202794%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx203053%_)
        (let* ((_%g203057203086%_
                (lambda (_%g203058203082%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203058203082%_))))
               (_%g203056203195%_
                (lambda (_%g203058203090%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203058203090%_))
                      (let ((_%e203060203093%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203058203090%_))))
                        (let ((_%hd203061203097%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203060203093%_)))
                              (_%tl203062203100%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203060203093%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203062203100%_))
                              (let ((_g207698_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203062203100%_
                                        '0))))
                                (begin
                                  (let ((_g207699_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207698_)
                                               (##vector-length _g207698_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207699_ 2)))
                                        (error "Context expects 2 values"
                                               _g207699_)))
                                  (let ((_%target203063203103%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207698_ 0)))
                                        (_%tl203065203106%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207698_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203065203106%_))
                                        (letrec ((_%loop203066203109%_
                                                  (lambda (_%hd203064203113%_
                                                           _%clause203070203116%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203064203113%_))
                                                        (let ((_%e203067203119%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203064203113%_))))
                  (let ((_%lp-hd203068203123%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203067203119%_)))
                        (_%lp-tl203069203126%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203067203119%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd203068203123%_))
                        (let ((_g207700_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd203068203123%_
                                  '0))))
                          (begin
                            (let ((_g207701_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g207700_)
                                         (##vector-length _g207700_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g207701_ 2)))
                                  (error "Context expects 2 values"
                                         _g207701_)))
                            (let ((_%target203072203129%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g207700_ 0)))
                                  (_%tl203074203132%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g207700_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203074203132%_))
                                  (letrec ((_%loop203075203135%_
                                            (lambda (_%hd203073203139%_
                                                     _%clause203079203142%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203073203139%_))
                                                  (let ((_%e203076203145%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd203073203139%_))))
                                                    (let ((_%lp-hd203077203149%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203076203145%_)))
                                                          (_%lp-tl203078203152%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203076203145%_))))
                                                      (_%loop203075203135%_
                                                       _%lp-tl203078203152%_
                                                       (cons _%lp-hd203077203149%_
                                                             _%clause203079203142%_))))
                                                  (let ((_%clause203080203155%_
                                                         (reverse _%clause203079203142%_)))
                                                    (_%loop203066203109%_
                                                     _%lp-tl203069203126%_
                                                     (cons _%clause203080203155%_
                                                           _%clause203070203116%_)))))))
                                    (_%loop203075203135%_
                                     _%target203072203129%_
                                     '()))
                                  (_%g203057203086%_ _%g203058203090%_)))))
                        (_%g203057203086%_ _%g203058203090%_))))
                (let ((_%clause203071203159%_
                       (reverse _%clause203070203116%_)))
                  ((lambda (_%L203163%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp207702
                                              (lambda (_%g203178203183%_
                                                       _%g203179203186%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp207703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g203180203189%_ _%g203181203192%_)
                             (cons _%g203180203189%_ _%g203181203192%_))))
                      (declare (not safe))
                      (__foldr1 __tmp207703 '() _%g203178203183%_)))
              _%g203179203186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp207702
                                          '()
                                          _%L203163%_)))
                                 '())))
                   _%clause203071203159%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203066203109%_
                                           _%target203063203103%_
                                           '()))
                                        (_%g203057203086%_
                                         _%g203058203090%_)))))
                              (_%g203057203086%_ _%g203058203090%_))))
                      (_%g203057203086%_ _%g203058203090%_)))))
          (_%g203056203195%_ _%$stx203053%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx203201%_)
        (let* ((_%g203205203223%_
                (lambda (_%g203206203219%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203206203219%_))))
               (_%g203204203278%_
                (lambda (_%g203206203227%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203206203227%_))
                      (let ((_%e203209203230%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203206203227%_))))
                        (let ((_%hd203210203234%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203209203230%_)))
                              (_%tl203211203237%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203209203230%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203211203237%_))
                              (let ((_%e203212203240%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203211203237%_))))
                                (let ((_%hd203213203244%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203212203240%_)))
                                      (_%tl203214203247%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203212203240%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203214203247%_))
                                      (let ((_%e203215203250%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203214203247%_))))
                                        (let ((_%hd203216203254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203215203250%_)))
                                              (_%tl203217203257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203215203250%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203217203257%_))
                                              ((lambda (_%L203260%_
                                                        _%L203262%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L203262%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L203260%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd203216203254%_
                                               _%hd203213203244%_)
                                              (_%g203205203223%_
                                               _%g203206203227%_))))
                                      (_%g203205203223%_ _%g203206203227%_))))
                              (_%g203205203223%_ _%g203206203227%_))))
                      (_%g203205203223%_ _%g203206203227%_)))))
          (_%g203204203278%_ _%$stx203201%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx203282%_)
        (let* ((_%g203286203304%_
                (lambda (_%g203287203300%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203287203300%_))))
               (_%g203285203359%_
                (lambda (_%g203287203308%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203287203308%_))
                      (let ((_%e203290203311%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203287203308%_))))
                        (let ((_%hd203291203315%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203290203311%_)))
                              (_%tl203292203318%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203290203311%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203292203318%_))
                              (let ((_%e203293203321%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203292203318%_))))
                                (let ((_%hd203294203325%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203293203321%_)))
                                      (_%tl203295203328%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203293203321%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203295203328%_))
                                      (let ((_%e203296203331%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203295203328%_))))
                                        (let ((_%hd203297203335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203296203331%_)))
                                              (_%tl203298203338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203296203331%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203298203338%_))
                                              ((lambda (_%L203341%_
                                                        _%L203343%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L203343%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L203341%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd203297203335%_
                                               _%hd203294203325%_)
                                              (_%g203286203304%_
                                               _%g203287203308%_))))
                                      (_%g203286203304%_ _%g203287203308%_))))
                              (_%g203286203304%_ _%g203287203308%_))))
                      (_%g203286203304%_ _%g203287203308%_)))))
          (_%g203285203359%_ _%$stx203282%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx203363%_)
        (let* ((_%g203367203396%_
                (lambda (_%g203368203392%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203368203392%_))))
               (_%g203366203496%_
                (lambda (_%g203368203400%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203368203400%_))
                      (let ((_%e203371203403%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203368203400%_))))
                        (let ((_%hd203372203407%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203371203403%_)))
                              (_%tl203373203410%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203371203403%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203373203410%_))
                              (let ((_g207704_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203373203410%_
                                        '0))))
                                (begin
                                  (let ((_g207705_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207704_)
                                               (##vector-length _g207704_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207705_ 2)))
                                        (error "Context expects 2 values"
                                               _g207705_)))
                                  (let ((_%target203374203413%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207704_ 0)))
                                        (_%tl203376203416%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207704_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203376203416%_))
                                        (letrec ((_%loop203377203419%_
                                                  (lambda (_%hd203375203423%_
                                                           _%rule203381203426%_
                                                           _%proc203382203428%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203375203423%_))
                                                        (let ((_%e203378203431%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203375203423%_))))
                  (let ((_%lp-hd203379203435%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203378203431%_)))
                        (_%lp-tl203380203438%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203378203431%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd203379203435%_))
                        (let ((_%e203385203441%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd203379203435%_))))
                          (let ((_%hd203386203445%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203385203441%_)))
                                (_%tl203387203448%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203385203441%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203387203448%_))
                                (let ((_%e203388203451%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203387203448%_))))
                                  (let ((_%hd203389203455%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203388203451%_)))
                                        (_%tl203390203458%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203388203451%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203390203458%_))
                                        (_%loop203377203419%_
                                         _%lp-tl203380203438%_
                                         (cons _%hd203389203455%_
                                               _%rule203381203426%_)
                                         (cons _%hd203386203445%_
                                               _%proc203382203428%_))
                                        (_%g203367203396%_
                                         _%g203368203400%_))))
                                (_%g203367203396%_ _%g203368203400%_))))
                        (_%g203367203396%_ _%g203368203400%_))))
                (let ((_%rule203383203461%_ (reverse _%rule203381203426%_))
                      (_%proc203384203464%_ (reverse _%proc203382203428%_)))
                  ((lambda (_%L203467%_ _%L203469%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L203467%_
                                _%L203469%_))
                             (let ((__tmp207706
                                    (lambda (_%g203484203488%_
                                             _%g203485203491%_
                                             _%g203486203493%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g203485203491%_
                                                        (cons _%g203484203488%_
                                                              '())))
                                            _%g203486203493%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp207706
                                '()
                                _%L203467%_
                                _%L203469%_)))))
                   _%rule203383203461%_
                   _%proc203384203464%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203377203419%_
                                           _%target203374203413%_
                                           '()
                                           '()))
                                        (_%g203367203396%_
                                         _%g203368203400%_)))))
                              (_%g203367203396%_ _%g203368203400%_))))
                      (_%g203367203396%_ _%g203368203400%_)))))
          (_%g203366203496%_ _%$stx203363%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx203501%_)
        (let* ((_%g203505203523%_
                (lambda (_%g203506203519%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203506203519%_))))
               (_%g203504203578%_
                (lambda (_%g203506203527%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203506203527%_))
                      (let ((_%e203509203530%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203506203527%_))))
                        (let ((_%hd203510203534%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203509203530%_)))
                              (_%tl203511203537%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203509203530%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203511203537%_))
                              (let ((_%e203512203540%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203511203537%_))))
                                (let ((_%hd203513203544%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203512203540%_)))
                                      (_%tl203514203547%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203512203540%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203514203547%_))
                                      (let ((_%e203515203550%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203514203547%_))))
                                        (let ((_%hd203516203554%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203515203550%_)))
                                              (_%tl203517203557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203515203550%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203517203557%_))
                                              ((lambda (_%L203560%_
                                                        _%L203562%_)
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
                                                   (cons _%L203562%_ '()))
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
                 (cons _%L203560%_ '())))
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
                                   (cons _%L203562%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd203516203554%_
                                               _%hd203513203544%_)
                                              (_%g203505203523%_
                                               _%g203506203527%_))))
                                      (_%g203505203523%_ _%g203506203527%_))))
                              (_%g203505203523%_ _%g203506203527%_))))
                      (_%g203505203523%_ _%g203506203527%_)))))
          (_%g203504203578%_ _%$stx203501%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx203582%_)
        (let* ((_%__stx207186207187%_ _%$stx203582%_)
               (_%g203587203612%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207186207187%_)))))
          (let ((_%__kont207189207190%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont207191207192%_
                 (lambda (_%L203659%_ _%L203661%_ _%L203662%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L203662%_ (cons _%L203661%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L203659%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx207186207187%_))
                (let ((_%e203589203688%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx207186207187%_))))
                  (let ((_%tl203591203695%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203589203688%_)))
                        (_%hd203590203692%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203589203688%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl203591203695%_))
                        (_%__kont207189207190%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl203591203695%_))
                            (let ((_%e203598203629%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl203591203695%_))))
                              (let ((_%tl203600203636%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e203598203629%_)))
                                    (_%hd203599203633%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e203598203629%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd203599203633%_))
                                    (let ((_%e203601203639%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd203599203633%_))))
                                      (let ((_%tl203603203646%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e203601203639%_)))
                                            (_%hd203602203643%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e203601203639%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203603203646%_))
                                            (let ((_%e203604203649%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl203603203646%_))))
                                              (let ((_%tl203606203656%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203604203649%_)))
                                                    (_%hd203605203653%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203604203649%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl203606203656%_))
                                                    (_%__kont207191207192%_
                                                     _%tl203600203636%_
                                                     _%hd203605203653%_
                                                     _%hd203602203643%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g203587203612%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g203587203612%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g203587203612%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g203587203612%_))))))
                (let () (declare (not safe)) (_%g203587203612%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx203706%_)
        (let* ((_%__stx207230207231%_ _%$stx203706%_)
               (_%g203711203742%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207230207231%_)))))
          (let ((_%__kont207233207234%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont207235207236%_
                 (lambda (_%L203809%_ _%L203811%_ _%L203812%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L203812%_
                                           (let ((__tmp207707
                                                  (lambda (_%g203832203835%_
                                                           _%g203833203838%_)
                                                    (cons _%g203832203835%_
                                                          _%g203833203838%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp207707
                                              '()
                                              _%L203811%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L203809%_)
                                     '()))))))
            (let ((_%__match207273207274%_
                   (lambda (_%e203719203749%_
                            _%hd203720203753%_
                            _%tl203721203756%_
                            _%e203722203759%_
                            _%hd203723203763%_
                            _%tl203724203766%_
                            _%e203725203769%_
                            _%hd203726203773%_
                            _%tl203727203776%_
                            _%__splice207237207238%_
                            _%target203728203779%_
                            _%tl203730203782%_)
                     (letrec ((_%loop203731203785%_
                               (lambda (_%hd203729203789%_ _%sig203735203792%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd203729203789%_))
                                     (let ((_%e203732203795%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd203729203789%_))))
                                       (let ((_%lp-tl203734203802%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e203732203795%_)))
                                             (_%lp-hd203733203799%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e203732203795%_))))
                                         (_%loop203731203785%_
                                          _%lp-tl203734203802%_
                                          (cons _%lp-hd203733203799%_
                                                _%sig203735203792%_))))
                                     (let ((_%sig203736203805%_
                                            (reverse _%sig203735203792%_)))
                                       (_%__kont207235207236%_
                                        _%tl203724203766%_
                                        _%sig203736203805%_
                                        _%hd203726203773%_))))))
                       (_%loop203731203785%_ _%target203728203779%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207230207231%_))
                  (let ((_%e203713203848%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx207230207231%_))))
                    (let ((_%tl203715203855%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203713203848%_)))
                          (_%hd203714203852%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203713203848%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203715203855%_))
                          (_%__kont207233207234%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203715203855%_))
                              (let ((_%e203722203759%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203715203855%_))))
                                (let ((_%tl203724203766%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203722203759%_)))
                                      (_%hd203723203763%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203722203759%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203723203763%_))
                                      (let ((_%e203725203769%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd203723203763%_))))
                                        (let ((_%tl203727203776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203725203769%_)))
                                              (_%hd203726203773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203725203769%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl203727203776%_))
                                              (let ((_%__splice207237207238%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl203727203776%_
                                                        '0))))
                                                (let ((_%tl203730203782%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice207237207238%_
                                                          '1)))
                                                      (_%target203728203779%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice207237207238%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203730203782%_))
                                                      (_%__match207273207274%_
                                                       _%e203713203848%_
                                                       _%hd203714203852%_
                                                       _%tl203715203855%_
                                                       _%e203722203759%_
                                                       _%hd203723203763%_
                                                       _%tl203724203766%_
                                                       _%e203725203769%_
                                                       _%hd203726203773%_
                                                       _%tl203727203776%_
                                                       _%__splice207237207238%_
                                                       _%target203728203779%_
                                                       _%tl203730203782%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203711203742%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203711203742%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203711203742%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g203711203742%_))))))
                  (let () (declare (not safe)) (_%g203711203742%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx203867%_)
        (let* ((_%__stx207276207277%_ _%$stx203867%_)
               (_%g203872203919%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207276207277%_)))))
          (let ((_%__kont207279207280%_
                 (lambda (_%L204081%_ _%L204083%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L204083%_
                               (let ((__tmp207708
                                      (lambda (_%g204103204106%_
                                               _%g204104204109%_)
                                        (cons _%g204103204106%_
                                              _%g204104204109%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp207708 '() _%L204081%_))))))
                (_%__kont207283207284%_
                 (lambda (_%L203976%_ _%L203978%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L203978%_
                               (let ((__tmp207709
                                      (lambda (_%g203995203998%_
                                               _%g203996204001%_)
                                        (cons _%g203995203998%_
                                              _%g203996204001%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp207709 '() _%L203976%_)))))))
            (let* ((_%__match207343207344%_
                    (lambda (_%e203899203926%_
                             _%hd203900203930%_
                             _%tl203901203933%_
                             _%e203902203936%_
                             _%hd203903203940%_
                             _%tl203904203943%_
                             _%__splice207285207286%_
                             _%target203905203946%_
                             _%tl203907203949%_)
                      (letrec ((_%loop203908203952%_
                                (lambda (_%hd203906203956%_
                                         _%sig203912203959%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203906203956%_))
                                      (let ((_%e203909203962%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd203906203956%_))))
                                        (let ((_%lp-tl203911203969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203909203962%_)))
                                              (_%lp-hd203910203966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203909203962%_))))
                                          (_%loop203908203952%_
                                           _%lp-tl203911203969%_
                                           (cons _%lp-hd203910203966%_
                                                 _%sig203912203959%_))))
                                      (let ((_%sig203913203972%_
                                             (reverse _%sig203912203959%_)))
                                        (_%__kont207283207284%_
                                         _%sig203913203972%_
                                         _%hd203903203940%_))))))
                        (_%loop203908203952%_ _%target203905203946%_ '()))))
                   (_%__match207335207336%_
                    (lambda (_%e203899203926%_
                             _%hd203900203930%_
                             _%tl203901203933%_
                             _%e203902203936%_
                             _%hd203903203940%_
                             _%tl203904203943%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl203904203943%_))
                          (let ((_%__splice207285207286%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl203904203943%_
                                    '0))))
                            (let ((_%tl203907203949%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice207285207286%_
                                      '1)))
                                  (_%target203905203946%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice207285207286%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203907203949%_))
                                  (_%__match207343207344%_
                                   _%e203899203926%_
                                   _%hd203900203930%_
                                   _%tl203901203933%_
                                   _%e203902203936%_
                                   _%hd203903203940%_
                                   _%tl203904203943%_
                                   _%__splice207285207286%_
                                   _%target203905203946%_
                                   _%tl203907203949%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g203872203919%_)))))
                          (let () (declare (not safe)) (_%g203872203919%_)))))
                   (_%__match207323207324%_
                    (lambda (_%e203876204011%_
                             _%hd203877204015%_
                             _%tl203878204018%_
                             _%e203879204021%_
                             _%hd203880204025%_
                             _%tl203881204028%_
                             _%e203882204031%_
                             _%hd203883204035%_
                             _%tl203884204038%_
                             _%e203885204041%_
                             _%hd203886204045%_
                             _%tl203887204048%_
                             _%__splice207281207282%_
                             _%target203888204051%_
                             _%tl203890204054%_)
                      (letrec ((_%loop203891204057%_
                                (lambda (_%hd203889204061%_
                                         _%sig203895204064%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203889204061%_))
                                      (let ((_%e203892204067%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd203889204061%_))))
                                        (let ((_%lp-tl203894204074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203892204067%_)))
                                              (_%lp-hd203893204071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203892204067%_))))
                                          (_%loop203891204057%_
                                           _%lp-tl203894204074%_
                                           (cons _%lp-hd203893204071%_
                                                 _%sig203895204064%_))))
                                      (let ((_%sig203896204077%_
                                             (reverse _%sig203895204064%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl203884204038%_))
                                            (_%__kont207279207280%_
                                             _%sig203896204077%_
                                             _%hd203880204025%_)
                                            (_%__match207335207336%_
                                             _%e203876204011%_
                                             _%hd203877204015%_
                                             _%tl203878204018%_
                                             _%e203879204021%_
                                             _%hd203880204025%_
                                             _%tl203881204028%_)))))))
                        (_%loop203891204057%_ _%target203888204051%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207276207277%_))
                  (let ((_%e203876204011%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx207276207277%_))))
                    (let ((_%tl203878204018%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203876204011%_)))
                          (_%hd203877204015%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203876204011%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203878204018%_))
                          (let ((_%e203879204021%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl203878204018%_))))
                            (let ((_%tl203881204028%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203879204021%_)))
                                  (_%hd203880204025%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203879204021%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203881204028%_))
                                  (let ((_%e203882204031%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl203881204028%_))))
                                    (let ((_%tl203884204038%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203882204031%_)))
                                          (_%hd203883204035%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203882204031%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd203883204035%_))
                                          (let ((_%e203885204041%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd203883204035%_))))
                                            (let ((_%tl203887204048%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203885204041%_)))
                                                  (_%hd203886204045%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203885204041%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd203886204045%_))
                                                  (if (let ((__tmp207710
                                                             |gxc[1]#_g207711_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp207710
                                                         _%hd203886204045%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl203887204048%_))
                                                          (let ((_%__splice207281207282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl203887204048%_ '0))))
                    (let ((_%tl203890204054%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice207281207282%_ '1)))
                          (_%target203888204051%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice207281207282%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203890204054%_))
                          (_%__match207323207324%_
                           _%e203876204011%_
                           _%hd203877204015%_
                           _%tl203878204018%_
                           _%e203879204021%_
                           _%hd203880204025%_
                           _%tl203881204028%_
                           _%e203882204031%_
                           _%hd203883204035%_
                           _%tl203884204038%_
                           _%e203885204041%_
                           _%hd203886204045%_
                           _%tl203887204048%_
                           _%__splice207281207282%_
                           _%target203888204051%_
                           _%tl203890204054%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203881204028%_))
                              (let ((_%__splice207285207286%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203881204028%_
                                        '0))))
                                (let ((_%tl203907203949%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice207285207286%_
                                          '1)))
                                      (_%target203905203946%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice207285207286%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203907203949%_))
                                      (_%__match207343207344%_
                                       _%e203876204011%_
                                       _%hd203877204015%_
                                       _%tl203878204018%_
                                       _%e203879204021%_
                                       _%hd203880204025%_
                                       _%tl203881204028%_
                                       _%__splice207285207286%_
                                       _%target203905203946%_
                                       _%tl203907203949%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g203872203919%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g203872203919%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl203881204028%_))
                      (let ((_%__splice207285207286%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl203881204028%_
                                '0))))
                        (let ((_%tl203907203949%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice207285207286%_ '1)))
                              (_%target203905203946%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice207285207286%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203907203949%_))
                              (_%__match207343207344%_
                               _%e203876204011%_
                               _%hd203877204015%_
                               _%tl203878204018%_
                               _%e203879204021%_
                               _%hd203880204025%_
                               _%tl203881204028%_
                               _%__splice207285207286%_
                               _%target203905203946%_
                               _%tl203907203949%_)
                              (let ()
                                (declare (not safe))
                                (_%g203872203919%_)))))
                      (let () (declare (not safe)) (_%g203872203919%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl203881204028%_))
                  (let ((_%__splice207285207286%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl203881204028%_ '0))))
                    (let ((_%tl203907203949%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice207285207286%_ '1)))
                          (_%target203905203946%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice207285207286%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203907203949%_))
                          (_%__match207343207344%_
                           _%e203876204011%_
                           _%hd203877204015%_
                           _%tl203878204018%_
                           _%e203879204021%_
                           _%hd203880204025%_
                           _%tl203881204028%_
                           _%__splice207285207286%_
                           _%target203905203946%_
                           _%tl203907203949%_)
                          (let () (declare (not safe)) (_%g203872203919%_)))))
                  (let () (declare (not safe)) (_%g203872203919%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl203881204028%_))
                                                      (let ((_%__splice207285207286%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl203881204028%_ '0))))
                (let ((_%tl203907203949%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice207285207286%_ '1)))
                      (_%target203905203946%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice207285207286%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl203907203949%_))
                      (_%__match207343207344%_
                       _%e203876204011%_
                       _%hd203877204015%_
                       _%tl203878204018%_
                       _%e203879204021%_
                       _%hd203880204025%_
                       _%tl203881204028%_
                       _%__splice207285207286%_
                       _%target203905203946%_
                       _%tl203907203949%_)
                      (let () (declare (not safe)) (_%g203872203919%_)))))
              (let () (declare (not safe)) (_%g203872203919%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl203881204028%_))
                                              (let ((_%__splice207285207286%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl203881204028%_
                                                        '0))))
                                                (let ((_%tl203907203949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice207285207286%_
                                                          '1)))
                                                      (_%target203905203946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice207285207286%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203907203949%_))
                                                      (_%__match207343207344%_
                                                       _%e203876204011%_
                                                       _%hd203877204015%_
                                                       _%tl203878204018%_
                                                       _%e203879204021%_
                                                       _%hd203880204025%_
                                                       _%tl203881204028%_
                                                       _%__splice207285207286%_
                                                       _%target203905203946%_
                                                       _%tl203907203949%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203872203919%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203872203919%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl203881204028%_))
                                      (let ((_%__splice207285207286%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl203881204028%_
                                                '0))))
                                        (let ((_%tl203907203949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice207285207286%_
                                                  '1)))
                                              (_%target203905203946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice207285207286%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203907203949%_))
                                              (_%__match207343207344%_
                                               _%e203876204011%_
                                               _%hd203877204015%_
                                               _%tl203878204018%_
                                               _%e203879204021%_
                                               _%hd203880204025%_
                                               _%tl203881204028%_
                                               _%__splice207285207286%_
                                               _%target203905203946%_
                                               _%tl203907203949%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g203872203919%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203872203919%_))))))
                          (let () (declare (not safe)) (_%g203872203919%_)))))
                  (let () (declare (not safe)) (_%g203872203919%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx205266%_ _%id205268%_)
        (let ((_%proc205272%_
               (let ((__tmp207712
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id205268%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp207712))))
          (if (procedure? _%proc205272%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx205266%_
                 _%id205268%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx205257%_ _%id205259%_)
        (let ((_%klass205263%_
               (let ((__tmp207713
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id205259%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp207713))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass205263%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx205257%_
                 _%id205259%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx204507%_ _%proc204509%_ _%sig204510%_)
        (letrec ((_%signature-arity204512%_
                  (lambda (_%args205189%_)
                    (let _%loop205192%_ ((_%rest205195%_ _%args205189%_)
                                         (_%count205197%_ '0))
                      (let* ((_%rest205198205209%_ _%rest205195%_)
                             (_%E205202205215%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest205198205209%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K205205205246%_
                               (lambda (_%rest205243%_)
                                 (_%loop205192%_
                                  _%rest205243%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count205197%_ '1)))))
                              (_%K205204205235%_ (lambda () _%count205197%_))
                              (_%K205203205223%_
                               (lambda () (cons _%count205197%_ '()))))
                          (let ((_%try-match205200205239%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest205198205209%_))
                                       (_%K205204205235%_)
                                       (_%K205203205223%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest205198205209%_))
                                (let* ((_%tl205207205250%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest205198205209%_)))
                                       (_%rest205254%_ _%tl205207205250%_))
                                  (_%K205205205246%_ _%rest205254%_))
                                (_%try-match205200205239%_))))))))
                 (_%make-signature204514%_
                  (lambda (_%args205071%_
                           _%return205073%_
                           _%effect205074%_
                           _%unchecked205075%_)
                    (let ((__tmp207714
                           (lambda (_%g205076205078%_)
                             (|gxc[1]#verify-class!|
                              _%ctx204507%_
                              _%g205076205078%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp207714 _%args205071%_))
                    (|gxc[1]#verify-class!| _%ctx204507%_ _%return205073%_)
                    (if _%unchecked205075%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx204507%_
                         _%unchecked205075%_)
                        '#!void)
                    (let ((_%arity205082%_
                           (_%signature-arity204512%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args205071%_)))))
                      (if _%effect205074%_
                          (let ((_%effect205085%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect205074%_))))
                            (if (and (list? _%effect205085%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect205085%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx204507%_
                                   _%proc204509%_
                                   _%effect205085%_))))
                          '#!void)
                      (cons _%arity205082%_
                            (cons (let* ((_%g205088205111%_
                                          (lambda (_%g205089205107%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g205089205107%_))))
                                         (_%g205087205185%_
                                          (lambda (_%g205089205115%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g205089205115%_))
                                                (let ((_%e205094205118%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g205089205115%_))))
                                                  (let ((_%hd205095205122%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e205094205118%_)))
                                                        (_%tl205096205125%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e205094205118%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl205096205125%_))
                                                        (let ((_%e205097205128%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl205096205125%_))))
                  (let ((_%hd205098205132%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205097205128%_)))
                        (_%tl205099205135%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205097205128%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl205099205135%_))
                        (let ((_%e205100205138%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205099205135%_))))
                          (let ((_%hd205101205142%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205100205138%_)))
                                (_%tl205102205145%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205100205138%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205102205145%_))
                                (let ((_%e205103205148%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205102205145%_))))
                                  (let ((_%hd205104205152%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205103205148%_)))
                                        (_%tl205105205155%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205103205148%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205105205155%_))
                                        ((lambda (_%L205158%_
                                                  _%L205160%_
                                                  _%L205161%_
                                                  _%L205162%_)
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
                           (cons _%L205162%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L205161%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L205160%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L205158%_ '()))
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
                                         _%hd205104205152%_
                                         _%hd205101205142%_
                                         _%hd205098205132%_
                                         _%hd205095205122%_)
                                        (_%g205088205111%_
                                         _%g205089205115%_))))
                                (_%g205088205111%_ _%g205089205115%_))))
                        (_%g205088205111%_ _%g205089205115%_))))
                (_%g205088205111%_ _%g205089205115%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205088205111%_
                                                 _%g205089205115%_)))))
                                    (_%g205087205185%_
                                     (list _%args205071%_
                                           _%return205073%_
                                           _%effect205074%_
                                           _%unchecked205075%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx204507%_ _%proc204509%_)
          (let* ((_%__stx207354207355%_ _%sig204510%_)
                 (_%g204521204624%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx207354207355%_)))))
            (let ((_%__kont207357207358%_
                   (lambda (_%L205052%_ _%L205054%_)
                     (_%make-signature204514%_
                      _%L205054%_
                      _%L205052%_
                      '#f
                      '#f)))
                  (_%__kont207359207360%_
                   (lambda (_%L205003%_ _%L205005%_ _%L205006%_)
                     (_%make-signature204514%_
                      _%L205006%_
                      _%L205005%_
                      _%L205003%_
                      '#f)))
                  (_%__kont207361207362%_
                   (lambda (_%L204927%_ _%L204929%_ _%L204930%_)
                     (_%make-signature204514%_
                      _%L204930%_
                      _%L204929%_
                      _%L204927%_
                      (let ((__tmp207715
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc204509%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp207715)))))
                  (_%__kont207363207364%_
                   (lambda (_%L204833%_ _%L204835%_ _%L204836%_ _%L204837%_)
                     (_%make-signature204514%_
                      _%L204837%_
                      _%L204836%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L204833%_)))))
                  (_%__kont207365207366%_
                   (lambda (_%L204740%_ _%L204742%_)
                     (_%make-signature204514%_
                      _%L204742%_
                      _%L204740%_
                      '#f
                      (let ((__tmp207716
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc204509%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp207716)))))
                  (_%__kont207367207368%_
                   (lambda (_%L204675%_ _%L204677%_ _%L204678%_)
                     (_%make-signature204514%_
                      _%L204678%_
                      _%L204677%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L204675%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207354207355%_))
                  (let ((_%e204525205032%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx207354207355%_))))
                    (let ((_%tl204527205039%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204525205032%_)))
                          (_%hd204526205036%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204525205032%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204527205039%_))
                          (let ((_%e204528205042%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl204527205039%_))))
                            (let ((_%tl204530205049%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204528205042%_)))
                                  (_%hd204529205046%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204528205042%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204530205049%_))
                                  (_%__kont207357207358%_
                                   _%hd204529205046%_
                                   _%hd204526205036%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204530205049%_))
                                      (let ((_%e204540204979%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204530205049%_))))
                                        (let ((_%tl204542204986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204540204979%_)))
                                              (_%hd204541204983%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204540204979%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd204541204983%_))
                                              (let ((_%e204543204989%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd204541204983%_))))
                                                (if (equal? _%e204543204989%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl204542204986%_))
                                                        (let ((_%e204544204993%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl204542204986%_))))
                  (let ((_%tl204546205000%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204544204993%_)))
                        (_%hd204545204997%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204544204993%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl204546205000%_))
                        (_%__kont207359207360%_
                         _%hd204545204997%_
                         _%hd204529205046%_
                         _%hd204526205036%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl204546205000%_))
                            (let ((_%e204563204913%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl204546205000%_))))
                              (let ((_%tl204565204920%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e204563204913%_)))
                                    (_%hd204564204917%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e204563204913%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd204564204917%_))
                                    (let ((_%e204566204923%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd204564204917%_))))
                                      (if (equal? _%e204566204923%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204565204920%_))
                                              (_%__kont207361207362%_
                                               _%hd204545204997%_
                                               _%hd204529205046%_
                                               _%hd204526205036%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204565204920%_))
                                                  (let ((_%e204588204823%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl204565204920%_))))
                                                    (let ((_%tl204590204830%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204588204823%_)))
                                                          (_%hd204589204827%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204588204823%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204590204830%_))
                                                          (_%__kont207363207364%_
                                                           _%hd204589204827%_
                                                           _%hd204545204997%_
                                                           _%hd204529205046%_
                                                           _%hd204526205036%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204521204624%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204521204624%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204521204624%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g204521204624%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g204521204624%_))))))
                (let () (declare (not safe)) (_%g204521204624%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e204543204989%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl204542204986%_))
                                                            (_%__kont207365207366%_
                                                             _%hd204529205046%_
                                                             _%hd204526205036%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl204542204986%_))
                        (let ((_%e204616204665%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl204542204986%_))))
                          (let ((_%tl204618204672%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204616204665%_)))
                                (_%hd204617204669%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204616204665%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl204618204672%_))
                                (_%__kont207367207368%_
                                 _%hd204617204669%_
                                 _%hd204529205046%_
                                 _%hd204526205036%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g204521204624%_)))))
                        (let () (declare (not safe)) (_%g204521204624%_))))
                (let () (declare (not safe)) (_%g204521204624%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g204521204624%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204521204624%_))))))
                          (let () (declare (not safe)) (_%g204521204624%_)))))
                  (let () (declare (not safe)) (_%g204521204624%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig204118%_)
        (let* ((_%g204121204201%_
                (lambda (_%g204122204197%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204122204197%_))))
               (_%g204120204503%_
                (lambda (_%g204122204205%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204122204205%_))
                      (let ((_%e204128204208%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204122204205%_))))
                        (let ((_%hd204129204212%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204128204208%_)))
                              (_%tl204130204215%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204128204208%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204130204215%_))
                              (let ((_%e204131204218%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204130204215%_))))
                                (let ((_%hd204132204222%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204131204218%_)))
                                      (_%tl204133204225%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204131204218%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd204132204222%_))
                                      (let ((_%e204134204228%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204132204222%_))))
                                        (if (equal? _%e204134204228%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl204133204225%_))
                                                (let ((_%e204135204232%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl204133204225%_))))
                                                  (let ((_%hd204136204236%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204135204232%_)))
                                                        (_%tl204137204239%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204135204232%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204136204236%_))
                                                        (let ((_%e204138204242%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204136204236%_))))
                  (let ((_%hd204139204246%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204138204242%_)))
                        (_%tl204140204249%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204138204242%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd204139204246%_))
                        (if (let ((__tmp207717 |gxc[1]#_g207718_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp207717
                               _%hd204139204246%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204140204249%_))
                                (let ((_%e204141204252%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204140204249%_))))
                                  (let ((_%hd204142204256%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204141204252%_)))
                                        (_%tl204143204259%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204141204252%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204143204259%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204137204239%_))
                                            (let ((_%e204144204262%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl204137204239%_))))
                                              (let ((_%hd204145204266%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204144204262%_)))
                                                    (_%tl204146204269%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204144204262%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd204145204266%_))
                                                    (let ((_%e204147204272%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd204145204266%_))))
                                                      (if (equal? _%e204147204272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204146204269%_))
                      (let ((_%e204148204276%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204146204269%_))))
                        (let ((_%hd204149204280%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204148204276%_)))
                              (_%tl204150204283%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204148204276%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd204149204280%_))
                              (let ((_%e204151204286%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd204149204280%_))))
                                (let ((_%hd204152204290%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204151204286%_)))
                                      (_%tl204153204293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204151204286%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd204152204290%_))
                                      (if (let ((__tmp207719
                                                 |gxc[1]#_g207720_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp207719
                                             _%hd204152204290%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204153204293%_))
                                              (let ((_%e204154204296%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204153204293%_))))
                                                (let ((_%hd204155204300%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204154204296%_)))
                                                      (_%tl204156204303%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204154204296%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204156204303%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204150204283%_))
                                                          (let ((_%e204157204306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl204150204283%_))))
                    (let ((_%hd204158204310%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204157204306%_)))
                          (_%tl204159204313%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204157204306%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd204158204310%_))
                          (let ((_%e204160204316%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd204158204310%_))))
                            (if (equal? _%e204160204316%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl204159204313%_))
                                    (let ((_%e204161204320%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl204159204313%_))))
                                      (let ((_%hd204162204324%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e204161204320%_)))
                                            (_%tl204163204327%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e204161204320%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd204162204324%_))
                                            (let ((_%e204164204330%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd204162204324%_))))
                                              (let ((_%hd204165204334%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204164204330%_)))
                                                    (_%tl204166204337%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204164204330%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd204165204334%_))
                                                    (if (let ((__tmp207721
                                                               |gxc[1]#_g207722_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp207721
                                                           _%hd204165204334%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl204166204337%_))
                                                            (let ((_%e204167204340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl204166204337%_))))
                      (let ((_%hd204168204344%_
                             (let ()
                               (declare (not safe))
                               (##car _%e204167204340%_)))
                            (_%tl204169204347%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e204167204340%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl204169204347%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204163204327%_))
                                (let ((_%e204170204350%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204163204327%_))))
                                  (let ((_%hd204171204354%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204170204350%_)))
                                        (_%tl204172204357%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204170204350%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd204171204354%_))
                                        (let ((_%e204173204360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd204171204354%_))))
                                          (if (equal? _%e204173204360%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204172204357%_))
                                                  (let ((_%e204174204364%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl204172204357%_))))
                                                    (let ((_%hd204175204368%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204174204364%_)))
                                                          (_%tl204176204371%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204174204364%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd204175204368%_))
                                                          (let ((_%e204177204374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd204175204368%_))))
                    (let ((_%hd204178204378%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204177204374%_)))
                          (_%tl204179204381%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204177204374%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd204178204378%_))
                          (if (let ((__tmp207723 |gxc[1]#_g207724_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp207723
                                 _%hd204178204378%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204179204381%_))
                                  (let ((_%e204180204384%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl204179204381%_))))
                                    (let ((_%hd204181204388%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204180204384%_)))
                                          (_%tl204182204391%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204180204384%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204182204391%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204176204371%_))
                                              (let ((_%e204183204394%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204176204371%_))))
                                                (let ((_%hd204184204398%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204183204394%_)))
                                                      (_%tl204185204401%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204183204394%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd204184204398%_))
                                                      (let ((_%e204186204404%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd204184204398%_))))
                (if (equal? _%e204186204404%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl204185204401%_))
                        (let ((_%e204187204408%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl204185204401%_))))
                          (let ((_%hd204188204412%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204187204408%_)))
                                (_%tl204189204415%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204187204408%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd204188204412%_))
                                (let ((_%e204190204418%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd204188204412%_))))
                                  (let ((_%hd204191204422%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204190204418%_)))
                                        (_%tl204192204425%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204190204418%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd204191204422%_))
                                        (if (let ((__tmp207725
                                                   |gxc[1]#_g207726_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp207725
                                               _%hd204191204422%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl204192204425%_))
                                                (let ((_%e204193204428%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl204192204425%_))))
                                                  (let ((_%hd204194204432%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204193204428%_)))
                                                        (_%tl204195204435%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204193204428%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl204195204435%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl204189204415%_))
                                                            ((lambda (_%L204438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L204440%_
                              _%L204441%_
                              _%L204442%_
                              _%L204443%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L204440%_))
                           (cons _%L204440%_
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
                       (cons _%L204442%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L204438%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd204194204432%_
                     _%hd204181204388%_
                     _%hd204168204344%_
                     _%hd204155204300%_
                     _%hd204142204256%_)
                    (_%g204121204201%_ _%g204122204205%_))
                (_%g204121204201%_ _%g204122204205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g204121204201%_
                                                 _%g204122204205%_))
                                            (_%g204121204201%_
                                             _%g204122204205%_))
                                        (_%g204121204201%_
                                         _%g204122204205%_))))
                                (_%g204121204201%_ _%g204122204205%_))))
                        (_%g204121204201%_ _%g204122204205%_))
                    (_%g204121204201%_ _%g204122204205%_)))
              (_%g204121204201%_ _%g204122204205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204121204201%_
                                               _%g204122204205%_))
                                          (_%g204121204201%_
                                           _%g204122204205%_))))
                                  (_%g204121204201%_ _%g204122204205%_))
                              (_%g204121204201%_ _%g204122204205%_))
                          (_%g204121204201%_ _%g204122204205%_))))
                  (_%g204121204201%_ _%g204122204205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g204121204201%_
                                                   _%g204122204205%_))
                                              (_%g204121204201%_
                                               _%g204122204205%_)))
                                        (_%g204121204201%_
                                         _%g204122204205%_))))
                                (_%g204121204201%_ _%g204122204205%_))
                            (_%g204121204201%_ _%g204122204205%_))))
                    (_%g204121204201%_ _%g204122204205%_))
                (_%g204121204201%_ _%g204122204205%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g204121204201%_
                                                     _%g204122204205%_))))
                                            (_%g204121204201%_
                                             _%g204122204205%_))))
                                    (_%g204121204201%_ _%g204122204205%_))
                                (_%g204121204201%_ _%g204122204205%_)))
                          (_%g204121204201%_ _%g204122204205%_))))
                  (_%g204121204201%_ _%g204122204205%_))
              (_%g204121204201%_ _%g204122204205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204121204201%_
                                               _%g204122204205%_))
                                          (_%g204121204201%_
                                           _%g204122204205%_))
                                      (_%g204121204201%_ _%g204122204205%_))))
                              (_%g204121204201%_ _%g204122204205%_))))
                      (_%g204121204201%_ _%g204122204205%_))
                  (_%g204121204201%_ _%g204122204205%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g204121204201%_
                                                     _%g204122204205%_))))
                                            (_%g204121204201%_
                                             _%g204122204205%_))
                                        (_%g204121204201%_
                                         _%g204122204205%_))))
                                (_%g204121204201%_ _%g204122204205%_))
                            (_%g204121204201%_ _%g204122204205%_))
                        (_%g204121204201%_ _%g204122204205%_))))
                (_%g204121204201%_ _%g204122204205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g204121204201%_
                                                 _%g204122204205%_))
                                            (_%g204121204201%_
                                             _%g204122204205%_)))
                                      (_%g204121204201%_ _%g204122204205%_))))
                              (_%g204121204201%_ _%g204122204205%_))))
                      (_%g204121204201%_ _%g204122204205%_)))))
          (_%g204120204503%_ _%sig204118%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx205275%_)
        (let* ((_%g205278205296%_
                (lambda (_%g205279205292%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205279205292%_))))
               (_%g205277205351%_
                (lambda (_%g205279205300%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205279205300%_))
                      (let ((_%e205282205303%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205279205300%_))))
                        (let ((_%hd205283205307%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205282205303%_)))
                              (_%tl205284205310%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205282205303%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205284205310%_))
                              (let ((_%e205285205313%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205284205310%_))))
                                (let ((_%hd205286205317%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205285205313%_)))
                                      (_%tl205287205320%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205285205313%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205287205320%_))
                                      (let ((_%e205288205323%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205287205320%_))))
                                        (let ((_%hd205289205327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205288205323%_)))
                                              (_%tl205290205330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205288205323%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205290205330%_))
                                              ((lambda (_%L205333%_
                                                        _%L205335%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L205335%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L205333%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx205275%_
                                                        _%L205335%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx205275%_
                                                        _%L205333%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L205335%_
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
                                                   (cons _%L205333%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205278205296%_
                                                      _%g205279205300%_)))
                                               _%hd205289205327%_
                                               _%hd205286205317%_)
                                              (_%g205278205296%_
                                               _%g205279205300%_))))
                                      (_%g205278205296%_ _%g205279205300%_))))
                              (_%g205278205296%_ _%g205279205300%_))))
                      (_%g205278205296%_ _%g205279205300%_)))))
          (_%g205277205351%_ _%stx205275%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx205355%_)
        (let* ((_%g205358205382%_
                (lambda (_%g205359205378%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205359205378%_))))
               (_%g205357205665%_
                (lambda (_%g205359205386%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205359205386%_))
                      (let ((_%e205362205389%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205359205386%_))))
                        (let ((_%hd205363205393%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205362205389%_)))
                              (_%tl205364205396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205362205389%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205364205396%_))
                              (let ((_%e205365205399%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205364205396%_))))
                                (let ((_%hd205366205403%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205365205399%_)))
                                      (_%tl205367205406%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205365205399%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl205367205406%_))
                                      (let ((_g207727_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl205367205406%_
                                                '0))))
                                        (begin
                                          (let ((_g207728_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207727_)
                                                       (##vector-length
                                                        _g207727_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207728_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207728_)))
                                          (let ((_%target205368205409%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g207727_ 0)))
                                                (_%tl205370205412%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g207727_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl205370205412%_))
                                                (letrec ((_%loop205371205415%_
                                                          (lambda (_%hd205369205419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature205375205422%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd205369205419%_))
                        (let ((_%e205372205425%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd205369205419%_))))
                          (let ((_%lp-hd205373205429%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205372205425%_)))
                                (_%lp-tl205374205432%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205372205425%_))))
                            (_%loop205371205415%_
                             _%lp-tl205374205432%_
                             (cons _%lp-hd205373205429%_
                                   _%signature205375205422%_))))
                        (let ((_%signature205376205435%_
                               (reverse _%signature205375205422%_)))
                          ((lambda (_%L205439%_ _%L205441%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L205441%_))
                                 (let* ((_%g205459205474%_
                                         (lambda (_%g205460205470%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g205460205470%_))))
                                        (_%g205458205653%_
                                         (lambda (_%g205460205478%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g205460205478%_))
                                               (let ((_%e205463205481%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g205460205478%_))))
                                                 (let ((_%hd205464205485%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e205463205481%_)))
                                                       (_%tl205465205488%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e205463205481%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl205465205488%_))
                                                       (let ((_%e205466205491%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl205465205488%_))))
                 (let ((_%hd205467205495%_
                        (let ()
                          (declare (not safe))
                          (##car _%e205466205491%_)))
                       (_%tl205468205498%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e205466205491%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl205468205498%_))
                       ((lambda (_%L205501%_ _%L205503%_)
                          (let* ((_%g205519205527%_
                                  (lambda (_%g205520205523%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g205520205523%_))))
                                 (_%g205518205649%_
                                  (lambda (_%g205520205531%_)
                                    ((lambda (_%L205534%_)
                                       (let* ((_%unchecked205547%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L205501%_))
                                              (_%g205550205558%_
                                               (lambda (_%g205551205554%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g205551205554%_))))
                                              (_%g205549205581%_
                                               (lambda (_%g205551205562%_)
                                                 ((lambda (_%L205565%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L205534%_
                                                                (cons _%L205565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g205551205562%_))))
                                         (_%g205549205581%_
                                          (if _%unchecked205547%_
                                              (let* ((_%g205585205600%_
                                                      (lambda (_%g205586205596%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g205586205596%_))))
                                                     (_%g205584205645%_
                                                      (lambda (_%g205586205604%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g205586205604%_))
                                                            (let ((_%e205589205607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g205586205604%_))))
                      (let ((_%hd205590205611%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205589205607%_)))
                            (_%tl205591205614%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205589205607%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl205591205614%_))
                            (let ((_%e205592205617%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl205591205614%_))))
                              (let ((_%hd205593205621%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e205592205617%_)))
                                    (_%tl205594205624%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e205592205617%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205594205624%_))
                                    ((lambda (_%L205627%_ _%L205629%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L205629%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205503%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L205627%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd205593205621%_
                                     _%hd205590205611%_)
                                    (_%g205585205600%_ _%g205586205604%_))))
                            (_%g205585205600%_ _%g205586205604%_))))
                    (_%g205585205600%_ _%g205586205604%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205584205645%_
                                                 _%unchecked205547%_))
                                              '(begin)))))
                                     _%g205520205531%_))))
                            (_%g205518205649%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L205441%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L205503%_ '()))
                   (cons '#f (cons 'signature: (cons _%L205501%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd205467205495%_
                        _%hd205464205485%_)
                       (_%g205459205474%_ _%g205460205478%_))))
               (_%g205459205474%_ _%g205460205478%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205459205474%_
                                                _%g205460205478%_)))))
                                   (_%g205458205653%_
                                    (|gxc[1]#parse-signature|
                                     _%stx205355%_
                                     _%L205441%_
                                     (let ((__tmp207729
                                            (lambda (_%g205656205659%_
                                                     _%g205657205662%_)
                                              (cons _%g205656205659%_
                                                    _%g205657205662%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp207729
                                        '()
                                        _%L205439%_)))))
                                 (_%g205358205382%_ _%g205359205386%_)))
                           _%signature205376205435%_
                           _%hd205366205403%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop205371205415%_
                                                   _%target205368205409%_
                                                   '()))
                                                (_%g205358205382%_
                                                 _%g205359205386%_)))))
                                      (_%g205358205382%_ _%g205359205386%_))))
                              (_%g205358205382%_ _%g205359205386%_))))
                      (_%g205358205382%_ _%g205359205386%_)))))
          (_%g205357205665%_ _%stx205355%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx205670%_)
        (let* ((_%g205673205697%_
                (lambda (_%g205674205693%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205674205693%_))))
               (_%g205672206580%_
                (lambda (_%g205674205701%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205674205701%_))
                      (let ((_%e205677205704%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205674205701%_))))
                        (let ((_%hd205678205708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205677205704%_)))
                              (_%tl205679205711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205677205704%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205679205711%_))
                              (let ((_%e205680205714%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205679205711%_))))
                                (let ((_%hd205681205718%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205680205714%_)))
                                      (_%tl205682205721%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205680205714%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl205682205721%_))
                                      (let ((_g207730_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl205682205721%_
                                                '0))))
                                        (begin
                                          (let ((_g207731_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207730_)
                                                       (##vector-length
                                                        _g207730_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207731_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207731_)))
                                          (let ((_%target205683205724%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g207730_ 0)))
                                                (_%tl205685205727%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g207730_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl205685205727%_))
                                                (letrec ((_%loop205686205730%_
                                                          (lambda (_%hd205684205734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature205690205737%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd205684205734%_))
                        (let ((_%e205687205740%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd205684205734%_))))
                          (let ((_%lp-hd205688205744%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205687205740%_)))
                                (_%lp-tl205689205747%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205687205740%_))))
                            (_%loop205686205730%_
                             _%lp-tl205689205747%_
                             (cons _%lp-hd205688205744%_
                                   _%case-signature205690205737%_))))
                        (let ((_%case-signature205691205750%_
                               (reverse _%case-signature205690205737%_)))
                          ((lambda (_%L205754%_ _%L205756%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L205756%_))
                                 (let* ((_%signatures205787%_
                                         (map (lambda (_%g205773205775%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx205670%_
                                                 _%L205756%_
                                                 _%g205773205775%_))
                                              (let ((__tmp207732
                                                     (lambda (_%g205778205781%_
                                                              _%g205779205784%_)
                                                       (cons _%g205778205781%_
                                                             _%g205779205784%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp207732
                                                 '()
                                                 _%L205754%_))))
                                        (_%g205790205816%_
                                         (lambda (_%g205791205812%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g205791205812%_))))
                                        (_%g205789206576%_
                                         (lambda (_%g205791205820%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g205791205820%_))
                                               (let ((_g207733_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g205791205820%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g207734_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g207733_)
                        (##vector-length _g207733_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g207734_ 2)))
                 (error "Context expects 2 values" _g207734_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target205794205823%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g207733_
                                                             0)))
                                                         (_%tl205796205826%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g207733_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl205796205826%_))
                                                         (letrec ((_%loop205797205829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd205795205833%_
                                    _%sig205801205836%_
                                    _%arity205802205838%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd205795205833%_))
                                 (let ((_%e205798205841%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd205795205833%_))))
                                   (let ((_%lp-hd205799205845%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205798205841%_)))
                                         (_%lp-tl205800205848%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205798205841%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd205799205845%_))
                                         (let ((_%e205805205851%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd205799205845%_))))
                                           (let ((_%hd205806205855%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e205805205851%_)))
                                                 (_%tl205807205858%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e205805205851%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl205807205858%_))
                                                 (let ((_%e205808205861%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl205807205858%_))))
                                                   (let ((_%hd205809205865%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e205808205861%_)))
                                                         (_%tl205810205868%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e205808205861%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl205810205868%_))
                                                         (_%loop205797205829%_
                                                          _%lp-tl205800205848%_
                                                          (cons _%hd205809205865%_
                                                                _%sig205801205836%_)
                                                          (cons _%hd205806205855%_
                                                                _%arity205802205838%_))
                                                         (_%g205790205816%_
                                                          _%g205791205820%_))))
                                                 (_%g205790205816%_
                                                  _%g205791205820%_))))
                                         (_%g205790205816%_
                                          _%g205791205820%_))))
                                 (let ((_%sig205803205871%_
                                        (reverse _%sig205801205836%_))
                                       (_%arity205804205874%_
                                        (reverse _%arity205802205838%_)))
                                   ((lambda (_%L205877%_ _%L205879%_)
                                      (let* ((_%g205896205904%_
                                              (lambda (_%g205897205900%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g205897205900%_))))
                                             (_%g205895206561%_
                                              (lambda (_%g205897205908%_)
                                                ((lambda (_%L205911%_)
                                                   (let* ((_%g205924205932%_
                                                           (lambda (_%g205925205928%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g205925205928%_))))
                  (_%g205923205954%_
                   (lambda (_%g205925205936%_)
                     ((lambda (_%L205939%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L205911%_ (cons _%L205939%_ '()))))
                      _%g205925205936%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205923205954%_
                                                      (let ((_g207735_
                                                             (let _%loop205958%_ ((_%rest205961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures205787%_)
                                          (_%unchecked-proc205963%_ '#f)
                                          (_%unchecked-clauses205964%_ '()))
                       (let* ((_%rest205965205973%_ _%rest205961%_)
                              (_%else205967205985%_
                               (lambda ()
                                 (values _%unchecked-proc205963%_
                                         (reverse!
                                          _%unchecked-clauses205964%_))))
                              (_%K205969206426%_
                               (lambda (_%rest205989%_ _%hd205991%_)
                                 (let* ((_%g205993206080%_
                                         (lambda (_%g205994206076%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g205994206076%_))))
                                        (_%g205992206422%_
                                         (lambda (_%g205994206084%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g205994206084%_))
                                               (let ((_%e206001206087%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g205994206084%_))))
                                                 (let ((_%hd206002206091%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e206001206087%_)))
                                                       (_%tl206003206094%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e206001206087%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl206003206094%_))
                                                       (let ((_%e206004206097%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl206003206094%_))))
                 (let ((_%hd206005206101%_
                        (let ()
                          (declare (not safe))
                          (##car _%e206004206097%_)))
                       (_%tl206006206104%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e206004206097%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd206005206101%_))
                       (let ((_%e206007206107%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd206005206101%_))))
                         (let ((_%hd206008206111%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e206007206107%_)))
                               (_%tl206009206114%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e206007206107%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl206009206114%_))
                               (let ((_%e206010206117%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl206009206114%_))))
                                 (let ((_%hd206011206121%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e206010206117%_)))
                                       (_%tl206012206124%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e206010206117%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd206011206121%_))
                                       (let ((_%e206013206127%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd206011206121%_))))
                                         (if (equal? _%e206013206127%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl206012206124%_))
                                                 (let ((_%e206014206131%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl206012206124%_))))
                                                   (let ((_%hd206015206135%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e206014206131%_)))
                                                         (_%tl206016206138%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e206014206131%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd206015206135%_))
                                                         (let ((_%e206017206141%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd206015206135%_))))
                   (let ((_%hd206018206145%_
                          (let ()
                            (declare (not safe))
                            (##car _%e206017206141%_)))
                         (_%tl206019206148%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e206017206141%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd206018206145%_))
                         (if (let ((__tmp207737 |gxc[1]#_g207738_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp207737
                                _%hd206018206145%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl206019206148%_))
                                 (let ((_%e206020206151%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl206019206148%_))))
                                   (let ((_%hd206021206155%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e206020206151%_)))
                                         (_%tl206022206158%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e206020206151%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl206022206158%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl206016206138%_))
                                             (let ((_%e206023206161%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl206016206138%_))))
                                               (let ((_%hd206024206165%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e206023206161%_)))
                                                     (_%tl206025206168%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e206023206161%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd206024206165%_))
                                                     (let ((_%e206026206171%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd206024206165%_))))
                                                       (if (equal? _%e206026206171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl206025206168%_))
                       (let ((_%e206027206175%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl206025206168%_))))
                         (let ((_%hd206028206179%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e206027206175%_)))
                               (_%tl206029206182%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e206027206175%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd206028206179%_))
                               (let ((_%e206030206185%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd206028206179%_))))
                                 (let ((_%hd206031206189%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e206030206185%_)))
                                       (_%tl206032206192%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e206030206185%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd206031206189%_))
                                       (if (let ((__tmp207739
                                                  |gxc[1]#_g207740_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp207739
                                              _%hd206031206189%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl206032206192%_))
                                               (let ((_%e206033206195%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl206032206192%_))))
                                                 (let ((_%hd206034206199%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e206033206195%_)))
                                                       (_%tl206035206202%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e206033206195%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl206035206202%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl206029206182%_))
                                                           (let ((_%e206036206205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl206029206182%_))))
                     (let ((_%hd206037206209%_
                            (let ()
                              (declare (not safe))
                              (##car _%e206036206205%_)))
                           (_%tl206038206212%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e206036206205%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd206037206209%_))
                           (let ((_%e206039206215%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd206037206209%_))))
                             (if (equal? _%e206039206215%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl206038206212%_))
                                     (let ((_%e206040206219%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl206038206212%_))))
                                       (let ((_%hd206041206223%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e206040206219%_)))
                                             (_%tl206042206226%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e206040206219%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd206041206223%_))
                                             (let ((_%e206043206229%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd206041206223%_))))
                                               (let ((_%hd206044206233%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e206043206229%_)))
                                                     (_%tl206045206236%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e206043206229%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd206044206233%_))
                                                     (if (let ((__tmp207741
                                                                |gxc[1]#_g207742_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp207741
                                                            _%hd206044206233%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl206045206236%_))
                     (let ((_%e206046206239%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl206045206236%_))))
                       (let ((_%hd206047206243%_
                              (let ()
                                (declare (not safe))
                                (##car _%e206046206239%_)))
                             (_%tl206048206246%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e206046206239%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl206048206246%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl206042206226%_))
                                 (let ((_%e206049206249%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl206042206226%_))))
                                   (let ((_%hd206050206253%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e206049206249%_)))
                                         (_%tl206051206256%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e206049206249%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd206050206253%_))
                                         (let ((_%e206052206259%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd206050206253%_))))
                                           (if (equal? _%e206052206259%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl206051206256%_))
                                                   (let ((_%e206053206263%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl206051206256%_))))
                                                     (let ((_%hd206054206267%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e206053206263%_)))
                                                           (_%tl206055206270%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e206053206263%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd206054206267%_))
                                                           (let ((_%e206056206273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd206054206267%_))))
                     (let ((_%hd206057206277%_
                            (let ()
                              (declare (not safe))
                              (##car _%e206056206273%_)))
                           (_%tl206058206280%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e206056206273%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd206057206277%_))
                           (if (let ((__tmp207743 |gxc[1]#_g207744_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp207743
                                  _%hd206057206277%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl206058206280%_))
                                   (let ((_%e206059206283%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl206058206280%_))))
                                     (let ((_%hd206060206287%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e206059206283%_)))
                                           (_%tl206061206290%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e206059206283%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl206061206290%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl206055206270%_))
                                               (let ((_%e206062206293%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl206055206270%_))))
                                                 (let ((_%hd206063206297%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e206062206293%_)))
                                                       (_%tl206064206300%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e206062206293%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd206063206297%_))
                                                       (let ((_%e206065206303%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd206063206297%_))))
                 (if (equal? _%e206065206303%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl206064206300%_))
                         (let ((_%e206066206307%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl206064206300%_))))
                           (let ((_%hd206067206311%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e206066206307%_)))
                                 (_%tl206068206314%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e206066206307%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd206067206311%_))
                                 (let ((_%e206069206317%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd206067206311%_))))
                                   (let ((_%hd206070206321%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e206069206317%_)))
                                         (_%tl206071206324%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e206069206317%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd206070206321%_))
                                         (if (let ((__tmp207745
                                                    |gxc[1]#_g207746_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp207745
                                                _%hd206070206321%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl206071206324%_))
                                                 (let ((_%e206072206327%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl206071206324%_))))
                                                   (let ((_%hd206073206331%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e206072206327%_)))
                                                         (_%tl206074206334%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e206072206327%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl206074206334%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl206068206314%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl206006206104%_))
                         ((lambda (_%L206337%_
                                   _%L206339%_
                                   _%L206340%_
                                   _%L206341%_
                                   _%L206342%_
                                   _%L206343%_)
                            (let ((_%clause206414%_
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
                                                     (cons _%L206343%_ '()))
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
                                                 (cons _%L206341%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206337%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked206416%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L206339%_))))
                              (_%loop205958%_
                               _%rest205989%_
                               (let ((_%$e206418%_ _%unchecked206416%_))
                                 (if _%$e206418%_
                                     _%$e206418%_
                                     _%unchecked-proc205963%_))
                               (cons _%clause206414%_
                                     _%unchecked-clauses205964%_))))
                          _%hd206073206331%_
                          _%hd206060206287%_
                          _%hd206047206243%_
                          _%hd206034206199%_
                          _%hd206021206155%_
                          _%hd206002206091%_)
                         (_%g205993206080%_ _%g205994206084%_))
                     (_%g205993206080%_ _%g205994206084%_))
                 (_%g205993206080%_ _%g205994206084%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g205993206080%_
                                                  _%g205994206084%_))
                                             (_%g205993206080%_
                                              _%g205994206084%_))
                                         (_%g205993206080%_
                                          _%g205994206084%_))))
                                 (_%g205993206080%_ _%g205994206084%_))))
                         (_%g205993206080%_ _%g205994206084%_))
                     (_%g205993206080%_ _%g205994206084%_)))
               (_%g205993206080%_ _%g205994206084%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205993206080%_
                                                _%g205994206084%_))
                                           (_%g205993206080%_
                                            _%g205994206084%_))))
                                   (_%g205993206080%_ _%g205994206084%_))
                               (_%g205993206080%_ _%g205994206084%_))
                           (_%g205993206080%_ _%g205994206084%_))))
                   (_%g205993206080%_ _%g205994206084%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g205993206080%_
                                                    _%g205994206084%_))
                                               (_%g205993206080%_
                                                _%g205994206084%_)))
                                         (_%g205993206080%_
                                          _%g205994206084%_))))
                                 (_%g205993206080%_ _%g205994206084%_))
                             (_%g205993206080%_ _%g205994206084%_))))
                     (_%g205993206080%_ _%g205994206084%_))
                 (_%g205993206080%_ _%g205994206084%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205993206080%_
                                                      _%g205994206084%_))))
                                             (_%g205993206080%_
                                              _%g205994206084%_))))
                                     (_%g205993206080%_ _%g205994206084%_))
                                 (_%g205993206080%_ _%g205994206084%_)))
                           (_%g205993206080%_ _%g205994206084%_))))
                   (_%g205993206080%_ _%g205994206084%_))
               (_%g205993206080%_ _%g205994206084%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205993206080%_
                                                _%g205994206084%_))
                                           (_%g205993206080%_
                                            _%g205994206084%_))
                                       (_%g205993206080%_ _%g205994206084%_))))
                               (_%g205993206080%_ _%g205994206084%_))))
                       (_%g205993206080%_ _%g205994206084%_))
                   (_%g205993206080%_ _%g205994206084%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205993206080%_
                                                      _%g205994206084%_))))
                                             (_%g205993206080%_
                                              _%g205994206084%_))
                                         (_%g205993206080%_
                                          _%g205994206084%_))))
                                 (_%g205993206080%_ _%g205994206084%_))
                             (_%g205993206080%_ _%g205994206084%_))
                         (_%g205993206080%_ _%g205994206084%_))))
                 (_%g205993206080%_ _%g205994206084%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g205993206080%_
                                                  _%g205994206084%_))
                                             (_%g205993206080%_
                                              _%g205994206084%_)))
                                       (_%g205993206080%_ _%g205994206084%_))))
                               (_%g205993206080%_ _%g205994206084%_))))
                       (_%g205993206080%_ _%g205994206084%_))))
               (_%g205993206080%_ _%g205994206084%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205993206080%_
                                                _%g205994206084%_)))))
                                   (_%g205992206422%_ _%hd205991%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest205965205973%_))
                             (let ((_%hd205970206430%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest205965205973%_)))
                                   (_%tl205971206433%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest205965205973%_))))
                               (let* ((_%hd206436%_ _%hd205970206430%_)
                                      (_%rest206439%_ _%tl205971206433%_))
                                 (_%K205969206426%_
                                  _%rest206439%_
                                  _%hd206436%_)))
                             (_%else205967205985%_))))))
                (begin
                  (let ((_g207736_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g207735_)
                               (##vector-length _g207735_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g207736_ 2)))
                        (error "Context expects 2 values" _g207736_)))
                  (let ((_%unchecked-proc206442%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207735_ 0)))
                        (_%unchecked-clauses206444%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207735_ 1))))
                    (if _%unchecked-proc206442%_
                        (let* ((_%g206446206470%_
                                (lambda (_%g206447206466%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g206447206466%_))))
                               (_%g206445206557%_
                                (lambda (_%g206447206474%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g206447206474%_))
                                      (let ((_%e206450206477%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g206447206474%_))))
                                        (let ((_%hd206451206481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206450206477%_)))
                                              (_%tl206452206484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206450206477%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206452206484%_))
                                              (let ((_%e206453206487%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206452206484%_))))
                                                (let ((_%hd206454206491%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206453206487%_)))
                                                      (_%tl206455206494%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206453206487%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd206454206491%_))
                                                      (let ((_g207747_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd206454206491%_ '0))))
                (begin
                  (let ((_g207748_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g207747_)
                               (##vector-length _g207747_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g207748_ 2)))
                        (error "Context expects 2 values" _g207748_)))
                  (let ((_%target206456206497%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207747_ 0)))
                        (_%tl206458206500%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207747_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl206458206500%_))
                        (letrec ((_%loop206459206503%_
                                  (lambda (_%hd206457206507%_
                                           _%clause206463206510%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd206457206507%_))
                                        (let ((_%e206460206513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd206457206507%_))))
                                          (let ((_%lp-hd206461206517%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e206460206513%_)))
                                                (_%lp-tl206462206520%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e206460206513%_))))
                                            (_%loop206459206503%_
                                             _%lp-tl206462206520%_
                                             (cons _%lp-hd206461206517%_
                                                   _%clause206463206510%_))))
                                        (let ((_%clause206464206523%_
                                               (reverse _%clause206463206510%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206455206494%_))
                                              ((lambda (_%L206527%_
                                                        _%L206529%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L206529%_
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
                                             (let ((__tmp207749
                                                    (lambda (_%g206548206551%_
                                                             _%g206549206554%_)
                                                      (cons _%g206548206551%_
                                                            _%g206549206554%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp207749
                                                '()
                                                _%L206527%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause206464206523%_
                                               _%hd206451206481%_)
                                              (_%g206446206470%_
                                               _%g206447206474%_)))))))
                          (_%loop206459206503%_ _%target206456206497%_ '()))
                        (_%g206446206470%_ _%g206447206474%_)))))
              (_%g206446206470%_ _%g206447206474%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206446206470%_
                                               _%g206447206474%_))))
                                      (_%g206446206470%_ _%g206447206474%_)))))
                          (_%g206445206557%_
                           (list _%unchecked-proc206442%_
                                 _%unchecked-clauses206444%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g205897205908%_))))
                                        (_%g205895206561%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L205756%_
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
                                          _%L205877%_
                                          _%L205879%_))
                                       (let ((__tmp207750
                                              (lambda (_%g206564206568%_
                                                       _%g206565206571%_
                                                       _%g206566206573%_)
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
                                (cons _%g206565206571%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g206564206568%_ '())))))
              _%g206566206573%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp207750
                                          '()
                                          _%L205877%_
                                          _%L205879%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig205803205871%_
                                    _%arity205804205874%_))))))
                   (_%loop205797205829%_ _%target205794205823%_ '() '()))
                 (_%g205790205816%_ _%g205791205820%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205790205816%_
                                                _%g205791205820%_)))))
                                   (_%g205789206576%_ _%signatures205787%_))
                                 (_%g205673205697%_ _%g205674205701%_)))
                           _%case-signature205691205750%_
                           _%hd205681205718%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop205686205730%_
                                                   _%target205683205724%_
                                                   '()))
                                                (_%g205673205697%_
                                                 _%g205674205701%_)))))
                                      (_%g205673205697%_ _%g205674205701%_))))
                              (_%g205673205697%_ _%g205674205701%_))))
                      (_%g205673205697%_ _%g205674205701%_)))))
          (_%g205672206580%_ _%stx205670%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx206588%_)
        (let* ((_%__stx207570207571%_ _%$stx206588%_)
               (_%g206594206654%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207570207571%_)))))
          (let ((_%__kont207573207574%_
                 (lambda (_%L206876%_ _%L206878%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L206878%_ '()))
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
                                                       (cons _%L206878%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206876%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont207575207576%_
                 (lambda (_%L206801%_ _%L206803%_ _%L206804%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L206804%_ '()))
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
                                                       (cons _%L206804%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206803%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206801%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont207577207578%_
                 (lambda (_%L206715%_ _%L206717%_ _%L206718%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L206718%_ '()))
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
                                                       (cons _%L206718%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206717%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206715%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx207570207571%_))
                (let ((_%e206598206832%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx207570207571%_))))
                  (let ((_%tl206600206839%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206598206832%_)))
                        (_%hd206599206836%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206598206832%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206600206839%_))
                        (let ((_%e206601206842%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206600206839%_))))
                          (let ((_%tl206603206849%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206601206842%_)))
                                (_%hd206602206846%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206601206842%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd206602206846%_))
                                (let ((_%e206604206852%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd206602206846%_))))
                                  (if (equal? _%e206604206852%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl206603206849%_))
                                          (let ((_%e206605206856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl206603206849%_))))
                                            (let ((_%tl206607206863%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e206605206856%_)))
                                                  (_%hd206606206860%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e206605206856%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206607206863%_))
                                                  (let ((_%e206608206866%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206607206863%_))))
                                                    (let ((_%tl206610206873%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206608206866%_)))
                                                          (_%hd206609206870%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206608206866%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl206610206873%_))
                                                          (_%__kont207573207574%_
                                                           _%hd206609206870%_
                                                           _%hd206606206860%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g206594206654%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g206594206654%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g206594206654%_)))
                                      (if (equal? _%e206604206852%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206603206849%_))
                                              (let ((_%e206621206771%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206603206849%_))))
                                                (let ((_%tl206623206778%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206621206771%_)))
                                                      (_%hd206622206775%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206621206771%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl206623206778%_))
                                                      (let ((_%e206624206781%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl206623206778%_))))
                (let ((_%tl206626206788%_
                       (let () (declare (not safe)) (##cdr _%e206624206781%_)))
                      (_%hd206625206785%_
                       (let ()
                         (declare (not safe))
                         (##car _%e206624206781%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl206626206788%_))
                      (let ((_%e206627206791%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl206626206788%_))))
                        (let ((_%tl206629206798%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206627206791%_)))
                              (_%hd206628206795%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206627206791%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl206629206798%_))
                              (_%__kont207575207576%_
                               _%hd206628206795%_
                               _%hd206625206785%_
                               _%hd206622206775%_)
                              (let ()
                                (declare (not safe))
                                (_%g206594206654%_)))))
                      (let () (declare (not safe)) (_%g206594206654%_)))))
              (let () (declare (not safe)) (_%g206594206654%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g206594206654%_)))
                                          (if (equal? _%e206604206852%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206603206849%_))
                                                  (let ((_%e206640206685%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206603206849%_))))
                                                    (let ((_%tl206642206692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206640206685%_)))
                                                          (_%hd206641206689%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206640206685%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl206642206692%_))
                                                          (let ((_%e206643206695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl206642206692%_))))
                    (let ((_%tl206645206702%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206643206695%_)))
                          (_%hd206644206699%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206643206695%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl206645206702%_))
                          (let ((_%e206646206705%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl206645206702%_))))
                            (let ((_%tl206648206712%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206646206705%_)))
                                  (_%hd206647206709%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206646206705%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206648206712%_))
                                  (_%__kont207577207578%_
                                   _%hd206647206709%_
                                   _%hd206644206699%_
                                   _%hd206641206689%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g206594206654%_)))))
                          (let () (declare (not safe)) (_%g206594206654%_)))))
                  (let () (declare (not safe)) (_%g206594206654%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g206594206654%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206594206654%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g206594206654%_)))))
                        (let () (declare (not safe)) (_%g206594206654%_)))))
                (let () (declare (not safe)) (_%g206594206654%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx206900%_)
        (let* ((_%g206904206924%_
                (lambda (_%g206905206920%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206905206920%_))))
               (_%g206903206995%_
                (lambda (_%g206905206928%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206905206928%_))
                      (let ((_%e206907206931%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206905206928%_))))
                        (let ((_%hd206908206935%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206907206931%_)))
                              (_%tl206909206938%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206907206931%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl206909206938%_))
                              (let ((_g207751_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl206909206938%_
                                        '0))))
                                (begin
                                  (let ((_g207752_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207751_)
                                               (##vector-length _g207751_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207752_ 2)))
                                        (error "Context expects 2 values"
                                               _g207752_)))
                                  (let ((_%target206910206941%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207751_ 0)))
                                        (_%tl206912206944%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207751_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206912206944%_))
                                        (letrec ((_%loop206913206947%_
                                                  (lambda (_%hd206911206951%_
                                                           _%decl206917206954%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd206911206951%_))
                                                        (let ((_%e206914206957%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd206911206951%_))))
                  (let ((_%lp-hd206915206961%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206914206957%_)))
                        (_%lp-tl206916206964%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206914206957%_))))
                    (_%loop206913206947%_
                     _%lp-tl206916206964%_
                     (cons _%lp-hd206915206961%_ _%decl206917206954%_))))
                (let ((_%decl206918206967%_ (reverse _%decl206917206954%_)))
                  ((lambda (_%L206971%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp207753
                                  (lambda (_%g206986206989%_ _%g206987206992%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g206986206989%_)
                                          _%g206987206992%_))))
                             (declare (not safe))
                             (__foldr1 __tmp207753 '() _%L206971%_))))
                   _%decl206918206967%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop206913206947%_
                                           _%target206910206941%_
                                           '()))
                                        (_%g206904206924%_
                                         _%g206905206928%_)))))
                              (_%g206904206924%_ _%g206905206928%_))))
                      (_%g206904206924%_ _%g206905206928%_)))))
          (_%g206903206995%_ _%$stx206900%_))))))
