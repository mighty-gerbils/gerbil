(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g201235_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201249_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201251_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201253_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201255_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201268_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201270_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201272_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201274_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx194791%_)
        (let* ((_%g194795194813%_
                (lambda (_%g194796194809%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194796194809%_))))
               (_%g194794194868%_
                (lambda (_%g194796194817%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194796194817%_))
                      (let ((_%e194801194820%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g194796194817%_))))
                        (let ((_%hd194800194824%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194801194820%_)))
                              (_%tl194799194827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194801194820%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194799194827%_))
                              (let ((_%e194804194830%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl194799194827%_))))
                                (let ((_%hd194803194834%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194804194830%_)))
                                      (_%tl194802194837%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194804194830%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194802194837%_))
                                      (let ((_%e194807194840%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl194802194837%_))))
                                        (let ((_%hd194806194844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194807194840%_)))
                                              (_%tl194805194847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194807194840%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194805194847%_))
                                              ((lambda (_%L194850%_
                                                        _%L194852%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L194852%_))
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
                               (cons _%L194852%_ '()))
                         (cons _%L194850%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g194795194813%_
                                                      _%g194796194817%_)))
                                               _%hd194806194844%_
                                               _%hd194803194834%_)
                                              (_%g194795194813%_
                                               _%g194796194817%_))))
                                      (_%g194795194813%_ _%g194796194817%_))))
                              (_%g194795194813%_ _%g194796194817%_))))
                      (_%g194795194813%_ _%g194796194817%_)))))
          (_%g194794194868%_ _%$stx194791%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx194872%_)
        (let* ((_%g194876194894%_
                (lambda (_%g194877194890%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194877194890%_))))
               (_%g194875194949%_
                (lambda (_%g194877194898%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194877194898%_))
                      (let ((_%e194882194901%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g194877194898%_))))
                        (let ((_%hd194881194905%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194882194901%_)))
                              (_%tl194880194908%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194882194901%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194880194908%_))
                              (let ((_%e194885194911%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl194880194908%_))))
                                (let ((_%hd194884194915%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194885194911%_)))
                                      (_%tl194883194918%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194885194911%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194883194918%_))
                                      (let ((_%e194888194921%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl194883194918%_))))
                                        (let ((_%hd194887194925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194888194921%_)))
                                              (_%tl194886194928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194888194921%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194886194928%_))
                                              ((lambda (_%L194931%_
                                                        _%L194933%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L194933%_))
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
                               (cons _%L194933%_ '()))
                         (cons _%L194931%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g194876194894%_
                                                      _%g194877194898%_)))
                                               _%hd194887194925%_
                                               _%hd194884194915%_)
                                              (_%g194876194894%_
                                               _%g194877194898%_))))
                                      (_%g194876194894%_ _%g194877194898%_))))
                              (_%g194876194894%_ _%g194877194898%_))))
                      (_%g194876194894%_ _%g194877194898%_)))))
          (_%g194875194949%_ _%$stx194872%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx194953%_)
        (let* ((_%g194957194986%_
                (lambda (_%g194958194982%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194958194982%_))))
               (_%g194956195086%_
                (lambda (_%g194958194990%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194958194990%_))
                      (let ((_%e194963194993%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g194958194990%_))))
                        (let ((_%hd194962194997%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194963194993%_)))
                              (_%tl194961195000%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194963194993%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl194961195000%_))
                              (let ((_g201213_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl194961195000%_
                                        '0))))
                                (begin
                                  (let ((_g201214_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201213_)
                                               (##vector-length _g201213_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201214_ 2)))
                                        (error "Context expects 2 values"
                                               _g201214_)))
                                  (let ((_%target194964195003%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201213_ 0)))
                                        (_%tl194966195006%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201213_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194966195006%_))
                                        (letrec ((_%loop194967195009%_
                                                  (lambda (_%hd194965195013%_
                                                           _%type194971195016%_
                                                           _%symbol194972195018%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd194965195013%_))
                                                        (let ((_%e194968195021%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd194965195013%_))))
                  (let ((_%lp-hd194969195025%_
                         (let ()
                           (declare (not safe))
                           (##car _%e194968195021%_)))
                        (_%lp-tl194970195028%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e194968195021%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd194969195025%_))
                        (let ((_%e194977195031%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd194969195025%_))))
                          (let ((_%hd194976195035%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194977195031%_)))
                                (_%tl194975195038%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194977195031%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl194975195038%_))
                                (let ((_%e194980195041%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl194975195038%_))))
                                  (let ((_%hd194979195045%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194980195041%_)))
                                        (_%tl194978195048%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194980195041%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194978195048%_))
                                        (_%loop194967195009%_
                                         _%lp-tl194970195028%_
                                         (cons _%hd194979195045%_
                                               _%type194971195016%_)
                                         (cons _%hd194976195035%_
                                               _%symbol194972195018%_))
                                        (_%g194957194986%_
                                         _%g194958194990%_))))
                                (_%g194957194986%_ _%g194958194990%_))))
                        (_%g194957194986%_ _%g194958194990%_))))
                (let ((_%type194973195051%_ (reverse _%type194971195016%_))
                      (_%symbol194974195054%_
                       (reverse _%symbol194972195018%_)))
                  ((lambda (_%L195057%_ _%L195059%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L195057%_
                                _%L195059%_))
                             (let ((__tmp201215
                                    (lambda (_%g195074195078%_
                                             _%g195075195081%_
                                             _%g195076195083%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g195075195081%_
                                                        (cons _%g195074195078%_
                                                              '())))
                                            _%g195076195083%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201215
                                '()
                                _%L195057%_
                                _%L195059%_)))))
                   _%type194973195051%_
                   _%symbol194974195054%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop194967195009%_
                                           _%target194964195003%_
                                           '()
                                           '()))
                                        (_%g194957194986%_
                                         _%g194958194990%_)))))
                              (_%g194957194986%_ _%g194958194990%_))))
                      (_%g194957194986%_ _%g194958194990%_)))))
          (_%g194956195086%_ _%$stx194953%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx195091%_)
        (let* ((_%__stx200524200525%_ _%$stx195091%_)
               (_%g195096195138%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200524200525%_)))))
          (let ((_%__kont200527200528%_
                 (lambda (_%L195266%_ _%L195268%_ _%L195269%_ _%L195270%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L195270%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L195269%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L195268%_ '()))
                                           (cons _%L195266%_ '())))))))
                (_%__kont200529200530%_
                 (lambda (_%L195185%_ _%L195187%_ _%L195188%_ _%L195189%_)
                   (cons _%L195189%_
                         (cons _%L195188%_
                               (cons _%L195187%_
                                     (cons _%L195185%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match200563200564%_
                   (lambda (_%e195104195216%_
                            _%hd195103195220%_
                            _%tl195102195223%_
                            _%e195107195226%_
                            _%hd195106195230%_
                            _%tl195105195233%_
                            _%e195110195236%_
                            _%hd195109195240%_
                            _%tl195108195243%_
                            _%e195113195246%_
                            _%hd195112195250%_
                            _%tl195111195253%_
                            _%e195116195256%_
                            _%hd195115195260%_
                            _%tl195114195263%_)
                     (let ((_%L195266%_ _%hd195115195260%_)
                           (_%L195268%_ _%hd195112195250%_)
                           (_%L195269%_ _%hd195109195240%_)
                           (_%L195270%_ _%hd195106195230%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195270%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195269%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195268%_)))
                           (_%__kont200527200528%_
                            _%L195266%_
                            _%L195268%_
                            _%L195269%_
                            _%L195270%_)
                           (let ()
                             (declare (not safe))
                             (_%g195096195138%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200524200525%_))
                  (let ((_%e195104195216%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200524200525%_))))
                    (let ((_%tl195102195223%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195104195216%_)))
                          (_%hd195103195220%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195104195216%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195102195223%_))
                          (let ((_%e195107195226%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl195102195223%_))))
                            (let ((_%tl195105195233%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195107195226%_)))
                                  (_%hd195106195230%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195107195226%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195105195233%_))
                                  (let ((_%e195110195236%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl195105195233%_))))
                                    (let ((_%tl195108195243%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195110195236%_)))
                                          (_%hd195109195240%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195110195236%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl195108195243%_))
                                          (let ((_%e195113195246%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl195108195243%_))))
                                            (let ((_%tl195111195253%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e195113195246%_)))
                                                  (_%hd195112195250%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e195113195246%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195111195253%_))
                                                  (let ((_%e195116195256%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl195111195253%_))))
                                                    (let ((_%tl195114195263%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195116195256%_)))
                                                          (_%hd195115195260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195116195256%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195114195263%_))
                                                          (_%__match200563200564%_
                                                           _%e195104195216%_
                                                           _%hd195103195220%_
                                                           _%tl195102195223%_
                                                           _%e195107195226%_
                                                           _%hd195106195230%_
                                                           _%tl195105195233%_
                                                           _%e195110195236%_
                                                           _%hd195109195240%_
                                                           _%tl195108195243%_
                                                           _%e195113195246%_
                                                           _%hd195112195250%_
                                                           _%tl195111195253%_
                                                           _%e195116195256%_
                                                           _%hd195115195260%_
                                                           _%tl195114195263%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g195096195138%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195111195253%_))
                                                      (_%__kont200529200530%_
                                                       _%hd195112195250%_
                                                       _%hd195109195240%_
                                                       _%hd195106195230%_
                                                       _%hd195103195220%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g195096195138%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g195096195138%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g195096195138%_)))))
                          (let () (declare (not safe)) (_%g195096195138%_)))))
                  (let () (declare (not safe)) (_%g195096195138%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx195295%_)
        (let* ((_%g195299195334%_
                (lambda (_%g195300195330%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195300195330%_))))
               (_%g195298195453%_
                (lambda (_%g195300195338%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195300195338%_))
                      (let ((_%e195306195341%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195300195338%_))))
                        (let ((_%hd195305195345%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195306195341%_)))
                              (_%tl195304195348%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195306195341%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195304195348%_))
                              (let ((_g201216_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195304195348%_
                                        '0))))
                                (begin
                                  (let ((_g201217_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201216_)
                                               (##vector-length _g201216_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201217_ 2)))
                                        (error "Context expects 2 values"
                                               _g201217_)))
                                  (let ((_%target195307195351%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201216_ 0)))
                                        (_%tl195309195354%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201216_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195309195354%_))
                                        (letrec ((_%loop195310195357%_
                                                  (lambda (_%hd195308195361%_
                                                           _%symbol195314195364%_
                                                           _%method195315195366%_
                                                           _%type-t195316195368%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195308195361%_))
                                                        (let ((_%e195311195371%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195308195361%_))))
                  (let ((_%lp-hd195312195375%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195311195371%_)))
                        (_%lp-tl195313195378%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195311195371%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195312195375%_))
                        (let ((_%e195322195381%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195312195375%_))))
                          (let ((_%hd195321195385%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195322195381%_)))
                                (_%tl195320195388%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195322195381%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195320195388%_))
                                (let ((_%e195325195391%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195320195388%_))))
                                  (let ((_%hd195324195395%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195325195391%_)))
                                        (_%tl195323195398%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195325195391%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195323195398%_))
                                        (let ((_%e195328195401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl195323195398%_))))
                                          (let ((_%hd195327195405%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195328195401%_)))
                                                (_%tl195326195408%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195328195401%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195326195408%_))
                                                (_%loop195310195357%_
                                                 _%lp-tl195313195378%_
                                                 (cons _%hd195327195405%_
                                                       _%symbol195314195364%_)
                                                 (cons _%hd195324195395%_
                                                       _%method195315195366%_)
                                                 (cons _%hd195321195385%_
                                                       _%type-t195316195368%_))
                                                (_%g195299195334%_
                                                 _%g195300195338%_))))
                                        (_%g195299195334%_
                                         _%g195300195338%_))))
                                (_%g195299195334%_ _%g195300195338%_))))
                        (_%g195299195334%_ _%g195300195338%_))))
                (let ((_%symbol195317195411%_ (reverse _%symbol195314195364%_))
                      (_%method195318195414%_ (reverse _%method195315195366%_))
                      (_%type-t195319195416%_
                       (reverse _%type-t195316195368%_)))
                  ((lambda (_%L195419%_ _%L195421%_ _%L195422%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L195419%_
                                _%L195421%_
                                _%L195422%_))
                             (let ((__tmp201218
                                    (lambda (_%g195438195443%_
                                             _%g195439195446%_
                                             _%g195440195448%_
                                             _%g195441195450%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g195440195448%_
                                                        (cons _%g195439195446%_
                                                              (cons _%g195438195443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g195441195450%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp201218
                                '()
                                _%L195419%_
                                _%L195421%_
                                _%L195422%_)))))
                   _%symbol195317195411%_
                   _%method195318195414%_
                   _%type-t195319195416%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195310195357%_
                                           _%target195307195351%_
                                           '()
                                           '()
                                           '()))
                                        (_%g195299195334%_
                                         _%g195300195338%_)))))
                              (_%g195299195334%_ _%g195300195338%_))))
                      (_%g195299195334%_ _%g195300195338%_)))))
          (_%g195298195453%_ _%$stx195295%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx195458%_)
        (let* ((_%g195462195495%_
                (lambda (_%g195463195491%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195463195491%_))))
               (_%g195461195609%_
                (lambda (_%g195463195499%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195463195499%_))
                      (let ((_%e195469195502%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195463195499%_))))
                        (let ((_%hd195468195506%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195469195502%_)))
                              (_%tl195467195509%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195469195502%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195467195509%_))
                              (let ((_%e195472195512%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195467195509%_))))
                                (let ((_%hd195471195516%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195472195512%_)))
                                      (_%tl195470195519%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195472195512%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl195470195519%_))
                                      (let ((_g201219_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl195470195519%_
                                                '0))))
                                        (begin
                                          (let ((_g201220_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201219_)
                                                       (##vector-length
                                                        _g201219_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201220_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201220_)))
                                          (let ((_%target195473195522%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201219_ 0)))
                                                (_%tl195475195525%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201219_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195475195525%_))
                                                (letrec ((_%loop195476195528%_
                                                          (lambda (_%hd195474195532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol195480195535%_
                           _%method195481195537%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd195474195532%_))
                        (let ((_%e195477195540%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd195474195532%_))))
                          (let ((_%lp-hd195478195544%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195477195540%_)))
                                (_%lp-tl195479195547%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195477195540%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd195478195544%_))
                                (let ((_%e195486195550%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd195478195544%_))))
                                  (let ((_%hd195485195554%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195486195550%_)))
                                        (_%tl195484195557%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195486195550%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195484195557%_))
                                        (let ((_%e195489195560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl195484195557%_))))
                                          (let ((_%hd195488195564%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195489195560%_)))
                                                (_%tl195487195567%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195489195560%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195487195567%_))
                                                (_%loop195476195528%_
                                                 _%lp-tl195479195547%_
                                                 (cons _%hd195488195564%_
                                                       _%symbol195480195535%_)
                                                 (cons _%hd195485195554%_
                                                       _%method195481195537%_))
                                                (_%g195462195495%_
                                                 _%g195463195499%_))))
                                        (_%g195462195495%_
                                         _%g195463195499%_))))
                                (_%g195462195495%_ _%g195463195499%_))))
                        (let ((_%symbol195482195570%_
                               (reverse _%symbol195480195535%_))
                              (_%method195483195573%_
                               (reverse _%method195481195537%_)))
                          ((lambda (_%L195576%_ _%L195578%_ _%L195579%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L195576%_
                                        _%L195578%_))
                                     (let ((__tmp201221
                                            (lambda (_%g195597195601%_
                                                     _%g195598195604%_
                                                     _%g195599195606%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L195579%_
                                                                (cons _%g195598195604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g195597195601%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g195599195606%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp201221
                                        '()
                                        _%L195576%_
                                        _%L195578%_)))))
                           _%symbol195482195570%_
                           _%method195483195573%_
                           _%hd195471195516%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop195476195528%_
                                                   _%target195473195522%_
                                                   '()
                                                   '()))
                                                (_%g195462195495%_
                                                 _%g195463195499%_)))))
                                      (_%g195462195495%_ _%g195463195499%_))))
                              (_%g195462195495%_ _%g195463195499%_))))
                      (_%g195462195495%_ _%g195463195499%_)))))
          (_%g195461195609%_ _%$stx195458%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx195614%_)
        (let* ((_%g195618195632%_
                (lambda (_%g195619195628%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195619195628%_))))
               (_%g195617195673%_
                (lambda (_%g195619195636%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195619195636%_))
                      (let ((_%e195623195639%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195619195636%_))))
                        (let ((_%hd195622195643%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195623195639%_)))
                              (_%tl195621195646%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195623195639%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195621195646%_))
                              (let ((_%e195626195649%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195621195646%_))))
                                (let ((_%hd195625195653%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195626195649%_)))
                                      (_%tl195624195656%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195626195649%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195624195656%_))
                                      ((lambda (_%L195659%_)
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
                                                           (cons _%L195659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd195625195653%_)
                                      (_%g195618195632%_ _%g195619195636%_))))
                              (_%g195618195632%_ _%g195619195636%_))))
                      (_%g195618195632%_ _%g195619195636%_)))))
          (_%g195617195673%_ _%$stx195614%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx195677%_)
        (let* ((_%g195681195735%_
                (lambda (_%g195682195731%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195682195731%_))))
               (_%g195680195916%_
                (lambda (_%g195682195739%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195682195739%_))
                      (let ((_%e195696195742%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195682195739%_))))
                        (let ((_%hd195695195746%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195696195742%_)))
                              (_%tl195694195749%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195696195742%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195694195749%_))
                              (let ((_%e195699195752%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195694195749%_))))
                                (let ((_%hd195698195756%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195699195752%_)))
                                      (_%tl195697195759%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195699195752%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195697195759%_))
                                      (let ((_%e195702195762%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195697195759%_))))
                                        (let ((_%hd195701195766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195702195762%_)))
                                              (_%tl195700195769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195702195762%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195700195769%_))
                                              (let ((_%e195705195772%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl195700195769%_))))
                                                (let ((_%hd195704195776%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195705195772%_)))
                                                      (_%tl195703195779%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195705195772%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl195703195779%_))
                                                      (let ((_%e195708195782%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl195703195779%_))))
                (let ((_%hd195707195786%_
                       (let () (declare (not safe)) (##car _%e195708195782%_)))
                      (_%tl195706195789%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e195708195782%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl195706195789%_))
                      (let ((_%e195711195792%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl195706195789%_))))
                        (let ((_%hd195710195796%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195711195792%_)))
                              (_%tl195709195799%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195711195792%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195709195799%_))
                              (let ((_%e195714195802%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195709195799%_))))
                                (let ((_%hd195713195806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195714195802%_)))
                                      (_%tl195712195809%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195714195802%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195712195809%_))
                                      (let ((_%e195717195812%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195712195809%_))))
                                        (let ((_%hd195716195816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195717195812%_)))
                                              (_%tl195715195819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195717195812%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195715195819%_))
                                              (let ((_%e195720195822%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl195715195819%_))))
                                                (let ((_%hd195719195826%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195720195822%_)))
                                                      (_%tl195718195829%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195720195822%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl195718195829%_))
                                                      (let ((_%e195723195832%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl195718195829%_))))
                (let ((_%hd195722195836%_
                       (let () (declare (not safe)) (##car _%e195723195832%_)))
                      (_%tl195721195839%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e195723195832%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl195721195839%_))
                      (let ((_%e195726195842%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl195721195839%_))))
                        (let ((_%hd195725195846%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195726195842%_)))
                              (_%tl195724195849%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195726195842%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195724195849%_))
                              (let ((_%e195729195852%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195724195849%_))))
                                (let ((_%hd195728195856%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195729195852%_)))
                                      (_%tl195727195859%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195729195852%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195727195859%_))
                                      ((lambda (_%L195862%_
                                                _%L195864%_
                                                _%L195865%_
                                                _%L195866%_
                                                _%L195867%_
                                                _%L195868%_
                                                _%L195869%_
                                                _%L195870%_
                                                _%L195871%_
                                                _%L195872%_
                                                _%L195873%_)
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
                                                           (cons _%L195873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L195872%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L195871%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L195870%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L195869%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L195868%_ '()))
                                           (cons _%L195867%_
                                                 (cons _%L195866%_
                                                       (cons _%L195865%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L195864%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L195862%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd195728195856%_
                                       _%hd195725195846%_
                                       _%hd195722195836%_
                                       _%hd195719195826%_
                                       _%hd195716195816%_
                                       _%hd195713195806%_
                                       _%hd195710195796%_
                                       _%hd195707195786%_
                                       _%hd195704195776%_
                                       _%hd195701195766%_
                                       _%hd195698195756%_)
                                      (_%g195681195735%_ _%g195682195739%_))))
                              (_%g195681195735%_ _%g195682195739%_))))
                      (_%g195681195735%_ _%g195682195739%_))))
              (_%g195681195735%_ _%g195682195739%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195681195735%_
                                               _%g195682195739%_))))
                                      (_%g195681195735%_ _%g195682195739%_))))
                              (_%g195681195735%_ _%g195682195739%_))))
                      (_%g195681195735%_ _%g195682195739%_))))
              (_%g195681195735%_ _%g195682195739%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195681195735%_
                                               _%g195682195739%_))))
                                      (_%g195681195735%_ _%g195682195739%_))))
                              (_%g195681195735%_ _%g195682195739%_))))
                      (_%g195681195735%_ _%g195682195739%_)))))
          (_%g195680195916%_ _%$stx195677%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx195920%_)
        (let* ((_%g195924195938%_
                (lambda (_%g195925195934%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195925195934%_))))
               (_%g195923195979%_
                (lambda (_%g195925195942%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195925195942%_))
                      (let ((_%e195929195945%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195925195942%_))))
                        (let ((_%hd195928195949%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195929195945%_)))
                              (_%tl195927195952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195929195945%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195927195952%_))
                              (let ((_%e195932195955%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195927195952%_))))
                                (let ((_%hd195931195959%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195932195955%_)))
                                      (_%tl195930195962%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195932195955%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195930195962%_))
                                      ((lambda (_%L195965%_)
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
                                                           (cons _%L195965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd195931195959%_)
                                      (_%g195924195938%_ _%g195925195942%_))))
                              (_%g195924195938%_ _%g195925195942%_))))
                      (_%g195924195938%_ _%g195925195942%_)))))
          (_%g195923195979%_ _%$stx195920%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx195983%_)
        (let* ((_%g195987196001%_
                (lambda (_%g195988195997%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195988195997%_))))
               (_%g195986196042%_
                (lambda (_%g195988196005%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195988196005%_))
                      (let ((_%e195992196008%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195988196005%_))))
                        (let ((_%hd195991196012%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195992196008%_)))
                              (_%tl195990196015%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195992196008%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195990196015%_))
                              (let ((_%e195995196018%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195990196015%_))))
                                (let ((_%hd195994196022%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195995196018%_)))
                                      (_%tl195993196025%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195995196018%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195993196025%_))
                                      ((lambda (_%L196028%_)
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
                                                           (cons _%L196028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd195994196022%_)
                                      (_%g195987196001%_ _%g195988196005%_))))
                              (_%g195987196001%_ _%g195988196005%_))))
                      (_%g195987196001%_ _%g195988196005%_)))))
          (_%g195986196042%_ _%$stx195983%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx196046%_)
        (let* ((_%g196050196072%_
                (lambda (_%g196051196068%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196051196068%_))))
               (_%g196049196141%_
                (lambda (_%g196051196076%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196051196076%_))
                      (let ((_%e196057196079%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196051196076%_))))
                        (let ((_%hd196056196083%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196057196079%_)))
                              (_%tl196055196086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196057196079%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196055196086%_))
                              (let ((_%e196060196089%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196055196086%_))))
                                (let ((_%hd196059196093%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196060196089%_)))
                                      (_%tl196058196096%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196060196089%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196058196096%_))
                                      (let ((_%e196063196099%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196058196096%_))))
                                        (let ((_%hd196062196103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196063196099%_)))
                                              (_%tl196061196106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196063196099%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196061196106%_))
                                              (let ((_%e196066196109%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196061196106%_))))
                                                (let ((_%hd196065196113%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196066196109%_)))
                                                      (_%tl196064196116%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196066196109%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196064196116%_))
                                                      ((lambda (_%L196119%_
                                                                _%L196121%_
                                                                _%L196122%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196122%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196121%_ '()))
                                   (cons _%L196119%_ '())))))
               _%hd196065196113%_
               _%hd196062196103%_
               _%hd196059196093%_)
              (_%g196050196072%_ _%g196051196076%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196050196072%_
                                               _%g196051196076%_))))
                                      (_%g196050196072%_ _%g196051196076%_))))
                              (_%g196050196072%_ _%g196051196076%_))))
                      (_%g196050196072%_ _%g196051196076%_)))))
          (_%g196049196141%_ _%$stx196046%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx196145%_)
        (let* ((_%g196149196171%_
                (lambda (_%g196150196167%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196150196167%_))))
               (_%g196148196240%_
                (lambda (_%g196150196175%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196150196175%_))
                      (let ((_%e196156196178%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196150196175%_))))
                        (let ((_%hd196155196182%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196156196178%_)))
                              (_%tl196154196185%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196156196178%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196154196185%_))
                              (let ((_%e196159196188%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196154196185%_))))
                                (let ((_%hd196158196192%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196159196188%_)))
                                      (_%tl196157196195%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196159196188%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196157196195%_))
                                      (let ((_%e196162196198%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196157196195%_))))
                                        (let ((_%hd196161196202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196162196198%_)))
                                              (_%tl196160196205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196162196198%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196160196205%_))
                                              (let ((_%e196165196208%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196160196205%_))))
                                                (let ((_%hd196164196212%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196165196208%_)))
                                                      (_%tl196163196215%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196165196208%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196163196215%_))
                                                      ((lambda (_%L196218%_
                                                                _%L196220%_
                                                                _%L196221%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196221%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196220%_ '()))
                                   (cons _%L196218%_ '())))))
               _%hd196164196212%_
               _%hd196161196202%_
               _%hd196158196192%_)
              (_%g196149196171%_ _%g196150196175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196149196171%_
                                               _%g196150196175%_))))
                                      (_%g196149196171%_ _%g196150196175%_))))
                              (_%g196149196171%_ _%g196150196175%_))))
                      (_%g196149196171%_ _%g196150196175%_)))))
          (_%g196148196240%_ _%$stx196145%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx196244%_)
        (let* ((_%g196248196262%_
                (lambda (_%g196249196258%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196249196258%_))))
               (_%g196247196303%_
                (lambda (_%g196249196266%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196249196266%_))
                      (let ((_%e196253196269%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196249196266%_))))
                        (let ((_%hd196252196273%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196253196269%_)))
                              (_%tl196251196276%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196253196269%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196251196276%_))
                              (let ((_%e196256196279%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196251196276%_))))
                                (let ((_%hd196255196283%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196256196279%_)))
                                      (_%tl196254196286%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196256196279%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196254196286%_))
                                      ((lambda (_%L196289%_)
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
                                                           (cons _%L196289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196255196283%_)
                                      (_%g196248196262%_ _%g196249196266%_))))
                              (_%g196248196262%_ _%g196249196266%_))))
                      (_%g196248196262%_ _%g196249196266%_)))))
          (_%g196247196303%_ _%$stx196244%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx196307%_)
        (let* ((_%g196311196329%_
                (lambda (_%g196312196325%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196312196325%_))))
               (_%g196310196384%_
                (lambda (_%g196312196333%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196312196333%_))
                      (let ((_%e196317196336%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196312196333%_))))
                        (let ((_%hd196316196340%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196317196336%_)))
                              (_%tl196315196343%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196317196336%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196315196343%_))
                              (let ((_%e196320196346%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196315196343%_))))
                                (let ((_%hd196319196350%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196320196346%_)))
                                      (_%tl196318196353%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196320196346%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196318196353%_))
                                      (let ((_%e196323196356%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196318196353%_))))
                                        (let ((_%hd196322196360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196323196356%_)))
                                              (_%tl196321196363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196323196356%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196321196363%_))
                                              ((lambda (_%L196366%_
                                                        _%L196368%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L196368%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196366%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196322196360%_
                                               _%hd196319196350%_)
                                              (_%g196311196329%_
                                               _%g196312196333%_))))
                                      (_%g196311196329%_ _%g196312196333%_))))
                              (_%g196311196329%_ _%g196312196333%_))))
                      (_%g196311196329%_ _%g196312196333%_)))))
          (_%g196310196384%_ _%$stx196307%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx196388%_)
        (let* ((_%__stx200592200593%_ _%$stx196388%_)
               (_%g196395196456%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200592200593%_)))))
          (let ((_%__kont200595200596%_
                 (lambda (_%L196694%_ _%L196696%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196696%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196694%_ '()))
                                     '())))))
                (_%__kont200597200598%_
                 (lambda (_%L196633%_ _%L196635%_ _%L196636%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196636%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196635%_ '()))
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
                                 (cons _%L196633%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont200599200600%_
                 (lambda (_%L196557%_ _%L196559%_)
                   (cons _%L196559%_ (cons _%L196557%_ (cons '#f '())))))
                (_%__kont200601200602%_
                 (lambda (_%L196507%_ _%L196509%_ _%L196510%_)
                   (cons _%L196510%_
                         (cons _%L196509%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L196507%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200592200593%_))
                (let ((_%e196401196664%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx200592200593%_))))
                  (let ((_%tl196399196671%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196401196664%_)))
                        (_%hd196400196668%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196401196664%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl196399196671%_))
                        (let ((_%e196404196674%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl196399196671%_))))
                          (let ((_%tl196402196681%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196404196674%_)))
                                (_%hd196403196678%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196404196674%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196402196681%_))
                                (let ((_%e196407196684%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196402196681%_))))
                                  (let ((_%tl196405196691%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196407196684%_)))
                                        (_%hd196406196688%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196407196684%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196405196691%_))
                                        (_%__kont200595200596%_
                                         _%hd196406196688%_
                                         _%hd196403196678%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl196405196691%_))
                                            (let ((_%e196422196609%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl196405196691%_))))
                                              (let ((_%tl196420196616%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e196422196609%_)))
                                                    (_%hd196421196613%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e196422196609%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd196421196613%_))
                                                    (let ((_%e196423196619%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd196421196613%_))))
                                                      (if (equal? _%e196423196619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196420196616%_))
                      (let ((_%e196426196623%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196420196616%_))))
                        (let ((_%tl196424196630%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196426196623%_)))
                              (_%hd196425196627%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196426196623%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196424196630%_))
                              (_%__kont200597200598%_
                               _%hd196425196627%_
                               _%hd196406196688%_
                               _%hd196403196678%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd196406196688%_))
                                  (let ((_%e196447196493%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196406196688%_))))
                                    (declare (not safe))
                                    (_%g196395196456%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g196395196456%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd196406196688%_))
                          (let ((_%e196447196493%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196406196688%_))))
                            (if (equal? _%e196447196493%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl196420196616%_))
                                    (_%__kont200601200602%_
                                     _%hd196421196613%_
                                     _%hd196403196678%_
                                     _%hd196400196668%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g196395196456%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g196395196456%_))))
                          (let () (declare (not safe)) (_%g196395196456%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd196406196688%_))
                      (let ((_%e196447196493%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd196406196688%_))))
                        (if (equal? _%e196447196493%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl196420196616%_))
                                (_%__kont200601200602%_
                                 _%hd196421196613%_
                                 _%hd196403196678%_
                                 _%hd196400196668%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g196395196456%_)))
                            (let () (declare (not safe)) (_%g196395196456%_))))
                      (let () (declare (not safe)) (_%g196395196456%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd196406196688%_))
                                                        (let ((_%e196447196493%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd196406196688%_))))
                  (if (equal? _%e196447196493%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196420196616%_))
                          (_%__kont200601200602%_
                           _%hd196421196613%_
                           _%hd196403196678%_
                           _%hd196400196668%_)
                          (let () (declare (not safe)) (_%g196395196456%_)))
                      (let () (declare (not safe)) (_%g196395196456%_))))
                (let () (declare (not safe)) (_%g196395196456%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd196406196688%_))
                                                (let ((_%e196447196493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd196406196688%_))))
                                                  (declare (not safe))
                                                  (_%g196395196456%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g196395196456%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl196402196681%_))
                                    (_%__kont200599200600%_
                                     _%hd196403196678%_
                                     _%hd196400196668%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g196395196456%_))))))
                        (let () (declare (not safe)) (_%g196395196456%_)))))
                (let () (declare (not safe)) (_%g196395196456%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx196715%_)
        (let* ((_%g196719196748%_
                (lambda (_%g196720196744%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196720196744%_))))
               (_%g196718196857%_
                (lambda (_%g196720196752%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196720196752%_))
                      (let ((_%e196724196755%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196720196752%_))))
                        (let ((_%hd196723196759%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196724196755%_)))
                              (_%tl196722196762%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196724196755%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196722196762%_))
                              (let ((_g201222_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196722196762%_
                                        '0))))
                                (begin
                                  (let ((_g201223_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201222_)
                                               (##vector-length _g201222_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201223_ 2)))
                                        (error "Context expects 2 values"
                                               _g201223_)))
                                  (let ((_%target196725196765%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201222_ 0)))
                                        (_%tl196727196768%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201222_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196727196768%_))
                                        (letrec ((_%loop196728196771%_
                                                  (lambda (_%hd196726196775%_
                                                           _%clause196732196778%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196726196775%_))
                                                        (let ((_%e196729196781%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196726196775%_))))
                  (let ((_%lp-hd196730196785%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196729196781%_)))
                        (_%lp-tl196731196788%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196729196781%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd196730196785%_))
                        (let ((_g201224_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd196730196785%_
                                  '0))))
                          (begin
                            (let ((_g201225_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g201224_)
                                         (##vector-length _g201224_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g201225_ 2)))
                                  (error "Context expects 2 values"
                                         _g201225_)))
                            (let ((_%target196734196791%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201224_ 0)))
                                  (_%tl196736196794%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201224_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196736196794%_))
                                  (letrec ((_%loop196737196797%_
                                            (lambda (_%hd196735196801%_
                                                     _%clause196741196804%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd196735196801%_))
                                                  (let ((_%e196738196807%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd196735196801%_))))
                                                    (let ((_%lp-hd196739196811%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196738196807%_)))
                                                          (_%lp-tl196740196814%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196738196807%_))))
                                                      (_%loop196737196797%_
                                                       _%lp-tl196740196814%_
                                                       (cons _%lp-hd196739196811%_
                                                             _%clause196741196804%_))))
                                                  (let ((_%clause196742196817%_
                                                         (reverse _%clause196741196804%_)))
                                                    (_%loop196728196771%_
                                                     _%lp-tl196731196788%_
                                                     (cons _%clause196742196817%_
                                                           _%clause196732196778%_)))))))
                                    (_%loop196737196797%_
                                     _%target196734196791%_
                                     '()))
                                  (_%g196719196748%_ _%g196720196752%_)))))
                        (_%g196719196748%_ _%g196720196752%_))))
                (let ((_%clause196733196821%_
                       (reverse _%clause196732196778%_)))
                  ((lambda (_%L196825%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp201226
                                              (lambda (_%g196840196845%_
                                                       _%g196841196848%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp201227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g196842196851%_ _%g196843196854%_)
                             (cons _%g196842196851%_ _%g196843196854%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201227 '() _%g196840196845%_)))
              _%g196841196848%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp201226
                                          '()
                                          _%L196825%_)))
                                 '())))
                   _%clause196733196821%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196728196771%_
                                           _%target196725196765%_
                                           '()))
                                        (_%g196719196748%_
                                         _%g196720196752%_)))))
                              (_%g196719196748%_ _%g196720196752%_))))
                      (_%g196719196748%_ _%g196720196752%_)))))
          (_%g196718196857%_ _%$stx196715%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx196863%_)
        (let* ((_%g196867196885%_
                (lambda (_%g196868196881%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196868196881%_))))
               (_%g196866196940%_
                (lambda (_%g196868196889%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196868196889%_))
                      (let ((_%e196873196892%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196868196889%_))))
                        (let ((_%hd196872196896%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196873196892%_)))
                              (_%tl196871196899%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196873196892%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196871196899%_))
                              (let ((_%e196876196902%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196871196899%_))))
                                (let ((_%hd196875196906%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196876196902%_)))
                                      (_%tl196874196909%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196876196902%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196874196909%_))
                                      (let ((_%e196879196912%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196874196909%_))))
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
                                                (gx#stx-null?
                                                 _%tl196877196919%_))
                                              ((lambda (_%L196922%_
                                                        _%L196924%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L196924%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196922%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196878196916%_
                                               _%hd196875196906%_)
                                              (_%g196867196885%_
                                               _%g196868196889%_))))
                                      (_%g196867196885%_ _%g196868196889%_))))
                              (_%g196867196885%_ _%g196868196889%_))))
                      (_%g196867196885%_ _%g196868196889%_)))))
          (_%g196866196940%_ _%$stx196863%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx196944%_)
        (let* ((_%g196948196966%_
                (lambda (_%g196949196962%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196949196962%_))))
               (_%g196947197021%_
                (lambda (_%g196949196970%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196949196970%_))
                      (let ((_%e196954196973%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196949196970%_))))
                        (let ((_%hd196953196977%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196954196973%_)))
                              (_%tl196952196980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196954196973%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196952196980%_))
                              (let ((_%e196957196983%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196952196980%_))))
                                (let ((_%hd196956196987%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196957196983%_)))
                                      (_%tl196955196990%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196957196983%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196955196990%_))
                                      (let ((_%e196960196993%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196955196990%_))))
                                        (let ((_%hd196959196997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196960196993%_)))
                                              (_%tl196958197000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196960196993%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196958197000%_))
                                              ((lambda (_%L197003%_
                                                        _%L197005%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197005%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197003%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196959196997%_
                                               _%hd196956196987%_)
                                              (_%g196948196966%_
                                               _%g196949196970%_))))
                                      (_%g196948196966%_ _%g196949196970%_))))
                              (_%g196948196966%_ _%g196949196970%_))))
                      (_%g196948196966%_ _%g196949196970%_)))))
          (_%g196947197021%_ _%$stx196944%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx197025%_)
        (let* ((_%g197029197058%_
                (lambda (_%g197030197054%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197030197054%_))))
               (_%g197028197158%_
                (lambda (_%g197030197062%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197030197062%_))
                      (let ((_%e197035197065%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197030197062%_))))
                        (let ((_%hd197034197069%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197035197065%_)))
                              (_%tl197033197072%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197035197065%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197033197072%_))
                              (let ((_g201228_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197033197072%_
                                        '0))))
                                (begin
                                  (let ((_g201229_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201228_)
                                               (##vector-length _g201228_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201229_ 2)))
                                        (error "Context expects 2 values"
                                               _g201229_)))
                                  (let ((_%target197036197075%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201228_ 0)))
                                        (_%tl197038197078%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201228_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197038197078%_))
                                        (letrec ((_%loop197039197081%_
                                                  (lambda (_%hd197037197085%_
                                                           _%rule197043197088%_
                                                           _%proc197044197090%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197037197085%_))
                                                        (let ((_%e197040197093%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197037197085%_))))
                  (let ((_%lp-hd197041197097%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197040197093%_)))
                        (_%lp-tl197042197100%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197040197093%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd197041197097%_))
                        (let ((_%e197049197103%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd197041197097%_))))
                          (let ((_%hd197048197107%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197049197103%_)))
                                (_%tl197047197110%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197049197103%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197047197110%_))
                                (let ((_%e197052197113%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197047197110%_))))
                                  (let ((_%hd197051197117%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197052197113%_)))
                                        (_%tl197050197120%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197052197113%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197050197120%_))
                                        (_%loop197039197081%_
                                         _%lp-tl197042197100%_
                                         (cons _%hd197051197117%_
                                               _%rule197043197088%_)
                                         (cons _%hd197048197107%_
                                               _%proc197044197090%_))
                                        (_%g197029197058%_
                                         _%g197030197062%_))))
                                (_%g197029197058%_ _%g197030197062%_))))
                        (_%g197029197058%_ _%g197030197062%_))))
                (let ((_%rule197045197123%_ (reverse _%rule197043197088%_))
                      (_%proc197046197126%_ (reverse _%proc197044197090%_)))
                  ((lambda (_%L197129%_ _%L197131%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L197129%_
                                _%L197131%_))
                             (let ((__tmp201230
                                    (lambda (_%g197146197150%_
                                             _%g197147197153%_
                                             _%g197148197155%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g197147197153%_
                                                        (cons _%g197146197150%_
                                                              '())))
                                            _%g197148197155%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201230
                                '()
                                _%L197129%_
                                _%L197131%_)))))
                   _%rule197045197123%_
                   _%proc197046197126%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197039197081%_
                                           _%target197036197075%_
                                           '()
                                           '()))
                                        (_%g197029197058%_
                                         _%g197030197062%_)))))
                              (_%g197029197058%_ _%g197030197062%_))))
                      (_%g197029197058%_ _%g197030197062%_)))))
          (_%g197028197158%_ _%$stx197025%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx197163%_)
        (let* ((_%g197167197185%_
                (lambda (_%g197168197181%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197168197181%_))))
               (_%g197166197240%_
                (lambda (_%g197168197189%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197168197189%_))
                      (let ((_%e197173197192%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197168197189%_))))
                        (let ((_%hd197172197196%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197173197192%_)))
                              (_%tl197171197199%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197173197192%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197171197199%_))
                              (let ((_%e197176197202%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197171197199%_))))
                                (let ((_%hd197175197206%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197176197202%_)))
                                      (_%tl197174197209%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197176197202%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197174197209%_))
                                      (let ((_%e197179197212%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197174197209%_))))
                                        (let ((_%hd197178197216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197179197212%_)))
                                              (_%tl197177197219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197179197212%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197177197219%_))
                                              ((lambda (_%L197222%_
                                                        _%L197224%_)
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
                                                   (cons _%L197224%_ '()))
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
                 (cons _%L197222%_ '())))
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
                                   (cons _%L197224%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197178197216%_
                                               _%hd197175197206%_)
                                              (_%g197167197185%_
                                               _%g197168197189%_))))
                                      (_%g197167197185%_ _%g197168197189%_))))
                              (_%g197167197185%_ _%g197168197189%_))))
                      (_%g197167197185%_ _%g197168197189%_)))))
          (_%g197166197240%_ _%$stx197163%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx197244%_)
        (let* ((_%__stx200710200711%_ _%$stx197244%_)
               (_%g197249197274%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200710200711%_)))))
          (let ((_%__kont200713200714%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont200715200716%_
                 (lambda (_%L197321%_ _%L197323%_ _%L197324%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L197324%_ (cons _%L197323%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L197321%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200710200711%_))
                (let ((_%e197253197350%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx200710200711%_))))
                  (let ((_%tl197251197357%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197253197350%_)))
                        (_%hd197252197354%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197253197350%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl197251197357%_))
                        (_%__kont200713200714%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197251197357%_))
                            (let ((_%e197262197291%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl197251197357%_))))
                              (let ((_%tl197260197298%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197262197291%_)))
                                    (_%hd197261197295%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197262197291%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197261197295%_))
                                    (let ((_%e197265197301%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd197261197295%_))))
                                      (let ((_%tl197263197308%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197265197301%_)))
                                            (_%hd197264197305%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197265197301%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197263197308%_))
                                            (let ((_%e197268197311%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197263197308%_))))
                                              (let ((_%tl197266197318%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197268197311%_)))
                                                    (_%hd197267197315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197268197311%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197266197318%_))
                                                    (_%__kont200715200716%_
                                                     _%tl197260197298%_
                                                     _%hd197267197315%_
                                                     _%hd197264197305%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197249197274%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197249197274%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197249197274%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g197249197274%_))))))
                (let () (declare (not safe)) (_%g197249197274%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx197368%_)
        (let* ((_%__stx200754200755%_ _%$stx197368%_)
               (_%g197373197404%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200754200755%_)))))
          (let ((_%__kont200757200758%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont200759200760%_
                 (lambda (_%L197471%_ _%L197473%_ _%L197474%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L197474%_
                                           (let ((__tmp201231
                                                  (lambda (_%g197494197497%_
                                                           _%g197495197500%_)
                                                    (cons _%g197494197497%_
                                                          _%g197495197500%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp201231
                                              '()
                                              _%L197473%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L197471%_)
                                     '()))))))
            (let ((_%__match200797200798%_
                   (lambda (_%e197383197411%_
                            _%hd197382197415%_
                            _%tl197381197418%_
                            _%e197386197421%_
                            _%hd197385197425%_
                            _%tl197384197428%_
                            _%e197389197431%_
                            _%hd197388197435%_
                            _%tl197387197438%_
                            _%__splice200761200762%_
                            _%target197390197441%_
                            _%tl197392197444%_)
                     (letrec ((_%loop197393197447%_
                               (lambda (_%hd197391197451%_ _%sig197397197454%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd197391197451%_))
                                     (let ((_%e197394197457%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd197391197451%_))))
                                       (let ((_%lp-tl197396197464%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e197394197457%_)))
                                             (_%lp-hd197395197461%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e197394197457%_))))
                                         (_%loop197393197447%_
                                          _%lp-tl197396197464%_
                                          (cons _%lp-hd197395197461%_
                                                _%sig197397197454%_))))
                                     (let ((_%sig197398197467%_
                                            (reverse _%sig197397197454%_)))
                                       (_%__kont200759200760%_
                                        _%tl197384197428%_
                                        _%sig197398197467%_
                                        _%hd197388197435%_))))))
                       (_%loop197393197447%_ _%target197390197441%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200754200755%_))
                  (let ((_%e197377197510%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200754200755%_))))
                    (let ((_%tl197375197517%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197377197510%_)))
                          (_%hd197376197514%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197377197510%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197375197517%_))
                          (_%__kont200757200758%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197375197517%_))
                              (let ((_%e197386197421%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197375197517%_))))
                                (let ((_%tl197384197428%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197386197421%_)))
                                      (_%hd197385197425%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197386197421%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197385197425%_))
                                      (let ((_%e197389197431%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197385197425%_))))
                                        (let ((_%tl197387197438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197389197431%_)))
                                              (_%hd197388197435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197389197431%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197387197438%_))
                                              (let ((_%__splice200761200762%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl197387197438%_
                                                        '0))))
                                                (let ((_%tl197392197444%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200761200762%_
                                                          '1)))
                                                      (_%target197390197441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200761200762%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197392197444%_))
                                                      (_%__match200797200798%_
                                                       _%e197377197510%_
                                                       _%hd197376197514%_
                                                       _%tl197375197517%_
                                                       _%e197386197421%_
                                                       _%hd197385197425%_
                                                       _%tl197384197428%_
                                                       _%e197389197431%_
                                                       _%hd197388197435%_
                                                       _%tl197387197438%_
                                                       _%__splice200761200762%_
                                                       _%target197390197441%_
                                                       _%tl197392197444%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197373197404%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197373197404%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197373197404%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197373197404%_))))))
                  (let () (declare (not safe)) (_%g197373197404%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx197529%_)
        (let* ((_%__stx200800200801%_ _%$stx197529%_)
               (_%g197534197581%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200800200801%_)))))
          (let ((_%__kont200803200804%_
                 (lambda (_%L197743%_ _%L197745%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L197745%_
                               (let ((__tmp201232
                                      (lambda (_%g197765197768%_
                                               _%g197766197771%_)
                                        (cons _%g197765197768%_
                                              _%g197766197771%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201232 '() _%L197743%_))))))
                (_%__kont200807200808%_
                 (lambda (_%L197638%_ _%L197640%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L197640%_
                               (let ((__tmp201233
                                      (lambda (_%g197657197660%_
                                               _%g197658197663%_)
                                        (cons _%g197657197660%_
                                              _%g197658197663%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201233 '() _%L197638%_)))))))
            (let* ((_%__match200867200868%_
                    (lambda (_%e197563197588%_
                             _%hd197562197592%_
                             _%tl197561197595%_
                             _%e197566197598%_
                             _%hd197565197602%_
                             _%tl197564197605%_
                             _%__splice200809200810%_
                             _%target197567197608%_
                             _%tl197569197611%_)
                      (letrec ((_%loop197570197614%_
                                (lambda (_%hd197568197618%_
                                         _%sig197574197621%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197568197618%_))
                                      (let ((_%e197571197624%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197568197618%_))))
                                        (let ((_%lp-tl197573197631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197571197624%_)))
                                              (_%lp-hd197572197628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197571197624%_))))
                                          (_%loop197570197614%_
                                           _%lp-tl197573197631%_
                                           (cons _%lp-hd197572197628%_
                                                 _%sig197574197621%_))))
                                      (let ((_%sig197575197634%_
                                             (reverse _%sig197574197621%_)))
                                        (_%__kont200807200808%_
                                         _%sig197575197634%_
                                         _%hd197565197602%_))))))
                        (_%loop197570197614%_ _%target197567197608%_ '()))))
                   (_%__match200859200860%_
                    (lambda (_%e197563197588%_
                             _%hd197562197592%_
                             _%tl197561197595%_
                             _%e197566197598%_
                             _%hd197565197602%_
                             _%tl197564197605%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl197564197605%_))
                          (let ((_%__splice200809200810%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl197564197605%_
                                    '0))))
                            (let ((_%tl197569197611%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice200809200810%_
                                      '1)))
                                  (_%target197567197608%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice200809200810%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197569197611%_))
                                  (_%__match200867200868%_
                                   _%e197563197588%_
                                   _%hd197562197592%_
                                   _%tl197561197595%_
                                   _%e197566197598%_
                                   _%hd197565197602%_
                                   _%tl197564197605%_
                                   _%__splice200809200810%_
                                   _%target197567197608%_
                                   _%tl197569197611%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g197534197581%_)))))
                          (let () (declare (not safe)) (_%g197534197581%_)))))
                   (_%__match200847200848%_
                    (lambda (_%e197540197673%_
                             _%hd197539197677%_
                             _%tl197538197680%_
                             _%e197543197683%_
                             _%hd197542197687%_
                             _%tl197541197690%_
                             _%e197546197693%_
                             _%hd197545197697%_
                             _%tl197544197700%_
                             _%e197549197703%_
                             _%hd197548197707%_
                             _%tl197547197710%_
                             _%__splice200805200806%_
                             _%target197550197713%_
                             _%tl197552197716%_)
                      (letrec ((_%loop197553197719%_
                                (lambda (_%hd197551197723%_
                                         _%sig197557197726%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197551197723%_))
                                      (let ((_%e197554197729%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197551197723%_))))
                                        (let ((_%lp-tl197556197736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197554197729%_)))
                                              (_%lp-hd197555197733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197554197729%_))))
                                          (_%loop197553197719%_
                                           _%lp-tl197556197736%_
                                           (cons _%lp-hd197555197733%_
                                                 _%sig197557197726%_))))
                                      (let ((_%sig197558197739%_
                                             (reverse _%sig197557197726%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197544197700%_))
                                            (_%__kont200803200804%_
                                             _%sig197558197739%_
                                             _%hd197542197687%_)
                                            (_%__match200859200860%_
                                             _%e197540197673%_
                                             _%hd197539197677%_
                                             _%tl197538197680%_
                                             _%e197543197683%_
                                             _%hd197542197687%_
                                             _%tl197541197690%_)))))))
                        (_%loop197553197719%_ _%target197550197713%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200800200801%_))
                  (let ((_%e197540197673%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200800200801%_))))
                    (let ((_%tl197538197680%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197540197673%_)))
                          (_%hd197539197677%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197540197673%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197538197680%_))
                          (let ((_%e197543197683%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl197538197680%_))))
                            (let ((_%tl197541197690%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197543197683%_)))
                                  (_%hd197542197687%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197543197683%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197541197690%_))
                                  (let ((_%e197546197693%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl197541197690%_))))
                                    (let ((_%tl197544197700%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197546197693%_)))
                                          (_%hd197545197697%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197546197693%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd197545197697%_))
                                          (let ((_%e197549197703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd197545197697%_))))
                                            (let ((_%tl197547197710%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197549197703%_)))
                                                  (_%hd197548197707%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197549197703%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd197548197707%_))
                                                  (if (let ((__tmp201234
                                                             |gxc[1]#_g201235_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp201234
                                                         _%hd197548197707%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl197547197710%_))
                                                          (let ((_%__splice200805200806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl197547197710%_ '0))))
                    (let ((_%tl197552197716%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200805200806%_ '1)))
                          (_%target197550197713%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200805200806%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197552197716%_))
                          (_%__match200847200848%_
                           _%e197540197673%_
                           _%hd197539197677%_
                           _%tl197538197680%_
                           _%e197543197683%_
                           _%hd197542197687%_
                           _%tl197541197690%_
                           _%e197546197693%_
                           _%hd197545197697%_
                           _%tl197544197700%_
                           _%e197549197703%_
                           _%hd197548197707%_
                           _%tl197547197710%_
                           _%__splice200805200806%_
                           _%target197550197713%_
                           _%tl197552197716%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197541197690%_))
                              (let ((_%__splice200809200810%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197541197690%_
                                        '0))))
                                (let ((_%tl197569197611%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice200809200810%_
                                          '1)))
                                      (_%target197567197608%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice200809200810%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197569197611%_))
                                      (_%__match200867200868%_
                                       _%e197540197673%_
                                       _%hd197539197677%_
                                       _%tl197538197680%_
                                       _%e197543197683%_
                                       _%hd197542197687%_
                                       _%tl197541197690%_
                                       _%__splice200809200810%_
                                       _%target197567197608%_
                                       _%tl197569197611%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g197534197581%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197534197581%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl197541197690%_))
                      (let ((_%__splice200809200810%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl197541197690%_
                                '0))))
                        (let ((_%tl197569197611%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice200809200810%_ '1)))
                              (_%target197567197608%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice200809200810%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197569197611%_))
                              (_%__match200867200868%_
                               _%e197540197673%_
                               _%hd197539197677%_
                               _%tl197538197680%_
                               _%e197543197683%_
                               _%hd197542197687%_
                               _%tl197541197690%_
                               _%__splice200809200810%_
                               _%target197567197608%_
                               _%tl197569197611%_)
                              (let ()
                                (declare (not safe))
                                (_%g197534197581%_)))))
                      (let () (declare (not safe)) (_%g197534197581%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl197541197690%_))
                  (let ((_%__splice200809200810%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl197541197690%_ '0))))
                    (let ((_%tl197569197611%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200809200810%_ '1)))
                          (_%target197567197608%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200809200810%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197569197611%_))
                          (_%__match200867200868%_
                           _%e197540197673%_
                           _%hd197539197677%_
                           _%tl197538197680%_
                           _%e197543197683%_
                           _%hd197542197687%_
                           _%tl197541197690%_
                           _%__splice200809200810%_
                           _%target197567197608%_
                           _%tl197569197611%_)
                          (let () (declare (not safe)) (_%g197534197581%_)))))
                  (let () (declare (not safe)) (_%g197534197581%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl197541197690%_))
                                                      (let ((_%__splice200809200810%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl197541197690%_ '0))))
                (let ((_%tl197569197611%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200809200810%_ '1)))
                      (_%target197567197608%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200809200810%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197569197611%_))
                      (_%__match200867200868%_
                       _%e197540197673%_
                       _%hd197539197677%_
                       _%tl197538197680%_
                       _%e197543197683%_
                       _%hd197542197687%_
                       _%tl197541197690%_
                       _%__splice200809200810%_
                       _%target197567197608%_
                       _%tl197569197611%_)
                      (let () (declare (not safe)) (_%g197534197581%_)))))
              (let () (declare (not safe)) (_%g197534197581%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197541197690%_))
                                              (let ((_%__splice200809200810%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl197541197690%_
                                                        '0))))
                                                (let ((_%tl197569197611%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200809200810%_
                                                          '1)))
                                                      (_%target197567197608%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200809200810%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197569197611%_))
                                                      (_%__match200867200868%_
                                                       _%e197540197673%_
                                                       _%hd197539197677%_
                                                       _%tl197538197680%_
                                                       _%e197543197683%_
                                                       _%hd197542197687%_
                                                       _%tl197541197690%_
                                                       _%__splice200809200810%_
                                                       _%target197567197608%_
                                                       _%tl197569197611%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197534197581%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197534197581%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl197541197690%_))
                                      (let ((_%__splice200809200810%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl197541197690%_
                                                '0))))
                                        (let ((_%tl197569197611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200809200810%_
                                                  '1)))
                                              (_%target197567197608%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200809200810%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197569197611%_))
                                              (_%__match200867200868%_
                                               _%e197540197673%_
                                               _%hd197539197677%_
                                               _%tl197538197680%_
                                               _%e197543197683%_
                                               _%hd197542197687%_
                                               _%tl197541197690%_
                                               _%__splice200809200810%_
                                               _%target197567197608%_
                                               _%tl197569197611%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197534197581%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197534197581%_))))))
                          (let () (declare (not safe)) (_%g197534197581%_)))))
                  (let () (declare (not safe)) (_%g197534197581%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx198859%_ _%id198861%_)
        (let ((_%proc198865%_
               (let ((__tmp201236
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id198861%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201236))))
          (if (let () (declare (not safe)) (procedure? _%proc198865%_))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx198859%_
                 _%id198861%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx198850%_ _%id198852%_)
        (let ((_%klass198856%_
               (let ((__tmp201237
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id198852%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201237))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass198856%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx198850%_
                 _%id198852%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx198100%_ _%proc198102%_ _%sig198103%_)
        (letrec ((_%signature-arity198105%_
                  (lambda (_%args198782%_)
                    (let _%loop198785%_ ((_%rest198788%_ _%args198782%_)
                                         (_%count198790%_ '0))
                      (let* ((_%rest198791198802%_ _%rest198788%_)
                             (_%E198795198808%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest198791198802%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K198798198839%_
                               (lambda (_%rest198836%_)
                                 (let ((__tmp201238
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%count198790%_ '1))))
                                   (declare (not safe))
                                   (_%loop198785%_
                                    _%rest198836%_
                                    __tmp201238))))
                              (_%K198797198828%_ (lambda () _%count198790%_))
                              (_%K198796198816%_
                               (lambda () (cons _%count198790%_ '()))))
                          (let ((_%try-match198793198832%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest198791198802%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K198797198828%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K198796198816%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest198791198802%_))
                                (let* ((_%tl198800198843%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest198791198802%_)))
                                       (_%rest198847%_ _%tl198800198843%_))
                                  (declare (not safe))
                                  (_%K198798198839%_ _%rest198847%_))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match198793198832%_)))))))))
                 (_%make-signature198107%_
                  (lambda (_%args198664%_
                           _%return198666%_
                           _%effect198667%_
                           _%unchecked198668%_)
                    (let ((__tmp201239
                           (lambda (_%g198669198671%_)
                             (let ()
                               (declare (not safe))
                               (|gxc[1]#verify-class!|
                                _%ctx198100%_
                                _%g198669198671%_)))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp201239 _%args198664%_))
                    (let ()
                      (declare (not safe))
                      (|gxc[1]#verify-class!| _%ctx198100%_ _%return198666%_))
                    (if _%unchecked198668%_
                        (let ()
                          (declare (not safe))
                          (|gxc[1]#verify-procedure!|
                           _%ctx198100%_
                           _%unchecked198668%_))
                        '#!void)
                    (let ((_%arity198675%_
                           (let ((__tmp201240
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-map1 gx#stx-e _%args198664%_))))
                             (declare (not safe))
                             (_%signature-arity198105%_ __tmp201240))))
                      (if _%effect198667%_
                          (let ((_%effect198678%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect198667%_))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (list? _%effect198678%_))
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect198678%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx198100%_
                                   _%proc198102%_
                                   _%effect198678%_))))
                          '#!void)
                      (cons _%arity198675%_
                            (cons (let* ((_%g198681198704%_
                                          (lambda (_%g198682198700%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g198682198700%_))))
                                         (_%g198680198778%_
                                          (lambda (_%g198682198708%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g198682198708%_))
                                                (let ((_%e198689198711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g198682198708%_))))
                                                  (let ((_%hd198688198715%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198689198711%_)))
                                                        (_%tl198687198718%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198689198711%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198687198718%_))
                                                        (let ((_%e198692198721%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl198687198718%_))))
                  (let ((_%hd198691198725%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198692198721%_)))
                        (_%tl198690198728%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198692198721%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198690198728%_))
                        (let ((_%e198695198731%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198690198728%_))))
                          (let ((_%hd198694198735%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198695198731%_)))
                                (_%tl198693198738%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198695198731%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198693198738%_))
                                (let ((_%e198698198741%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198693198738%_))))
                                  (let ((_%hd198697198745%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198698198741%_)))
                                        (_%tl198696198748%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198698198741%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198696198748%_))
                                        ((lambda (_%L198751%_
                                                  _%L198753%_
                                                  _%L198754%_
                                                  _%L198755%_)
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
                             (cons _%L198755%_ '()))
                       (cons 'return:
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L198754%_ '()))
                                   (cons 'effect:
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L198753%_ '()))
                                               (cons 'unchecked:
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L198751%_ '()))
                   '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd198697198745%_
                                         _%hd198694198735%_
                                         _%hd198691198725%_
                                         _%hd198688198715%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g198681198704%_
                                           _%g198682198708%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g198681198704%_ _%g198682198708%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g198681198704%_ _%g198682198708%_)))))
                (let ()
                  (declare (not safe))
                  (_%g198681198704%_ _%g198682198708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198681198704%_
                                                   _%g198682198708%_)))))
                                         (__tmp201241
                                          (list _%args198664%_
                                                _%return198666%_
                                                _%effect198667%_
                                                _%unchecked198668%_)))
                                    (declare (not safe))
                                    (_%g198680198778%_ __tmp201241))
                                  '()))))))
          (let ()
            (declare (not safe))
            (|gxc[1]#verify-procedure!| _%ctx198100%_ _%proc198102%_))
          (let* ((_%__stx200878200879%_ _%sig198103%_)
                 (_%g198114198217%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx200878200879%_)))))
            (let ((_%__kont200881200882%_
                   (lambda (_%L198645%_ _%L198647%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature198107%_
                        _%L198647%_
                        _%L198645%_
                        '#f
                        '#f))))
                  (_%__kont200883200884%_
                   (lambda (_%L198596%_ _%L198598%_ _%L198599%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature198107%_
                        _%L198599%_
                        _%L198598%_
                        _%L198596%_
                        '#f))))
                  (_%__kont200885200886%_
                   (lambda (_%L198520%_ _%L198522%_ _%L198523%_)
                     (let ((__tmp201242
                            (let ((__tmp201243
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc198102%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp201243))))
                       (declare (not safe))
                       (_%make-signature198107%_
                        _%L198523%_
                        _%L198522%_
                        _%L198520%_
                        __tmp201242))))
                  (_%__kont200887200888%_
                   (lambda (_%L198426%_ _%L198428%_ _%L198429%_ _%L198430%_)
                     (let ((__tmp201244
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L198426%_))))
                       (declare (not safe))
                       (_%make-signature198107%_
                        _%L198430%_
                        _%L198429%_
                        '#f
                        __tmp201244))))
                  (_%__kont200889200890%_
                   (lambda (_%L198333%_ _%L198335%_)
                     (let ((__tmp201245
                            (let ((__tmp201246
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc198102%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp201246))))
                       (declare (not safe))
                       (_%make-signature198107%_
                        _%L198335%_
                        _%L198333%_
                        '#f
                        __tmp201245))))
                  (_%__kont200891200892%_
                   (lambda (_%L198268%_ _%L198270%_ _%L198271%_)
                     (let ((__tmp201247
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L198268%_))))
                       (declare (not safe))
                       (_%make-signature198107%_
                        _%L198271%_
                        _%L198270%_
                        '#f
                        __tmp201247)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200878200879%_))
                  (let ((_%e198120198625%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200878200879%_))))
                    (let ((_%tl198118198632%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198120198625%_)))
                          (_%hd198119198629%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198120198625%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198118198632%_))
                          (let ((_%e198123198635%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198118198632%_))))
                            (let ((_%tl198121198642%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198123198635%_)))
                                  (_%hd198122198639%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198123198635%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198121198642%_))
                                  (_%__kont200881200882%_
                                   _%hd198122198639%_
                                   _%hd198119198629%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198121198642%_))
                                      (let ((_%e198135198572%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198121198642%_))))
                                        (let ((_%tl198133198579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198135198572%_)))
                                              (_%hd198134198576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198135198572%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd198134198576%_))
                                              (let ((_%e198136198582%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd198134198576%_))))
                                                (if (equal? _%e198136198582%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198133198579%_))
                                                        (let ((_%e198139198586%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl198133198579%_))))
                  (let ((_%tl198137198593%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198139198586%_)))
                        (_%hd198138198590%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198139198586%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198137198593%_))
                        (_%__kont200883200884%_
                         _%hd198138198590%_
                         _%hd198122198639%_
                         _%hd198119198629%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198137198593%_))
                            (let ((_%e198158198506%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198137198593%_))))
                              (let ((_%tl198156198513%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198158198506%_)))
                                    (_%hd198157198510%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198158198506%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd198157198510%_))
                                    (let ((_%e198159198516%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd198157198510%_))))
                                      (if (equal? _%e198159198516%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198156198513%_))
                                              (_%__kont200885200886%_
                                               _%hd198138198590%_
                                               _%hd198122198639%_
                                               _%hd198119198629%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198156198513%_))
                                                  (let ((_%e198183198416%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198156198513%_))))
                                                    (let ((_%tl198181198423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198183198416%_)))
                                                          (_%hd198182198420%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198183198416%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198181198423%_))
                                                          (_%__kont200887200888%_
                                                           _%hd198182198420%_
                                                           _%hd198138198590%_
                                                           _%hd198122198639%_
                                                           _%hd198119198629%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g198114198217%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198114198217%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198114198217%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198114198217%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198114198217%_))))))
                (let () (declare (not safe)) (_%g198114198217%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e198136198582%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl198133198579%_))
                                                            (_%__kont200889200890%_
                                                             _%hd198122198639%_
                                                             _%hd198119198629%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl198133198579%_))
                        (let ((_%e198211198258%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198133198579%_))))
                          (let ((_%tl198209198265%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198211198258%_)))
                                (_%hd198210198262%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198211198258%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198209198265%_))
                                (_%__kont200891200892%_
                                 _%hd198210198262%_
                                 _%hd198122198639%_
                                 _%hd198119198629%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g198114198217%_)))))
                        (let () (declare (not safe)) (_%g198114198217%_))))
                (let () (declare (not safe)) (_%g198114198217%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g198114198217%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198114198217%_))))))
                          (let () (declare (not safe)) (_%g198114198217%_)))))
                  (let () (declare (not safe)) (_%g198114198217%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig197780%_)
        (let* ((_%g197783197849%_
                (lambda (_%g197784197845%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197784197845%_))))
               (_%g197782198096%_
                (lambda (_%g197784197853%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197784197853%_))
                      (let ((_%e197791197856%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197784197853%_))))
                        (let ((_%hd197790197860%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197791197856%_)))
                              (_%tl197789197863%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197791197856%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197789197863%_))
                              (let ((_%e197794197866%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197789197863%_))))
                                (let ((_%hd197793197870%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197794197866%_)))
                                      (_%tl197792197873%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197794197866%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd197793197870%_))
                                      (let ((_%e197795197876%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd197793197870%_))))
                                        (if (equal? _%e197795197876%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197792197873%_))
                                                (let ((_%e197798197880%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl197792197873%_))))
                                                  (let ((_%hd197797197884%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197798197880%_)))
                                                        (_%tl197796197887%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197798197880%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197797197884%_))
                                                        (let ((_%e197801197890%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197797197884%_))))
                  (let ((_%hd197800197894%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197801197890%_)))
                        (_%tl197799197897%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197801197890%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd197800197894%_))
                        (if (let ((__tmp201248 |gxc[1]#_g201249_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp201248
                               _%hd197800197894%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197799197897%_))
                                (let ((_%e197804197900%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197799197897%_))))
                                  (let ((_%hd197803197904%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197804197900%_)))
                                        (_%tl197802197907%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197804197900%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197802197907%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197796197887%_))
                                            (let ((_%e197807197910%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197796197887%_))))
                                              (let ((_%hd197806197914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197807197910%_)))
                                                    (_%tl197805197917%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197807197910%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd197806197914%_))
                                                    (let ((_%e197808197920%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd197806197914%_))))
                                                      (if (equal? _%e197808197920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197805197917%_))
                      (let ((_%e197811197924%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197805197917%_))))
                        (let ((_%hd197810197928%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197811197924%_)))
                              (_%tl197809197931%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197811197924%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd197810197928%_))
                              (let ((_%e197814197934%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd197810197928%_))))
                                (let ((_%hd197813197938%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197814197934%_)))
                                      (_%tl197812197941%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197814197934%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd197813197938%_))
                                      (if (let ((__tmp201250
                                                 |gxc[1]#_g201251_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp201250
                                             _%hd197813197938%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197812197941%_))
                                              (let ((_%e197817197944%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197812197941%_))))
                                                (let ((_%hd197816197948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197817197944%_)))
                                                      (_%tl197815197951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197817197944%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197815197951%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl197809197931%_))
                                                          (let ((_%e197820197954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl197809197931%_))))
                    (let ((_%hd197819197958%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197820197954%_)))
                          (_%tl197818197961%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197820197954%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd197819197958%_))
                          (let ((_%e197821197964%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197819197958%_))))
                            (if (equal? _%e197821197964%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197818197961%_))
                                    (let ((_%e197824197968%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl197818197961%_))))
                                      (let ((_%hd197823197972%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197824197968%_)))
                                            (_%tl197822197975%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197824197968%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd197823197972%_))
                                            (let ((_%e197827197978%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd197823197972%_))))
                                              (let ((_%hd197826197982%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197827197978%_)))
                                                    (_%tl197825197985%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197827197978%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd197826197982%_))
                                                    (if (let ((__tmp201252
                                                               |gxc[1]#_g201253_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp201252
                                                           _%hd197826197982%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197825197985%_))
                                                            (let ((_%e197830197988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl197825197985%_))))
                      (let ((_%hd197829197992%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197830197988%_)))
                            (_%tl197828197995%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197830197988%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197828197995%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197822197975%_))
                                (let ((_%e197833197998%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197822197975%_))))
                                  (let ((_%hd197832198002%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197833197998%_)))
                                        (_%tl197831198005%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197833197998%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd197832198002%_))
                                        (let ((_%e197834198008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd197832198002%_))))
                                          (if (equal? _%e197834198008%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197831198005%_))
                                                  (let ((_%e197837198012%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl197831198005%_))))
                                                    (let ((_%hd197836198016%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197837198012%_)))
                                                          (_%tl197835198019%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197837198012%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd197836198016%_))
                                                          (let ((_%e197840198022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd197836198016%_))))
                    (let ((_%hd197839198026%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197840198022%_)))
                          (_%tl197838198029%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197840198022%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd197839198026%_))
                          (if (let ((__tmp201254 |gxc[1]#_g201255_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp201254
                                 _%hd197839198026%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197838198029%_))
                                  (let ((_%e197843198032%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl197838198029%_))))
                                    (let ((_%hd197842198036%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197843198032%_)))
                                          (_%tl197841198039%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197843198032%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197841198039%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197835198019%_))
                                              ((lambda (_%L198042%_
                                                        _%L198044%_
                                                        _%L198045%_
                                                        _%L198046%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L198042%_))
                                                     (cons _%L198042%_
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
                                                 (cons _%L198045%_ '()))
                                           '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#f))
                                               _%hd197842198036%_
                                               _%hd197829197992%_
                                               _%hd197816197948%_
                                               _%hd197803197904%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197783197849%_
                                                 _%g197784197853%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197783197849%_
                                             _%g197784197853%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197783197849%_ _%g197784197853%_)))
                              (let ()
                                (declare (not safe))
                                (_%g197783197849%_ _%g197784197853%_)))
                          (let ()
                            (declare (not safe))
                            (_%g197783197849%_ _%g197784197853%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g197783197849%_ _%g197784197853%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197783197849%_
                                                     _%g197784197853%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197783197849%_
                                                 _%g197784197853%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g197783197849%_
                                           _%g197784197853%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g197783197849%_ _%g197784197853%_)))
                            (let ()
                              (declare (not safe))
                              (_%g197783197849%_ _%g197784197853%_)))))
                    (let ()
                      (declare (not safe))
                      (_%g197783197849%_ _%g197784197853%_)))
                (let ()
                  (declare (not safe))
                  (_%g197783197849%_ _%g197784197853%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197783197849%_
                                                       _%g197784197853%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197783197849%_
                                               _%g197784197853%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197783197849%_ _%g197784197853%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g197783197849%_ _%g197784197853%_))))
                          (let ()
                            (declare (not safe))
                            (_%g197783197849%_ _%g197784197853%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g197783197849%_ _%g197784197853%_)))
              (let ()
                (declare (not safe))
                (_%g197783197849%_ _%g197784197853%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g197783197849%_
                                                 _%g197784197853%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197783197849%_
                                             _%g197784197853%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197783197849%_
                                         _%g197784197853%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197783197849%_ _%g197784197853%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g197783197849%_ _%g197784197853%_)))
                  (let ()
                    (declare (not safe))
                    (_%g197783197849%_ _%g197784197853%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197783197849%_
                                                       _%g197784197853%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197783197849%_
                                               _%g197784197853%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g197783197849%_
                                           _%g197784197853%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g197783197849%_ _%g197784197853%_)))
                            (let ()
                              (declare (not safe))
                              (_%g197783197849%_ _%g197784197853%_)))
                        (let ()
                          (declare (not safe))
                          (_%g197783197849%_ _%g197784197853%_)))))
                (let ()
                  (declare (not safe))
                  (_%g197783197849%_ _%g197784197853%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197783197849%_
                                                   _%g197784197853%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197783197849%_
                                               _%g197784197853%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197783197849%_
                                         _%g197784197853%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197783197849%_ _%g197784197853%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g197783197849%_ _%g197784197853%_))))))
          (declare (not safe))
          (_%g197782198096%_ _%sig197780%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx198868%_)
        (let* ((_%g198871198889%_
                (lambda (_%g198872198885%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198872198885%_))))
               (_%g198870198944%_
                (lambda (_%g198872198893%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198872198893%_))
                      (let ((_%e198877198896%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198872198893%_))))
                        (let ((_%hd198876198900%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198877198896%_)))
                              (_%tl198875198903%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198877198896%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198875198903%_))
                              (let ((_%e198880198906%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198875198903%_))))
                                (let ((_%hd198879198910%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198880198906%_)))
                                      (_%tl198878198913%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198880198906%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198878198913%_))
                                      (let ((_%e198883198916%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198878198913%_))))
                                        (let ((_%hd198882198920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198883198916%_)))
                                              (_%tl198881198923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198883198916%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198881198923%_))
                                              ((lambda (_%L198926%_
                                                        _%L198928%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L198928%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L198926%_)))
                                                     (begin
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-procedure!|
                                                          _%stx198868%_
                                                          _%L198928%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-class!|
                                                          _%stx198868%_
                                                          _%L198926%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L198928%_
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
                                                   (cons _%L198926%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g198871198889%_
                                                      _%g198872198893%_)))
                                               _%hd198882198920%_
                                               _%hd198879198910%_)
                                              (_%g198871198889%_
                                               _%g198872198893%_))))
                                      (_%g198871198889%_ _%g198872198893%_))))
                              (_%g198871198889%_ _%g198872198893%_))))
                      (_%g198871198889%_ _%g198872198893%_)))))
          (_%g198870198944%_ _%stx198868%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx198948%_)
        (let* ((_%g198951198975%_
                (lambda (_%g198952198971%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198952198971%_))))
               (_%g198950199258%_
                (lambda (_%g198952198979%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198952198979%_))
                      (let ((_%e198957198982%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198952198979%_))))
                        (let ((_%hd198956198986%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198957198982%_)))
                              (_%tl198955198989%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198957198982%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198955198989%_))
                              (let ((_%e198960198992%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198955198989%_))))
                                (let ((_%hd198959198996%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198960198992%_)))
                                      (_%tl198958198999%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198960198992%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl198958198999%_))
                                      (let ((_g201256_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl198958198999%_
                                                '0))))
                                        (begin
                                          (let ((_g201257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201256_)
                                                       (##vector-length
                                                        _g201256_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201257_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201257_)))
                                          (let ((_%target198961199002%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201256_ 0)))
                                                (_%tl198963199005%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201256_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198963199005%_))
                                                (letrec ((_%loop198964199008%_
                                                          (lambda (_%hd198962199012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature198968199015%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd198962199012%_))
                        (let ((_%e198965199018%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd198962199012%_))))
                          (let ((_%lp-hd198966199022%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198965199018%_)))
                                (_%lp-tl198967199025%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198965199018%_))))
                            (_%loop198964199008%_
                             _%lp-tl198967199025%_
                             (cons _%lp-hd198966199022%_
                                   _%signature198968199015%_))))
                        (let ((_%signature198969199028%_
                               (reverse _%signature198968199015%_)))
                          ((lambda (_%L199032%_ _%L199034%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L199034%_))
                                 (let* ((_%g199052199067%_
                                         (lambda (_%g199053199063%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g199053199063%_))))
                                        (_%g199051199246%_
                                         (lambda (_%g199053199071%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g199053199071%_))
                                               (let ((_%e199058199074%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g199053199071%_))))
                                                 (let ((_%hd199057199078%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199058199074%_)))
                                                       (_%tl199056199081%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199058199074%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199056199081%_))
                                                       (let ((_%e199061199084%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl199056199081%_))))
                 (let ((_%hd199060199088%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199061199084%_)))
                       (_%tl199059199091%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199061199084%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199059199091%_))
                       ((lambda (_%L199094%_ _%L199096%_)
                          (let ()
                            (let* ((_%g199112199120%_
                                    (lambda (_%g199113199116%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g199113199116%_))))
                                   (_%g199111199242%_
                                    (lambda (_%g199113199124%_)
                                      ((lambda (_%L199127%_)
                                         (let ()
                                           (let* ((_%unchecked199140%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (|gxc[1]#signature->unchecked-signature|
                                                      _%L199094%_)))
                                                  (_%g199143199151%_
                                                   (lambda (_%g199144199147%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g199144199147%_))))
                                                  (_%g199142199174%_
                                                   (lambda (_%g199144199155%_)
                                                     ((lambda (_%L199158%_)
                                                        (let ()
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (cons _%L199127%_ (cons _%L199158%_ '())))))
              _%g199144199155%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g199142199174%_
                                              (if _%unchecked199140%_
                                                  (let* ((_%g199178199193%_
                                                          (lambda (_%g199179199189%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g199179199189%_))))
                                                         (_%g199177199238%_
                                                          (lambda (_%g199179199197%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g199179199197%_))
                        (let ((_%e199184199200%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%g199179199197%_))))
                          (let ((_%hd199183199204%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199184199200%_)))
                                (_%tl199182199207%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199184199200%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199182199207%_))
                                (let ((_%e199187199210%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199182199207%_))))
                                  (let ((_%hd199186199214%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199187199210%_)))
                                        (_%tl199185199217%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199187199210%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199185199217%_))
                                        ((lambda (_%L199220%_ _%L199222%_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type))
                                                   (cons _%L199222%_
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L199096%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons _%L199220%_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd199186199214%_
                                         _%hd199183199204%_)
                                        (_%g199178199193%_
                                         _%g199179199197%_))))
                                (_%g199178199193%_ _%g199179199197%_))))
                        (_%g199178199193%_ _%g199179199197%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199177199238%_
                                                     _%unchecked199140%_))
                                                  '(begin))))))
                                       _%g199113199124%_))))
                              (_%g199111199242%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'declare-type))
                                     (cons _%L199034%_
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!primitive-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L199096%_ '()))
                     (cons '#f (cons 'signature: (cons _%L199094%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                        _%hd199060199088%_
                        _%hd199057199078%_)
                       (_%g199052199067%_ _%g199053199071%_))))
               (_%g199052199067%_ _%g199053199071%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199052199067%_
                                                _%g199053199071%_)))))
                                   (_%g199051199246%_
                                    (let ((__tmp201258
                                           (let ((__tmp201259
                                                  (lambda (_%g199249199252%_
                                                           _%g199250199255%_)
                                                    (cons _%g199249199252%_
                                                          _%g199250199255%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp201259
                                              '()
                                              _%L199032%_))))
                                      (declare (not safe))
                                      (|gxc[1]#parse-signature|
                                       _%stx198948%_
                                       _%L199034%_
                                       __tmp201258))))
                                 (_%g198951198975%_ _%g198952198979%_)))
                           _%signature198969199028%_
                           _%hd198959198996%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop198964199008%_
                                                   _%target198961199002%_
                                                   '()))
                                                (_%g198951198975%_
                                                 _%g198952198979%_)))))
                                      (_%g198951198975%_ _%g198952198979%_))))
                              (_%g198951198975%_ _%g198952198979%_))))
                      (_%g198951198975%_ _%g198952198979%_)))))
          (_%g198950199258%_ _%stx198948%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx199263%_)
        (let* ((_%g199266199290%_
                (lambda (_%g199267199286%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199267199286%_))))
               (_%g199265200104%_
                (lambda (_%g199267199294%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199267199294%_))
                      (let ((_%e199272199297%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199267199294%_))))
                        (let ((_%hd199271199301%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199272199297%_)))
                              (_%tl199270199304%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199272199297%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199270199304%_))
                              (let ((_%e199275199307%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199270199304%_))))
                                (let ((_%hd199274199311%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199275199307%_)))
                                      (_%tl199273199314%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199275199307%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199273199314%_))
                                      (let ((_g201260_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199273199314%_
                                                '0))))
                                        (begin
                                          (let ((_g201261_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201260_)
                                                       (##vector-length
                                                        _g201260_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201261_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201261_)))
                                          (let ((_%target199276199317%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201260_ 0)))
                                                (_%tl199278199320%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201260_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199278199320%_))
                                                (letrec ((_%loop199279199323%_
                                                          (lambda (_%hd199277199327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature199283199330%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199277199327%_))
                        (let ((_%e199280199333%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd199277199327%_))))
                          (let ((_%lp-hd199281199337%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199280199333%_)))
                                (_%lp-tl199282199340%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199280199333%_))))
                            (_%loop199279199323%_
                             _%lp-tl199282199340%_
                             (cons _%lp-hd199281199337%_
                                   _%case-signature199283199330%_))))
                        (let ((_%case-signature199284199343%_
                               (reverse _%case-signature199283199330%_)))
                          ((lambda (_%L199347%_ _%L199349%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L199349%_))
                                 (let* ((_%signatures199380%_
                                         (map (lambda (_%g199366199368%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (|gxc[1]#parse-signature|
                                                   _%stx199263%_
                                                   _%L199349%_
                                                   _%g199366199368%_)))
                                              (let ((__tmp201262
                                                     (lambda (_%g199371199374%_
                                                              _%g199372199377%_)
                                                       (cons _%g199371199374%_
                                                             _%g199372199377%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp201262
                                                 '()
                                                 _%L199347%_))))
                                        (_%g199383199409%_
                                         (lambda (_%g199384199405%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g199384199405%_))))
                                        (_%g199382200100%_
                                         (lambda (_%g199384199413%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g199384199413%_))
                                               (let ((_g201263_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g199384199413%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g201264_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g201263_)
                        (##vector-length _g201263_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g201264_ 2)))
                 (error "Context expects 2 values" _g201264_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target199387199416%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g201263_
                                                             0)))
                                                         (_%tl199389199419%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g201263_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199389199419%_))
                                                         (letrec ((_%loop199390199422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd199388199426%_
                                    _%sig199394199429%_
                                    _%arity199395199431%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd199388199426%_))
                                 (let ((_%e199391199434%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd199388199426%_))))
                                   (let ((_%lp-hd199392199438%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e199391199434%_)))
                                         (_%lp-tl199393199441%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e199391199434%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd199392199438%_))
                                         (let ((_%e199400199444%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd199392199438%_))))
                                           (let ((_%hd199399199448%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199400199444%_)))
                                                 (_%tl199398199451%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199400199444%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199398199451%_))
                                                 (let ((_%e199403199454%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl199398199451%_))))
                                                   (let ((_%hd199402199458%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199403199454%_)))
                                                         (_%tl199401199461%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199403199454%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199401199461%_))
                                                         (_%loop199390199422%_
                                                          _%lp-tl199393199441%_
                                                          (cons _%hd199402199458%_
                                                                _%sig199394199429%_)
                                                          (cons _%hd199399199448%_
                                                                _%arity199395199431%_))
                                                         (_%g199383199409%_
                                                          _%g199384199413%_))))
                                                 (_%g199383199409%_
                                                  _%g199384199413%_))))
                                         (_%g199383199409%_
                                          _%g199384199413%_))))
                                 (let ((_%sig199396199464%_
                                        (reverse _%sig199394199429%_))
                                       (_%arity199397199467%_
                                        (reverse _%arity199395199431%_)))
                                   ((lambda (_%L199470%_ _%L199472%_)
                                      (let ()
                                        (let* ((_%g199489199497%_
                                                (lambda (_%g199490199493%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g199490199493%_))))
                                               (_%g199488200085%_
                                                (lambda (_%g199490199501%_)
                                                  ((lambda (_%L199504%_)
                                                     (let ()
                                                       (let* ((_%g199517199525%_
                                                               (lambda (_%g199518199521%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g199518199521%_))))
                      (_%g199516199547%_
                       (lambda (_%g199518199529%_)
                         ((lambda (_%L199532%_)
                            (let ()
                              (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'begin))
                                    (cons _%L199504%_
                                          (cons _%L199532%_ '())))))
                          _%g199518199529%_))))
                 (_%g199516199547%_
                  (let ((_g201265_
                         (let _%loop199551%_ ((_%rest199554%_
                                               _%signatures199380%_)
                                              (_%unchecked-proc199556%_ '#f)
                                              (_%unchecked-clauses199557%_
                                               '()))
                           (let* ((_%rest199558199566%_ _%rest199554%_)
                                  (_%else199560199578%_
                                   (lambda ()
                                     (values _%unchecked-proc199556%_
                                             (reverse!
                                              _%unchecked-clauses199557%_))))
                                  (_%K199562199950%_
                                   (lambda (_%rest199582%_ _%hd199584%_)
                                     (let* ((_%g199586199659%_
                                             (lambda (_%g199587199655%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g199587199655%_))))
                                            (_%g199585199946%_
                                             (lambda (_%g199587199663%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g199587199663%_))
                                                   (let ((_%e199595199666%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%g199587199663%_))))
                                                     (let ((_%hd199594199670%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199595199666%_)))
                                                           (_%tl199593199673%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199595199666%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199593199673%_))
                                                           (let ((_%e199598199676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl199593199673%_))))
                     (let ((_%hd199597199680%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199598199676%_)))
                           (_%tl199596199683%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199598199676%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd199597199680%_))
                           (let ((_%e199601199686%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%hd199597199680%_))))
                             (let ((_%hd199600199690%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199601199686%_)))
                                   (_%tl199599199693%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199601199686%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl199599199693%_))
                                   (let ((_%e199604199696%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl199599199693%_))))
                                     (let ((_%hd199603199700%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199604199696%_)))
                                           (_%tl199602199703%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199604199696%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-datum?
                                              _%hd199603199700%_))
                                           (let ((_%e199605199706%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd199603199700%_))))
                                             (if (equal? _%e199605199706%_
                                                         'arguments:)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl199602199703%_))
                                                     (let ((_%e199608199710%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%tl199602199703%_))))
                                                       (let ((_%hd199607199714%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e199608199710%_)))
                     (_%tl199606199717%_
                      (let () (declare (not safe)) (##cdr _%e199608199710%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd199607199714%_))
                     (let ((_%e199611199720%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%hd199607199714%_))))
                       (let ((_%hd199610199724%_
                              (let ()
                                (declare (not safe))
                                (##car _%e199611199720%_)))
                             (_%tl199609199727%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e199611199720%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%hd199610199724%_))
                             (if (let ((__tmp201267 |gxc[1]#_g201268_|))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    __tmp201267
                                    _%hd199610199724%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl199609199727%_))
                                     (let ((_%e199614199730%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl199609199727%_))))
                                       (let ((_%hd199613199734%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e199614199730%_)))
                                             (_%tl199612199737%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e199614199730%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl199612199737%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199606199717%_))
                                                 (let ((_%e199617199740%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl199606199717%_))))
                                                   (let ((_%hd199616199744%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199617199740%_)))
                                                         (_%tl199615199747%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199617199740%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-datum?
                                                            _%hd199616199744%_))
                                                         (let ((_%e199618199750%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd199616199744%_))))
                   (if (equal? _%e199618199750%_ 'return:)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl199615199747%_))
                           (let ((_%e199621199754%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%tl199615199747%_))))
                             (let ((_%hd199620199758%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199621199754%_)))
                                   (_%tl199619199761%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199621199754%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd199620199758%_))
                                   (let ((_%e199624199764%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%hd199620199758%_))))
                                     (let ((_%hd199623199768%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199624199764%_)))
                                           (_%tl199622199771%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199624199764%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd199623199768%_))
                                           (if (let ((__tmp201269
                                                      |gxc[1]#_g201270_|))
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  __tmp201269
                                                  _%hd199623199768%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl199622199771%_))
                                                   (let ((_%e199627199774%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl199622199771%_))))
                                                     (let ((_%hd199626199778%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199627199774%_)))
                                                           (_%tl199625199781%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199627199774%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl199625199781%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl199619199761%_))
                       (let ((_%e199630199784%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl199619199761%_))))
                         (let ((_%hd199629199788%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199630199784%_)))
                               (_%tl199628199791%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199630199784%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd199629199788%_))
                               (let ((_%e199631199794%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd199629199788%_))))
                                 (if (equal? _%e199631199794%_ 'effect:)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl199628199791%_))
                                         (let ((_%e199634199798%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%tl199628199791%_))))
                                           (let ((_%hd199633199802%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199634199798%_)))
                                                 (_%tl199632199805%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199634199798%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd199633199802%_))
                                                 (let ((_%e199637199808%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%hd199633199802%_))))
                                                   (let ((_%hd199636199812%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199637199808%_)))
                                                         (_%tl199635199815%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199637199808%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd199636199812%_))
                                                         (if (let ((__tmp201271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |gxc[1]#_g201272_|))
                       (declare (not safe))
                       (gx#free-identifier=? __tmp201271 _%hd199636199812%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl199635199815%_))
                         (let ((_%e199640199818%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl199635199815%_))))
                           (let ((_%hd199639199822%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e199640199818%_)))
                                 (_%tl199638199825%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e199640199818%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl199638199825%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl199632199805%_))
                                     (let ((_%e199643199828%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl199632199805%_))))
                                       (let ((_%hd199642199832%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e199643199828%_)))
                                             (_%tl199641199835%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e199643199828%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%hd199642199832%_))
                                             (let ((_%e199644199838%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd199642199832%_))))
                                               (if (equal? _%e199644199838%_
                                                           'unchecked:)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199641199835%_))
                                                       (let ((_%e199647199842%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl199641199835%_))))
                 (let ((_%hd199646199846%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199647199842%_)))
                       (_%tl199645199849%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199647199842%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd199646199846%_))
                       (let ((_%e199650199852%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd199646199846%_))))
                         (let ((_%hd199649199856%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199650199852%_)))
                               (_%tl199648199859%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199650199852%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%hd199649199856%_))
                               (if (let ((__tmp201273 |gxc[1]#_g201274_|))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      __tmp201273
                                      _%hd199649199856%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl199648199859%_))
                                       (let ((_%e199653199862%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#syntax-e
                                                 _%tl199648199859%_))))
                                         (let ((_%hd199652199866%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199653199862%_)))
                                               (_%tl199651199869%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199653199862%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl199651199869%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl199645199849%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199596199683%_))
                                                       ((lambda (_%L199872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L199874%_
                         _%L199875%_
                         _%L199876%_
                         _%L199877%_)
                  (let ((_%clause199938%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0
                                  '#f
                                  'make-!primitive-lambda))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L199877%_ '()))
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
                                       (cons _%L199875%_ '()))
                                 '())))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (_%unchecked199940%_
                         (let () (declare (not safe)) (gx#stx-e _%L199872%_))))
                    (_%loop199551%_
                     _%rest199582%_
                     (let ((_%$e199942%_ _%unchecked199940%_))
                       (if _%$e199942%_ _%$e199942%_ _%unchecked-proc199556%_))
                     (cons _%clause199938%_ _%unchecked-clauses199557%_))))
                _%hd199652199866%_
                _%hd199639199822%_
                _%hd199626199778%_
                _%hd199613199734%_
                _%hd199594199670%_)
               (_%g199586199659%_ _%g199587199663%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199586199659%_
                                                    _%g199587199663%_))
                                               (_%g199586199659%_
                                                _%g199587199663%_))))
                                       (_%g199586199659%_ _%g199587199663%_))
                                   (_%g199586199659%_ _%g199587199663%_))
                               (_%g199586199659%_ _%g199587199663%_))))
                       (_%g199586199659%_ _%g199587199663%_))))
               (_%g199586199659%_ _%g199587199663%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199586199659%_
                                                    _%g199587199663%_)))
                                             (_%g199586199659%_
                                              _%g199587199663%_))))
                                     (_%g199586199659%_ _%g199587199663%_))
                                 (_%g199586199659%_ _%g199587199663%_))))
                         (_%g199586199659%_ _%g199587199663%_))
                     (_%g199586199659%_ _%g199587199663%_))
                 (_%g199586199659%_ _%g199587199663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g199586199659%_
                                                  _%g199587199663%_))))
                                         (_%g199586199659%_ _%g199587199663%_))
                                     (_%g199586199659%_ _%g199587199663%_)))
                               (_%g199586199659%_ _%g199587199663%_))))
                       (_%g199586199659%_ _%g199587199663%_))
                   (_%g199586199659%_ _%g199587199663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199586199659%_
                                                    _%g199587199663%_))
                                               (_%g199586199659%_
                                                _%g199587199663%_))
                                           (_%g199586199659%_
                                            _%g199587199663%_))))
                                   (_%g199586199659%_ _%g199587199663%_))))
                           (_%g199586199659%_ _%g199587199663%_))
                       (_%g199586199659%_ _%g199587199663%_)))
                 (_%g199586199659%_ _%g199587199663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g199586199659%_
                                                  _%g199587199663%_))
                                             (_%g199586199659%_
                                              _%g199587199663%_))))
                                     (_%g199586199659%_ _%g199587199663%_))
                                 (_%g199586199659%_ _%g199587199663%_))
                             (_%g199586199659%_ _%g199587199663%_))))
                     (_%g199586199659%_ _%g199587199663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199586199659%_
                                                      _%g199587199663%_))
                                                 (_%g199586199659%_
                                                  _%g199587199663%_)))
                                           (_%g199586199659%_
                                            _%g199587199663%_))))
                                   (_%g199586199659%_ _%g199587199663%_))))
                           (_%g199586199659%_ _%g199587199663%_))))
                   (_%g199586199659%_ _%g199587199663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199586199659%_
                                                    _%g199587199663%_)))))
                                       (_%g199585199946%_ _%hd199584%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest199558199566%_))
                                 (let ((_%hd199563199954%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest199558199566%_)))
                                       (_%tl199564199957%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest199558199566%_))))
                                   (let* ((_%hd199960%_ _%hd199563199954%_)
                                          (_%rest199963%_ _%tl199564199957%_))
                                     (_%K199562199950%_
                                      _%rest199963%_
                                      _%hd199960%_)))
                                 (_%else199560199578%_))))))
                    (begin
                      (let ((_g201266_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g201265_)
                                   (##vector-length _g201265_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g201266_ 2)))
                            (error "Context expects 2 values" _g201266_)))
                      (let ((_%unchecked-proc199966%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201265_ 0)))
                            (_%unchecked-clauses199968%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201265_ 1))))
                        (if _%unchecked-proc199966%_
                            (let* ((_%g199970199994%_
                                    (lambda (_%g199971199990%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g199971199990%_))))
                                   (_%g199969200081%_
                                    (lambda (_%g199971199998%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%g199971199998%_))
                                          (let ((_%e199976200001%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%g199971199998%_))))
                                            (let ((_%hd199975200005%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199976200001%_)))
                                                  (_%tl199974200008%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199976200001%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199974200008%_))
                                                  (let ((_%e199979200011%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199974200008%_))))
                                                    (let ((_%hd199978200015%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199979200011%_)))
                                                          (_%tl199977200018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199979200011%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%hd199978200015%_))
                                                          (let ((_g201275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%hd199978200015%_ '0))))
                    (begin
                      (let ((_g201276_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g201275_)
                                   (##vector-length _g201275_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g201276_ 2)))
                            (error "Context expects 2 values" _g201276_)))
                      (let ((_%target199980200021%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201275_ 0)))
                            (_%tl199982200024%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201275_ 1))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199982200024%_))
                            (letrec ((_%loop199983200027%_
                                      (lambda (_%hd199981200031%_
                                               _%clause199987200034%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199981200031%_))
                                            (let ((_%e199984200037%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd199981200031%_))))
                                              (let ((_%lp-hd199985200041%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199984200037%_)))
                                                    (_%lp-tl199986200044%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199984200037%_))))
                                                (_%loop199983200027%_
                                                 _%lp-tl199986200044%_
                                                 (cons _%lp-hd199985200041%_
                                                       _%clause199987200034%_))))
                                            (let ((_%clause199988200047%_
                                                   (reverse _%clause199987200034%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199977200018%_))
                                                  ((lambda (_%L200051%_
                                                            _%L200053%_)
                                                     (let ()
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L200053%_
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
                                                   (let ((__tmp201277
                                                          (lambda (_%g200072200075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g200073200078%_)
                    (cons _%g200072200075%_ _%g200073200078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp201277
                                                      '()
                                                      _%L200051%_)))
                                             '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%clause199988200047%_
                                                   _%hd199975200005%_)
                                                  (_%g199970199994%_
                                                   _%g199971199998%_)))))))
                              (_%loop199983200027%_
                               _%target199980200021%_
                               '()))
                            (_%g199970199994%_ _%g199971199998%_)))))
                  (_%g199970199994%_ _%g199971199998%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g199970199994%_
                                                   _%g199971199998%_))))
                                          (_%g199970199994%_
                                           _%g199971199998%_)))))
                              (_%g199969200081%_
                               (list _%unchecked-proc199966%_
                                     _%unchecked-clauses199968%_)))
                            '(begin)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g199490199501%_))))
                                          (_%g199488200085%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'declare-type))
                                                 (cons _%L199349%_
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
                                            _%L199470%_
                                            _%L199472%_))
                                         (let ((__tmp201278
                                                (lambda (_%g200088200092%_
                                                         _%g200089200095%_
                                                         _%g200090200097%_)
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%g200089200095%_ '()))
                            (cons '#f
                                  (cons 'signature:
                                        (cons _%g200088200092%_ '())))))
                _%g200090200097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp201278
                                            '()
                                            _%L199470%_
                                            _%L199472%_))))
                                 '()))
                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig199396199464%_
                                    _%arity199397199467%_))))))
                   (_%loop199390199422%_ _%target199387199416%_ '() '()))
                 (_%g199383199409%_ _%g199384199413%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199383199409%_
                                                _%g199384199413%_)))))
                                   (_%g199382200100%_ _%signatures199380%_))
                                 (_%g199266199290%_ _%g199267199294%_)))
                           _%case-signature199284199343%_
                           _%hd199274199311%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199279199323%_
                                                   _%target199276199317%_
                                                   '()))
                                                (_%g199266199290%_
                                                 _%g199267199294%_)))))
                                      (_%g199266199290%_ _%g199267199294%_))))
                              (_%g199266199290%_ _%g199267199294%_))))
                      (_%g199266199290%_ _%g199267199294%_)))))
          (_%g199265200104%_ _%stx199263%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx200112%_)
        (let* ((_%__stx201094201095%_ _%$stx200112%_)
               (_%g200118200178%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201094201095%_)))))
          (let ((_%__kont201097201098%_
                 (lambda (_%L200400%_ _%L200402%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200402%_ '()))
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
                                                       (cons _%L200402%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200400%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201099201100%_
                 (lambda (_%L200325%_ _%L200327%_ _%L200328%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200328%_ '()))
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
                                                       (cons _%L200328%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200327%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200325%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201101201102%_
                 (lambda (_%L200239%_ _%L200241%_ _%L200242%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200242%_ '()))
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
                                                       (cons _%L200242%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200241%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200239%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201094201095%_))
                (let ((_%e200124200356%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201094201095%_))))
                  (let ((_%tl200122200363%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200124200356%_)))
                        (_%hd200123200360%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200124200356%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200122200363%_))
                        (let ((_%e200127200366%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200122200363%_))))
                          (let ((_%tl200125200373%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200127200366%_)))
                                (_%hd200126200370%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200127200366%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd200126200370%_))
                                (let ((_%e200128200376%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200126200370%_))))
                                  (if (equal? _%e200128200376%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200125200373%_))
                                          (let ((_%e200131200380%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl200125200373%_))))
                                            (let ((_%tl200129200387%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200131200380%_)))
                                                  (_%hd200130200384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200131200380%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200129200387%_))
                                                  (let ((_%e200134200390%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200129200387%_))))
                                                    (let ((_%tl200132200397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200134200390%_)))
                                                          (_%hd200133200394%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200134200390%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200132200397%_))
                                                          (_%__kont201097201098%_
                                                           _%hd200133200394%_
                                                           _%hd200130200384%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200118200178%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200118200178%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200118200178%_)))
                                      (if (equal? _%e200128200376%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200125200373%_))
                                              (let ((_%e200147200295%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200125200373%_))))
                                                (let ((_%tl200145200302%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200147200295%_)))
                                                      (_%hd200146200299%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200147200295%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200145200302%_))
                                                      (let ((_%e200150200305%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl200145200302%_))))
                (let ((_%tl200148200312%_
                       (let () (declare (not safe)) (##cdr _%e200150200305%_)))
                      (_%hd200149200309%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200150200305%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200148200312%_))
                      (let ((_%e200153200315%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl200148200312%_))))
                        (let ((_%tl200151200322%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200153200315%_)))
                              (_%hd200152200319%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200153200315%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200151200322%_))
                              (_%__kont201099201100%_
                               _%hd200152200319%_
                               _%hd200149200309%_
                               _%hd200146200299%_)
                              (let ()
                                (declare (not safe))
                                (_%g200118200178%_)))))
                      (let () (declare (not safe)) (_%g200118200178%_)))))
              (let () (declare (not safe)) (_%g200118200178%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200118200178%_)))
                                          (if (equal? _%e200128200376%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200125200373%_))
                                                  (let ((_%e200166200209%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200125200373%_))))
                                                    (let ((_%tl200164200216%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200166200209%_)))
                                                          (_%hd200165200213%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200166200209%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200164200216%_))
                                                          (let ((_%e200169200219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl200164200216%_))))
                    (let ((_%tl200167200226%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200169200219%_)))
                          (_%hd200168200223%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200169200219%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200167200226%_))
                          (let ((_%e200172200229%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200167200226%_))))
                            (let ((_%tl200170200236%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200172200229%_)))
                                  (_%hd200171200233%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200172200229%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200170200236%_))
                                  (_%__kont201101201102%_
                                   _%hd200171200233%_
                                   _%hd200168200223%_
                                   _%hd200165200213%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g200118200178%_)))))
                          (let () (declare (not safe)) (_%g200118200178%_)))))
                  (let () (declare (not safe)) (_%g200118200178%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200118200178%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200118200178%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200118200178%_)))))
                        (let () (declare (not safe)) (_%g200118200178%_)))))
                (let () (declare (not safe)) (_%g200118200178%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx200424%_)
        (let* ((_%g200428200448%_
                (lambda (_%g200429200444%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200429200444%_))))
               (_%g200427200519%_
                (lambda (_%g200429200452%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200429200452%_))
                      (let ((_%e200433200455%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200429200452%_))))
                        (let ((_%hd200432200459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200433200455%_)))
                              (_%tl200431200462%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200433200455%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl200431200462%_))
                              (let ((_g201279_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl200431200462%_
                                        '0))))
                                (begin
                                  (let ((_g201280_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201279_)
                                               (##vector-length _g201279_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201280_ 2)))
                                        (error "Context expects 2 values"
                                               _g201280_)))
                                  (let ((_%target200434200465%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201279_ 0)))
                                        (_%tl200436200468%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201279_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200436200468%_))
                                        (letrec ((_%loop200437200471%_
                                                  (lambda (_%hd200435200475%_
                                                           _%decl200441200478%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200435200475%_))
                                                        (let ((_%e200438200481%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd200435200475%_))))
                  (let ((_%lp-hd200439200485%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200438200481%_)))
                        (_%lp-tl200440200488%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200438200481%_))))
                    (_%loop200437200471%_
                     _%lp-tl200440200488%_
                     (cons _%lp-hd200439200485%_ _%decl200441200478%_))))
                (let ((_%decl200442200491%_ (reverse _%decl200441200478%_)))
                  ((lambda (_%L200495%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp201281
                                  (lambda (_%g200510200513%_ _%g200511200516%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g200510200513%_)
                                          _%g200511200516%_))))
                             (declare (not safe))
                             (__foldr1 __tmp201281 '() _%L200495%_))))
                   _%decl200442200491%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop200437200471%_
                                           _%target200434200465%_
                                           '()))
                                        (_%g200428200448%_
                                         _%g200429200452%_)))))
                              (_%g200428200448%_ _%g200429200452%_))))
                      (_%g200428200448%_ _%g200429200452%_)))))
          (_%g200427200519%_ _%$stx200424%_))))))
