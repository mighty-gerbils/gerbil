(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g221261_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221268_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221270_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221272_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221274_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221276_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221288_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221290_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221292_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221294_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221296_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx214679%_)
        (let* ((_%g214683214701%_
                (lambda (_%g214684214697%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214684214697%_))))
               (_%g214682214756%_
                (lambda (_%g214684214705%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214684214705%_))
                      (let ((_%e214687214708%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214684214705%_))))
                        (let ((_%hd214688214712%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214687214708%_)))
                              (_%tl214689214715%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214687214708%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214689214715%_))
                              (let ((_%e214690214718%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl214689214715%_))))
                                (let ((_%hd214691214722%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214690214718%_)))
                                      (_%tl214692214725%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214690214718%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214692214725%_))
                                      (let ((_%e214693214728%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl214692214725%_))))
                                        (let ((_%hd214694214732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214693214728%_)))
                                              (_%tl214695214735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214693214728%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214695214735%_))
                                              ((lambda (_%L214738%_
                                                        _%L214740%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L214740%_))
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
                               (cons _%L214740%_ '()))
                         (cons _%L214738%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g214683214701%_
                                                      _%g214684214705%_)))
                                               _%hd214694214732%_
                                               _%hd214691214722%_)
                                              (_%g214683214701%_
                                               _%g214684214705%_))))
                                      (_%g214683214701%_ _%g214684214705%_))))
                              (_%g214683214701%_ _%g214684214705%_))))
                      (_%g214683214701%_ _%g214684214705%_)))))
          (_%g214682214756%_ _%$stx214679%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx214760%_)
        (let* ((_%g214764214782%_
                (lambda (_%g214765214778%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214765214778%_))))
               (_%g214763214837%_
                (lambda (_%g214765214786%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214765214786%_))
                      (let ((_%e214768214789%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214765214786%_))))
                        (let ((_%hd214769214793%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214768214789%_)))
                              (_%tl214770214796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214768214789%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214770214796%_))
                              (let ((_%e214771214799%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl214770214796%_))))
                                (let ((_%hd214772214803%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214771214799%_)))
                                      (_%tl214773214806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214771214799%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214773214806%_))
                                      (let ((_%e214774214809%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl214773214806%_))))
                                        (let ((_%hd214775214813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214774214809%_)))
                                              (_%tl214776214816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214774214809%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214776214816%_))
                                              ((lambda (_%L214819%_
                                                        _%L214821%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L214821%_))
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
                               (cons _%L214821%_ '()))
                         (cons _%L214819%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g214764214782%_
                                                      _%g214765214786%_)))
                                               _%hd214775214813%_
                                               _%hd214772214803%_)
                                              (_%g214764214782%_
                                               _%g214765214786%_))))
                                      (_%g214764214782%_ _%g214765214786%_))))
                              (_%g214764214782%_ _%g214765214786%_))))
                      (_%g214764214782%_ _%g214765214786%_)))))
          (_%g214763214837%_ _%$stx214760%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx214841%_)
        (let* ((_%g214845214874%_
                (lambda (_%g214846214870%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214846214870%_))))
               (_%g214844214974%_
                (lambda (_%g214846214878%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214846214878%_))
                      (let ((_%e214849214881%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214846214878%_))))
                        (let ((_%hd214850214885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214849214881%_)))
                              (_%tl214851214888%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214849214881%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl214851214888%_))
                              (let ((_g221239_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl214851214888%_
                                        '0))))
                                (begin
                                  (let ((_g221240_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221239_)
                                               (##values-length _g221239_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221240_ 2)))
                                        (error "Context expects 2 values"
                                               _g221240_)))
                                  (let ((_%target214852214891%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221239_ 0)))
                                        (_%tl214854214894%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221239_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl214854214894%_))
                                        (letrec ((_%loop214855214897%_
                                                  (lambda (_%hd214853214901%_
                                                           _%type214859214904%_
                                                           _%symbol214860214906%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd214853214901%_))
                                                        (let ((_%e214856214909%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd214853214901%_))))
                  (let ((_%lp-hd214857214913%_
                         (let ()
                           (declare (not safe))
                           (##car _%e214856214909%_)))
                        (_%lp-tl214858214916%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e214856214909%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd214857214913%_))
                        (let ((_%e214863214919%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd214857214913%_))))
                          (let ((_%hd214864214923%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e214863214919%_)))
                                (_%tl214865214926%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e214863214919%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl214865214926%_))
                                (let ((_%e214866214929%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl214865214926%_))))
                                  (let ((_%hd214867214933%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e214866214929%_)))
                                        (_%tl214868214936%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e214866214929%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl214868214936%_))
                                        (_%loop214855214897%_
                                         _%lp-tl214858214916%_
                                         (cons _%hd214867214933%_
                                               _%type214859214904%_)
                                         (cons _%hd214864214923%_
                                               _%symbol214860214906%_))
                                        (_%g214845214874%_
                                         _%g214846214878%_))))
                                (_%g214845214874%_ _%g214846214878%_))))
                        (_%g214845214874%_ _%g214846214878%_))))
                (let ((_%type214861214939%_ (reverse _%type214859214904%_))
                      (_%symbol214862214942%_
                       (reverse _%symbol214860214906%_)))
                  ((lambda (_%L214945%_ _%L214947%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L214945%_
                                _%L214947%_))
                             (let ((__tmp221241
                                    (lambda (_%g214962214966%_
                                             _%g214963214969%_
                                             _%g214964214971%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g214963214969%_
                                                        (cons _%g214962214966%_
                                                              '())))
                                            _%g214964214971%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp221241
                                '()
                                _%L214945%_
                                _%L214947%_)))))
                   _%type214861214939%_
                   _%symbol214862214942%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop214855214897%_
                                           _%target214852214891%_
                                           '()
                                           '()))
                                        (_%g214845214874%_
                                         _%g214846214878%_)))))
                              (_%g214845214874%_ _%g214846214878%_))))
                      (_%g214845214874%_ _%g214846214878%_)))))
          (_%g214844214974%_ _%$stx214841%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx214979%_)
        (let* ((_%__stx220550220551%_ _%$stx214979%_)
               (_%g214984215026%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220550220551%_)))))
          (let ((_%__kont220553220554%_
                 (lambda (_%L215154%_ _%L215156%_ _%L215157%_ _%L215158%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L215158%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L215157%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L215156%_ '()))
                                           (cons _%L215154%_ '())))))))
                (_%__kont220555220556%_
                 (lambda (_%L215073%_ _%L215075%_ _%L215076%_ _%L215077%_)
                   (cons _%L215077%_
                         (cons _%L215076%_
                               (cons _%L215075%_
                                     (cons _%L215073%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match220589220590%_
                   (lambda (_%e214990215104%_
                            _%hd214991215108%_
                            _%tl214992215111%_
                            _%e214993215114%_
                            _%hd214994215118%_
                            _%tl214995215121%_
                            _%e214996215124%_
                            _%hd214997215128%_
                            _%tl214998215131%_
                            _%e214999215134%_
                            _%hd215000215138%_
                            _%tl215001215141%_
                            _%e215002215144%_
                            _%hd215003215148%_
                            _%tl215004215151%_)
                     (let ((_%L215154%_ _%hd215003215148%_)
                           (_%L215156%_ _%hd215000215138%_)
                           (_%L215157%_ _%hd214997215128%_)
                           (_%L215158%_ _%hd214994215118%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L215158%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L215157%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L215156%_)))
                           (_%__kont220553220554%_
                            _%L215154%_
                            _%L215156%_
                            _%L215157%_
                            _%L215158%_)
                           (let ()
                             (declare (not safe))
                             (_%g214984215026%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220550220551%_))
                  (let ((_%e214990215104%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx220550220551%_))))
                    (let ((_%tl214992215111%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214990215104%_)))
                          (_%hd214991215108%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214990215104%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl214992215111%_))
                          (let ((_%e214993215114%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl214992215111%_))))
                            (let ((_%tl214995215121%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e214993215114%_)))
                                  (_%hd214994215118%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e214993215114%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl214995215121%_))
                                  (let ((_%e214996215124%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl214995215121%_))))
                                    (let ((_%tl214998215131%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e214996215124%_)))
                                          (_%hd214997215128%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e214996215124%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl214998215131%_))
                                          (let ((_%e214999215134%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl214998215131%_))))
                                            (let ((_%tl215001215141%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e214999215134%_)))
                                                  (_%hd215000215138%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e214999215134%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl215001215141%_))
                                                  (let ((_%e215002215144%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl215001215141%_))))
                                                    (let ((_%tl215004215151%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e215002215144%_)))
                                                          (_%hd215003215148%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e215002215144%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl215004215151%_))
                                                          (_%__match220589220590%_
                                                           _%e214990215104%_
                                                           _%hd214991215108%_
                                                           _%tl214992215111%_
                                                           _%e214993215114%_
                                                           _%hd214994215118%_
                                                           _%tl214995215121%_
                                                           _%e214996215124%_
                                                           _%hd214997215128%_
                                                           _%tl214998215131%_
                                                           _%e214999215134%_
                                                           _%hd215000215138%_
                                                           _%tl215001215141%_
                                                           _%e215002215144%_
                                                           _%hd215003215148%_
                                                           _%tl215004215151%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g214984215026%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl215001215141%_))
                                                      (_%__kont220555220556%_
                                                       _%hd215000215138%_
                                                       _%hd214997215128%_
                                                       _%hd214994215118%_
                                                       _%hd214991215108%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g214984215026%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g214984215026%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g214984215026%_)))))
                          (let () (declare (not safe)) (_%g214984215026%_)))))
                  (let () (declare (not safe)) (_%g214984215026%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx215183%_)
        (let* ((_%g215187215222%_
                (lambda (_%g215188215218%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215188215218%_))))
               (_%g215186215341%_
                (lambda (_%g215188215226%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215188215226%_))
                      (let ((_%e215192215229%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215188215226%_))))
                        (let ((_%hd215193215233%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215192215229%_)))
                              (_%tl215194215236%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215192215229%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl215194215236%_))
                              (let ((_g221242_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl215194215236%_
                                        '0))))
                                (begin
                                  (let ((_g221243_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221242_)
                                               (##values-length _g221242_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221243_ 2)))
                                        (error "Context expects 2 values"
                                               _g221243_)))
                                  (let ((_%target215195215239%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221242_ 0)))
                                        (_%tl215197215242%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221242_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl215197215242%_))
                                        (letrec ((_%loop215198215245%_
                                                  (lambda (_%hd215196215249%_
                                                           _%symbol215202215252%_
                                                           _%method215203215254%_
                                                           _%type-t215204215256%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd215196215249%_))
                                                        (let ((_%e215199215259%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd215196215249%_))))
                  (let ((_%lp-hd215200215263%_
                         (let ()
                           (declare (not safe))
                           (##car _%e215199215259%_)))
                        (_%lp-tl215201215266%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e215199215259%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd215200215263%_))
                        (let ((_%e215208215269%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd215200215263%_))))
                          (let ((_%hd215209215273%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215208215269%_)))
                                (_%tl215210215276%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215208215269%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl215210215276%_))
                                (let ((_%e215211215279%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl215210215276%_))))
                                  (let ((_%hd215212215283%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e215211215279%_)))
                                        (_%tl215213215286%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e215211215279%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl215213215286%_))
                                        (let ((_%e215214215289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl215213215286%_))))
                                          (let ((_%hd215215215293%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e215214215289%_)))
                                                (_%tl215216215296%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e215214215289%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215216215296%_))
                                                (_%loop215198215245%_
                                                 _%lp-tl215201215266%_
                                                 (cons _%hd215215215293%_
                                                       _%symbol215202215252%_)
                                                 (cons _%hd215212215283%_
                                                       _%method215203215254%_)
                                                 (cons _%hd215209215273%_
                                                       _%type-t215204215256%_))
                                                (_%g215187215222%_
                                                 _%g215188215226%_))))
                                        (_%g215187215222%_
                                         _%g215188215226%_))))
                                (_%g215187215222%_ _%g215188215226%_))))
                        (_%g215187215222%_ _%g215188215226%_))))
                (let ((_%symbol215205215299%_ (reverse _%symbol215202215252%_))
                      (_%method215206215302%_ (reverse _%method215203215254%_))
                      (_%type-t215207215304%_
                       (reverse _%type-t215204215256%_)))
                  ((lambda (_%L215307%_ _%L215309%_ _%L215310%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L215307%_
                                _%L215309%_
                                _%L215310%_))
                             (let ((__tmp221244
                                    (lambda (_%g215326215331%_
                                             _%g215327215334%_
                                             _%g215328215336%_
                                             _%g215329215338%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g215328215336%_
                                                        (cons _%g215327215334%_
                                                              (cons _%g215326215331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g215329215338%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp221244
                                '()
                                _%L215307%_
                                _%L215309%_
                                _%L215310%_)))))
                   _%symbol215205215299%_
                   _%method215206215302%_
                   _%type-t215207215304%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop215198215245%_
                                           _%target215195215239%_
                                           '()
                                           '()
                                           '()))
                                        (_%g215187215222%_
                                         _%g215188215226%_)))))
                              (_%g215187215222%_ _%g215188215226%_))))
                      (_%g215187215222%_ _%g215188215226%_)))))
          (_%g215186215341%_ _%$stx215183%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx215346%_)
        (let* ((_%g215350215383%_
                (lambda (_%g215351215379%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215351215379%_))))
               (_%g215349215497%_
                (lambda (_%g215351215387%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215351215387%_))
                      (let ((_%e215355215390%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215351215387%_))))
                        (let ((_%hd215356215394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215355215390%_)))
                              (_%tl215357215397%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215355215390%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215357215397%_))
                              (let ((_%e215358215400%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215357215397%_))))
                                (let ((_%hd215359215404%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215358215400%_)))
                                      (_%tl215360215407%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215358215400%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl215360215407%_))
                                      (let ((_g221245_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl215360215407%_
                                                '0))))
                                        (begin
                                          (let ((_g221246_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g221245_)
                                                       (##values-length
                                                        _g221245_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g221246_ 2)))
                                                (error "Context expects 2 values"
                                                       _g221246_)))
                                          (let ((_%target215361215410%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g221245_ 0)))
                                                (_%tl215363215413%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g221245_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215363215413%_))
                                                (letrec ((_%loop215364215416%_
                                                          (lambda (_%hd215362215420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol215368215423%_
                           _%method215369215425%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd215362215420%_))
                        (let ((_%e215365215428%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd215362215420%_))))
                          (let ((_%lp-hd215366215432%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215365215428%_)))
                                (_%lp-tl215367215435%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215365215428%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd215366215432%_))
                                (let ((_%e215372215438%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd215366215432%_))))
                                  (let ((_%hd215373215442%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e215372215438%_)))
                                        (_%tl215374215445%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e215372215438%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl215374215445%_))
                                        (let ((_%e215375215448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl215374215445%_))))
                                          (let ((_%hd215376215452%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e215375215448%_)))
                                                (_%tl215377215455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e215375215448%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215377215455%_))
                                                (_%loop215364215416%_
                                                 _%lp-tl215367215435%_
                                                 (cons _%hd215376215452%_
                                                       _%symbol215368215423%_)
                                                 (cons _%hd215373215442%_
                                                       _%method215369215425%_))
                                                (_%g215350215383%_
                                                 _%g215351215387%_))))
                                        (_%g215350215383%_
                                         _%g215351215387%_))))
                                (_%g215350215383%_ _%g215351215387%_))))
                        (let ((_%symbol215370215458%_
                               (reverse _%symbol215368215423%_))
                              (_%method215371215461%_
                               (reverse _%method215369215425%_)))
                          ((lambda (_%L215464%_ _%L215466%_ _%L215467%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L215464%_
                                        _%L215466%_))
                                     (let ((__tmp221247
                                            (lambda (_%g215485215489%_
                                                     _%g215486215492%_
                                                     _%g215487215494%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L215467%_
                                                                (cons _%g215486215492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g215485215489%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g215487215494%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp221247
                                        '()
                                        _%L215464%_
                                        _%L215466%_)))))
                           _%symbol215370215458%_
                           _%method215371215461%_
                           _%hd215359215404%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop215364215416%_
                                                   _%target215361215410%_
                                                   '()
                                                   '()))
                                                (_%g215350215383%_
                                                 _%g215351215387%_)))))
                                      (_%g215350215383%_ _%g215351215387%_))))
                              (_%g215350215383%_ _%g215351215387%_))))
                      (_%g215350215383%_ _%g215351215387%_)))))
          (_%g215349215497%_ _%$stx215346%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx215502%_)
        (let* ((_%g215506215520%_
                (lambda (_%g215507215516%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215507215516%_))))
               (_%g215505215561%_
                (lambda (_%g215507215524%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215507215524%_))
                      (let ((_%e215509215527%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215507215524%_))))
                        (let ((_%hd215510215531%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215509215527%_)))
                              (_%tl215511215534%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215509215527%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215511215534%_))
                              (let ((_%e215512215537%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215511215534%_))))
                                (let ((_%hd215513215541%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215512215537%_)))
                                      (_%tl215514215544%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215512215537%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl215514215544%_))
                                      ((lambda (_%L215547%_)
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
                                                           (cons _%L215547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd215513215541%_)
                                      (_%g215506215520%_ _%g215507215524%_))))
                              (_%g215506215520%_ _%g215507215524%_))))
                      (_%g215506215520%_ _%g215507215524%_)))))
          (_%g215505215561%_ _%$stx215502%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx215565%_)
        (let* ((_%g215569215623%_
                (lambda (_%g215570215619%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215570215619%_))))
               (_%g215568215804%_
                (lambda (_%g215570215627%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215570215627%_))
                      (let ((_%e215582215630%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215570215627%_))))
                        (let ((_%hd215583215634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215582215630%_)))
                              (_%tl215584215637%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215582215630%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215584215637%_))
                              (let ((_%e215585215640%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215584215637%_))))
                                (let ((_%hd215586215644%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215585215640%_)))
                                      (_%tl215587215647%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215585215640%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl215587215647%_))
                                      (let ((_%e215588215650%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl215587215647%_))))
                                        (let ((_%hd215589215654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e215588215650%_)))
                                              (_%tl215590215657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e215588215650%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl215590215657%_))
                                              (let ((_%e215591215660%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl215590215657%_))))
                                                (let ((_%hd215592215664%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e215591215660%_)))
                                                      (_%tl215593215667%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e215591215660%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl215593215667%_))
                                                      (let ((_%e215594215670%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl215593215667%_))))
                (let ((_%hd215595215674%_
                       (let () (declare (not safe)) (##car _%e215594215670%_)))
                      (_%tl215596215677%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e215594215670%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl215596215677%_))
                      (let ((_%e215597215680%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl215596215677%_))))
                        (let ((_%hd215598215684%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215597215680%_)))
                              (_%tl215599215687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215597215680%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215599215687%_))
                              (let ((_%e215600215690%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215599215687%_))))
                                (let ((_%hd215601215694%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215600215690%_)))
                                      (_%tl215602215697%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215600215690%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl215602215697%_))
                                      (let ((_%e215603215700%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl215602215697%_))))
                                        (let ((_%hd215604215704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e215603215700%_)))
                                              (_%tl215605215707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e215603215700%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl215605215707%_))
                                              (let ((_%e215606215710%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl215605215707%_))))
                                                (let ((_%hd215607215714%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e215606215710%_)))
                                                      (_%tl215608215717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e215606215710%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl215608215717%_))
                                                      (let ((_%e215609215720%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl215608215717%_))))
                (let ((_%hd215610215724%_
                       (let () (declare (not safe)) (##car _%e215609215720%_)))
                      (_%tl215611215727%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e215609215720%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl215611215727%_))
                      (let ((_%e215612215730%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl215611215727%_))))
                        (let ((_%hd215613215734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215612215730%_)))
                              (_%tl215614215737%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215612215730%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215614215737%_))
                              (let ((_%e215615215740%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215614215737%_))))
                                (let ((_%hd215616215744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215615215740%_)))
                                      (_%tl215617215747%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215615215740%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl215617215747%_))
                                      ((lambda (_%L215750%_
                                                _%L215752%_
                                                _%L215753%_
                                                _%L215754%_
                                                _%L215755%_
                                                _%L215756%_
                                                _%L215757%_
                                                _%L215758%_
                                                _%L215759%_
                                                _%L215760%_
                                                _%L215761%_)
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
                                                           (cons _%L215761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L215760%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L215759%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L215758%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L215757%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L215756%_ '()))
                                           (cons _%L215755%_
                                                 (cons _%L215754%_
                                                       (cons _%L215753%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L215752%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L215750%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd215616215744%_
                                       _%hd215613215734%_
                                       _%hd215610215724%_
                                       _%hd215607215714%_
                                       _%hd215604215704%_
                                       _%hd215601215694%_
                                       _%hd215598215684%_
                                       _%hd215595215674%_
                                       _%hd215592215664%_
                                       _%hd215589215654%_
                                       _%hd215586215644%_)
                                      (_%g215569215623%_ _%g215570215627%_))))
                              (_%g215569215623%_ _%g215570215627%_))))
                      (_%g215569215623%_ _%g215570215627%_))))
              (_%g215569215623%_ _%g215570215627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g215569215623%_
                                               _%g215570215627%_))))
                                      (_%g215569215623%_ _%g215570215627%_))))
                              (_%g215569215623%_ _%g215570215627%_))))
                      (_%g215569215623%_ _%g215570215627%_))))
              (_%g215569215623%_ _%g215570215627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g215569215623%_
                                               _%g215570215627%_))))
                                      (_%g215569215623%_ _%g215570215627%_))))
                              (_%g215569215623%_ _%g215570215627%_))))
                      (_%g215569215623%_ _%g215570215627%_)))))
          (_%g215568215804%_ _%$stx215565%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx215808%_)
        (let* ((_%g215812215826%_
                (lambda (_%g215813215822%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215813215822%_))))
               (_%g215811215867%_
                (lambda (_%g215813215830%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215813215830%_))
                      (let ((_%e215815215833%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215813215830%_))))
                        (let ((_%hd215816215837%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215815215833%_)))
                              (_%tl215817215840%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215815215833%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215817215840%_))
                              (let ((_%e215818215843%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215817215840%_))))
                                (let ((_%hd215819215847%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215818215843%_)))
                                      (_%tl215820215850%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215818215843%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl215820215850%_))
                                      ((lambda (_%L215853%_)
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
                                                           (cons _%L215853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd215819215847%_)
                                      (_%g215812215826%_ _%g215813215830%_))))
                              (_%g215812215826%_ _%g215813215830%_))))
                      (_%g215812215826%_ _%g215813215830%_)))))
          (_%g215811215867%_ _%$stx215808%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx215871%_)
        (let* ((_%g215875215889%_
                (lambda (_%g215876215885%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215876215885%_))))
               (_%g215874215930%_
                (lambda (_%g215876215893%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215876215893%_))
                      (let ((_%e215878215896%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215876215893%_))))
                        (let ((_%hd215879215900%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215878215896%_)))
                              (_%tl215880215903%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215878215896%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215880215903%_))
                              (let ((_%e215881215906%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215880215903%_))))
                                (let ((_%hd215882215910%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215881215906%_)))
                                      (_%tl215883215913%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215881215906%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl215883215913%_))
                                      ((lambda (_%L215916%_)
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
                                                           (cons _%L215916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd215882215910%_)
                                      (_%g215875215889%_ _%g215876215893%_))))
                              (_%g215875215889%_ _%g215876215893%_))))
                      (_%g215875215889%_ _%g215876215893%_)))))
          (_%g215874215930%_ _%$stx215871%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx215934%_)
        (let* ((_%g215938215960%_
                (lambda (_%g215939215956%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215939215956%_))))
               (_%g215937216029%_
                (lambda (_%g215939215964%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215939215964%_))
                      (let ((_%e215943215967%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215939215964%_))))
                        (let ((_%hd215944215971%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215943215967%_)))
                              (_%tl215945215974%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215943215967%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215945215974%_))
                              (let ((_%e215946215977%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215945215974%_))))
                                (let ((_%hd215947215981%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215946215977%_)))
                                      (_%tl215948215984%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215946215977%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl215948215984%_))
                                      (let ((_%e215949215987%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl215948215984%_))))
                                        (let ((_%hd215950215991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e215949215987%_)))
                                              (_%tl215951215994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e215949215987%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl215951215994%_))
                                              (let ((_%e215952215997%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl215951215994%_))))
                                                (let ((_%hd215953216001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e215952215997%_)))
                                                      (_%tl215954216004%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e215952215997%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl215954216004%_))
                                                      ((lambda (_%L216007%_
                                                                _%L216009%_
                                                                _%L216010%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L216010%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L216009%_ '()))
                                   (cons _%L216007%_ '())))))
               _%hd215953216001%_
               _%hd215950215991%_
               _%hd215947215981%_)
              (_%g215938215960%_ _%g215939215964%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g215938215960%_
                                               _%g215939215964%_))))
                                      (_%g215938215960%_ _%g215939215964%_))))
                              (_%g215938215960%_ _%g215939215964%_))))
                      (_%g215938215960%_ _%g215939215964%_)))))
          (_%g215937216029%_ _%$stx215934%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx216033%_)
        (let* ((_%g216037216059%_
                (lambda (_%g216038216055%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216038216055%_))))
               (_%g216036216128%_
                (lambda (_%g216038216063%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216038216063%_))
                      (let ((_%e216042216066%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216038216063%_))))
                        (let ((_%hd216043216070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216042216066%_)))
                              (_%tl216044216073%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216042216066%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216044216073%_))
                              (let ((_%e216045216076%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216044216073%_))))
                                (let ((_%hd216046216080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216045216076%_)))
                                      (_%tl216047216083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216045216076%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216047216083%_))
                                      (let ((_%e216048216086%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216047216083%_))))
                                        (let ((_%hd216049216090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216048216086%_)))
                                              (_%tl216050216093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216048216086%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216050216093%_))
                                              (let ((_%e216051216096%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl216050216093%_))))
                                                (let ((_%hd216052216100%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216051216096%_)))
                                                      (_%tl216053216103%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216051216096%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216053216103%_))
                                                      ((lambda (_%L216106%_
                                                                _%L216108%_
                                                                _%L216109%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L216109%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L216108%_ '()))
                                   (cons _%L216106%_ '())))))
               _%hd216052216100%_
               _%hd216049216090%_
               _%hd216046216080%_)
              (_%g216037216059%_ _%g216038216063%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g216037216059%_
                                               _%g216038216063%_))))
                                      (_%g216037216059%_ _%g216038216063%_))))
                              (_%g216037216059%_ _%g216038216063%_))))
                      (_%g216037216059%_ _%g216038216063%_)))))
          (_%g216036216128%_ _%$stx216033%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx216132%_)
        (let* ((_%g216136216150%_
                (lambda (_%g216137216146%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216137216146%_))))
               (_%g216135216191%_
                (lambda (_%g216137216154%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216137216154%_))
                      (let ((_%e216139216157%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216137216154%_))))
                        (let ((_%hd216140216161%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216139216157%_)))
                              (_%tl216141216164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216139216157%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216141216164%_))
                              (let ((_%e216142216167%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216141216164%_))))
                                (let ((_%hd216143216171%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216142216167%_)))
                                      (_%tl216144216174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216142216167%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216144216174%_))
                                      ((lambda (_%L216177%_)
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
                                                           (cons _%L216177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd216143216171%_)
                                      (_%g216136216150%_ _%g216137216154%_))))
                              (_%g216136216150%_ _%g216137216154%_))))
                      (_%g216136216150%_ _%g216137216154%_)))))
          (_%g216135216191%_ _%$stx216132%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx216195%_)
        (let* ((_%g216199216217%_
                (lambda (_%g216200216213%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216200216213%_))))
               (_%g216198216272%_
                (lambda (_%g216200216221%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216200216221%_))
                      (let ((_%e216203216224%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216200216221%_))))
                        (let ((_%hd216204216228%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216203216224%_)))
                              (_%tl216205216231%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216203216224%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216205216231%_))
                              (let ((_%e216206216234%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216205216231%_))))
                                (let ((_%hd216207216238%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216206216234%_)))
                                      (_%tl216208216241%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216206216234%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216208216241%_))
                                      (let ((_%e216209216244%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216208216241%_))))
                                        (let ((_%hd216210216248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216209216244%_)))
                                              (_%tl216211216251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216209216244%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216211216251%_))
                                              ((lambda (_%L216254%_
                                                        _%L216256%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L216256%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L216254%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd216210216248%_
                                               _%hd216207216238%_)
                                              (_%g216199216217%_
                                               _%g216200216221%_))))
                                      (_%g216199216217%_ _%g216200216221%_))))
                              (_%g216199216217%_ _%g216200216221%_))))
                      (_%g216199216217%_ _%g216200216221%_)))))
          (_%g216198216272%_ _%$stx216195%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx216276%_)
        (let* ((_%__stx220618220619%_ _%$stx216276%_)
               (_%g216283216344%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220618220619%_)))))
          (let ((_%__kont220621220622%_
                 (lambda (_%L216582%_ _%L216584%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L216584%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L216582%_ '()))
                                     '())))))
                (_%__kont220623220624%_
                 (lambda (_%L216521%_ _%L216523%_ _%L216524%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L216524%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L216523%_ '()))
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
                                 (cons _%L216521%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont220625220626%_
                 (lambda (_%L216445%_ _%L216447%_)
                   (cons _%L216447%_ (cons _%L216445%_ (cons '#f '())))))
                (_%__kont220627220628%_
                 (lambda (_%L216395%_ _%L216397%_ _%L216398%_)
                   (cons _%L216398%_
                         (cons _%L216397%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L216395%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx220618220619%_))
                (let ((_%e216287216552%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx220618220619%_))))
                  (let ((_%tl216289216559%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e216287216552%_)))
                        (_%hd216288216556%_
                         (let ()
                           (declare (not safe))
                           (##car _%e216287216552%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl216289216559%_))
                        (let ((_%e216290216562%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl216289216559%_))))
                          (let ((_%tl216292216569%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e216290216562%_)))
                                (_%hd216291216566%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e216290216562%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl216292216569%_))
                                (let ((_%e216293216572%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl216292216569%_))))
                                  (let ((_%tl216295216579%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e216293216572%_)))
                                        (_%hd216294216576%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e216293216572%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl216295216579%_))
                                        (_%__kont220621220622%_
                                         _%hd216294216576%_
                                         _%hd216291216566%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl216295216579%_))
                                            (let ((_%e216308216497%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl216295216579%_))))
                                              (let ((_%tl216310216504%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e216308216497%_)))
                                                    (_%hd216309216501%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e216308216497%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd216309216501%_))
                                                    (let ((_%e216311216507%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd216309216501%_))))
                                                      (if (equal? _%e216311216507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216310216504%_))
                      (let ((_%e216312216511%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl216310216504%_))))
                        (let ((_%tl216314216518%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216312216511%_)))
                              (_%hd216313216515%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216312216511%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216314216518%_))
                              (_%__kont220623220624%_
                               _%hd216313216515%_
                               _%hd216294216576%_
                               _%hd216291216566%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd216294216576%_))
                                  (let ((_%e216335216381%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd216294216576%_))))
                                    (declare (not safe))
                                    (_%g216283216344%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216283216344%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd216294216576%_))
                          (let ((_%e216335216381%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd216294216576%_))))
                            (if (equal? _%e216335216381%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl216310216504%_))
                                    (_%__kont220627220628%_
                                     _%hd216309216501%_
                                     _%hd216291216566%_
                                     _%hd216288216556%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g216283216344%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g216283216344%_))))
                          (let () (declare (not safe)) (_%g216283216344%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd216294216576%_))
                      (let ((_%e216335216381%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd216294216576%_))))
                        (if (equal? _%e216335216381%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl216310216504%_))
                                (_%__kont220627220628%_
                                 _%hd216309216501%_
                                 _%hd216291216566%_
                                 _%hd216288216556%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g216283216344%_)))
                            (let () (declare (not safe)) (_%g216283216344%_))))
                      (let () (declare (not safe)) (_%g216283216344%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd216294216576%_))
                                                        (let ((_%e216335216381%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd216294216576%_))))
                  (if (equal? _%e216335216381%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216310216504%_))
                          (_%__kont220627220628%_
                           _%hd216309216501%_
                           _%hd216291216566%_
                           _%hd216288216556%_)
                          (let () (declare (not safe)) (_%g216283216344%_)))
                      (let () (declare (not safe)) (_%g216283216344%_))))
                (let () (declare (not safe)) (_%g216283216344%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd216294216576%_))
                                                (let ((_%e216335216381%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd216294216576%_))))
                                                  (declare (not safe))
                                                  (_%g216283216344%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g216283216344%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl216292216569%_))
                                    (_%__kont220625220626%_
                                     _%hd216291216566%_
                                     _%hd216288216556%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g216283216344%_))))))
                        (let () (declare (not safe)) (_%g216283216344%_)))))
                (let () (declare (not safe)) (_%g216283216344%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx216603%_)
        (let* ((_%g216607216636%_
                (lambda (_%g216608216632%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216608216632%_))))
               (_%g216606216745%_
                (lambda (_%g216608216640%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216608216640%_))
                      (let ((_%e216610216643%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216608216640%_))))
                        (let ((_%hd216611216647%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216610216643%_)))
                              (_%tl216612216650%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216610216643%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl216612216650%_))
                              (let ((_g221248_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl216612216650%_
                                        '0))))
                                (begin
                                  (let ((_g221249_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221248_)
                                               (##values-length _g221248_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221249_ 2)))
                                        (error "Context expects 2 values"
                                               _g221249_)))
                                  (let ((_%target216613216653%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221248_ 0)))
                                        (_%tl216615216656%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221248_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl216615216656%_))
                                        (letrec ((_%loop216616216659%_
                                                  (lambda (_%hd216614216663%_
                                                           _%clause216620216666%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd216614216663%_))
                                                        (let ((_%e216617216669%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd216614216663%_))))
                  (let ((_%lp-hd216618216673%_
                         (let ()
                           (declare (not safe))
                           (##car _%e216617216669%_)))
                        (_%lp-tl216619216676%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e216617216669%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd216618216673%_))
                        (let ((_g221250_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd216618216673%_
                                  '0))))
                          (begin
                            (let ((_g221251_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g221250_)
                                         (##values-length _g221250_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g221251_ 2)))
                                  (error "Context expects 2 values"
                                         _g221251_)))
                            (let ((_%target216622216679%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g221250_ 0)))
                                  (_%tl216624216682%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g221250_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216624216682%_))
                                  (letrec ((_%loop216625216685%_
                                            (lambda (_%hd216623216689%_
                                                     _%clause216629216692%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd216623216689%_))
                                                  (let ((_%e216626216695%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd216623216689%_))))
                                                    (let ((_%lp-hd216627216699%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216626216695%_)))
                                                          (_%lp-tl216628216702%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216626216695%_))))
                                                      (_%loop216625216685%_
                                                       _%lp-tl216628216702%_
                                                       (cons _%lp-hd216627216699%_
                                                             _%clause216629216692%_))))
                                                  (let ((_%clause216630216705%_
                                                         (reverse _%clause216629216692%_)))
                                                    (_%loop216616216659%_
                                                     _%lp-tl216619216676%_
                                                     (cons _%clause216630216705%_
                                                           _%clause216620216666%_)))))))
                                    (_%loop216625216685%_
                                     _%target216622216679%_
                                     '()))
                                  (_%g216607216636%_ _%g216608216640%_)))))
                        (_%g216607216636%_ _%g216608216640%_))))
                (let ((_%clause216621216709%_
                       (reverse _%clause216620216666%_)))
                  ((lambda (_%L216713%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp221252
                                              (lambda (_%g216728216733%_
                                                       _%g216729216736%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp221253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g216730216739%_ _%g216731216742%_)
                             (cons _%g216730216739%_ _%g216731216742%_))))
                      (declare (not safe))
                      (__foldr1 __tmp221253 '() _%g216728216733%_)))
              _%g216729216736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp221252
                                          '()
                                          _%L216713%_)))
                                 '())))
                   _%clause216621216709%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop216616216659%_
                                           _%target216613216653%_
                                           '()))
                                        (_%g216607216636%_
                                         _%g216608216640%_)))))
                              (_%g216607216636%_ _%g216608216640%_))))
                      (_%g216607216636%_ _%g216608216640%_)))))
          (_%g216606216745%_ _%$stx216603%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx216751%_)
        (let* ((_%g216755216773%_
                (lambda (_%g216756216769%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216756216769%_))))
               (_%g216754216828%_
                (lambda (_%g216756216777%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216756216777%_))
                      (let ((_%e216759216780%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216756216777%_))))
                        (let ((_%hd216760216784%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216759216780%_)))
                              (_%tl216761216787%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216759216780%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216761216787%_))
                              (let ((_%e216762216790%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216761216787%_))))
                                (let ((_%hd216763216794%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216762216790%_)))
                                      (_%tl216764216797%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216762216790%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216764216797%_))
                                      (let ((_%e216765216800%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216764216797%_))))
                                        (let ((_%hd216766216804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216765216800%_)))
                                              (_%tl216767216807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216765216800%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216767216807%_))
                                              ((lambda (_%L216810%_
                                                        _%L216812%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L216812%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L216810%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd216766216804%_
                                               _%hd216763216794%_)
                                              (_%g216755216773%_
                                               _%g216756216777%_))))
                                      (_%g216755216773%_ _%g216756216777%_))))
                              (_%g216755216773%_ _%g216756216777%_))))
                      (_%g216755216773%_ _%g216756216777%_)))))
          (_%g216754216828%_ _%$stx216751%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx216832%_)
        (let* ((_%g216836216854%_
                (lambda (_%g216837216850%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216837216850%_))))
               (_%g216835216909%_
                (lambda (_%g216837216858%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216837216858%_))
                      (let ((_%e216840216861%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216837216858%_))))
                        (let ((_%hd216841216865%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216840216861%_)))
                              (_%tl216842216868%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216840216861%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216842216868%_))
                              (let ((_%e216843216871%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216842216868%_))))
                                (let ((_%hd216844216875%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216843216871%_)))
                                      (_%tl216845216878%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216843216871%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216845216878%_))
                                      (let ((_%e216846216881%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216845216878%_))))
                                        (let ((_%hd216847216885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216846216881%_)))
                                              (_%tl216848216888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216846216881%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216848216888%_))
                                              ((lambda (_%L216891%_
                                                        _%L216893%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L216893%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L216891%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd216847216885%_
                                               _%hd216844216875%_)
                                              (_%g216836216854%_
                                               _%g216837216858%_))))
                                      (_%g216836216854%_ _%g216837216858%_))))
                              (_%g216836216854%_ _%g216837216858%_))))
                      (_%g216836216854%_ _%g216837216858%_)))))
          (_%g216835216909%_ _%$stx216832%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx216913%_)
        (let* ((_%g216917216946%_
                (lambda (_%g216918216942%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216918216942%_))))
               (_%g216916217046%_
                (lambda (_%g216918216950%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216918216950%_))
                      (let ((_%e216921216953%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216918216950%_))))
                        (let ((_%hd216922216957%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216921216953%_)))
                              (_%tl216923216960%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216921216953%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl216923216960%_))
                              (let ((_g221254_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl216923216960%_
                                        '0))))
                                (begin
                                  (let ((_g221255_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221254_)
                                               (##values-length _g221254_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221255_ 2)))
                                        (error "Context expects 2 values"
                                               _g221255_)))
                                  (let ((_%target216924216963%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221254_ 0)))
                                        (_%tl216926216966%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221254_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl216926216966%_))
                                        (letrec ((_%loop216927216969%_
                                                  (lambda (_%hd216925216973%_
                                                           _%rule216931216976%_
                                                           _%proc216932216978%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd216925216973%_))
                                                        (let ((_%e216928216981%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd216925216973%_))))
                  (let ((_%lp-hd216929216985%_
                         (let ()
                           (declare (not safe))
                           (##car _%e216928216981%_)))
                        (_%lp-tl216930216988%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e216928216981%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd216929216985%_))
                        (let ((_%e216935216991%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd216929216985%_))))
                          (let ((_%hd216936216995%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e216935216991%_)))
                                (_%tl216937216998%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e216935216991%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl216937216998%_))
                                (let ((_%e216938217001%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl216937216998%_))))
                                  (let ((_%hd216939217005%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e216938217001%_)))
                                        (_%tl216940217008%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e216938217001%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl216940217008%_))
                                        (_%loop216927216969%_
                                         _%lp-tl216930216988%_
                                         (cons _%hd216939217005%_
                                               _%rule216931216976%_)
                                         (cons _%hd216936216995%_
                                               _%proc216932216978%_))
                                        (_%g216917216946%_
                                         _%g216918216950%_))))
                                (_%g216917216946%_ _%g216918216950%_))))
                        (_%g216917216946%_ _%g216918216950%_))))
                (let ((_%rule216933217011%_ (reverse _%rule216931216976%_))
                      (_%proc216934217014%_ (reverse _%proc216932216978%_)))
                  ((lambda (_%L217017%_ _%L217019%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L217017%_
                                _%L217019%_))
                             (let ((__tmp221256
                                    (lambda (_%g217034217038%_
                                             _%g217035217041%_
                                             _%g217036217043%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g217035217041%_
                                                        (cons _%g217034217038%_
                                                              '())))
                                            _%g217036217043%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp221256
                                '()
                                _%L217017%_
                                _%L217019%_)))))
                   _%rule216933217011%_
                   _%proc216934217014%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop216927216969%_
                                           _%target216924216963%_
                                           '()
                                           '()))
                                        (_%g216917216946%_
                                         _%g216918216950%_)))))
                              (_%g216917216946%_ _%g216918216950%_))))
                      (_%g216917216946%_ _%g216918216950%_)))))
          (_%g216916217046%_ _%$stx216913%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx217051%_)
        (let* ((_%g217055217073%_
                (lambda (_%g217056217069%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g217056217069%_))))
               (_%g217054217128%_
                (lambda (_%g217056217077%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g217056217077%_))
                      (let ((_%e217059217080%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g217056217077%_))))
                        (let ((_%hd217060217084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217059217080%_)))
                              (_%tl217061217087%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217059217080%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217061217087%_))
                              (let ((_%e217062217090%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl217061217087%_))))
                                (let ((_%hd217063217094%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217062217090%_)))
                                      (_%tl217064217097%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217062217090%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl217064217097%_))
                                      (let ((_%e217065217100%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl217064217097%_))))
                                        (let ((_%hd217066217104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217065217100%_)))
                                              (_%tl217067217107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217065217100%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl217067217107%_))
                                              ((lambda (_%L217110%_
                                                        _%L217112%_)
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
                                                   (cons _%L217112%_ '()))
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
                 (cons _%L217110%_ '())))
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
                                   (cons _%L217112%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd217066217104%_
                                               _%hd217063217094%_)
                                              (_%g217055217073%_
                                               _%g217056217077%_))))
                                      (_%g217055217073%_ _%g217056217077%_))))
                              (_%g217055217073%_ _%g217056217077%_))))
                      (_%g217055217073%_ _%g217056217077%_)))))
          (_%g217054217128%_ _%$stx217051%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx217132%_)
        (let* ((_%__stx220736220737%_ _%$stx217132%_)
               (_%g217137217162%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220736220737%_)))))
          (let ((_%__kont220739220740%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont220741220742%_
                 (lambda (_%L217209%_ _%L217211%_ _%L217212%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L217212%_ (cons _%L217211%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L217209%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx220736220737%_))
                (let ((_%e217139217238%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx220736220737%_))))
                  (let ((_%tl217141217245%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e217139217238%_)))
                        (_%hd217140217242%_
                         (let ()
                           (declare (not safe))
                           (##car _%e217139217238%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl217141217245%_))
                        (_%__kont220739220740%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl217141217245%_))
                            (let ((_%e217148217179%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl217141217245%_))))
                              (let ((_%tl217150217186%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e217148217179%_)))
                                    (_%hd217149217183%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e217148217179%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd217149217183%_))
                                    (let ((_%e217151217189%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd217149217183%_))))
                                      (let ((_%tl217153217196%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e217151217189%_)))
                                            (_%hd217152217193%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e217151217189%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl217153217196%_))
                                            (let ((_%e217154217199%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl217153217196%_))))
                                              (let ((_%tl217156217206%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217154217199%_)))
                                                    (_%hd217155217203%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217154217199%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl217156217206%_))
                                                    (_%__kont220741220742%_
                                                     _%tl217150217186%_
                                                     _%hd217155217203%_
                                                     _%hd217152217193%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g217137217162%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g217137217162%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g217137217162%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g217137217162%_))))))
                (let () (declare (not safe)) (_%g217137217162%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx217256%_)
        (let* ((_%__stx220780220781%_ _%$stx217256%_)
               (_%g217261217292%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220780220781%_)))))
          (let ((_%__kont220783220784%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont220785220786%_
                 (lambda (_%L217359%_ _%L217361%_ _%L217362%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L217362%_
                                           (let ((__tmp221257
                                                  (lambda (_%g217382217385%_
                                                           _%g217383217388%_)
                                                    (cons _%g217382217385%_
                                                          _%g217383217388%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp221257
                                              '()
                                              _%L217361%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L217359%_)
                                     '()))))))
            (let ((_%__match220823220824%_
                   (lambda (_%e217269217299%_
                            _%hd217270217303%_
                            _%tl217271217306%_
                            _%e217272217309%_
                            _%hd217273217313%_
                            _%tl217274217316%_
                            _%e217275217319%_
                            _%hd217276217323%_
                            _%tl217277217326%_
                            _%__splice220787220788%_
                            _%target217278217329%_
                            _%tl217280217332%_)
                     (letrec ((_%loop217281217335%_
                               (lambda (_%hd217279217339%_ _%sig217285217342%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd217279217339%_))
                                     (let ((_%e217282217345%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd217279217339%_))))
                                       (let ((_%lp-tl217284217352%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e217282217345%_)))
                                             (_%lp-hd217283217349%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e217282217345%_))))
                                         (_%loop217281217335%_
                                          _%lp-tl217284217352%_
                                          (cons _%lp-hd217283217349%_
                                                _%sig217285217342%_))))
                                     (let ((_%sig217286217355%_
                                            (reverse _%sig217285217342%_)))
                                       (_%__kont220785220786%_
                                        _%tl217274217316%_
                                        _%sig217286217355%_
                                        _%hd217276217323%_))))))
                       (_%loop217281217335%_ _%target217278217329%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220780220781%_))
                  (let ((_%e217263217398%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx220780220781%_))))
                    (let ((_%tl217265217405%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217263217398%_)))
                          (_%hd217264217402%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217263217398%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217265217405%_))
                          (_%__kont220783220784%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217265217405%_))
                              (let ((_%e217272217309%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl217265217405%_))))
                                (let ((_%tl217274217316%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217272217309%_)))
                                      (_%hd217273217313%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217272217309%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd217273217313%_))
                                      (let ((_%e217275217319%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd217273217313%_))))
                                        (let ((_%tl217277217326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217275217319%_)))
                                              (_%hd217276217323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217275217319%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl217277217326%_))
                                              (let ((_%__splice220787220788%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl217277217326%_
                                                        '0))))
                                                (let ((_%tl217280217332%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220787220788%_
                                                          '1)))
                                                      (_%target217278217329%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220787220788%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl217280217332%_))
                                                      (_%__match220823220824%_
                                                       _%e217263217398%_
                                                       _%hd217264217402%_
                                                       _%tl217265217405%_
                                                       _%e217272217309%_
                                                       _%hd217273217313%_
                                                       _%tl217274217316%_
                                                       _%e217275217319%_
                                                       _%hd217276217323%_
                                                       _%tl217277217326%_
                                                       _%__splice220787220788%_
                                                       _%target217278217329%_
                                                       _%tl217280217332%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g217261217292%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g217261217292%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g217261217292%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g217261217292%_))))))
                  (let () (declare (not safe)) (_%g217261217292%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx217417%_)
        (let* ((_%__stx220826220827%_ _%$stx217417%_)
               (_%g217422217469%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220826220827%_)))))
          (let ((_%__kont220829220830%_
                 (lambda (_%L217631%_ _%L217633%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L217633%_
                               (let ((__tmp221258
                                      (lambda (_%g217653217656%_
                                               _%g217654217659%_)
                                        (cons _%g217653217656%_
                                              _%g217654217659%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp221258 '() _%L217631%_))))))
                (_%__kont220833220834%_
                 (lambda (_%L217526%_ _%L217528%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L217528%_
                               (let ((__tmp221259
                                      (lambda (_%g217545217548%_
                                               _%g217546217551%_)
                                        (cons _%g217545217548%_
                                              _%g217546217551%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp221259 '() _%L217526%_)))))))
            (let* ((_%__match220893220894%_
                    (lambda (_%e217449217476%_
                             _%hd217450217480%_
                             _%tl217451217483%_
                             _%e217452217486%_
                             _%hd217453217490%_
                             _%tl217454217493%_
                             _%__splice220835220836%_
                             _%target217455217496%_
                             _%tl217457217499%_)
                      (letrec ((_%loop217458217502%_
                                (lambda (_%hd217456217506%_
                                         _%sig217462217509%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd217456217506%_))
                                      (let ((_%e217459217512%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd217456217506%_))))
                                        (let ((_%lp-tl217461217519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217459217512%_)))
                                              (_%lp-hd217460217516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217459217512%_))))
                                          (_%loop217458217502%_
                                           _%lp-tl217461217519%_
                                           (cons _%lp-hd217460217516%_
                                                 _%sig217462217509%_))))
                                      (let ((_%sig217463217522%_
                                             (reverse _%sig217462217509%_)))
                                        (_%__kont220833220834%_
                                         _%sig217463217522%_
                                         _%hd217453217490%_))))))
                        (_%loop217458217502%_ _%target217455217496%_ '()))))
                   (_%__match220885220886%_
                    (lambda (_%e217449217476%_
                             _%hd217450217480%_
                             _%tl217451217483%_
                             _%e217452217486%_
                             _%hd217453217490%_
                             _%tl217454217493%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl217454217493%_))
                          (let ((_%__splice220835220836%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl217454217493%_
                                    '0))))
                            (let ((_%tl217457217499%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice220835220836%_
                                      '1)))
                                  (_%target217455217496%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice220835220836%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl217457217499%_))
                                  (_%__match220893220894%_
                                   _%e217449217476%_
                                   _%hd217450217480%_
                                   _%tl217451217483%_
                                   _%e217452217486%_
                                   _%hd217453217490%_
                                   _%tl217454217493%_
                                   _%__splice220835220836%_
                                   _%target217455217496%_
                                   _%tl217457217499%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g217422217469%_)))))
                          (let () (declare (not safe)) (_%g217422217469%_)))))
                   (_%__match220873220874%_
                    (lambda (_%e217426217561%_
                             _%hd217427217565%_
                             _%tl217428217568%_
                             _%e217429217571%_
                             _%hd217430217575%_
                             _%tl217431217578%_
                             _%e217432217581%_
                             _%hd217433217585%_
                             _%tl217434217588%_
                             _%e217435217591%_
                             _%hd217436217595%_
                             _%tl217437217598%_
                             _%__splice220831220832%_
                             _%target217438217601%_
                             _%tl217440217604%_)
                      (letrec ((_%loop217441217607%_
                                (lambda (_%hd217439217611%_
                                         _%sig217445217614%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd217439217611%_))
                                      (let ((_%e217442217617%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd217439217611%_))))
                                        (let ((_%lp-tl217444217624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217442217617%_)))
                                              (_%lp-hd217443217621%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217442217617%_))))
                                          (_%loop217441217607%_
                                           _%lp-tl217444217624%_
                                           (cons _%lp-hd217443217621%_
                                                 _%sig217445217614%_))))
                                      (let ((_%sig217446217627%_
                                             (reverse _%sig217445217614%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl217434217588%_))
                                            (_%__kont220829220830%_
                                             _%sig217446217627%_
                                             _%hd217430217575%_)
                                            (_%__match220885220886%_
                                             _%e217426217561%_
                                             _%hd217427217565%_
                                             _%tl217428217568%_
                                             _%e217429217571%_
                                             _%hd217430217575%_
                                             _%tl217431217578%_)))))))
                        (_%loop217441217607%_ _%target217438217601%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220826220827%_))
                  (let ((_%e217426217561%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx220826220827%_))))
                    (let ((_%tl217428217568%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217426217561%_)))
                          (_%hd217427217565%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217426217561%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl217428217568%_))
                          (let ((_%e217429217571%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl217428217568%_))))
                            (let ((_%tl217431217578%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e217429217571%_)))
                                  (_%hd217430217575%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e217429217571%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl217431217578%_))
                                  (let ((_%e217432217581%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl217431217578%_))))
                                    (let ((_%tl217434217588%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e217432217581%_)))
                                          (_%hd217433217585%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e217432217581%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd217433217585%_))
                                          (let ((_%e217435217591%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd217433217585%_))))
                                            (let ((_%tl217437217598%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e217435217591%_)))
                                                  (_%hd217436217595%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e217435217591%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd217436217595%_))
                                                  (if (let ((__tmp221260
                                                             |gxc[1]#_g221261_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp221260
                                                         _%hd217436217595%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl217437217598%_))
                                                          (let ((_%__splice220831220832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl217437217598%_
                            '0))))
                    (let ((_%tl217440217604%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220831220832%_ '1)))
                          (_%target217438217601%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220831220832%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217440217604%_))
                          (_%__match220873220874%_
                           _%e217426217561%_
                           _%hd217427217565%_
                           _%tl217428217568%_
                           _%e217429217571%_
                           _%hd217430217575%_
                           _%tl217431217578%_
                           _%e217432217581%_
                           _%hd217433217585%_
                           _%tl217434217588%_
                           _%e217435217591%_
                           _%hd217436217595%_
                           _%tl217437217598%_
                           _%__splice220831220832%_
                           _%target217438217601%_
                           _%tl217440217604%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl217431217578%_))
                              (let ((_%__splice220835220836%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl217431217578%_
                                        '0))))
                                (let ((_%tl217457217499%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice220835220836%_
                                          '1)))
                                      (_%target217455217496%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice220835220836%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl217457217499%_))
                                      (_%__match220893220894%_
                                       _%e217426217561%_
                                       _%hd217427217565%_
                                       _%tl217428217568%_
                                       _%e217429217571%_
                                       _%hd217430217575%_
                                       _%tl217431217578%_
                                       _%__splice220835220836%_
                                       _%target217455217496%_
                                       _%tl217457217499%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g217422217469%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g217422217469%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl217431217578%_))
                      (let ((_%__splice220835220836%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl217431217578%_
                                '0))))
                        (let ((_%tl217457217499%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220835220836%_ '1)))
                              (_%target217455217496%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220835220836%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl217457217499%_))
                              (_%__match220893220894%_
                               _%e217426217561%_
                               _%hd217427217565%_
                               _%tl217428217568%_
                               _%e217429217571%_
                               _%hd217430217575%_
                               _%tl217431217578%_
                               _%__splice220835220836%_
                               _%target217455217496%_
                               _%tl217457217499%_)
                              (let ()
                                (declare (not safe))
                                (_%g217422217469%_)))))
                      (let () (declare (not safe)) (_%g217422217469%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl217431217578%_))
                  (let ((_%__splice220835220836%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl217431217578%_
                            '0))))
                    (let ((_%tl217457217499%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220835220836%_ '1)))
                          (_%target217455217496%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220835220836%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217457217499%_))
                          (_%__match220893220894%_
                           _%e217426217561%_
                           _%hd217427217565%_
                           _%tl217428217568%_
                           _%e217429217571%_
                           _%hd217430217575%_
                           _%tl217431217578%_
                           _%__splice220835220836%_
                           _%target217455217496%_
                           _%tl217457217499%_)
                          (let () (declare (not safe)) (_%g217422217469%_)))))
                  (let () (declare (not safe)) (_%g217422217469%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl217431217578%_))
                                                      (let ((_%__splice220835220836%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl217431217578%_
                        '0))))
                (let ((_%tl217457217499%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220835220836%_ '1)))
                      (_%target217455217496%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220835220836%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl217457217499%_))
                      (_%__match220893220894%_
                       _%e217426217561%_
                       _%hd217427217565%_
                       _%tl217428217568%_
                       _%e217429217571%_
                       _%hd217430217575%_
                       _%tl217431217578%_
                       _%__splice220835220836%_
                       _%target217455217496%_
                       _%tl217457217499%_)
                      (let () (declare (not safe)) (_%g217422217469%_)))))
              (let () (declare (not safe)) (_%g217422217469%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl217431217578%_))
                                              (let ((_%__splice220835220836%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl217431217578%_
                                                        '0))))
                                                (let ((_%tl217457217499%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220835220836%_
                                                          '1)))
                                                      (_%target217455217496%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220835220836%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl217457217499%_))
                                                      (_%__match220893220894%_
                                                       _%e217426217561%_
                                                       _%hd217427217565%_
                                                       _%tl217428217568%_
                                                       _%e217429217571%_
                                                       _%hd217430217575%_
                                                       _%tl217431217578%_
                                                       _%__splice220835220836%_
                                                       _%target217455217496%_
                                                       _%tl217457217499%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g217422217469%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g217422217469%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl217431217578%_))
                                      (let ((_%__splice220835220836%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl217431217578%_
                                                '0))))
                                        (let ((_%tl217457217499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220835220836%_
                                                  '1)))
                                              (_%target217455217496%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220835220836%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl217457217499%_))
                                              (_%__match220893220894%_
                                               _%e217426217561%_
                                               _%hd217427217565%_
                                               _%tl217428217568%_
                                               _%e217429217571%_
                                               _%hd217430217575%_
                                               _%tl217431217578%_
                                               _%__splice220835220836%_
                                               _%target217455217496%_
                                               _%tl217457217499%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g217422217469%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g217422217469%_))))))
                          (let () (declare (not safe)) (_%g217422217469%_)))))
                  (let () (declare (not safe)) (_%g217422217469%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx218816%_ _%id218818%_)
        (let ((_%proc218822%_
               (let ((__tmp221262
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id218818%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp221262))))
          (if (procedure? _%proc218822%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx218816%_
                 _%id218818%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx218807%_ _%id218809%_)
        (let ((_%klass218813%_
               (let ((__tmp221263
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id218809%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp221263))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass218813%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx218807%_
                 _%id218809%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx218057%_ _%proc218059%_ _%sig218060%_)
        (letrec ((_%signature-arity218062%_
                  (lambda (_%args218739%_)
                    (let _%loop218742%_ ((_%rest218745%_ _%args218739%_)
                                         (_%count218747%_ '0))
                      (let* ((_%rest218748218759%_ _%rest218745%_)
                             (_%E218752218765%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest218748218759%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K218755218796%_
                               (lambda (_%rest218793%_)
                                 (_%loop218742%_
                                  _%rest218793%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count218747%_ '1)))))
                              (_%K218754218785%_ (lambda () _%count218747%_))
                              (_%K218753218773%_
                               (lambda () (cons _%count218747%_ '()))))
                          (let ((_%try-match218750218789%_
                                 (lambda ()
                                   (if (null? _%rest218748218759%_)
                                       (_%K218754218785%_)
                                       (_%K218753218773%_)))))
                            (if (pair? _%rest218748218759%_)
                                (let* ((_%tl218757218800%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest218748218759%_)))
                                       (_%rest218804%_ _%tl218757218800%_))
                                  (_%K218755218796%_ _%rest218804%_))
                                (_%try-match218750218789%_))))))))
                 (_%make-signature218064%_
                  (lambda (_%args218621%_
                           _%return218623%_
                           _%effect218624%_
                           _%unchecked218625%_)
                    (let ((__tmp221264
                           (lambda (_%g218626218628%_)
                             (|gxc[1]#verify-class!|
                              _%ctx218057%_
                              _%g218626218628%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp221264 _%args218621%_))
                    (|gxc[1]#verify-class!| _%ctx218057%_ _%return218623%_)
                    (if _%unchecked218625%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx218057%_
                         _%unchecked218625%_)
                        '#!void)
                    (let ((_%arity218632%_
                           (_%signature-arity218062%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args218621%_)))))
                      (if _%effect218624%_
                          (let ((_%effect218635%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect218624%_))))
                            (if (and (list? _%effect218635%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect218635%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx218057%_
                                   _%proc218059%_
                                   _%effect218635%_))))
                          '#!void)
                      (cons _%arity218632%_
                            (cons (let* ((_%g218638218661%_
                                          (lambda (_%g218639218657%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g218639218657%_))))
                                         (_%g218637218735%_
                                          (lambda (_%g218639218665%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g218639218665%_))
                                                (let ((_%e218644218668%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g218639218665%_))))
                                                  (let ((_%hd218645218672%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e218644218668%_)))
                                                        (_%tl218646218675%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e218644218668%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl218646218675%_))
                                                        (let ((_%e218647218678%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl218646218675%_))))
                  (let ((_%hd218648218682%_
                         (let ()
                           (declare (not safe))
                           (##car _%e218647218678%_)))
                        (_%tl218649218685%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e218647218678%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl218649218685%_))
                        (let ((_%e218650218688%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl218649218685%_))))
                          (let ((_%hd218651218692%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e218650218688%_)))
                                (_%tl218652218695%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e218650218688%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl218652218695%_))
                                (let ((_%e218653218698%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl218652218695%_))))
                                  (let ((_%hd218654218702%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e218653218698%_)))
                                        (_%tl218655218705%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e218653218698%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl218655218705%_))
                                        ((lambda (_%L218708%_
                                                  _%L218710%_
                                                  _%L218711%_
                                                  _%L218712%_)
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
                           (cons _%L218712%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L218711%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L218710%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L218708%_ '()))
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
                                         _%hd218654218702%_
                                         _%hd218651218692%_
                                         _%hd218648218682%_
                                         _%hd218645218672%_)
                                        (_%g218638218661%_
                                         _%g218639218665%_))))
                                (_%g218638218661%_ _%g218639218665%_))))
                        (_%g218638218661%_ _%g218639218665%_))))
                (_%g218638218661%_ _%g218639218665%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g218638218661%_
                                                 _%g218639218665%_)))))
                                    (_%g218637218735%_
                                     (list _%args218621%_
                                           _%return218623%_
                                           _%effect218624%_
                                           _%unchecked218625%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx218057%_ _%proc218059%_)
          (let* ((_%__stx220904220905%_ _%sig218060%_)
                 (_%g218071218174%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx220904220905%_)))))
            (let ((_%__kont220907220908%_
                   (lambda (_%L218602%_ _%L218604%_)
                     (_%make-signature218064%_
                      _%L218604%_
                      _%L218602%_
                      '#f
                      '#f)))
                  (_%__kont220909220910%_
                   (lambda (_%L218553%_ _%L218555%_ _%L218556%_)
                     (_%make-signature218064%_
                      _%L218556%_
                      _%L218555%_
                      _%L218553%_
                      '#f)))
                  (_%__kont220911220912%_
                   (lambda (_%L218477%_ _%L218479%_ _%L218480%_)
                     (_%make-signature218064%_
                      _%L218480%_
                      _%L218479%_
                      _%L218477%_
                      (let ((__tmp221265
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc218059%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp221265)))))
                  (_%__kont220913220914%_
                   (lambda (_%L218383%_ _%L218385%_ _%L218386%_ _%L218387%_)
                     (_%make-signature218064%_
                      _%L218387%_
                      _%L218386%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L218383%_)))))
                  (_%__kont220915220916%_
                   (lambda (_%L218290%_ _%L218292%_)
                     (_%make-signature218064%_
                      _%L218292%_
                      _%L218290%_
                      '#f
                      (let ((__tmp221266
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc218059%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp221266)))))
                  (_%__kont220917220918%_
                   (lambda (_%L218225%_ _%L218227%_ _%L218228%_)
                     (_%make-signature218064%_
                      _%L218228%_
                      _%L218227%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L218225%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220904220905%_))
                  (let ((_%e218075218582%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx220904220905%_))))
                    (let ((_%tl218077218589%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e218075218582%_)))
                          (_%hd218076218586%_
                           (let ()
                             (declare (not safe))
                             (##car _%e218075218582%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl218077218589%_))
                          (let ((_%e218078218592%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl218077218589%_))))
                            (let ((_%tl218080218599%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218078218592%_)))
                                  (_%hd218079218596%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218078218592%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl218080218599%_))
                                  (_%__kont220907220908%_
                                   _%hd218079218596%_
                                   _%hd218076218586%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl218080218599%_))
                                      (let ((_%e218090218529%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl218080218599%_))))
                                        (let ((_%tl218092218536%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218090218529%_)))
                                              (_%hd218091218533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218090218529%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd218091218533%_))
                                              (let ((_%e218093218539%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd218091218533%_))))
                                                (if (equal? _%e218093218539%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl218092218536%_))
                                                        (let ((_%e218094218543%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl218092218536%_))))
                  (let ((_%tl218096218550%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e218094218543%_)))
                        (_%hd218095218547%_
                         (let ()
                           (declare (not safe))
                           (##car _%e218094218543%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl218096218550%_))
                        (_%__kont220909220910%_
                         _%hd218095218547%_
                         _%hd218079218596%_
                         _%hd218076218586%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl218096218550%_))
                            (let ((_%e218113218463%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl218096218550%_))))
                              (let ((_%tl218115218470%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e218113218463%_)))
                                    (_%hd218114218467%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e218113218463%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd218114218467%_))
                                    (let ((_%e218116218473%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd218114218467%_))))
                                      (if (equal? _%e218116218473%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218115218470%_))
                                              (_%__kont220911220912%_
                                               _%hd218095218547%_
                                               _%hd218079218596%_
                                               _%hd218076218586%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl218115218470%_))
                                                  (let ((_%e218138218373%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl218115218470%_))))
                                                    (let ((_%tl218140218380%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e218138218373%_)))
                                                          (_%hd218139218377%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e218138218373%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl218140218380%_))
                                                          (_%__kont220913220914%_
                                                           _%hd218139218377%_
                                                           _%hd218095218547%_
                                                           _%hd218079218596%_
                                                           _%hd218076218586%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g218071218174%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g218071218174%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g218071218174%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g218071218174%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g218071218174%_))))))
                (let () (declare (not safe)) (_%g218071218174%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e218093218539%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl218092218536%_))
                                                            (_%__kont220915220916%_
                                                             _%hd218079218596%_
                                                             _%hd218076218586%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl218092218536%_))
                        (let ((_%e218166218215%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl218092218536%_))))
                          (let ((_%tl218168218222%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e218166218215%_)))
                                (_%hd218167218219%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e218166218215%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl218168218222%_))
                                (_%__kont220917220918%_
                                 _%hd218167218219%_
                                 _%hd218079218596%_
                                 _%hd218076218586%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g218071218174%_)))))
                        (let () (declare (not safe)) (_%g218071218174%_))))
                (let () (declare (not safe)) (_%g218071218174%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g218071218174%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g218071218174%_))))))
                          (let () (declare (not safe)) (_%g218071218174%_)))))
                  (let () (declare (not safe)) (_%g218071218174%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig217668%_)
        (let* ((_%g217671217751%_
                (lambda (_%g217672217747%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g217672217747%_))))
               (_%g217670218053%_
                (lambda (_%g217672217755%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g217672217755%_))
                      (let ((_%e217678217758%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g217672217755%_))))
                        (let ((_%hd217679217762%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217678217758%_)))
                              (_%tl217680217765%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217678217758%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217680217765%_))
                              (let ((_%e217681217768%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl217680217765%_))))
                                (let ((_%hd217682217772%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217681217768%_)))
                                      (_%tl217683217775%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217681217768%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd217682217772%_))
                                      (let ((_%e217684217778%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd217682217772%_))))
                                        (if (equal? _%e217684217778%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl217683217775%_))
                                                (let ((_%e217685217782%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl217683217775%_))))
                                                  (let ((_%hd217686217786%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e217685217782%_)))
                                                        (_%tl217687217789%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e217685217782%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd217686217786%_))
                                                        (let ((_%e217688217792%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd217686217786%_))))
                  (let ((_%hd217689217796%_
                         (let ()
                           (declare (not safe))
                           (##car _%e217688217792%_)))
                        (_%tl217690217799%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e217688217792%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd217689217796%_))
                        (if (let ((__tmp221267 |gxc[1]#_g221268_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp221267
                               _%hd217689217796%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl217690217799%_))
                                (let ((_%e217691217802%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl217690217799%_))))
                                  (let ((_%hd217692217806%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e217691217802%_)))
                                        (_%tl217693217809%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e217691217802%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl217693217809%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl217687217789%_))
                                            (let ((_%e217694217812%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl217687217789%_))))
                                              (let ((_%hd217695217816%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217694217812%_)))
                                                    (_%tl217696217819%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217694217812%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd217695217816%_))
                                                    (let ((_%e217697217822%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd217695217816%_))))
                                                      (if (equal? _%e217697217822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl217696217819%_))
                      (let ((_%e217698217826%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl217696217819%_))))
                        (let ((_%hd217699217830%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217698217826%_)))
                              (_%tl217700217833%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217698217826%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd217699217830%_))
                              (let ((_%e217701217836%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd217699217830%_))))
                                (let ((_%hd217702217840%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217701217836%_)))
                                      (_%tl217703217843%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217701217836%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd217702217840%_))
                                      (if (let ((__tmp221269
                                                 |gxc[1]#_g221270_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp221269
                                             _%hd217702217840%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl217703217843%_))
                                              (let ((_%e217704217846%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl217703217843%_))))
                                                (let ((_%hd217705217850%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e217704217846%_)))
                                                      (_%tl217706217853%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e217704217846%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl217706217853%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl217700217833%_))
                                                          (let ((_%e217707217856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl217700217833%_))))
                    (let ((_%hd217708217860%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217707217856%_)))
                          (_%tl217709217863%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217707217856%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd217708217860%_))
                          (let ((_%e217710217866%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd217708217860%_))))
                            (if (equal? _%e217710217866%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl217709217863%_))
                                    (let ((_%e217711217870%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl217709217863%_))))
                                      (let ((_%hd217712217874%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e217711217870%_)))
                                            (_%tl217713217877%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e217711217870%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd217712217874%_))
                                            (let ((_%e217714217880%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd217712217874%_))))
                                              (let ((_%hd217715217884%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217714217880%_)))
                                                    (_%tl217716217887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217714217880%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd217715217884%_))
                                                    (if (let ((__tmp221271
                                                               |gxc[1]#_g221272_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp221271
                                                           _%hd217715217884%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl217716217887%_))
                                                            (let ((_%e217717217890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl217716217887%_))))
                      (let ((_%hd217718217894%_
                             (let ()
                               (declare (not safe))
                               (##car _%e217717217890%_)))
                            (_%tl217719217897%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e217717217890%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl217719217897%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl217713217877%_))
                                (let ((_%e217720217900%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl217713217877%_))))
                                  (let ((_%hd217721217904%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e217720217900%_)))
                                        (_%tl217722217907%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e217720217900%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd217721217904%_))
                                        (let ((_%e217723217910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd217721217904%_))))
                                          (if (equal? _%e217723217910%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl217722217907%_))
                                                  (let ((_%e217724217914%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl217722217907%_))))
                                                    (let ((_%hd217725217918%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e217724217914%_)))
                                                          (_%tl217726217921%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e217724217914%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd217725217918%_))
                                                          (let ((_%e217727217924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd217725217918%_))))
                    (let ((_%hd217728217928%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217727217924%_)))
                          (_%tl217729217931%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217727217924%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd217728217928%_))
                          (if (let ((__tmp221273 |gxc[1]#_g221274_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp221273
                                 _%hd217728217928%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl217729217931%_))
                                  (let ((_%e217730217934%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl217729217931%_))))
                                    (let ((_%hd217731217938%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e217730217934%_)))
                                          (_%tl217732217941%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e217730217934%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl217732217941%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl217726217921%_))
                                              (let ((_%e217733217944%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl217726217921%_))))
                                                (let ((_%hd217734217948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e217733217944%_)))
                                                      (_%tl217735217951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e217733217944%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd217734217948%_))
                                                      (let ((_%e217736217954%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd217734217948%_))))
                (if (equal? _%e217736217954%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl217735217951%_))
                        (let ((_%e217737217958%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl217735217951%_))))
                          (let ((_%hd217738217962%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e217737217958%_)))
                                (_%tl217739217965%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e217737217958%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd217738217962%_))
                                (let ((_%e217740217968%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd217738217962%_))))
                                  (let ((_%hd217741217972%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e217740217968%_)))
                                        (_%tl217742217975%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e217740217968%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd217741217972%_))
                                        (if (let ((__tmp221275
                                                   |gxc[1]#_g221276_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp221275
                                               _%hd217741217972%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl217742217975%_))
                                                (let ((_%e217743217978%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl217742217975%_))))
                                                  (let ((_%hd217744217982%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e217743217978%_)))
                                                        (_%tl217745217985%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e217743217978%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl217745217985%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl217739217965%_))
                                                            ((lambda (_%L217988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L217990%_
                              _%L217991%_
                              _%L217992%_
                              _%L217993%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L217990%_))
                           (cons _%L217990%_
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
                       (cons _%L217992%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L217988%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd217744217982%_
                     _%hd217731217938%_
                     _%hd217718217894%_
                     _%hd217705217850%_
                     _%hd217692217806%_)
                    (_%g217671217751%_ _%g217672217755%_))
                (_%g217671217751%_ _%g217672217755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g217671217751%_
                                                 _%g217672217755%_))
                                            (_%g217671217751%_
                                             _%g217672217755%_))
                                        (_%g217671217751%_
                                         _%g217672217755%_))))
                                (_%g217671217751%_ _%g217672217755%_))))
                        (_%g217671217751%_ _%g217672217755%_))
                    (_%g217671217751%_ _%g217672217755%_)))
              (_%g217671217751%_ _%g217672217755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g217671217751%_
                                               _%g217672217755%_))
                                          (_%g217671217751%_
                                           _%g217672217755%_))))
                                  (_%g217671217751%_ _%g217672217755%_))
                              (_%g217671217751%_ _%g217672217755%_))
                          (_%g217671217751%_ _%g217672217755%_))))
                  (_%g217671217751%_ _%g217672217755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g217671217751%_
                                                   _%g217672217755%_))
                                              (_%g217671217751%_
                                               _%g217672217755%_)))
                                        (_%g217671217751%_
                                         _%g217672217755%_))))
                                (_%g217671217751%_ _%g217672217755%_))
                            (_%g217671217751%_ _%g217672217755%_))))
                    (_%g217671217751%_ _%g217672217755%_))
                (_%g217671217751%_ _%g217672217755%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g217671217751%_
                                                     _%g217672217755%_))))
                                            (_%g217671217751%_
                                             _%g217672217755%_))))
                                    (_%g217671217751%_ _%g217672217755%_))
                                (_%g217671217751%_ _%g217672217755%_)))
                          (_%g217671217751%_ _%g217672217755%_))))
                  (_%g217671217751%_ _%g217672217755%_))
              (_%g217671217751%_ _%g217672217755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g217671217751%_
                                               _%g217672217755%_))
                                          (_%g217671217751%_
                                           _%g217672217755%_))
                                      (_%g217671217751%_ _%g217672217755%_))))
                              (_%g217671217751%_ _%g217672217755%_))))
                      (_%g217671217751%_ _%g217672217755%_))
                  (_%g217671217751%_ _%g217672217755%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g217671217751%_
                                                     _%g217672217755%_))))
                                            (_%g217671217751%_
                                             _%g217672217755%_))
                                        (_%g217671217751%_
                                         _%g217672217755%_))))
                                (_%g217671217751%_ _%g217672217755%_))
                            (_%g217671217751%_ _%g217672217755%_))
                        (_%g217671217751%_ _%g217672217755%_))))
                (_%g217671217751%_ _%g217672217755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g217671217751%_
                                                 _%g217672217755%_))
                                            (_%g217671217751%_
                                             _%g217672217755%_)))
                                      (_%g217671217751%_ _%g217672217755%_))))
                              (_%g217671217751%_ _%g217672217755%_))))
                      (_%g217671217751%_ _%g217672217755%_)))))
          (_%g217670218053%_ _%sig217668%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx218825%_)
        (let* ((_%g218828218846%_
                (lambda (_%g218829218842%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218829218842%_))))
               (_%g218827218901%_
                (lambda (_%g218829218850%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218829218850%_))
                      (let ((_%e218832218853%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g218829218850%_))))
                        (let ((_%hd218833218857%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218832218853%_)))
                              (_%tl218834218860%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218832218853%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl218834218860%_))
                              (let ((_%e218835218863%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl218834218860%_))))
                                (let ((_%hd218836218867%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e218835218863%_)))
                                      (_%tl218837218870%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e218835218863%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl218837218870%_))
                                      (let ((_%e218838218873%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl218837218870%_))))
                                        (let ((_%hd218839218877%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218838218873%_)))
                                              (_%tl218840218880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218838218873%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218840218880%_))
                                              ((lambda (_%L218883%_
                                                        _%L218885%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L218885%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L218883%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx218825%_
                                                        _%L218885%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx218825%_
                                                        _%L218883%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L218885%_
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
                                                   (cons _%L218883%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g218828218846%_
                                                      _%g218829218850%_)))
                                               _%hd218839218877%_
                                               _%hd218836218867%_)
                                              (_%g218828218846%_
                                               _%g218829218850%_))))
                                      (_%g218828218846%_ _%g218829218850%_))))
                              (_%g218828218846%_ _%g218829218850%_))))
                      (_%g218828218846%_ _%g218829218850%_)))))
          (_%g218827218901%_ _%stx218825%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx218905%_)
        (let* ((_%g218908218932%_
                (lambda (_%g218909218928%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218909218928%_))))
               (_%g218907219215%_
                (lambda (_%g218909218936%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218909218936%_))
                      (let ((_%e218912218939%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g218909218936%_))))
                        (let ((_%hd218913218943%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218912218939%_)))
                              (_%tl218914218946%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218912218939%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl218914218946%_))
                              (let ((_%e218915218949%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl218914218946%_))))
                                (let ((_%hd218916218953%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e218915218949%_)))
                                      (_%tl218917218956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e218915218949%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl218917218956%_))
                                      (let ((_g221277_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl218917218956%_
                                                '0))))
                                        (begin
                                          (let ((_g221278_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g221277_)
                                                       (##values-length
                                                        _g221277_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g221278_ 2)))
                                                (error "Context expects 2 values"
                                                       _g221278_)))
                                          (let ((_%target218918218959%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g221277_ 0)))
                                                (_%tl218920218962%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g221277_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl218920218962%_))
                                                (letrec ((_%loop218921218965%_
                                                          (lambda (_%hd218919218969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature218925218972%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd218919218969%_))
                        (let ((_%e218922218975%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd218919218969%_))))
                          (let ((_%lp-hd218923218979%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e218922218975%_)))
                                (_%lp-tl218924218982%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e218922218975%_))))
                            (_%loop218921218965%_
                             _%lp-tl218924218982%_
                             (cons _%lp-hd218923218979%_
                                   _%signature218925218972%_))))
                        (let ((_%signature218926218985%_
                               (reverse _%signature218925218972%_)))
                          ((lambda (_%L218989%_ _%L218991%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L218991%_))
                                 (let* ((_%g219009219024%_
                                         (lambda (_%g219010219020%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g219010219020%_))))
                                        (_%g219008219203%_
                                         (lambda (_%g219010219028%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g219010219028%_))
                                               (let ((_%e219013219031%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g219010219028%_))))
                                                 (let ((_%hd219014219035%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219013219031%_)))
                                                       (_%tl219015219038%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219013219031%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl219015219038%_))
                                                       (let ((_%e219016219041%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl219015219038%_))))
                 (let ((_%hd219017219045%_
                        (let ()
                          (declare (not safe))
                          (##car _%e219016219041%_)))
                       (_%tl219018219048%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e219016219041%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl219018219048%_))
                       ((lambda (_%L219051%_ _%L219053%_)
                          (let* ((_%g219069219077%_
                                  (lambda (_%g219070219073%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g219070219073%_))))
                                 (_%g219068219199%_
                                  (lambda (_%g219070219081%_)
                                    ((lambda (_%L219084%_)
                                       (let* ((_%unchecked219097%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L219051%_))
                                              (_%g219100219108%_
                                               (lambda (_%g219101219104%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g219101219104%_))))
                                              (_%g219099219131%_
                                               (lambda (_%g219101219112%_)
                                                 ((lambda (_%L219115%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L219084%_
                                                                (cons _%L219115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g219101219112%_))))
                                         (_%g219099219131%_
                                          (if _%unchecked219097%_
                                              (let* ((_%g219135219150%_
                                                      (lambda (_%g219136219146%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g219136219146%_))))
                                                     (_%g219134219195%_
                                                      (lambda (_%g219136219154%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g219136219154%_))
                                                            (let ((_%e219139219157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g219136219154%_))))
                      (let ((_%hd219140219161%_
                             (let ()
                               (declare (not safe))
                               (##car _%e219139219157%_)))
                            (_%tl219141219164%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e219139219157%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl219141219164%_))
                            (let ((_%e219142219167%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl219141219164%_))))
                              (let ((_%hd219143219171%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e219142219167%_)))
                                    (_%tl219144219174%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e219142219167%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl219144219174%_))
                                    ((lambda (_%L219177%_ _%L219179%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L219179%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L219053%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L219177%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd219143219171%_
                                     _%hd219140219161%_)
                                    (_%g219135219150%_ _%g219136219154%_))))
                            (_%g219135219150%_ _%g219136219154%_))))
                    (_%g219135219150%_ _%g219136219154%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g219134219195%_
                                                 _%unchecked219097%_))
                                              '(begin)))))
                                     _%g219070219081%_))))
                            (_%g219068219199%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L218991%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L219053%_ '()))
                   (cons '#f (cons 'signature: (cons _%L219051%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd219017219045%_
                        _%hd219014219035%_)
                       (_%g219009219024%_ _%g219010219028%_))))
               (_%g219009219024%_ _%g219010219028%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219009219024%_
                                                _%g219010219028%_)))))
                                   (_%g219008219203%_
                                    (|gxc[1]#parse-signature|
                                     _%stx218905%_
                                     _%L218991%_
                                     (let ((__tmp221279
                                            (lambda (_%g219206219209%_
                                                     _%g219207219212%_)
                                              (cons _%g219206219209%_
                                                    _%g219207219212%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp221279
                                        '()
                                        _%L218989%_)))))
                                 (_%g218908218932%_ _%g218909218936%_)))
                           _%signature218926218985%_
                           _%hd218916218953%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop218921218965%_
                                                   _%target218918218959%_
                                                   '()))
                                                (_%g218908218932%_
                                                 _%g218909218936%_)))))
                                      (_%g218908218932%_ _%g218909218936%_))))
                              (_%g218908218932%_ _%g218909218936%_))))
                      (_%g218908218932%_ _%g218909218936%_)))))
          (_%g218907219215%_ _%stx218905%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx219220%_)
        (let* ((_%g219223219247%_
                (lambda (_%g219224219243%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219224219243%_))))
               (_%g219222220130%_
                (lambda (_%g219224219251%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219224219251%_))
                      (let ((_%e219227219254%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g219224219251%_))))
                        (let ((_%hd219228219258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219227219254%_)))
                              (_%tl219229219261%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219227219254%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl219229219261%_))
                              (let ((_%e219230219264%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl219229219261%_))))
                                (let ((_%hd219231219268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219230219264%_)))
                                      (_%tl219232219271%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219230219264%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl219232219271%_))
                                      (let ((_g221280_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl219232219271%_
                                                '0))))
                                        (begin
                                          (let ((_g221281_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g221280_)
                                                       (##values-length
                                                        _g221280_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g221281_ 2)))
                                                (error "Context expects 2 values"
                                                       _g221281_)))
                                          (let ((_%target219233219274%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g221280_ 0)))
                                                (_%tl219235219277%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g221280_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl219235219277%_))
                                                (letrec ((_%loop219236219280%_
                                                          (lambda (_%hd219234219284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature219240219287%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd219234219284%_))
                        (let ((_%e219237219290%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd219234219284%_))))
                          (let ((_%lp-hd219238219294%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e219237219290%_)))
                                (_%lp-tl219239219297%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e219237219290%_))))
                            (_%loop219236219280%_
                             _%lp-tl219239219297%_
                             (cons _%lp-hd219238219294%_
                                   _%case-signature219240219287%_))))
                        (let ((_%case-signature219241219300%_
                               (reverse _%case-signature219240219287%_)))
                          ((lambda (_%L219304%_ _%L219306%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L219306%_))
                                 (let* ((_%signatures219337%_
                                         (map (lambda (_%g219323219325%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx219220%_
                                                 _%L219306%_
                                                 _%g219323219325%_))
                                              (let ((__tmp221282
                                                     (lambda (_%g219328219331%_
                                                              _%g219329219334%_)
                                                       (cons _%g219328219331%_
                                                             _%g219329219334%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp221282
                                                 '()
                                                 _%L219304%_))))
                                        (_%g219340219366%_
                                         (lambda (_%g219341219362%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g219341219362%_))))
                                        (_%g219339220126%_
                                         (lambda (_%g219341219370%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g219341219370%_))
                                               (let ((_g221283_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g219341219370%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g221284_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g221283_)
                        (##values-length _g221283_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g221284_ 2)))
                 (error "Context expects 2 values" _g221284_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target219344219373%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g221283_
                                                             0)))
                                                         (_%tl219346219376%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g221283_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl219346219376%_))
                                                         (letrec ((_%loop219347219379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd219345219383%_
                                    _%sig219351219386%_
                                    _%arity219352219388%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd219345219383%_))
                                 (let ((_%e219348219391%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd219345219383%_))))
                                   (let ((_%lp-hd219349219395%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219348219391%_)))
                                         (_%lp-tl219350219398%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219348219391%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd219349219395%_))
                                         (let ((_%e219355219401%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd219349219395%_))))
                                           (let ((_%hd219356219405%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e219355219401%_)))
                                                 (_%tl219357219408%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e219355219401%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl219357219408%_))
                                                 (let ((_%e219358219411%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl219357219408%_))))
                                                   (let ((_%hd219359219415%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e219358219411%_)))
                                                         (_%tl219360219418%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e219358219411%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl219360219418%_))
                                                         (_%loop219347219379%_
                                                          _%lp-tl219350219398%_
                                                          (cons _%hd219359219415%_
                                                                _%sig219351219386%_)
                                                          (cons _%hd219356219405%_
                                                                _%arity219352219388%_))
                                                         (_%g219340219366%_
                                                          _%g219341219370%_))))
                                                 (_%g219340219366%_
                                                  _%g219341219370%_))))
                                         (_%g219340219366%_
                                          _%g219341219370%_))))
                                 (let ((_%sig219353219421%_
                                        (reverse _%sig219351219386%_))
                                       (_%arity219354219424%_
                                        (reverse _%arity219352219388%_)))
                                   ((lambda (_%L219427%_ _%L219429%_)
                                      (let* ((_%g219446219454%_
                                              (lambda (_%g219447219450%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g219447219450%_))))
                                             (_%g219445220111%_
                                              (lambda (_%g219447219458%_)
                                                ((lambda (_%L219461%_)
                                                   (let* ((_%g219474219482%_
                                                           (lambda (_%g219475219478%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g219475219478%_))))
                  (_%g219473219504%_
                   (lambda (_%g219475219486%_)
                     ((lambda (_%L219489%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L219461%_ (cons _%L219489%_ '()))))
                      _%g219475219486%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g219473219504%_
                                                      (let ((_g221285_
                                                             (let _%loop219508%_ ((_%rest219511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures219337%_)
                                          (_%unchecked-proc219513%_ '#f)
                                          (_%unchecked-clauses219514%_ '()))
                       (let* ((_%rest219515219523%_ _%rest219511%_)
                              (_%else219517219535%_
                               (lambda ()
                                 (values _%unchecked-proc219513%_
                                         (reverse!
                                          _%unchecked-clauses219514%_))))
                              (_%K219519219976%_
                               (lambda (_%rest219539%_ _%hd219541%_)
                                 (let* ((_%g219543219630%_
                                         (lambda (_%g219544219626%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g219544219626%_))))
                                        (_%g219542219972%_
                                         (lambda (_%g219544219634%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g219544219634%_))
                                               (let ((_%e219551219637%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g219544219634%_))))
                                                 (let ((_%hd219552219641%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219551219637%_)))
                                                       (_%tl219553219644%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219551219637%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl219553219644%_))
                                                       (let ((_%e219554219647%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl219553219644%_))))
                 (let ((_%hd219555219651%_
                        (let ()
                          (declare (not safe))
                          (##car _%e219554219647%_)))
                       (_%tl219556219654%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e219554219647%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd219555219651%_))
                       (let ((_%e219557219657%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd219555219651%_))))
                         (let ((_%hd219558219661%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e219557219657%_)))
                               (_%tl219559219664%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e219557219657%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl219559219664%_))
                               (let ((_%e219560219667%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl219559219664%_))))
                                 (let ((_%hd219561219671%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e219560219667%_)))
                                       (_%tl219562219674%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e219560219667%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd219561219671%_))
                                       (let ((_%e219563219677%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd219561219671%_))))
                                         (if (equal? _%e219563219677%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl219562219674%_))
                                                 (let ((_%e219564219681%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl219562219674%_))))
                                                   (let ((_%hd219565219685%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e219564219681%_)))
                                                         (_%tl219566219688%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e219564219681%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd219565219685%_))
                                                         (let ((_%e219567219691%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd219565219685%_))))
                   (let ((_%hd219568219695%_
                          (let ()
                            (declare (not safe))
                            (##car _%e219567219691%_)))
                         (_%tl219569219698%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e219567219691%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd219568219695%_))
                         (if (let ((__tmp221287 |gxc[1]#_g221288_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp221287
                                _%hd219568219695%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl219569219698%_))
                                 (let ((_%e219570219701%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl219569219698%_))))
                                   (let ((_%hd219571219705%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219570219701%_)))
                                         (_%tl219572219708%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219570219701%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl219572219708%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl219566219688%_))
                                             (let ((_%e219573219711%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl219566219688%_))))
                                               (let ((_%hd219574219715%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e219573219711%_)))
                                                     (_%tl219575219718%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e219573219711%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd219574219715%_))
                                                     (let ((_%e219576219721%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd219574219715%_))))
                                                       (if (equal? _%e219576219721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl219575219718%_))
                       (let ((_%e219577219725%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl219575219718%_))))
                         (let ((_%hd219578219729%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e219577219725%_)))
                               (_%tl219579219732%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e219577219725%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd219578219729%_))
                               (let ((_%e219580219735%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd219578219729%_))))
                                 (let ((_%hd219581219739%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e219580219735%_)))
                                       (_%tl219582219742%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e219580219735%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd219581219739%_))
                                       (if (let ((__tmp221289
                                                  |gxc[1]#_g221290_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp221289
                                              _%hd219581219739%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl219582219742%_))
                                               (let ((_%e219583219745%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl219582219742%_))))
                                                 (let ((_%hd219584219749%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219583219745%_)))
                                                       (_%tl219585219752%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219583219745%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl219585219752%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl219579219732%_))
                                                           (let ((_%e219586219755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl219579219732%_))))
                     (let ((_%hd219587219759%_
                            (let ()
                              (declare (not safe))
                              (##car _%e219586219755%_)))
                           (_%tl219588219762%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e219586219755%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd219587219759%_))
                           (let ((_%e219589219765%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd219587219759%_))))
                             (if (equal? _%e219589219765%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl219588219762%_))
                                     (let ((_%e219590219769%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl219588219762%_))))
                                       (let ((_%hd219591219773%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e219590219769%_)))
                                             (_%tl219592219776%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e219590219769%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd219591219773%_))
                                             (let ((_%e219593219779%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd219591219773%_))))
                                               (let ((_%hd219594219783%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e219593219779%_)))
                                                     (_%tl219595219786%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e219593219779%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd219594219783%_))
                                                     (if (let ((__tmp221291
                                                                |gxc[1]#_g221292_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp221291
                                                            _%hd219594219783%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl219595219786%_))
                     (let ((_%e219596219789%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl219595219786%_))))
                       (let ((_%hd219597219793%_
                              (let ()
                                (declare (not safe))
                                (##car _%e219596219789%_)))
                             (_%tl219598219796%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e219596219789%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl219598219796%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl219592219776%_))
                                 (let ((_%e219599219799%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl219592219776%_))))
                                   (let ((_%hd219600219803%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219599219799%_)))
                                         (_%tl219601219806%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219599219799%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd219600219803%_))
                                         (let ((_%e219602219809%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd219600219803%_))))
                                           (if (equal? _%e219602219809%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl219601219806%_))
                                                   (let ((_%e219603219813%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl219601219806%_))))
                                                     (let ((_%hd219604219817%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e219603219813%_)))
                                                           (_%tl219605219820%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e219603219813%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd219604219817%_))
                                                           (let ((_%e219606219823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd219604219817%_))))
                     (let ((_%hd219607219827%_
                            (let ()
                              (declare (not safe))
                              (##car _%e219606219823%_)))
                           (_%tl219608219830%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e219606219823%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd219607219827%_))
                           (if (let ((__tmp221293 |gxc[1]#_g221294_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp221293
                                  _%hd219607219827%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl219608219830%_))
                                   (let ((_%e219609219833%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl219608219830%_))))
                                     (let ((_%hd219610219837%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e219609219833%_)))
                                           (_%tl219611219840%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e219609219833%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl219611219840%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl219605219820%_))
                                               (let ((_%e219612219843%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl219605219820%_))))
                                                 (let ((_%hd219613219847%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219612219843%_)))
                                                       (_%tl219614219850%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219612219843%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd219613219847%_))
                                                       (let ((_%e219615219853%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd219613219847%_))))
                 (if (equal? _%e219615219853%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl219614219850%_))
                         (let ((_%e219616219857%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl219614219850%_))))
                           (let ((_%hd219617219861%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e219616219857%_)))
                                 (_%tl219618219864%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e219616219857%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd219617219861%_))
                                 (let ((_%e219619219867%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd219617219861%_))))
                                   (let ((_%hd219620219871%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219619219867%_)))
                                         (_%tl219621219874%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219619219867%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd219620219871%_))
                                         (if (let ((__tmp221295
                                                    |gxc[1]#_g221296_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp221295
                                                _%hd219620219871%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl219621219874%_))
                                                 (let ((_%e219622219877%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl219621219874%_))))
                                                   (let ((_%hd219623219881%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e219622219877%_)))
                                                         (_%tl219624219884%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e219622219877%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl219624219884%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl219618219864%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl219556219654%_))
                         ((lambda (_%L219887%_
                                   _%L219889%_
                                   _%L219890%_
                                   _%L219891%_
                                   _%L219892%_
                                   _%L219893%_)
                            (let ((_%clause219964%_
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
                                                     (cons _%L219893%_ '()))
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
                                                 (cons _%L219891%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L219887%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked219966%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L219889%_))))
                              (_%loop219508%_
                               _%rest219539%_
                               (let ((_%$e219968%_ _%unchecked219966%_))
                                 (if _%$e219968%_
                                     _%$e219968%_
                                     _%unchecked-proc219513%_))
                               (cons _%clause219964%_
                                     _%unchecked-clauses219514%_))))
                          _%hd219623219881%_
                          _%hd219610219837%_
                          _%hd219597219793%_
                          _%hd219584219749%_
                          _%hd219571219705%_
                          _%hd219552219641%_)
                         (_%g219543219630%_ _%g219544219634%_))
                     (_%g219543219630%_ _%g219544219634%_))
                 (_%g219543219630%_ _%g219544219634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g219543219630%_
                                                  _%g219544219634%_))
                                             (_%g219543219630%_
                                              _%g219544219634%_))
                                         (_%g219543219630%_
                                          _%g219544219634%_))))
                                 (_%g219543219630%_ _%g219544219634%_))))
                         (_%g219543219630%_ _%g219544219634%_))
                     (_%g219543219630%_ _%g219544219634%_)))
               (_%g219543219630%_ _%g219544219634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219543219630%_
                                                _%g219544219634%_))
                                           (_%g219543219630%_
                                            _%g219544219634%_))))
                                   (_%g219543219630%_ _%g219544219634%_))
                               (_%g219543219630%_ _%g219544219634%_))
                           (_%g219543219630%_ _%g219544219634%_))))
                   (_%g219543219630%_ _%g219544219634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g219543219630%_
                                                    _%g219544219634%_))
                                               (_%g219543219630%_
                                                _%g219544219634%_)))
                                         (_%g219543219630%_
                                          _%g219544219634%_))))
                                 (_%g219543219630%_ _%g219544219634%_))
                             (_%g219543219630%_ _%g219544219634%_))))
                     (_%g219543219630%_ _%g219544219634%_))
                 (_%g219543219630%_ _%g219544219634%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g219543219630%_
                                                      _%g219544219634%_))))
                                             (_%g219543219630%_
                                              _%g219544219634%_))))
                                     (_%g219543219630%_ _%g219544219634%_))
                                 (_%g219543219630%_ _%g219544219634%_)))
                           (_%g219543219630%_ _%g219544219634%_))))
                   (_%g219543219630%_ _%g219544219634%_))
               (_%g219543219630%_ _%g219544219634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219543219630%_
                                                _%g219544219634%_))
                                           (_%g219543219630%_
                                            _%g219544219634%_))
                                       (_%g219543219630%_ _%g219544219634%_))))
                               (_%g219543219630%_ _%g219544219634%_))))
                       (_%g219543219630%_ _%g219544219634%_))
                   (_%g219543219630%_ _%g219544219634%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g219543219630%_
                                                      _%g219544219634%_))))
                                             (_%g219543219630%_
                                              _%g219544219634%_))
                                         (_%g219543219630%_
                                          _%g219544219634%_))))
                                 (_%g219543219630%_ _%g219544219634%_))
                             (_%g219543219630%_ _%g219544219634%_))
                         (_%g219543219630%_ _%g219544219634%_))))
                 (_%g219543219630%_ _%g219544219634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g219543219630%_
                                                  _%g219544219634%_))
                                             (_%g219543219630%_
                                              _%g219544219634%_)))
                                       (_%g219543219630%_ _%g219544219634%_))))
                               (_%g219543219630%_ _%g219544219634%_))))
                       (_%g219543219630%_ _%g219544219634%_))))
               (_%g219543219630%_ _%g219544219634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219543219630%_
                                                _%g219544219634%_)))))
                                   (_%g219542219972%_ _%hd219541%_)))))
                         (if (pair? _%rest219515219523%_)
                             (let ((_%hd219520219980%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest219515219523%_)))
                                   (_%tl219521219983%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest219515219523%_))))
                               (let* ((_%hd219986%_ _%hd219520219980%_)
                                      (_%rest219989%_ _%tl219521219983%_))
                                 (_%K219519219976%_
                                  _%rest219989%_
                                  _%hd219986%_)))
                             (_%else219517219535%_))))))
                (begin
                  (let ((_g221286_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g221285_)
                               (##values-length _g221285_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g221286_ 2)))
                        (error "Context expects 2 values" _g221286_)))
                  (let ((_%unchecked-proc219992%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221285_ 0)))
                        (_%unchecked-clauses219994%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221285_ 1))))
                    (if _%unchecked-proc219992%_
                        (let* ((_%g219996220020%_
                                (lambda (_%g219997220016%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g219997220016%_))))
                               (_%g219995220107%_
                                (lambda (_%g219997220024%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g219997220024%_))
                                      (let ((_%e220000220027%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g219997220024%_))))
                                        (let ((_%hd220001220031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e220000220027%_)))
                                              (_%tl220002220034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e220000220027%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl220002220034%_))
                                              (let ((_%e220003220037%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl220002220034%_))))
                                                (let ((_%hd220004220041%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e220003220037%_)))
                                                      (_%tl220005220044%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e220003220037%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd220004220041%_))
                                                      (let ((_g221297_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd220004220041%_ '0))))
                (begin
                  (let ((_g221298_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g221297_)
                               (##values-length _g221297_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g221298_ 2)))
                        (error "Context expects 2 values" _g221298_)))
                  (let ((_%target220006220047%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221297_ 0)))
                        (_%tl220008220050%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221297_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl220008220050%_))
                        (letrec ((_%loop220009220053%_
                                  (lambda (_%hd220007220057%_
                                           _%clause220013220060%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd220007220057%_))
                                        (let ((_%e220010220063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd220007220057%_))))
                                          (let ((_%lp-hd220011220067%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e220010220063%_)))
                                                (_%lp-tl220012220070%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e220010220063%_))))
                                            (_%loop220009220053%_
                                             _%lp-tl220012220070%_
                                             (cons _%lp-hd220011220067%_
                                                   _%clause220013220060%_))))
                                        (let ((_%clause220014220073%_
                                               (reverse _%clause220013220060%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl220005220044%_))
                                              ((lambda (_%L220077%_
                                                        _%L220079%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L220079%_
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
                                             (let ((__tmp221299
                                                    (lambda (_%g220098220101%_
                                                             _%g220099220104%_)
                                                      (cons _%g220098220101%_
                                                            _%g220099220104%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp221299
                                                '()
                                                _%L220077%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause220014220073%_
                                               _%hd220001220031%_)
                                              (_%g219996220020%_
                                               _%g219997220024%_)))))))
                          (_%loop220009220053%_ _%target220006220047%_ '()))
                        (_%g219996220020%_ _%g219997220024%_)))))
              (_%g219996220020%_ _%g219997220024%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g219996220020%_
                                               _%g219997220024%_))))
                                      (_%g219996220020%_ _%g219997220024%_)))))
                          (_%g219995220107%_
                           (list _%unchecked-proc219992%_
                                 _%unchecked-clauses219994%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g219447219458%_))))
                                        (_%g219445220111%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L219306%_
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
                                          _%L219427%_
                                          _%L219429%_))
                                       (let ((__tmp221300
                                              (lambda (_%g220114220118%_
                                                       _%g220115220121%_
                                                       _%g220116220123%_)
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
                                (cons _%g220115220121%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g220114220118%_ '())))))
              _%g220116220123%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp221300
                                          '()
                                          _%L219427%_
                                          _%L219429%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig219353219421%_
                                    _%arity219354219424%_))))))
                   (_%loop219347219379%_ _%target219344219373%_ '() '()))
                 (_%g219340219366%_ _%g219341219370%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219340219366%_
                                                _%g219341219370%_)))))
                                   (_%g219339220126%_ _%signatures219337%_))
                                 (_%g219223219247%_ _%g219224219251%_)))
                           _%case-signature219241219300%_
                           _%hd219231219268%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop219236219280%_
                                                   _%target219233219274%_
                                                   '()))
                                                (_%g219223219247%_
                                                 _%g219224219251%_)))))
                                      (_%g219223219247%_ _%g219224219251%_))))
                              (_%g219223219247%_ _%g219224219251%_))))
                      (_%g219223219247%_ _%g219224219251%_)))))
          (_%g219222220130%_ _%stx219220%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx220138%_)
        (let* ((_%__stx221120221121%_ _%$stx220138%_)
               (_%g220144220204%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx221120221121%_)))))
          (let ((_%__kont221123221124%_
                 (lambda (_%L220426%_ _%L220428%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L220428%_ '()))
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
                                                       (cons _%L220428%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L220426%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont221125221126%_
                 (lambda (_%L220351%_ _%L220353%_ _%L220354%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L220354%_ '()))
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
                                                       (cons _%L220354%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L220353%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L220351%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont221127221128%_
                 (lambda (_%L220265%_ _%L220267%_ _%L220268%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L220268%_ '()))
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
                                                       (cons _%L220268%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L220267%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L220265%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx221120221121%_))
                (let ((_%e220148220382%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx221120221121%_))))
                  (let ((_%tl220150220389%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e220148220382%_)))
                        (_%hd220149220386%_
                         (let ()
                           (declare (not safe))
                           (##car _%e220148220382%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl220150220389%_))
                        (let ((_%e220151220392%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl220150220389%_))))
                          (let ((_%tl220153220399%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e220151220392%_)))
                                (_%hd220152220396%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e220151220392%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd220152220396%_))
                                (let ((_%e220154220402%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd220152220396%_))))
                                  (if (equal? _%e220154220402%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl220153220399%_))
                                          (let ((_%e220155220406%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl220153220399%_))))
                                            (let ((_%tl220157220413%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e220155220406%_)))
                                                  (_%hd220156220410%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e220155220406%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl220157220413%_))
                                                  (let ((_%e220158220416%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl220157220413%_))))
                                                    (let ((_%tl220160220423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e220158220416%_)))
                                                          (_%hd220159220420%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e220158220416%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl220160220423%_))
                                                          (_%__kont221123221124%_
                                                           _%hd220159220420%_
                                                           _%hd220156220410%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g220144220204%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g220144220204%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g220144220204%_)))
                                      (if (equal? _%e220154220402%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl220153220399%_))
                                              (let ((_%e220171220321%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl220153220399%_))))
                                                (let ((_%tl220173220328%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e220171220321%_)))
                                                      (_%hd220172220325%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e220171220321%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl220173220328%_))
                                                      (let ((_%e220174220331%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl220173220328%_))))
                (let ((_%tl220176220338%_
                       (let () (declare (not safe)) (##cdr _%e220174220331%_)))
                      (_%hd220175220335%_
                       (let ()
                         (declare (not safe))
                         (##car _%e220174220331%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl220176220338%_))
                      (let ((_%e220177220341%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl220176220338%_))))
                        (let ((_%tl220179220348%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e220177220341%_)))
                              (_%hd220178220345%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e220177220341%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl220179220348%_))
                              (_%__kont221125221126%_
                               _%hd220178220345%_
                               _%hd220175220335%_
                               _%hd220172220325%_)
                              (let ()
                                (declare (not safe))
                                (_%g220144220204%_)))))
                      (let () (declare (not safe)) (_%g220144220204%_)))))
              (let () (declare (not safe)) (_%g220144220204%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g220144220204%_)))
                                          (if (equal? _%e220154220402%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl220153220399%_))
                                                  (let ((_%e220190220235%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl220153220399%_))))
                                                    (let ((_%tl220192220242%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e220190220235%_)))
                                                          (_%hd220191220239%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e220190220235%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl220192220242%_))
                                                          (let ((_%e220193220245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl220192220242%_))))
                    (let ((_%tl220195220252%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e220193220245%_)))
                          (_%hd220194220249%_
                           (let ()
                             (declare (not safe))
                             (##car _%e220193220245%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl220195220252%_))
                          (let ((_%e220196220255%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl220195220252%_))))
                            (let ((_%tl220198220262%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e220196220255%_)))
                                  (_%hd220197220259%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e220196220255%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl220198220262%_))
                                  (_%__kont221127221128%_
                                   _%hd220197220259%_
                                   _%hd220194220249%_
                                   _%hd220191220239%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g220144220204%_)))))
                          (let () (declare (not safe)) (_%g220144220204%_)))))
                  (let () (declare (not safe)) (_%g220144220204%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g220144220204%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g220144220204%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g220144220204%_)))))
                        (let () (declare (not safe)) (_%g220144220204%_)))))
                (let () (declare (not safe)) (_%g220144220204%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx220450%_)
        (let* ((_%g220454220474%_
                (lambda (_%g220455220470%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g220455220470%_))))
               (_%g220453220545%_
                (lambda (_%g220455220478%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g220455220478%_))
                      (let ((_%e220457220481%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g220455220478%_))))
                        (let ((_%hd220458220485%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e220457220481%_)))
                              (_%tl220459220488%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e220457220481%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl220459220488%_))
                              (let ((_g221301_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl220459220488%_
                                        '0))))
                                (begin
                                  (let ((_g221302_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221301_)
                                               (##values-length _g221301_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221302_ 2)))
                                        (error "Context expects 2 values"
                                               _g221302_)))
                                  (let ((_%target220460220491%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221301_ 0)))
                                        (_%tl220462220494%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221301_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl220462220494%_))
                                        (letrec ((_%loop220463220497%_
                                                  (lambda (_%hd220461220501%_
                                                           _%decl220467220504%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd220461220501%_))
                                                        (let ((_%e220464220507%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd220461220501%_))))
                  (let ((_%lp-hd220465220511%_
                         (let ()
                           (declare (not safe))
                           (##car _%e220464220507%_)))
                        (_%lp-tl220466220514%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e220464220507%_))))
                    (_%loop220463220497%_
                     _%lp-tl220466220514%_
                     (cons _%lp-hd220465220511%_ _%decl220467220504%_))))
                (let ((_%decl220468220517%_ (reverse _%decl220467220504%_)))
                  ((lambda (_%L220521%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp221303
                                  (lambda (_%g220536220539%_ _%g220537220542%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g220536220539%_)
                                          _%g220537220542%_))))
                             (declare (not safe))
                             (__foldr1 __tmp221303 '() _%L220521%_))))
                   _%decl220468220517%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop220463220497%_
                                           _%target220460220491%_
                                           '()))
                                        (_%g220454220474%_
                                         _%g220455220478%_)))))
                              (_%g220454220474%_ _%g220455220478%_))))
                      (_%g220454220474%_ _%g220455220478%_)))))
          (_%g220453220545%_ _%$stx220450%_))))))
