(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g221317_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221324_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221326_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221328_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221330_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221332_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221344_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221346_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221348_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221350_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221352_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx214775%_)
        (let* ((_%g214779214797%_
                (lambda (_%g214780214793%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214780214793%_))))
               (_%g214778214852%_
                (lambda (_%g214780214801%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214780214801%_))
                      (let ((_%e214783214804%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214780214801%_))))
                        (let ((_%hd214784214808%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214783214804%_)))
                              (_%tl214785214811%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214783214804%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214785214811%_))
                              (let ((_%e214786214814%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl214785214811%_))))
                                (let ((_%hd214787214818%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214786214814%_)))
                                      (_%tl214788214821%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214786214814%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214788214821%_))
                                      (let ((_%e214789214824%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl214788214821%_))))
                                        (let ((_%hd214790214828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214789214824%_)))
                                              (_%tl214791214831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214789214824%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214791214831%_))
                                              ((lambda (_%g214781214834%_
                                                        _%g214782214836%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g214782214836%_))
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
                               (cons _%g214782214836%_ '()))
                         (cons _%g214781214834%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g214779214797%_
                                                      _%g214780214801%_)))
                                               _%hd214790214828%_
                                               _%hd214787214818%_)
                                              (_%g214779214797%_
                                               _%g214780214801%_))))
                                      (_%g214779214797%_ _%g214780214801%_))))
                              (_%g214779214797%_ _%g214780214801%_))))
                      (_%g214779214797%_ _%g214780214801%_)))))
          (_%g214778214852%_ _%$stx214775%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx214856%_)
        (let* ((_%g214860214878%_
                (lambda (_%g214861214874%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214861214874%_))))
               (_%g214859214933%_
                (lambda (_%g214861214882%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214861214882%_))
                      (let ((_%e214864214885%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214861214882%_))))
                        (let ((_%hd214865214889%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214864214885%_)))
                              (_%tl214866214892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214864214885%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214866214892%_))
                              (let ((_%e214867214895%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl214866214892%_))))
                                (let ((_%hd214868214899%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214867214895%_)))
                                      (_%tl214869214902%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214867214895%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214869214902%_))
                                      (let ((_%e214870214905%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl214869214902%_))))
                                        (let ((_%hd214871214909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214870214905%_)))
                                              (_%tl214872214912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214870214905%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214872214912%_))
                                              ((lambda (_%g214862214915%_
                                                        _%g214863214917%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g214863214917%_))
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
                               (cons _%g214863214917%_ '()))
                         (cons _%g214862214915%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g214860214878%_
                                                      _%g214861214882%_)))
                                               _%hd214871214909%_
                                               _%hd214868214899%_)
                                              (_%g214860214878%_
                                               _%g214861214882%_))))
                                      (_%g214860214878%_ _%g214861214882%_))))
                              (_%g214860214878%_ _%g214861214882%_))))
                      (_%g214860214878%_ _%g214861214882%_)))))
          (_%g214859214933%_ _%$stx214856%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx214937%_)
        (let* ((_%g214941214970%_
                (lambda (_%g214942214966%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214942214966%_))))
               (_%g214940215066%_
                (lambda (_%g214942214974%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214942214974%_))
                      (let ((_%e214945214977%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214942214974%_))))
                        (let ((_%hd214946214981%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214945214977%_)))
                              (_%tl214947214984%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214945214977%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl214947214984%_))
                              (let ((_g221295_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl214947214984%_
                                        '0))))
                                (begin
                                  (let ((_g221296_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221295_)
                                               (##values-length _g221295_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221296_ 2)))
                                        (error "Context expects 2 values"
                                               _g221296_)))
                                  (let ((_%target214948214987%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221295_ 0)))
                                        (_%tl214950214990%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221295_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl214950214990%_))
                                        (letrec ((_%loop214951214993%_
                                                  (lambda (_%hd214949214997%_
                                                           _%type214955215000%_
                                                           _%symbol214956215001%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd214949214997%_))
                                                        (let ((_%e214952215003%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd214949214997%_))))
                  (let ((_%lp-hd214953215007%_
                         (let ()
                           (declare (not safe))
                           (##car _%e214952215003%_)))
                        (_%lp-tl214954215010%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e214952215003%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd214953215007%_))
                        (let ((_%e214959215013%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd214953215007%_))))
                          (let ((_%hd214960215017%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e214959215013%_)))
                                (_%tl214961215020%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e214959215013%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl214961215020%_))
                                (let ((_%e214962215023%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl214961215020%_))))
                                  (let ((_%hd214963215027%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e214962215023%_)))
                                        (_%tl214964215030%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e214962215023%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl214964215030%_))
                                        (_%loop214951214993%_
                                         _%lp-tl214954215010%_
                                         (cons _%hd214963215027%_
                                               _%type214955215000%_)
                                         (cons _%hd214960215017%_
                                               _%symbol214956215001%_))
                                        (_%g214941214970%_
                                         _%g214942214974%_))))
                                (_%g214941214970%_ _%g214942214974%_))))
                        (_%g214941214970%_ _%g214942214974%_))))
                (let ((_%type214957215033%_ (reverse _%type214955215000%_))
                      (_%symbol214958215035%_
                       (reverse _%symbol214956215001%_)))
                  ((lambda (_%g214943215037%_ _%g214944215039%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g214943215037%_
                                _%g214944215039%_))
                             (let ((__tmp221297
                                    (lambda (_%g215054215058%_
                                             _%g215055215061%_
                                             _%g215056215063%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g215055215061%_
                                                        (cons _%g215054215058%_
                                                              '())))
                                            _%g215056215063%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp221297
                                '()
                                _%g214943215037%_
                                _%g214944215039%_)))))
                   _%type214957215033%_
                   _%symbol214958215035%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop214951214993%_
                                           _%target214948214987%_
                                           '()
                                           '()))
                                        (_%g214941214970%_
                                         _%g214942214974%_)))))
                              (_%g214941214970%_ _%g214942214974%_))))
                      (_%g214941214970%_ _%g214942214974%_)))))
          (_%g214940215066%_ _%$stx214937%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx215071%_)
        (let* ((_%__stx220606220607%_ _%$stx215071%_)
               (_%g215076215118%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220606220607%_)))))
          (let ((_%__kont220609220610%_
                 (lambda (_%g215078215246%_
                          _%g215079215248%_
                          _%g215080215249%_
                          _%g215081215250%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g215081215250%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g215080215249%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g215079215248%_ '()))
                                           (cons _%g215078215246%_ '())))))))
                (_%__kont220611220612%_
                 (lambda (_%g215097215165%_
                          _%g215098215167%_
                          _%g215099215168%_
                          _%g215100215169%_)
                   (cons _%g215100215169%_
                         (cons _%g215099215168%_
                               (cons _%g215098215167%_
                                     (cons _%g215097215165%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match220645220646%_
                   (lambda (_%e215082215196%_
                            _%hd215083215200%_
                            _%tl215084215203%_
                            _%e215085215206%_
                            _%hd215086215210%_
                            _%tl215087215213%_
                            _%e215088215216%_
                            _%hd215089215220%_
                            _%tl215090215223%_
                            _%e215091215226%_
                            _%hd215092215230%_
                            _%tl215093215233%_
                            _%e215094215236%_
                            _%hd215095215240%_
                            _%tl215096215243%_)
                     (let ((_%g215078215246%_ _%hd215095215240%_)
                           (_%g215079215248%_ _%hd215092215230%_)
                           (_%g215080215249%_ _%hd215089215220%_)
                           (_%g215081215250%_ _%hd215086215210%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g215081215250%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g215080215249%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g215079215248%_)))
                           (_%__kont220609220610%_
                            _%g215078215246%_
                            _%g215079215248%_
                            _%g215080215249%_
                            _%g215081215250%_)
                           (let ()
                             (declare (not safe))
                             (_%g215076215118%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220606220607%_))
                  (let ((_%e215082215196%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx220606220607%_))))
                    (let ((_%tl215084215203%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e215082215196%_)))
                          (_%hd215083215200%_
                           (let ()
                             (declare (not safe))
                             (##car _%e215082215196%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl215084215203%_))
                          (let ((_%e215085215206%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl215084215203%_))))
                            (let ((_%tl215087215213%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e215085215206%_)))
                                  (_%hd215086215210%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e215085215206%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl215087215213%_))
                                  (let ((_%e215088215216%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl215087215213%_))))
                                    (let ((_%tl215090215223%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e215088215216%_)))
                                          (_%hd215089215220%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e215088215216%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl215090215223%_))
                                          (let ((_%e215091215226%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl215090215223%_))))
                                            (let ((_%tl215093215233%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e215091215226%_)))
                                                  (_%hd215092215230%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e215091215226%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl215093215233%_))
                                                  (let ((_%e215094215236%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl215093215233%_))))
                                                    (let ((_%tl215096215243%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e215094215236%_)))
                                                          (_%hd215095215240%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e215094215236%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl215096215243%_))
                                                          (_%__match220645220646%_
                                                           _%e215082215196%_
                                                           _%hd215083215200%_
                                                           _%tl215084215203%_
                                                           _%e215085215206%_
                                                           _%hd215086215210%_
                                                           _%tl215087215213%_
                                                           _%e215088215216%_
                                                           _%hd215089215220%_
                                                           _%tl215090215223%_
                                                           _%e215091215226%_
                                                           _%hd215092215230%_
                                                           _%tl215093215233%_
                                                           _%e215094215236%_
                                                           _%hd215095215240%_
                                                           _%tl215096215243%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g215076215118%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl215093215233%_))
                                                      (_%__kont220611220612%_
                                                       _%hd215092215230%_
                                                       _%hd215089215220%_
                                                       _%hd215086215210%_
                                                       _%hd215083215200%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g215076215118%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g215076215118%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g215076215118%_)))))
                          (let () (declare (not safe)) (_%g215076215118%_)))))
                  (let () (declare (not safe)) (_%g215076215118%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx215275%_)
        (let* ((_%g215279215314%_
                (lambda (_%g215280215310%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215280215310%_))))
               (_%g215278215427%_
                (lambda (_%g215280215318%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215280215318%_))
                      (let ((_%e215284215321%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215280215318%_))))
                        (let ((_%hd215285215325%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215284215321%_)))
                              (_%tl215286215328%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215284215321%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl215286215328%_))
                              (let ((_g221298_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl215286215328%_
                                        '0))))
                                (begin
                                  (let ((_g221299_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221298_)
                                               (##values-length _g221298_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221299_ 2)))
                                        (error "Context expects 2 values"
                                               _g221299_)))
                                  (let ((_%target215287215331%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221298_ 0)))
                                        (_%tl215289215334%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221298_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl215289215334%_))
                                        (letrec ((_%loop215290215337%_
                                                  (lambda (_%hd215288215341%_
                                                           _%symbol215294215344%_
                                                           _%method215295215345%_
                                                           _%type-t215296215346%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd215288215341%_))
                                                        (let ((_%e215291215348%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd215288215341%_))))
                  (let ((_%lp-hd215292215352%_
                         (let ()
                           (declare (not safe))
                           (##car _%e215291215348%_)))
                        (_%lp-tl215293215355%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e215291215348%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd215292215352%_))
                        (let ((_%e215300215358%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd215292215352%_))))
                          (let ((_%hd215301215362%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215300215358%_)))
                                (_%tl215302215365%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215300215358%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl215302215365%_))
                                (let ((_%e215303215368%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl215302215365%_))))
                                  (let ((_%hd215304215372%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e215303215368%_)))
                                        (_%tl215305215375%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e215303215368%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl215305215375%_))
                                        (let ((_%e215306215378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl215305215375%_))))
                                          (let ((_%hd215307215382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e215306215378%_)))
                                                (_%tl215308215385%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e215306215378%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215308215385%_))
                                                (_%loop215290215337%_
                                                 _%lp-tl215293215355%_
                                                 (cons _%hd215307215382%_
                                                       _%symbol215294215344%_)
                                                 (cons _%hd215304215372%_
                                                       _%method215295215345%_)
                                                 (cons _%hd215301215362%_
                                                       _%type-t215296215346%_))
                                                (_%g215279215314%_
                                                 _%g215280215318%_))))
                                        (_%g215279215314%_
                                         _%g215280215318%_))))
                                (_%g215279215314%_ _%g215280215318%_))))
                        (_%g215279215314%_ _%g215280215318%_))))
                (let ((_%symbol215297215388%_ (reverse _%symbol215294215344%_))
                      (_%method215298215390%_ (reverse _%method215295215345%_))
                      (_%type-t215299215391%_
                       (reverse _%type-t215296215346%_)))
                  ((lambda (_%g215281215393%_
                            _%g215282215395%_
                            _%g215283215396%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g215281215393%_
                                _%g215282215395%_
                                _%g215283215396%_))
                             (let ((__tmp221300
                                    (lambda (_%g215412215417%_
                                             _%g215413215420%_
                                             _%g215414215422%_
                                             _%g215415215424%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g215414215422%_
                                                        (cons _%g215413215420%_
                                                              (cons _%g215412215417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g215415215424%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp221300
                                '()
                                _%g215281215393%_
                                _%g215282215395%_
                                _%g215283215396%_)))))
                   _%symbol215297215388%_
                   _%method215298215390%_
                   _%type-t215299215391%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop215290215337%_
                                           _%target215287215331%_
                                           '()
                                           '()
                                           '()))
                                        (_%g215279215314%_
                                         _%g215280215318%_)))))
                              (_%g215279215314%_ _%g215280215318%_))))
                      (_%g215279215314%_ _%g215280215318%_)))))
          (_%g215278215427%_ _%$stx215275%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx215432%_)
        (let* ((_%g215436215469%_
                (lambda (_%g215437215465%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215437215465%_))))
               (_%g215435215579%_
                (lambda (_%g215437215473%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215437215473%_))
                      (let ((_%e215441215476%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215437215473%_))))
                        (let ((_%hd215442215480%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215441215476%_)))
                              (_%tl215443215483%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215441215476%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215443215483%_))
                              (let ((_%e215444215486%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215443215483%_))))
                                (let ((_%hd215445215490%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215444215486%_)))
                                      (_%tl215446215493%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215444215486%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl215446215493%_))
                                      (let ((_g221301_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl215446215493%_
                                                '0))))
                                        (begin
                                          (let ((_g221302_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g221301_)
                                                       (##values-length
                                                        _g221301_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g221302_ 2)))
                                                (error "Context expects 2 values"
                                                       _g221302_)))
                                          (let ((_%target215447215496%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g221301_ 0)))
                                                (_%tl215449215499%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g221301_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215449215499%_))
                                                (letrec ((_%loop215450215502%_
                                                          (lambda (_%hd215448215506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol215454215509%_
                           _%method215455215510%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd215448215506%_))
                        (let ((_%e215451215512%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd215448215506%_))))
                          (let ((_%lp-hd215452215516%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215451215512%_)))
                                (_%lp-tl215453215519%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215451215512%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd215452215516%_))
                                (let ((_%e215458215522%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd215452215516%_))))
                                  (let ((_%hd215459215526%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e215458215522%_)))
                                        (_%tl215460215529%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e215458215522%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl215460215529%_))
                                        (let ((_%e215461215532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl215460215529%_))))
                                          (let ((_%hd215462215536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e215461215532%_)))
                                                (_%tl215463215539%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e215461215532%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215463215539%_))
                                                (_%loop215450215502%_
                                                 _%lp-tl215453215519%_
                                                 (cons _%hd215462215536%_
                                                       _%symbol215454215509%_)
                                                 (cons _%hd215459215526%_
                                                       _%method215455215510%_))
                                                (_%g215436215469%_
                                                 _%g215437215473%_))))
                                        (_%g215436215469%_
                                         _%g215437215473%_))))
                                (_%g215436215469%_ _%g215437215473%_))))
                        (let ((_%symbol215456215542%_
                               (reverse _%symbol215454215509%_))
                              (_%method215457215544%_
                               (reverse _%method215455215510%_)))
                          ((lambda (_%g215438215546%_
                                    _%g215439215548%_
                                    _%g215440215549%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g215438215546%_
                                        _%g215439215548%_))
                                     (let ((__tmp221303
                                            (lambda (_%g215567215571%_
                                                     _%g215568215574%_
                                                     _%g215569215576%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g215440215549%_
                                                                (cons _%g215568215574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g215567215571%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g215569215576%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp221303
                                        '()
                                        _%g215438215546%_
                                        _%g215439215548%_)))))
                           _%symbol215456215542%_
                           _%method215457215544%_
                           _%hd215445215490%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop215450215502%_
                                                   _%target215447215496%_
                                                   '()
                                                   '()))
                                                (_%g215436215469%_
                                                 _%g215437215473%_)))))
                                      (_%g215436215469%_ _%g215437215473%_))))
                              (_%g215436215469%_ _%g215437215473%_))))
                      (_%g215436215469%_ _%g215437215473%_)))))
          (_%g215435215579%_ _%$stx215432%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx215584%_)
        (let* ((_%g215588215602%_
                (lambda (_%g215589215598%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215589215598%_))))
               (_%g215587215643%_
                (lambda (_%g215589215606%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215589215606%_))
                      (let ((_%e215591215609%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215589215606%_))))
                        (let ((_%hd215592215613%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215591215609%_)))
                              (_%tl215593215616%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215591215609%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215593215616%_))
                              (let ((_%e215594215619%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215593215616%_))))
                                (let ((_%hd215595215623%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215594215619%_)))
                                      (_%tl215596215626%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215594215619%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl215596215626%_))
                                      ((lambda (_%g215590215629%_)
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
                                                           (cons _%g215590215629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd215595215623%_)
                                      (_%g215588215602%_ _%g215589215606%_))))
                              (_%g215588215602%_ _%g215589215606%_))))
                      (_%g215588215602%_ _%g215589215606%_)))))
          (_%g215587215643%_ _%$stx215584%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx215647%_)
        (let* ((_%g215651215705%_
                (lambda (_%g215652215701%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215652215701%_))))
               (_%g215650215886%_
                (lambda (_%g215652215709%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215652215709%_))
                      (let ((_%e215664215712%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215652215709%_))))
                        (let ((_%hd215665215716%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215664215712%_)))
                              (_%tl215666215719%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215664215712%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215666215719%_))
                              (let ((_%e215667215722%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215666215719%_))))
                                (let ((_%hd215668215726%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215667215722%_)))
                                      (_%tl215669215729%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215667215722%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl215669215729%_))
                                      (let ((_%e215670215732%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl215669215729%_))))
                                        (let ((_%hd215671215736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e215670215732%_)))
                                              (_%tl215672215739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e215670215732%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl215672215739%_))
                                              (let ((_%e215673215742%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl215672215739%_))))
                                                (let ((_%hd215674215746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e215673215742%_)))
                                                      (_%tl215675215749%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e215673215742%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl215675215749%_))
                                                      (let ((_%e215676215752%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl215675215749%_))))
                (let ((_%hd215677215756%_
                       (let () (declare (not safe)) (##car _%e215676215752%_)))
                      (_%tl215678215759%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e215676215752%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl215678215759%_))
                      (let ((_%e215679215762%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl215678215759%_))))
                        (let ((_%hd215680215766%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215679215762%_)))
                              (_%tl215681215769%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215679215762%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215681215769%_))
                              (let ((_%e215682215772%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215681215769%_))))
                                (let ((_%hd215683215776%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215682215772%_)))
                                      (_%tl215684215779%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215682215772%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl215684215779%_))
                                      (let ((_%e215685215782%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl215684215779%_))))
                                        (let ((_%hd215686215786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e215685215782%_)))
                                              (_%tl215687215789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e215685215782%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl215687215789%_))
                                              (let ((_%e215688215792%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl215687215789%_))))
                                                (let ((_%hd215689215796%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e215688215792%_)))
                                                      (_%tl215690215799%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e215688215792%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl215690215799%_))
                                                      (let ((_%e215691215802%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl215690215799%_))))
                (let ((_%hd215692215806%_
                       (let () (declare (not safe)) (##car _%e215691215802%_)))
                      (_%tl215693215809%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e215691215802%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl215693215809%_))
                      (let ((_%e215694215812%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl215693215809%_))))
                        (let ((_%hd215695215816%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215694215812%_)))
                              (_%tl215696215819%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215694215812%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215696215819%_))
                              (let ((_%e215697215822%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215696215819%_))))
                                (let ((_%hd215698215826%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215697215822%_)))
                                      (_%tl215699215829%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215697215822%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl215699215829%_))
                                      ((lambda (_%g215653215832%_
                                                _%g215654215834%_
                                                _%g215655215835%_
                                                _%g215656215836%_
                                                _%g215657215837%_
                                                _%g215658215838%_
                                                _%g215659215839%_
                                                _%g215660215840%_
                                                _%g215661215841%_
                                                _%g215662215842%_
                                                _%g215663215843%_)
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
                                                           (cons _%g215663215843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g215662215842%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g215661215841%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g215660215840%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g215659215839%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g215658215838%_ '()))
                                           (cons _%g215657215837%_
                                                 (cons _%g215656215836%_
                                                       (cons _%g215655215835%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g215654215834%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g215653215832%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd215698215826%_
                                       _%hd215695215816%_
                                       _%hd215692215806%_
                                       _%hd215689215796%_
                                       _%hd215686215786%_
                                       _%hd215683215776%_
                                       _%hd215680215766%_
                                       _%hd215677215756%_
                                       _%hd215674215746%_
                                       _%hd215671215736%_
                                       _%hd215668215726%_)
                                      (_%g215651215705%_ _%g215652215709%_))))
                              (_%g215651215705%_ _%g215652215709%_))))
                      (_%g215651215705%_ _%g215652215709%_))))
              (_%g215651215705%_ _%g215652215709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g215651215705%_
                                               _%g215652215709%_))))
                                      (_%g215651215705%_ _%g215652215709%_))))
                              (_%g215651215705%_ _%g215652215709%_))))
                      (_%g215651215705%_ _%g215652215709%_))))
              (_%g215651215705%_ _%g215652215709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g215651215705%_
                                               _%g215652215709%_))))
                                      (_%g215651215705%_ _%g215652215709%_))))
                              (_%g215651215705%_ _%g215652215709%_))))
                      (_%g215651215705%_ _%g215652215709%_)))))
          (_%g215650215886%_ _%$stx215647%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx215890%_)
        (let* ((_%g215894215908%_
                (lambda (_%g215895215904%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215895215904%_))))
               (_%g215893215949%_
                (lambda (_%g215895215912%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215895215912%_))
                      (let ((_%e215897215915%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215895215912%_))))
                        (let ((_%hd215898215919%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215897215915%_)))
                              (_%tl215899215922%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215897215915%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215899215922%_))
                              (let ((_%e215900215925%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215899215922%_))))
                                (let ((_%hd215901215929%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215900215925%_)))
                                      (_%tl215902215932%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215900215925%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl215902215932%_))
                                      ((lambda (_%g215896215935%_)
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
                                                           (cons _%g215896215935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd215901215929%_)
                                      (_%g215894215908%_ _%g215895215912%_))))
                              (_%g215894215908%_ _%g215895215912%_))))
                      (_%g215894215908%_ _%g215895215912%_)))))
          (_%g215893215949%_ _%$stx215890%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx215953%_)
        (let* ((_%g215957215971%_
                (lambda (_%g215958215967%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215958215967%_))))
               (_%g215956216012%_
                (lambda (_%g215958215975%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215958215975%_))
                      (let ((_%e215960215978%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215958215975%_))))
                        (let ((_%hd215961215982%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215960215978%_)))
                              (_%tl215962215985%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215960215978%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215962215985%_))
                              (let ((_%e215963215988%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215962215985%_))))
                                (let ((_%hd215964215992%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215963215988%_)))
                                      (_%tl215965215995%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215963215988%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl215965215995%_))
                                      ((lambda (_%g215959215998%_)
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
                                                           (cons _%g215959215998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd215964215992%_)
                                      (_%g215957215971%_ _%g215958215975%_))))
                              (_%g215957215971%_ _%g215958215975%_))))
                      (_%g215957215971%_ _%g215958215975%_)))))
          (_%g215956216012%_ _%$stx215953%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx216016%_)
        (let* ((_%g216020216042%_
                (lambda (_%g216021216038%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216021216038%_))))
               (_%g216019216111%_
                (lambda (_%g216021216046%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216021216046%_))
                      (let ((_%e216025216049%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216021216046%_))))
                        (let ((_%hd216026216053%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216025216049%_)))
                              (_%tl216027216056%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216025216049%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216027216056%_))
                              (let ((_%e216028216059%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216027216056%_))))
                                (let ((_%hd216029216063%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216028216059%_)))
                                      (_%tl216030216066%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216028216059%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216030216066%_))
                                      (let ((_%e216031216069%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216030216066%_))))
                                        (let ((_%hd216032216073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216031216069%_)))
                                              (_%tl216033216076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216031216069%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216033216076%_))
                                              (let ((_%e216034216079%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl216033216076%_))))
                                                (let ((_%hd216035216083%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216034216079%_)))
                                                      (_%tl216036216086%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216034216079%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216036216086%_))
                                                      ((lambda (_%g216022216089%_
                                                                _%g216023216091%_
                                                                _%g216024216092%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g216024216092%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g216023216091%_ '()))
                                   (cons _%g216022216089%_ '())))))
               _%hd216035216083%_
               _%hd216032216073%_
               _%hd216029216063%_)
              (_%g216020216042%_ _%g216021216046%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g216020216042%_
                                               _%g216021216046%_))))
                                      (_%g216020216042%_ _%g216021216046%_))))
                              (_%g216020216042%_ _%g216021216046%_))))
                      (_%g216020216042%_ _%g216021216046%_)))))
          (_%g216019216111%_ _%$stx216016%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx216115%_)
        (let* ((_%g216119216141%_
                (lambda (_%g216120216137%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216120216137%_))))
               (_%g216118216210%_
                (lambda (_%g216120216145%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216120216145%_))
                      (let ((_%e216124216148%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216120216145%_))))
                        (let ((_%hd216125216152%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216124216148%_)))
                              (_%tl216126216155%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216124216148%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216126216155%_))
                              (let ((_%e216127216158%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216126216155%_))))
                                (let ((_%hd216128216162%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216127216158%_)))
                                      (_%tl216129216165%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216127216158%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216129216165%_))
                                      (let ((_%e216130216168%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216129216165%_))))
                                        (let ((_%hd216131216172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216130216168%_)))
                                              (_%tl216132216175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216130216168%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216132216175%_))
                                              (let ((_%e216133216178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl216132216175%_))))
                                                (let ((_%hd216134216182%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216133216178%_)))
                                                      (_%tl216135216185%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216133216178%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216135216185%_))
                                                      ((lambda (_%g216121216188%_
                                                                _%g216122216190%_
                                                                _%g216123216191%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g216123216191%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g216122216190%_ '()))
                                   (cons _%g216121216188%_ '())))))
               _%hd216134216182%_
               _%hd216131216172%_
               _%hd216128216162%_)
              (_%g216119216141%_ _%g216120216145%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g216119216141%_
                                               _%g216120216145%_))))
                                      (_%g216119216141%_ _%g216120216145%_))))
                              (_%g216119216141%_ _%g216120216145%_))))
                      (_%g216119216141%_ _%g216120216145%_)))))
          (_%g216118216210%_ _%$stx216115%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx216214%_)
        (let* ((_%g216218216232%_
                (lambda (_%g216219216228%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216219216228%_))))
               (_%g216217216273%_
                (lambda (_%g216219216236%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216219216236%_))
                      (let ((_%e216221216239%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216219216236%_))))
                        (let ((_%hd216222216243%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216221216239%_)))
                              (_%tl216223216246%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216221216239%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216223216246%_))
                              (let ((_%e216224216249%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216223216246%_))))
                                (let ((_%hd216225216253%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216224216249%_)))
                                      (_%tl216226216256%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216224216249%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216226216256%_))
                                      ((lambda (_%g216220216259%_)
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
                                                           (cons _%g216220216259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd216225216253%_)
                                      (_%g216218216232%_ _%g216219216236%_))))
                              (_%g216218216232%_ _%g216219216236%_))))
                      (_%g216218216232%_ _%g216219216236%_)))))
          (_%g216217216273%_ _%$stx216214%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx216277%_)
        (let* ((_%g216281216299%_
                (lambda (_%g216282216295%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216282216295%_))))
               (_%g216280216354%_
                (lambda (_%g216282216303%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216282216303%_))
                      (let ((_%e216285216306%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216282216303%_))))
                        (let ((_%hd216286216310%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216285216306%_)))
                              (_%tl216287216313%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216285216306%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216287216313%_))
                              (let ((_%e216288216316%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216287216313%_))))
                                (let ((_%hd216289216320%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216288216316%_)))
                                      (_%tl216290216323%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216288216316%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216290216323%_))
                                      (let ((_%e216291216326%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216290216323%_))))
                                        (let ((_%hd216292216330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216291216326%_)))
                                              (_%tl216293216333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216291216326%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216293216333%_))
                                              ((lambda (_%g216283216336%_
                                                        _%g216284216338%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g216284216338%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g216283216336%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd216292216330%_
                                               _%hd216289216320%_)
                                              (_%g216281216299%_
                                               _%g216282216303%_))))
                                      (_%g216281216299%_ _%g216282216303%_))))
                              (_%g216281216299%_ _%g216282216303%_))))
                      (_%g216281216299%_ _%g216282216303%_)))))
          (_%g216280216354%_ _%$stx216277%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx216358%_)
        (let* ((_%__stx220674220675%_ _%$stx216358%_)
               (_%g216365216426%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220674220675%_)))))
          (let ((_%__kont220677220678%_
                 (lambda (_%g216367216664%_ _%g216368216666%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g216368216666%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g216367216664%_ '()))
                                     '())))))
                (_%__kont220679220680%_
                 (lambda (_%g216378216603%_
                          _%g216379216605%_
                          _%g216380216606%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g216380216606%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g216379216605%_ '()))
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
                                 (cons _%g216378216603%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont220681220682%_
                 (lambda (_%g216397216527%_ _%g216398216529%_)
                   (cons _%g216398216529%_
                         (cons _%g216397216527%_ (cons '#f '())))))
                (_%__kont220683220684%_
                 (lambda (_%g216405216477%_
                          _%g216406216479%_
                          _%g216407216480%_)
                   (cons _%g216407216480%_
                         (cons _%g216406216479%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g216405216477%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx220674220675%_))
                (let ((_%e216369216634%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx220674220675%_))))
                  (let ((_%tl216371216641%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e216369216634%_)))
                        (_%hd216370216638%_
                         (let ()
                           (declare (not safe))
                           (##car _%e216369216634%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl216371216641%_))
                        (let ((_%e216372216644%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl216371216641%_))))
                          (let ((_%tl216374216651%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e216372216644%_)))
                                (_%hd216373216648%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e216372216644%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl216374216651%_))
                                (let ((_%e216375216654%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl216374216651%_))))
                                  (let ((_%tl216377216661%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e216375216654%_)))
                                        (_%hd216376216658%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e216375216654%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl216377216661%_))
                                        (_%__kont220677220678%_
                                         _%hd216376216658%_
                                         _%hd216373216648%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl216377216661%_))
                                            (let ((_%e216390216579%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl216377216661%_))))
                                              (let ((_%tl216392216586%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e216390216579%_)))
                                                    (_%hd216391216583%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e216390216579%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd216391216583%_))
                                                    (let ((_%e216393216589%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd216391216583%_))))
                                                      (if (equal? _%e216393216589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216392216586%_))
                      (let ((_%e216394216593%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl216392216586%_))))
                        (let ((_%tl216396216600%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216394216593%_)))
                              (_%hd216395216597%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216394216593%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216396216600%_))
                              (_%__kont220679220680%_
                               _%hd216395216597%_
                               _%hd216376216658%_
                               _%hd216373216648%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd216376216658%_))
                                  (let ((_%e216417216463%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd216376216658%_))))
                                    (declare (not safe))
                                    (_%g216365216426%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216365216426%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd216376216658%_))
                          (let ((_%e216417216463%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd216376216658%_))))
                            (if (equal? _%e216417216463%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl216392216586%_))
                                    (_%__kont220683220684%_
                                     _%hd216391216583%_
                                     _%hd216373216648%_
                                     _%hd216370216638%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g216365216426%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g216365216426%_))))
                          (let () (declare (not safe)) (_%g216365216426%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd216376216658%_))
                      (let ((_%e216417216463%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd216376216658%_))))
                        (if (equal? _%e216417216463%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl216392216586%_))
                                (_%__kont220683220684%_
                                 _%hd216391216583%_
                                 _%hd216373216648%_
                                 _%hd216370216638%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g216365216426%_)))
                            (let () (declare (not safe)) (_%g216365216426%_))))
                      (let () (declare (not safe)) (_%g216365216426%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd216376216658%_))
                                                        (let ((_%e216417216463%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd216376216658%_))))
                  (if (equal? _%e216417216463%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216392216586%_))
                          (_%__kont220683220684%_
                           _%hd216391216583%_
                           _%hd216373216648%_
                           _%hd216370216638%_)
                          (let () (declare (not safe)) (_%g216365216426%_)))
                      (let () (declare (not safe)) (_%g216365216426%_))))
                (let () (declare (not safe)) (_%g216365216426%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd216376216658%_))
                                                (let ((_%e216417216463%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd216376216658%_))))
                                                  (declare (not safe))
                                                  (_%g216365216426%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g216365216426%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl216374216651%_))
                                    (_%__kont220681220682%_
                                     _%hd216373216648%_
                                     _%hd216370216638%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g216365216426%_))))))
                        (let () (declare (not safe)) (_%g216365216426%_)))))
                (let () (declare (not safe)) (_%g216365216426%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx216685%_)
        (let* ((_%g216689216718%_
                (lambda (_%g216690216714%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216690216714%_))))
               (_%g216688216823%_
                (lambda (_%g216690216722%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216690216722%_))
                      (let ((_%e216692216725%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216690216722%_))))
                        (let ((_%hd216693216729%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216692216725%_)))
                              (_%tl216694216732%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216692216725%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl216694216732%_))
                              (let ((_g221304_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl216694216732%_
                                        '0))))
                                (begin
                                  (let ((_g221305_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221304_)
                                               (##values-length _g221304_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221305_ 2)))
                                        (error "Context expects 2 values"
                                               _g221305_)))
                                  (let ((_%target216695216735%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221304_ 0)))
                                        (_%tl216697216738%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221304_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl216697216738%_))
                                        (letrec ((_%loop216698216741%_
                                                  (lambda (_%hd216696216745%_
                                                           _%clause216702216748%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd216696216745%_))
                                                        (let ((_%e216699216750%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd216696216745%_))))
                  (let ((_%lp-hd216700216754%_
                         (let ()
                           (declare (not safe))
                           (##car _%e216699216750%_)))
                        (_%lp-tl216701216757%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e216699216750%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd216700216754%_))
                        (let ((_g221306_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd216700216754%_
                                  '0))))
                          (begin
                            (let ((_g221307_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g221306_)
                                         (##values-length _g221306_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g221307_ 2)))
                                  (error "Context expects 2 values"
                                         _g221307_)))
                            (let ((_%target216704216760%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g221306_ 0)))
                                  (_%tl216706216763%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g221306_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216706216763%_))
                                  (letrec ((_%loop216707216766%_
                                            (lambda (_%hd216705216770%_
                                                     _%clause216711216773%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd216705216770%_))
                                                  (let ((_%e216708216775%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd216705216770%_))))
                                                    (let ((_%lp-hd216709216779%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216708216775%_)))
                                                          (_%lp-tl216710216782%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216708216775%_))))
                                                      (_%loop216707216766%_
                                                       _%lp-tl216710216782%_
                                                       (cons _%lp-hd216709216779%_
                                                             _%clause216711216773%_))))
                                                  (let ((_%clause216712216785%_
                                                         (reverse _%clause216711216773%_)))
                                                    (_%loop216698216741%_
                                                     _%lp-tl216701216757%_
                                                     (cons _%clause216712216785%_
                                                           _%clause216702216748%_)))))))
                                    (_%loop216707216766%_
                                     _%target216704216760%_
                                     '()))
                                  (_%g216689216718%_ _%g216690216722%_)))))
                        (_%g216689216718%_ _%g216690216722%_))))
                (let ((_%clause216703216788%_
                       (reverse _%clause216702216748%_)))
                  ((lambda (_%g216691216791%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp221308
                                              (lambda (_%g216806216811%_
                                                       _%g216807216814%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp221309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g216808216817%_ _%g216809216820%_)
                             (cons _%g216808216817%_ _%g216809216820%_))))
                      (declare (not safe))
                      (__foldr1 __tmp221309 '() _%g216806216811%_)))
              _%g216807216814%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp221308
                                          '()
                                          _%g216691216791%_)))
                                 '())))
                   _%clause216703216788%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop216698216741%_
                                           _%target216695216735%_
                                           '()))
                                        (_%g216689216718%_
                                         _%g216690216722%_)))))
                              (_%g216689216718%_ _%g216690216722%_))))
                      (_%g216689216718%_ _%g216690216722%_)))))
          (_%g216688216823%_ _%$stx216685%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx216829%_)
        (let* ((_%g216833216851%_
                (lambda (_%g216834216847%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216834216847%_))))
               (_%g216832216906%_
                (lambda (_%g216834216855%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216834216855%_))
                      (let ((_%e216837216858%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216834216855%_))))
                        (let ((_%hd216838216862%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216837216858%_)))
                              (_%tl216839216865%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216837216858%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216839216865%_))
                              (let ((_%e216840216868%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216839216865%_))))
                                (let ((_%hd216841216872%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216840216868%_)))
                                      (_%tl216842216875%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216840216868%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216842216875%_))
                                      (let ((_%e216843216878%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216842216875%_))))
                                        (let ((_%hd216844216882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216843216878%_)))
                                              (_%tl216845216885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216843216878%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216845216885%_))
                                              ((lambda (_%g216835216888%_
                                                        _%g216836216890%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g216836216890%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g216835216888%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd216844216882%_
                                               _%hd216841216872%_)
                                              (_%g216833216851%_
                                               _%g216834216855%_))))
                                      (_%g216833216851%_ _%g216834216855%_))))
                              (_%g216833216851%_ _%g216834216855%_))))
                      (_%g216833216851%_ _%g216834216855%_)))))
          (_%g216832216906%_ _%$stx216829%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx216910%_)
        (let* ((_%g216914216932%_
                (lambda (_%g216915216928%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216915216928%_))))
               (_%g216913216987%_
                (lambda (_%g216915216936%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216915216936%_))
                      (let ((_%e216918216939%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216915216936%_))))
                        (let ((_%hd216919216943%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216918216939%_)))
                              (_%tl216920216946%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216918216939%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216920216946%_))
                              (let ((_%e216921216949%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216920216946%_))))
                                (let ((_%hd216922216953%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216921216949%_)))
                                      (_%tl216923216956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216921216949%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216923216956%_))
                                      (let ((_%e216924216959%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216923216956%_))))
                                        (let ((_%hd216925216963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216924216959%_)))
                                              (_%tl216926216966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216924216959%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216926216966%_))
                                              ((lambda (_%g216916216969%_
                                                        _%g216917216971%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g216917216971%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g216916216969%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd216925216963%_
                                               _%hd216922216953%_)
                                              (_%g216914216932%_
                                               _%g216915216936%_))))
                                      (_%g216914216932%_ _%g216915216936%_))))
                              (_%g216914216932%_ _%g216915216936%_))))
                      (_%g216914216932%_ _%g216915216936%_)))))
          (_%g216913216987%_ _%$stx216910%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx216991%_)
        (let* ((_%g216995217024%_
                (lambda (_%g216996217020%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216996217020%_))))
               (_%g216994217120%_
                (lambda (_%g216996217028%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216996217028%_))
                      (let ((_%e216999217031%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216996217028%_))))
                        (let ((_%hd217000217035%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216999217031%_)))
                              (_%tl217001217038%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216999217031%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl217001217038%_))
                              (let ((_g221310_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl217001217038%_
                                        '0))))
                                (begin
                                  (let ((_g221311_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221310_)
                                               (##values-length _g221310_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221311_ 2)))
                                        (error "Context expects 2 values"
                                               _g221311_)))
                                  (let ((_%target217002217041%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221310_ 0)))
                                        (_%tl217004217044%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221310_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl217004217044%_))
                                        (letrec ((_%loop217005217047%_
                                                  (lambda (_%hd217003217051%_
                                                           _%rule217009217054%_
                                                           _%proc217010217055%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd217003217051%_))
                                                        (let ((_%e217006217057%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd217003217051%_))))
                  (let ((_%lp-hd217007217061%_
                         (let ()
                           (declare (not safe))
                           (##car _%e217006217057%_)))
                        (_%lp-tl217008217064%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e217006217057%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd217007217061%_))
                        (let ((_%e217013217067%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd217007217061%_))))
                          (let ((_%hd217014217071%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e217013217067%_)))
                                (_%tl217015217074%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e217013217067%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl217015217074%_))
                                (let ((_%e217016217077%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl217015217074%_))))
                                  (let ((_%hd217017217081%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e217016217077%_)))
                                        (_%tl217018217084%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e217016217077%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl217018217084%_))
                                        (_%loop217005217047%_
                                         _%lp-tl217008217064%_
                                         (cons _%hd217017217081%_
                                               _%rule217009217054%_)
                                         (cons _%hd217014217071%_
                                               _%proc217010217055%_))
                                        (_%g216995217024%_
                                         _%g216996217028%_))))
                                (_%g216995217024%_ _%g216996217028%_))))
                        (_%g216995217024%_ _%g216996217028%_))))
                (let ((_%rule217011217087%_ (reverse _%rule217009217054%_))
                      (_%proc217012217089%_ (reverse _%proc217010217055%_)))
                  ((lambda (_%g216997217091%_ _%g216998217093%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g216997217091%_
                                _%g216998217093%_))
                             (let ((__tmp221312
                                    (lambda (_%g217108217112%_
                                             _%g217109217115%_
                                             _%g217110217117%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g217109217115%_
                                                        (cons _%g217108217112%_
                                                              '())))
                                            _%g217110217117%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp221312
                                '()
                                _%g216997217091%_
                                _%g216998217093%_)))))
                   _%rule217011217087%_
                   _%proc217012217089%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop217005217047%_
                                           _%target217002217041%_
                                           '()
                                           '()))
                                        (_%g216995217024%_
                                         _%g216996217028%_)))))
                              (_%g216995217024%_ _%g216996217028%_))))
                      (_%g216995217024%_ _%g216996217028%_)))))
          (_%g216994217120%_ _%$stx216991%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx217125%_)
        (let* ((_%g217129217147%_
                (lambda (_%g217130217143%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g217130217143%_))))
               (_%g217128217202%_
                (lambda (_%g217130217151%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g217130217151%_))
                      (let ((_%e217133217154%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g217130217151%_))))
                        (let ((_%hd217134217158%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217133217154%_)))
                              (_%tl217135217161%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217133217154%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217135217161%_))
                              (let ((_%e217136217164%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl217135217161%_))))
                                (let ((_%hd217137217168%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217136217164%_)))
                                      (_%tl217138217171%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217136217164%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl217138217171%_))
                                      (let ((_%e217139217174%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl217138217171%_))))
                                        (let ((_%hd217140217178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217139217174%_)))
                                              (_%tl217141217181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217139217174%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl217141217181%_))
                                              ((lambda (_%g217131217184%_
                                                        _%g217132217186%_)
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
                                                   (cons _%g217132217186%_
                                                         '()))
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
                 (cons _%g217131217184%_ '())))
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
                                   (cons _%g217132217186%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd217140217178%_
                                               _%hd217137217168%_)
                                              (_%g217129217147%_
                                               _%g217130217151%_))))
                                      (_%g217129217147%_ _%g217130217151%_))))
                              (_%g217129217147%_ _%g217130217151%_))))
                      (_%g217129217147%_ _%g217130217151%_)))))
          (_%g217128217202%_ _%$stx217125%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx217206%_)
        (let* ((_%__stx220792220793%_ _%$stx217206%_)
               (_%g217211217236%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220792220793%_)))))
          (let ((_%__kont220795220796%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont220797220798%_
                 (lambda (_%g217216217283%_
                          _%g217217217285%_
                          _%g217218217286%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g217218217286%_
                                           (cons _%g217217217285%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g217216217283%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx220792220793%_))
                (let ((_%e217213217312%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx220792220793%_))))
                  (let ((_%tl217215217319%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e217213217312%_)))
                        (_%hd217214217316%_
                         (let ()
                           (declare (not safe))
                           (##car _%e217213217312%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl217215217319%_))
                        (_%__kont220795220796%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl217215217319%_))
                            (let ((_%e217222217253%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl217215217319%_))))
                              (let ((_%tl217224217260%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e217222217253%_)))
                                    (_%hd217223217257%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e217222217253%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd217223217257%_))
                                    (let ((_%e217225217263%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd217223217257%_))))
                                      (let ((_%tl217227217270%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e217225217263%_)))
                                            (_%hd217226217267%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e217225217263%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl217227217270%_))
                                            (let ((_%e217228217273%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl217227217270%_))))
                                              (let ((_%tl217230217280%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217228217273%_)))
                                                    (_%hd217229217277%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217228217273%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl217230217280%_))
                                                    (_%__kont220797220798%_
                                                     _%tl217224217260%_
                                                     _%hd217229217277%_
                                                     _%hd217226217267%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g217211217236%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g217211217236%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g217211217236%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g217211217236%_))))))
                (let () (declare (not safe)) (_%g217211217236%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx217330%_)
        (let* ((_%__stx220836220837%_ _%$stx217330%_)
               (_%g217335217366%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220836220837%_)))))
          (let ((_%__kont220839220840%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont220841220842%_
                 (lambda (_%g217340217431%_
                          _%g217341217433%_
                          _%g217342217434%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g217342217434%_
                                           (let ((__tmp221313
                                                  (lambda (_%g217454217457%_
                                                           _%g217455217460%_)
                                                    (cons _%g217454217457%_
                                                          _%g217455217460%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp221313
                                              '()
                                              _%g217341217433%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g217340217431%_)
                                     '()))))))
            (let ((_%__match220879220880%_
                   (lambda (_%e217343217373%_
                            _%hd217344217377%_
                            _%tl217345217380%_
                            _%e217346217383%_
                            _%hd217347217387%_
                            _%tl217348217390%_
                            _%e217349217393%_
                            _%hd217350217397%_
                            _%tl217351217400%_
                            _%__splice220843220844%_
                            _%target217352217403%_
                            _%tl217354217406%_)
                     (letrec ((_%loop217355217409%_
                               (lambda (_%hd217353217413%_ _%sig217359217416%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd217353217413%_))
                                     (let ((_%e217356217418%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd217353217413%_))))
                                       (let ((_%lp-tl217358217425%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e217356217418%_)))
                                             (_%lp-hd217357217422%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e217356217418%_))))
                                         (_%loop217355217409%_
                                          _%lp-tl217358217425%_
                                          (cons _%lp-hd217357217422%_
                                                _%sig217359217416%_))))
                                     (let ((_%sig217360217428%_
                                            (reverse _%sig217359217416%_)))
                                       (_%__kont220841220842%_
                                        _%tl217348217390%_
                                        _%sig217360217428%_
                                        _%hd217350217397%_))))))
                       (_%loop217355217409%_ _%target217352217403%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220836220837%_))
                  (let ((_%e217337217470%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx220836220837%_))))
                    (let ((_%tl217339217477%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217337217470%_)))
                          (_%hd217338217474%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217337217470%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217339217477%_))
                          (_%__kont220839220840%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217339217477%_))
                              (let ((_%e217346217383%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl217339217477%_))))
                                (let ((_%tl217348217390%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217346217383%_)))
                                      (_%hd217347217387%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217346217383%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd217347217387%_))
                                      (let ((_%e217349217393%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd217347217387%_))))
                                        (let ((_%tl217351217400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217349217393%_)))
                                              (_%hd217350217397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217349217393%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl217351217400%_))
                                              (let ((_%__splice220843220844%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl217351217400%_
                                                        '0))))
                                                (let ((_%tl217354217406%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220843220844%_
                                                          '1)))
                                                      (_%target217352217403%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220843220844%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl217354217406%_))
                                                      (_%__match220879220880%_
                                                       _%e217337217470%_
                                                       _%hd217338217474%_
                                                       _%tl217339217477%_
                                                       _%e217346217383%_
                                                       _%hd217347217387%_
                                                       _%tl217348217390%_
                                                       _%e217349217393%_
                                                       _%hd217350217397%_
                                                       _%tl217351217400%_
                                                       _%__splice220843220844%_
                                                       _%target217352217403%_
                                                       _%tl217354217406%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g217335217366%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g217335217366%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g217335217366%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g217335217366%_))))))
                  (let () (declare (not safe)) (_%g217335217366%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx217489%_)
        (let* ((_%__stx220882220883%_ _%$stx217489%_)
               (_%g217494217541%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220882220883%_)))))
          (let ((_%__kont220885220886%_
                 (lambda (_%g217496217699%_ _%g217497217701%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g217497217701%_
                               (let ((__tmp221314
                                      (lambda (_%g217721217724%_
                                               _%g217722217727%_)
                                        (cons _%g217721217724%_
                                              _%g217722217727%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp221314
                                  '()
                                  _%g217496217699%_))))))
                (_%__kont220889220890%_
                 (lambda (_%g217519217596%_ _%g217520217598%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g217520217598%_
                               (let ((__tmp221315
                                      (lambda (_%g217615217618%_
                                               _%g217616217621%_)
                                        (cons _%g217615217618%_
                                              _%g217616217621%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp221315
                                  '()
                                  _%g217519217596%_)))))))
            (let* ((_%__match220949220950%_
                    (lambda (_%e217521217548%_
                             _%hd217522217552%_
                             _%tl217523217555%_
                             _%e217524217558%_
                             _%hd217525217562%_
                             _%tl217526217565%_
                             _%__splice220891220892%_
                             _%target217527217568%_
                             _%tl217529217571%_)
                      (letrec ((_%loop217530217574%_
                                (lambda (_%hd217528217578%_
                                         _%sig217534217581%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd217528217578%_))
                                      (let ((_%e217531217583%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd217528217578%_))))
                                        (let ((_%lp-tl217533217590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217531217583%_)))
                                              (_%lp-hd217532217587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217531217583%_))))
                                          (_%loop217530217574%_
                                           _%lp-tl217533217590%_
                                           (cons _%lp-hd217532217587%_
                                                 _%sig217534217581%_))))
                                      (let ((_%sig217535217593%_
                                             (reverse _%sig217534217581%_)))
                                        (_%__kont220889220890%_
                                         _%sig217535217593%_
                                         _%hd217525217562%_))))))
                        (_%loop217530217574%_ _%target217527217568%_ '()))))
                   (_%__match220941220942%_
                    (lambda (_%e217521217548%_
                             _%hd217522217552%_
                             _%tl217523217555%_
                             _%e217524217558%_
                             _%hd217525217562%_
                             _%tl217526217565%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl217526217565%_))
                          (let ((_%__splice220891220892%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl217526217565%_
                                    '0))))
                            (let ((_%tl217529217571%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice220891220892%_
                                      '1)))
                                  (_%target217527217568%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice220891220892%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl217529217571%_))
                                  (_%__match220949220950%_
                                   _%e217521217548%_
                                   _%hd217522217552%_
                                   _%tl217523217555%_
                                   _%e217524217558%_
                                   _%hd217525217562%_
                                   _%tl217526217565%_
                                   _%__splice220891220892%_
                                   _%target217527217568%_
                                   _%tl217529217571%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g217494217541%_)))))
                          (let () (declare (not safe)) (_%g217494217541%_)))))
                   (_%__match220929220930%_
                    (lambda (_%e217498217631%_
                             _%hd217499217635%_
                             _%tl217500217638%_
                             _%e217501217641%_
                             _%hd217502217645%_
                             _%tl217503217648%_
                             _%e217504217651%_
                             _%hd217505217655%_
                             _%tl217506217658%_
                             _%e217507217661%_
                             _%hd217508217665%_
                             _%tl217509217668%_
                             _%__splice220887220888%_
                             _%target217510217671%_
                             _%tl217512217674%_)
                      (letrec ((_%loop217513217677%_
                                (lambda (_%hd217511217681%_
                                         _%sig217517217684%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd217511217681%_))
                                      (let ((_%e217514217686%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd217511217681%_))))
                                        (let ((_%lp-tl217516217693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217514217686%_)))
                                              (_%lp-hd217515217690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217514217686%_))))
                                          (_%loop217513217677%_
                                           _%lp-tl217516217693%_
                                           (cons _%lp-hd217515217690%_
                                                 _%sig217517217684%_))))
                                      (let ((_%sig217518217696%_
                                             (reverse _%sig217517217684%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl217506217658%_))
                                            (_%__kont220885220886%_
                                             _%sig217518217696%_
                                             _%hd217502217645%_)
                                            (_%__match220941220942%_
                                             _%e217498217631%_
                                             _%hd217499217635%_
                                             _%tl217500217638%_
                                             _%e217501217641%_
                                             _%hd217502217645%_
                                             _%tl217503217648%_)))))))
                        (_%loop217513217677%_ _%target217510217671%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220882220883%_))
                  (let ((_%e217498217631%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx220882220883%_))))
                    (let ((_%tl217500217638%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217498217631%_)))
                          (_%hd217499217635%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217498217631%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl217500217638%_))
                          (let ((_%e217501217641%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl217500217638%_))))
                            (let ((_%tl217503217648%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e217501217641%_)))
                                  (_%hd217502217645%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e217501217641%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl217503217648%_))
                                  (let ((_%e217504217651%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl217503217648%_))))
                                    (let ((_%tl217506217658%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e217504217651%_)))
                                          (_%hd217505217655%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e217504217651%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd217505217655%_))
                                          (let ((_%e217507217661%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd217505217655%_))))
                                            (let ((_%tl217509217668%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e217507217661%_)))
                                                  (_%hd217508217665%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e217507217661%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd217508217665%_))
                                                  (if (let ((__tmp221316
                                                             |gxc[1]#_g221317_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp221316
                                                         _%hd217508217665%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl217509217668%_))
                                                          (let ((_%__splice220887220888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl217509217668%_
                            '0))))
                    (let ((_%tl217512217674%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220887220888%_ '1)))
                          (_%target217510217671%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220887220888%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217512217674%_))
                          (_%__match220929220930%_
                           _%e217498217631%_
                           _%hd217499217635%_
                           _%tl217500217638%_
                           _%e217501217641%_
                           _%hd217502217645%_
                           _%tl217503217648%_
                           _%e217504217651%_
                           _%hd217505217655%_
                           _%tl217506217658%_
                           _%e217507217661%_
                           _%hd217508217665%_
                           _%tl217509217668%_
                           _%__splice220887220888%_
                           _%target217510217671%_
                           _%tl217512217674%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl217503217648%_))
                              (let ((_%__splice220891220892%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl217503217648%_
                                        '0))))
                                (let ((_%tl217529217571%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice220891220892%_
                                          '1)))
                                      (_%target217527217568%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice220891220892%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl217529217571%_))
                                      (_%__match220949220950%_
                                       _%e217498217631%_
                                       _%hd217499217635%_
                                       _%tl217500217638%_
                                       _%e217501217641%_
                                       _%hd217502217645%_
                                       _%tl217503217648%_
                                       _%__splice220891220892%_
                                       _%target217527217568%_
                                       _%tl217529217571%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g217494217541%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g217494217541%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl217503217648%_))
                      (let ((_%__splice220891220892%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl217503217648%_
                                '0))))
                        (let ((_%tl217529217571%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220891220892%_ '1)))
                              (_%target217527217568%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220891220892%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl217529217571%_))
                              (_%__match220949220950%_
                               _%e217498217631%_
                               _%hd217499217635%_
                               _%tl217500217638%_
                               _%e217501217641%_
                               _%hd217502217645%_
                               _%tl217503217648%_
                               _%__splice220891220892%_
                               _%target217527217568%_
                               _%tl217529217571%_)
                              (let ()
                                (declare (not safe))
                                (_%g217494217541%_)))))
                      (let () (declare (not safe)) (_%g217494217541%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl217503217648%_))
                  (let ((_%__splice220891220892%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl217503217648%_
                            '0))))
                    (let ((_%tl217529217571%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220891220892%_ '1)))
                          (_%target217527217568%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220891220892%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217529217571%_))
                          (_%__match220949220950%_
                           _%e217498217631%_
                           _%hd217499217635%_
                           _%tl217500217638%_
                           _%e217501217641%_
                           _%hd217502217645%_
                           _%tl217503217648%_
                           _%__splice220891220892%_
                           _%target217527217568%_
                           _%tl217529217571%_)
                          (let () (declare (not safe)) (_%g217494217541%_)))))
                  (let () (declare (not safe)) (_%g217494217541%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl217503217648%_))
                                                      (let ((_%__splice220891220892%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl217503217648%_
                        '0))))
                (let ((_%tl217529217571%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220891220892%_ '1)))
                      (_%target217527217568%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220891220892%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl217529217571%_))
                      (_%__match220949220950%_
                       _%e217498217631%_
                       _%hd217499217635%_
                       _%tl217500217638%_
                       _%e217501217641%_
                       _%hd217502217645%_
                       _%tl217503217648%_
                       _%__splice220891220892%_
                       _%target217527217568%_
                       _%tl217529217571%_)
                      (let () (declare (not safe)) (_%g217494217541%_)))))
              (let () (declare (not safe)) (_%g217494217541%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl217503217648%_))
                                              (let ((_%__splice220891220892%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl217503217648%_
                                                        '0))))
                                                (let ((_%tl217529217571%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220891220892%_
                                                          '1)))
                                                      (_%target217527217568%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220891220892%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl217529217571%_))
                                                      (_%__match220949220950%_
                                                       _%e217498217631%_
                                                       _%hd217499217635%_
                                                       _%tl217500217638%_
                                                       _%e217501217641%_
                                                       _%hd217502217645%_
                                                       _%tl217503217648%_
                                                       _%__splice220891220892%_
                                                       _%target217527217568%_
                                                       _%tl217529217571%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g217494217541%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g217494217541%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl217503217648%_))
                                      (let ((_%__splice220891220892%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl217503217648%_
                                                '0))))
                                        (let ((_%tl217529217571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220891220892%_
                                                  '1)))
                                              (_%target217527217568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220891220892%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl217529217571%_))
                                              (_%__match220949220950%_
                                               _%e217498217631%_
                                               _%hd217499217635%_
                                               _%tl217500217638%_
                                               _%e217501217641%_
                                               _%hd217502217645%_
                                               _%tl217503217648%_
                                               _%__splice220891220892%_
                                               _%target217527217568%_
                                               _%tl217529217571%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g217494217541%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g217494217541%_))))))
                          (let () (declare (not safe)) (_%g217494217541%_)))))
                  (let () (declare (not safe)) (_%g217494217541%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx218884%_ _%id218886%_)
        (let ((_%proc218890%_
               (let ((__tmp221318
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id218886%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp221318))))
          (if (procedure? _%proc218890%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx218884%_
                 _%id218886%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx218875%_ _%id218877%_)
        (let ((_%klass218881%_
               (let ((__tmp221319
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id218877%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp221319))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass218881%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx218875%_
                 _%id218877%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx218125%_ _%proc218127%_ _%sig218128%_)
        (letrec ((_%signature-arity218130%_
                  (lambda (_%args218807%_)
                    (let _%loop218810%_ ((_%rest218813%_ _%args218807%_)
                                         (_%count218815%_ '0))
                      (let* ((_%rest218816218827%_ _%rest218813%_)
                             (_%E218820218833%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest218816218827%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K218823218864%_
                               (lambda (_%rest218861%_)
                                 (_%loop218810%_
                                  _%rest218861%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count218815%_ '1)))))
                              (_%K218822218853%_ (lambda () _%count218815%_))
                              (_%K218821218841%_
                               (lambda () (cons _%count218815%_ '()))))
                          (let ((_%try-match218818218857%_
                                 (lambda ()
                                   (if (null? _%rest218816218827%_)
                                       (_%K218822218853%_)
                                       (_%K218821218841%_)))))
                            (if (pair? _%rest218816218827%_)
                                (let* ((_%tl218825218868%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest218816218827%_)))
                                       (_%rest218872%_ _%tl218825218868%_))
                                  (_%K218823218864%_ _%rest218872%_))
                                (_%try-match218818218857%_))))))))
                 (_%make-signature218132%_
                  (lambda (_%args218689%_
                           _%return218691%_
                           _%effect218692%_
                           _%unchecked218693%_)
                    (let ((__tmp221320
                           (lambda (_%g218694218696%_)
                             (|gxc[1]#verify-class!|
                              _%ctx218125%_
                              _%g218694218696%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp221320 _%args218689%_))
                    (|gxc[1]#verify-class!| _%ctx218125%_ _%return218691%_)
                    (if _%unchecked218693%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx218125%_
                         _%unchecked218693%_)
                        '#!void)
                    (let ((_%arity218700%_
                           (_%signature-arity218130%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args218689%_)))))
                      (if _%effect218692%_
                          (let ((_%effect218703%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect218692%_))))
                            (if (and (list? _%effect218703%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect218703%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx218125%_
                                   _%proc218127%_
                                   _%effect218703%_))))
                          '#!void)
                      (cons _%arity218700%_
                            (cons (let* ((_%g218706218729%_
                                          (lambda (_%g218707218725%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g218707218725%_))))
                                         (_%g218705218803%_
                                          (lambda (_%g218707218733%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g218707218733%_))
                                                (let ((_%e218712218736%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g218707218733%_))))
                                                  (let ((_%hd218713218740%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e218712218736%_)))
                                                        (_%tl218714218743%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e218712218736%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl218714218743%_))
                                                        (let ((_%e218715218746%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl218714218743%_))))
                  (let ((_%hd218716218750%_
                         (let ()
                           (declare (not safe))
                           (##car _%e218715218746%_)))
                        (_%tl218717218753%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e218715218746%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl218717218753%_))
                        (let ((_%e218718218756%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl218717218753%_))))
                          (let ((_%hd218719218760%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e218718218756%_)))
                                (_%tl218720218763%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e218718218756%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl218720218763%_))
                                (let ((_%e218721218766%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl218720218763%_))))
                                  (let ((_%hd218722218770%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e218721218766%_)))
                                        (_%tl218723218773%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e218721218766%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl218723218773%_))
                                        ((lambda (_%g218708218776%_
                                                  _%g218709218778%_
                                                  _%g218710218779%_
                                                  _%g218711218780%_)
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
                           (cons _%g218711218780%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g218710218779%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g218709218778%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g218708218776%_ '()))
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
                                         _%hd218722218770%_
                                         _%hd218719218760%_
                                         _%hd218716218750%_
                                         _%hd218713218740%_)
                                        (_%g218706218729%_
                                         _%g218707218733%_))))
                                (_%g218706218729%_ _%g218707218733%_))))
                        (_%g218706218729%_ _%g218707218733%_))))
                (_%g218706218729%_ _%g218707218733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g218706218729%_
                                                 _%g218707218733%_)))))
                                    (_%g218705218803%_
                                     (list _%args218689%_
                                           _%return218691%_
                                           _%effect218692%_
                                           _%unchecked218693%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx218125%_ _%proc218127%_)
          (let* ((_%__stx220960220961%_ _%sig218128%_)
                 (_%g218139218242%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx220960220961%_)))))
            (let ((_%__kont220963220964%_
                   (lambda (_%g218141218670%_ _%g218142218672%_)
                     (_%make-signature218132%_
                      _%g218142218672%_
                      _%g218141218670%_
                      '#f
                      '#f)))
                  (_%__kont220965220966%_
                   (lambda (_%g218149218621%_
                            _%g218150218623%_
                            _%g218151218624%_)
                     (_%make-signature218132%_
                      _%g218151218624%_
                      _%g218150218623%_
                      _%g218149218621%_
                      '#f)))
                  (_%__kont220967220968%_
                   (lambda (_%g218165218545%_
                            _%g218166218547%_
                            _%g218167218548%_)
                     (_%make-signature218132%_
                      _%g218167218548%_
                      _%g218166218547%_
                      _%g218165218545%_
                      (let ((__tmp221321
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc218127%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp221321)))))
                  (_%__kont220969220970%_
                   (lambda (_%g218185218451%_
                            _%g218186218453%_
                            _%g218187218454%_
                            _%g218188218455%_)
                     (_%make-signature218132%_
                      _%g218188218455%_
                      _%g218187218454%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g218185218451%_)))))
                  (_%__kont220971220972%_
                   (lambda (_%g218209218358%_ _%g218210218360%_)
                     (_%make-signature218132%_
                      _%g218210218360%_
                      _%g218209218358%_
                      '#f
                      (let ((__tmp221322
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc218127%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp221322)))))
                  (_%__kont220973220974%_
                   (lambda (_%g218221218293%_
                            _%g218222218295%_
                            _%g218223218296%_)
                     (_%make-signature218132%_
                      _%g218223218296%_
                      _%g218222218295%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g218221218293%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220960220961%_))
                  (let ((_%e218143218650%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx220960220961%_))))
                    (let ((_%tl218145218657%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e218143218650%_)))
                          (_%hd218144218654%_
                           (let ()
                             (declare (not safe))
                             (##car _%e218143218650%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl218145218657%_))
                          (let ((_%e218146218660%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl218145218657%_))))
                            (let ((_%tl218148218667%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218146218660%_)))
                                  (_%hd218147218664%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218146218660%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl218148218667%_))
                                  (_%__kont220963220964%_
                                   _%hd218147218664%_
                                   _%hd218144218654%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl218148218667%_))
                                      (let ((_%e218158218597%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl218148218667%_))))
                                        (let ((_%tl218160218604%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218158218597%_)))
                                              (_%hd218159218601%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218158218597%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd218159218601%_))
                                              (let ((_%e218161218607%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd218159218601%_))))
                                                (if (equal? _%e218161218607%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl218160218604%_))
                                                        (let ((_%e218162218611%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl218160218604%_))))
                  (let ((_%tl218164218618%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e218162218611%_)))
                        (_%hd218163218615%_
                         (let ()
                           (declare (not safe))
                           (##car _%e218162218611%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl218164218618%_))
                        (_%__kont220965220966%_
                         _%hd218163218615%_
                         _%hd218147218664%_
                         _%hd218144218654%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl218164218618%_))
                            (let ((_%e218181218531%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl218164218618%_))))
                              (let ((_%tl218183218538%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e218181218531%_)))
                                    (_%hd218182218535%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e218181218531%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd218182218535%_))
                                    (let ((_%e218184218541%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd218182218535%_))))
                                      (if (equal? _%e218184218541%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218183218538%_))
                                              (_%__kont220967220968%_
                                               _%hd218163218615%_
                                               _%hd218147218664%_
                                               _%hd218144218654%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl218183218538%_))
                                                  (let ((_%e218206218441%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl218183218538%_))))
                                                    (let ((_%tl218208218448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e218206218441%_)))
                                                          (_%hd218207218445%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e218206218441%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl218208218448%_))
                                                          (_%__kont220969220970%_
                                                           _%hd218207218445%_
                                                           _%hd218163218615%_
                                                           _%hd218147218664%_
                                                           _%hd218144218654%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g218139218242%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g218139218242%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g218139218242%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g218139218242%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g218139218242%_))))))
                (let () (declare (not safe)) (_%g218139218242%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e218161218607%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl218160218604%_))
                                                            (_%__kont220971220972%_
                                                             _%hd218147218664%_
                                                             _%hd218144218654%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl218160218604%_))
                        (let ((_%e218234218283%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl218160218604%_))))
                          (let ((_%tl218236218290%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e218234218283%_)))
                                (_%hd218235218287%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e218234218283%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl218236218290%_))
                                (_%__kont220973220974%_
                                 _%hd218235218287%_
                                 _%hd218147218664%_
                                 _%hd218144218654%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g218139218242%_)))))
                        (let () (declare (not safe)) (_%g218139218242%_))))
                (let () (declare (not safe)) (_%g218139218242%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g218139218242%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g218139218242%_))))))
                          (let () (declare (not safe)) (_%g218139218242%_)))))
                  (let () (declare (not safe)) (_%g218139218242%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig217736%_)
        (let* ((_%g217739217819%_
                (lambda (_%g217740217815%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g217740217815%_))))
               (_%g217738218121%_
                (lambda (_%g217740217823%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g217740217823%_))
                      (let ((_%e217746217826%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g217740217823%_))))
                        (let ((_%hd217747217830%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217746217826%_)))
                              (_%tl217748217833%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217746217826%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217748217833%_))
                              (let ((_%e217749217836%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl217748217833%_))))
                                (let ((_%hd217750217840%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217749217836%_)))
                                      (_%tl217751217843%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217749217836%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd217750217840%_))
                                      (let ((_%e217752217846%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd217750217840%_))))
                                        (if (equal? _%e217752217846%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl217751217843%_))
                                                (let ((_%e217753217850%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl217751217843%_))))
                                                  (let ((_%hd217754217854%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e217753217850%_)))
                                                        (_%tl217755217857%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e217753217850%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd217754217854%_))
                                                        (let ((_%e217756217860%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd217754217854%_))))
                  (let ((_%hd217757217864%_
                         (let ()
                           (declare (not safe))
                           (##car _%e217756217860%_)))
                        (_%tl217758217867%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e217756217860%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd217757217864%_))
                        (if (let ((__tmp221323 |gxc[1]#_g221324_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp221323
                               _%hd217757217864%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl217758217867%_))
                                (let ((_%e217759217870%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl217758217867%_))))
                                  (let ((_%hd217760217874%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e217759217870%_)))
                                        (_%tl217761217877%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e217759217870%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl217761217877%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl217755217857%_))
                                            (let ((_%e217762217880%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl217755217857%_))))
                                              (let ((_%hd217763217884%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217762217880%_)))
                                                    (_%tl217764217887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217762217880%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd217763217884%_))
                                                    (let ((_%e217765217890%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd217763217884%_))))
                                                      (if (equal? _%e217765217890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl217764217887%_))
                      (let ((_%e217766217894%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl217764217887%_))))
                        (let ((_%hd217767217898%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217766217894%_)))
                              (_%tl217768217901%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217766217894%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd217767217898%_))
                              (let ((_%e217769217904%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd217767217898%_))))
                                (let ((_%hd217770217908%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217769217904%_)))
                                      (_%tl217771217911%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217769217904%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd217770217908%_))
                                      (if (let ((__tmp221325
                                                 |gxc[1]#_g221326_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp221325
                                             _%hd217770217908%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl217771217911%_))
                                              (let ((_%e217772217914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl217771217911%_))))
                                                (let ((_%hd217773217918%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e217772217914%_)))
                                                      (_%tl217774217921%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e217772217914%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl217774217921%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl217768217901%_))
                                                          (let ((_%e217775217924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl217768217901%_))))
                    (let ((_%hd217776217928%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217775217924%_)))
                          (_%tl217777217931%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217775217924%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd217776217928%_))
                          (let ((_%e217778217934%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd217776217928%_))))
                            (if (equal? _%e217778217934%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl217777217931%_))
                                    (let ((_%e217779217938%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl217777217931%_))))
                                      (let ((_%hd217780217942%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e217779217938%_)))
                                            (_%tl217781217945%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e217779217938%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd217780217942%_))
                                            (let ((_%e217782217948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd217780217942%_))))
                                              (let ((_%hd217783217952%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217782217948%_)))
                                                    (_%tl217784217955%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217782217948%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd217783217952%_))
                                                    (if (let ((__tmp221327
                                                               |gxc[1]#_g221328_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp221327
                                                           _%hd217783217952%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl217784217955%_))
                                                            (let ((_%e217785217958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl217784217955%_))))
                      (let ((_%hd217786217962%_
                             (let ()
                               (declare (not safe))
                               (##car _%e217785217958%_)))
                            (_%tl217787217965%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e217785217958%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl217787217965%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl217781217945%_))
                                (let ((_%e217788217968%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl217781217945%_))))
                                  (let ((_%hd217789217972%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e217788217968%_)))
                                        (_%tl217790217975%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e217788217968%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd217789217972%_))
                                        (let ((_%e217791217978%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd217789217972%_))))
                                          (if (equal? _%e217791217978%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl217790217975%_))
                                                  (let ((_%e217792217982%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl217790217975%_))))
                                                    (let ((_%hd217793217986%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e217792217982%_)))
                                                          (_%tl217794217989%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e217792217982%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd217793217986%_))
                                                          (let ((_%e217795217992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd217793217986%_))))
                    (let ((_%hd217796217996%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217795217992%_)))
                          (_%tl217797217999%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217795217992%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd217796217996%_))
                          (if (let ((__tmp221329 |gxc[1]#_g221330_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp221329
                                 _%hd217796217996%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl217797217999%_))
                                  (let ((_%e217798218002%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl217797217999%_))))
                                    (let ((_%hd217799218006%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e217798218002%_)))
                                          (_%tl217800218009%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e217798218002%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl217800218009%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl217794217989%_))
                                              (let ((_%e217801218012%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl217794217989%_))))
                                                (let ((_%hd217802218016%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e217801218012%_)))
                                                      (_%tl217803218019%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e217801218012%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd217802218016%_))
                                                      (let ((_%e217804218022%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd217802218016%_))))
                (if (equal? _%e217804218022%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl217803218019%_))
                        (let ((_%e217805218026%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl217803218019%_))))
                          (let ((_%hd217806218030%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e217805218026%_)))
                                (_%tl217807218033%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e217805218026%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd217806218030%_))
                                (let ((_%e217808218036%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd217806218030%_))))
                                  (let ((_%hd217809218040%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e217808218036%_)))
                                        (_%tl217810218043%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e217808218036%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd217809218040%_))
                                        (if (let ((__tmp221331
                                                   |gxc[1]#_g221332_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp221331
                                               _%hd217809218040%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl217810218043%_))
                                                (let ((_%e217811218046%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl217810218043%_))))
                                                  (let ((_%hd217812218050%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e217811218046%_)))
                                                        (_%tl217813218053%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e217811218046%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl217813218053%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl217807218033%_))
                                                            ((lambda (_%g217741218056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g217742218058%_
                              _%g217743218059%_
                              _%g217744218060%_
                              _%g217745218061%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g217742218058%_))
                           (cons _%g217742218058%_
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
                       (cons _%g217744218060%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g217741218056%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd217812218050%_
                     _%hd217799218006%_
                     _%hd217786217962%_
                     _%hd217773217918%_
                     _%hd217760217874%_)
                    (_%g217739217819%_ _%g217740217823%_))
                (_%g217739217819%_ _%g217740217823%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g217739217819%_
                                                 _%g217740217823%_))
                                            (_%g217739217819%_
                                             _%g217740217823%_))
                                        (_%g217739217819%_
                                         _%g217740217823%_))))
                                (_%g217739217819%_ _%g217740217823%_))))
                        (_%g217739217819%_ _%g217740217823%_))
                    (_%g217739217819%_ _%g217740217823%_)))
              (_%g217739217819%_ _%g217740217823%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g217739217819%_
                                               _%g217740217823%_))
                                          (_%g217739217819%_
                                           _%g217740217823%_))))
                                  (_%g217739217819%_ _%g217740217823%_))
                              (_%g217739217819%_ _%g217740217823%_))
                          (_%g217739217819%_ _%g217740217823%_))))
                  (_%g217739217819%_ _%g217740217823%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g217739217819%_
                                                   _%g217740217823%_))
                                              (_%g217739217819%_
                                               _%g217740217823%_)))
                                        (_%g217739217819%_
                                         _%g217740217823%_))))
                                (_%g217739217819%_ _%g217740217823%_))
                            (_%g217739217819%_ _%g217740217823%_))))
                    (_%g217739217819%_ _%g217740217823%_))
                (_%g217739217819%_ _%g217740217823%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g217739217819%_
                                                     _%g217740217823%_))))
                                            (_%g217739217819%_
                                             _%g217740217823%_))))
                                    (_%g217739217819%_ _%g217740217823%_))
                                (_%g217739217819%_ _%g217740217823%_)))
                          (_%g217739217819%_ _%g217740217823%_))))
                  (_%g217739217819%_ _%g217740217823%_))
              (_%g217739217819%_ _%g217740217823%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g217739217819%_
                                               _%g217740217823%_))
                                          (_%g217739217819%_
                                           _%g217740217823%_))
                                      (_%g217739217819%_ _%g217740217823%_))))
                              (_%g217739217819%_ _%g217740217823%_))))
                      (_%g217739217819%_ _%g217740217823%_))
                  (_%g217739217819%_ _%g217740217823%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g217739217819%_
                                                     _%g217740217823%_))))
                                            (_%g217739217819%_
                                             _%g217740217823%_))
                                        (_%g217739217819%_
                                         _%g217740217823%_))))
                                (_%g217739217819%_ _%g217740217823%_))
                            (_%g217739217819%_ _%g217740217823%_))
                        (_%g217739217819%_ _%g217740217823%_))))
                (_%g217739217819%_ _%g217740217823%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g217739217819%_
                                                 _%g217740217823%_))
                                            (_%g217739217819%_
                                             _%g217740217823%_)))
                                      (_%g217739217819%_ _%g217740217823%_))))
                              (_%g217739217819%_ _%g217740217823%_))))
                      (_%g217739217819%_ _%g217740217823%_)))))
          (_%g217738218121%_ _%sig217736%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx218893%_)
        (let* ((_%g218896218914%_
                (lambda (_%g218897218910%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218897218910%_))))
               (_%g218895218969%_
                (lambda (_%g218897218918%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218897218918%_))
                      (let ((_%e218900218921%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g218897218918%_))))
                        (let ((_%hd218901218925%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218900218921%_)))
                              (_%tl218902218928%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218900218921%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl218902218928%_))
                              (let ((_%e218903218931%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl218902218928%_))))
                                (let ((_%hd218904218935%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e218903218931%_)))
                                      (_%tl218905218938%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e218903218931%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl218905218938%_))
                                      (let ((_%e218906218941%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl218905218938%_))))
                                        (let ((_%hd218907218945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218906218941%_)))
                                              (_%tl218908218948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218906218941%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218908218948%_))
                                              ((lambda (_%g218898218951%_
                                                        _%g218899218953%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g218899218953%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g218898218951%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx218893%_
                                                        _%g218899218953%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx218893%_
                                                        _%g218898218951%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g218899218953%_
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
                                                   (cons _%g218898218951%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g218896218914%_
                                                      _%g218897218918%_)))
                                               _%hd218907218945%_
                                               _%hd218904218935%_)
                                              (_%g218896218914%_
                                               _%g218897218918%_))))
                                      (_%g218896218914%_ _%g218897218918%_))))
                              (_%g218896218914%_ _%g218897218918%_))))
                      (_%g218896218914%_ _%g218897218918%_)))))
          (_%g218895218969%_ _%stx218893%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx218973%_)
        (let* ((_%g218976219000%_
                (lambda (_%g218977218996%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218977218996%_))))
               (_%g218975219281%_
                (lambda (_%g218977219004%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218977219004%_))
                      (let ((_%e218980219007%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g218977219004%_))))
                        (let ((_%hd218981219011%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218980219007%_)))
                              (_%tl218982219014%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218980219007%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl218982219014%_))
                              (let ((_%e218983219017%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl218982219014%_))))
                                (let ((_%hd218984219021%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e218983219017%_)))
                                      (_%tl218985219024%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e218983219017%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl218985219024%_))
                                      (let ((_g221333_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl218985219024%_
                                                '0))))
                                        (begin
                                          (let ((_g221334_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g221333_)
                                                       (##values-length
                                                        _g221333_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g221334_ 2)))
                                                (error "Context expects 2 values"
                                                       _g221334_)))
                                          (let ((_%target218986219027%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g221333_ 0)))
                                                (_%tl218988219030%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g221333_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl218988219030%_))
                                                (letrec ((_%loop218989219033%_
                                                          (lambda (_%hd218987219037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature218993219040%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd218987219037%_))
                        (let ((_%e218990219042%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd218987219037%_))))
                          (let ((_%lp-hd218991219046%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e218990219042%_)))
                                (_%lp-tl218992219049%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e218990219042%_))))
                            (_%loop218989219033%_
                             _%lp-tl218992219049%_
                             (cons _%lp-hd218991219046%_
                                   _%signature218993219040%_))))
                        (let ((_%signature218994219052%_
                               (reverse _%signature218993219040%_)))
                          ((lambda (_%g218978219055%_ _%g218979219057%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g218979219057%_))
                                 (let* ((_%g219075219090%_
                                         (lambda (_%g219076219086%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g219076219086%_))))
                                        (_%g219074219269%_
                                         (lambda (_%g219076219094%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g219076219094%_))
                                               (let ((_%e219079219097%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g219076219094%_))))
                                                 (let ((_%hd219080219101%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219079219097%_)))
                                                       (_%tl219081219104%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219079219097%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl219081219104%_))
                                                       (let ((_%e219082219107%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl219081219104%_))))
                 (let ((_%hd219083219111%_
                        (let ()
                          (declare (not safe))
                          (##car _%e219082219107%_)))
                       (_%tl219084219114%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e219082219107%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl219084219114%_))
                       ((lambda (_%g219077219117%_ _%g219078219119%_)
                          (let* ((_%g219135219143%_
                                  (lambda (_%g219136219139%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g219136219139%_))))
                                 (_%g219134219265%_
                                  (lambda (_%g219136219147%_)
                                    ((lambda (_%g219137219150%_)
                                       (let* ((_%unchecked219163%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g219077219117%_))
                                              (_%g219166219174%_
                                               (lambda (_%g219167219170%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g219167219170%_))))
                                              (_%g219165219197%_
                                               (lambda (_%g219167219178%_)
                                                 ((lambda (_%g219168219181%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g219137219150%_
                                                                (cons _%g219168219181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g219167219178%_))))
                                         (_%g219165219197%_
                                          (if _%unchecked219163%_
                                              (let* ((_%g219201219216%_
                                                      (lambda (_%g219202219212%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g219202219212%_))))
                                                     (_%g219200219261%_
                                                      (lambda (_%g219202219220%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g219202219220%_))
                                                            (let ((_%e219205219223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g219202219220%_))))
                      (let ((_%hd219206219227%_
                             (let ()
                               (declare (not safe))
                               (##car _%e219205219223%_)))
                            (_%tl219207219230%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e219205219223%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl219207219230%_))
                            (let ((_%e219208219233%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl219207219230%_))))
                              (let ((_%hd219209219237%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e219208219233%_)))
                                    (_%tl219210219240%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e219208219233%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl219210219240%_))
                                    ((lambda (_%g219203219243%_
                                              _%g219204219245%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g219204219245%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g219078219119%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g219203219243%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd219209219237%_
                                     _%hd219206219227%_)
                                    (_%g219201219216%_ _%g219202219220%_))))
                            (_%g219201219216%_ _%g219202219220%_))))
                    (_%g219201219216%_ _%g219202219220%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g219200219261%_
                                                 _%unchecked219163%_))
                                              '(begin)))))
                                     _%g219136219147%_))))
                            (_%g219134219265%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g218979219057%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g219078219119%_ '()))
                   (cons '#f (cons 'signature: (cons _%g219077219117%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd219083219111%_
                        _%hd219080219101%_)
                       (_%g219075219090%_ _%g219076219094%_))))
               (_%g219075219090%_ _%g219076219094%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219075219090%_
                                                _%g219076219094%_)))))
                                   (_%g219074219269%_
                                    (|gxc[1]#parse-signature|
                                     _%stx218973%_
                                     _%g218979219057%_
                                     (let ((__tmp221335
                                            (lambda (_%g219272219275%_
                                                     _%g219273219278%_)
                                              (cons _%g219272219275%_
                                                    _%g219273219278%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp221335
                                        '()
                                        _%g218978219055%_)))))
                                 (_%g218976219000%_ _%g218977219004%_)))
                           _%signature218994219052%_
                           _%hd218984219021%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop218989219033%_
                                                   _%target218986219027%_
                                                   '()))
                                                (_%g218976219000%_
                                                 _%g218977219004%_)))))
                                      (_%g218976219000%_ _%g218977219004%_))))
                              (_%g218976219000%_ _%g218977219004%_))))
                      (_%g218976219000%_ _%g218977219004%_)))))
          (_%g218975219281%_ _%stx218973%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx219286%_)
        (let* ((_%g219289219313%_
                (lambda (_%g219290219309%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219290219309%_))))
               (_%g219288220188%_
                (lambda (_%g219290219317%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219290219317%_))
                      (let ((_%e219293219320%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g219290219317%_))))
                        (let ((_%hd219294219324%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219293219320%_)))
                              (_%tl219295219327%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219293219320%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl219295219327%_))
                              (let ((_%e219296219330%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl219295219327%_))))
                                (let ((_%hd219297219334%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219296219330%_)))
                                      (_%tl219298219337%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219296219330%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl219298219337%_))
                                      (let ((_g221336_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl219298219337%_
                                                '0))))
                                        (begin
                                          (let ((_g221337_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g221336_)
                                                       (##values-length
                                                        _g221336_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g221337_ 2)))
                                                (error "Context expects 2 values"
                                                       _g221337_)))
                                          (let ((_%target219299219340%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g221336_ 0)))
                                                (_%tl219301219343%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g221336_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl219301219343%_))
                                                (letrec ((_%loop219302219346%_
                                                          (lambda (_%hd219300219350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature219306219353%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd219300219350%_))
                        (let ((_%e219303219355%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd219300219350%_))))
                          (let ((_%lp-hd219304219359%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e219303219355%_)))
                                (_%lp-tl219305219362%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e219303219355%_))))
                            (_%loop219302219346%_
                             _%lp-tl219305219362%_
                             (cons _%lp-hd219304219359%_
                                   _%case-signature219306219353%_))))
                        (let ((_%case-signature219307219365%_
                               (reverse _%case-signature219306219353%_)))
                          ((lambda (_%g219291219368%_ _%g219292219370%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g219292219370%_))
                                 (let* ((_%signatures219401%_
                                         (map (lambda (_%g219387219389%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx219286%_
                                                 _%g219292219370%_
                                                 _%g219387219389%_))
                                              (let ((__tmp221338
                                                     (lambda (_%g219392219395%_
                                                              _%g219393219398%_)
                                                       (cons _%g219392219395%_
                                                             _%g219393219398%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp221338
                                                 '()
                                                 _%g219291219368%_))))
                                        (_%g219404219430%_
                                         (lambda (_%g219405219426%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g219405219426%_))))
                                        (_%g219403220184%_
                                         (lambda (_%g219405219434%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g219405219434%_))
                                               (let ((_g221339_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g219405219434%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g221340_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g221339_)
                        (##values-length _g221339_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g221340_ 2)))
                 (error "Context expects 2 values" _g221340_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target219408219437%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g221339_
                                                             0)))
                                                         (_%tl219410219440%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g221339_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl219410219440%_))
                                                         (letrec ((_%loop219411219443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd219409219447%_
                                    _%sig219415219450%_
                                    _%arity219416219451%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd219409219447%_))
                                 (let ((_%e219412219453%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd219409219447%_))))
                                   (let ((_%lp-hd219413219457%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219412219453%_)))
                                         (_%lp-tl219414219460%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219412219453%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd219413219457%_))
                                         (let ((_%e219419219463%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd219413219457%_))))
                                           (let ((_%hd219420219467%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e219419219463%_)))
                                                 (_%tl219421219470%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e219419219463%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl219421219470%_))
                                                 (let ((_%e219422219473%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl219421219470%_))))
                                                   (let ((_%hd219423219477%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e219422219473%_)))
                                                         (_%tl219424219480%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e219422219473%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl219424219480%_))
                                                         (_%loop219411219443%_
                                                          _%lp-tl219414219460%_
                                                          (cons _%hd219423219477%_
                                                                _%sig219415219450%_)
                                                          (cons _%hd219420219467%_
                                                                _%arity219416219451%_))
                                                         (_%g219404219430%_
                                                          _%g219405219434%_))))
                                                 (_%g219404219430%_
                                                  _%g219405219434%_))))
                                         (_%g219404219430%_
                                          _%g219405219434%_))))
                                 (let ((_%sig219417219483%_
                                        (reverse _%sig219415219450%_))
                                       (_%arity219418219485%_
                                        (reverse _%arity219416219451%_)))
                                   ((lambda (_%g219406219487%_
                                             _%g219407219489%_)
                                      (let* ((_%g219506219514%_
                                              (lambda (_%g219507219510%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g219507219510%_))))
                                             (_%g219505220169%_
                                              (lambda (_%g219507219518%_)
                                                ((lambda (_%g219508219521%_)
                                                   (let* ((_%g219534219542%_
                                                           (lambda (_%g219535219538%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g219535219538%_))))
                  (_%g219533219564%_
                   (lambda (_%g219535219546%_)
                     ((lambda (_%g219536219549%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g219508219521%_
                                    (cons _%g219536219549%_ '()))))
                      _%g219535219546%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g219533219564%_
                                                      (let ((_g221341_
                                                             (let _%loop219568%_ ((_%rest219571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures219401%_)
                                          (_%unchecked-proc219573%_ '#f)
                                          (_%unchecked-clauses219574%_ '()))
                       (let* ((_%rest219575219583%_ _%rest219571%_)
                              (_%else219577219595%_
                               (lambda ()
                                 (values _%unchecked-proc219573%_
                                         (reverse!
                                          _%unchecked-clauses219574%_))))
                              (_%K219579220036%_
                               (lambda (_%rest219599%_ _%hd219601%_)
                                 (let* ((_%g219603219690%_
                                         (lambda (_%g219604219686%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g219604219686%_))))
                                        (_%g219602220032%_
                                         (lambda (_%g219604219694%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g219604219694%_))
                                               (let ((_%e219611219697%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g219604219694%_))))
                                                 (let ((_%hd219612219701%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219611219697%_)))
                                                       (_%tl219613219704%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219611219697%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl219613219704%_))
                                                       (let ((_%e219614219707%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl219613219704%_))))
                 (let ((_%hd219615219711%_
                        (let ()
                          (declare (not safe))
                          (##car _%e219614219707%_)))
                       (_%tl219616219714%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e219614219707%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd219615219711%_))
                       (let ((_%e219617219717%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd219615219711%_))))
                         (let ((_%hd219618219721%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e219617219717%_)))
                               (_%tl219619219724%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e219617219717%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl219619219724%_))
                               (let ((_%e219620219727%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl219619219724%_))))
                                 (let ((_%hd219621219731%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e219620219727%_)))
                                       (_%tl219622219734%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e219620219727%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd219621219731%_))
                                       (let ((_%e219623219737%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd219621219731%_))))
                                         (if (equal? _%e219623219737%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl219622219734%_))
                                                 (let ((_%e219624219741%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl219622219734%_))))
                                                   (let ((_%hd219625219745%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e219624219741%_)))
                                                         (_%tl219626219748%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e219624219741%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd219625219745%_))
                                                         (let ((_%e219627219751%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd219625219745%_))))
                   (let ((_%hd219628219755%_
                          (let ()
                            (declare (not safe))
                            (##car _%e219627219751%_)))
                         (_%tl219629219758%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e219627219751%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd219628219755%_))
                         (if (let ((__tmp221343 |gxc[1]#_g221344_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp221343
                                _%hd219628219755%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl219629219758%_))
                                 (let ((_%e219630219761%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl219629219758%_))))
                                   (let ((_%hd219631219765%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219630219761%_)))
                                         (_%tl219632219768%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219630219761%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl219632219768%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl219626219748%_))
                                             (let ((_%e219633219771%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl219626219748%_))))
                                               (let ((_%hd219634219775%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e219633219771%_)))
                                                     (_%tl219635219778%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e219633219771%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd219634219775%_))
                                                     (let ((_%e219636219781%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd219634219775%_))))
                                                       (if (equal? _%e219636219781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl219635219778%_))
                       (let ((_%e219637219785%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl219635219778%_))))
                         (let ((_%hd219638219789%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e219637219785%_)))
                               (_%tl219639219792%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e219637219785%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd219638219789%_))
                               (let ((_%e219640219795%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd219638219789%_))))
                                 (let ((_%hd219641219799%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e219640219795%_)))
                                       (_%tl219642219802%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e219640219795%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd219641219799%_))
                                       (if (let ((__tmp221345
                                                  |gxc[1]#_g221346_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp221345
                                              _%hd219641219799%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl219642219802%_))
                                               (let ((_%e219643219805%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl219642219802%_))))
                                                 (let ((_%hd219644219809%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219643219805%_)))
                                                       (_%tl219645219812%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219643219805%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl219645219812%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl219639219792%_))
                                                           (let ((_%e219646219815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl219639219792%_))))
                     (let ((_%hd219647219819%_
                            (let ()
                              (declare (not safe))
                              (##car _%e219646219815%_)))
                           (_%tl219648219822%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e219646219815%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd219647219819%_))
                           (let ((_%e219649219825%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd219647219819%_))))
                             (if (equal? _%e219649219825%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl219648219822%_))
                                     (let ((_%e219650219829%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl219648219822%_))))
                                       (let ((_%hd219651219833%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e219650219829%_)))
                                             (_%tl219652219836%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e219650219829%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd219651219833%_))
                                             (let ((_%e219653219839%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd219651219833%_))))
                                               (let ((_%hd219654219843%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e219653219839%_)))
                                                     (_%tl219655219846%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e219653219839%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd219654219843%_))
                                                     (if (let ((__tmp221347
                                                                |gxc[1]#_g221348_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp221347
                                                            _%hd219654219843%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl219655219846%_))
                     (let ((_%e219656219849%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl219655219846%_))))
                       (let ((_%hd219657219853%_
                              (let ()
                                (declare (not safe))
                                (##car _%e219656219849%_)))
                             (_%tl219658219856%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e219656219849%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl219658219856%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl219652219836%_))
                                 (let ((_%e219659219859%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl219652219836%_))))
                                   (let ((_%hd219660219863%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219659219859%_)))
                                         (_%tl219661219866%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219659219859%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd219660219863%_))
                                         (let ((_%e219662219869%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd219660219863%_))))
                                           (if (equal? _%e219662219869%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl219661219866%_))
                                                   (let ((_%e219663219873%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl219661219866%_))))
                                                     (let ((_%hd219664219877%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e219663219873%_)))
                                                           (_%tl219665219880%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e219663219873%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd219664219877%_))
                                                           (let ((_%e219666219883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd219664219877%_))))
                     (let ((_%hd219667219887%_
                            (let ()
                              (declare (not safe))
                              (##car _%e219666219883%_)))
                           (_%tl219668219890%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e219666219883%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd219667219887%_))
                           (if (let ((__tmp221349 |gxc[1]#_g221350_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp221349
                                  _%hd219667219887%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl219668219890%_))
                                   (let ((_%e219669219893%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl219668219890%_))))
                                     (let ((_%hd219670219897%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e219669219893%_)))
                                           (_%tl219671219900%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e219669219893%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl219671219900%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl219665219880%_))
                                               (let ((_%e219672219903%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl219665219880%_))))
                                                 (let ((_%hd219673219907%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219672219903%_)))
                                                       (_%tl219674219910%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219672219903%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd219673219907%_))
                                                       (let ((_%e219675219913%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd219673219907%_))))
                 (if (equal? _%e219675219913%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl219674219910%_))
                         (let ((_%e219676219917%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl219674219910%_))))
                           (let ((_%hd219677219921%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e219676219917%_)))
                                 (_%tl219678219924%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e219676219917%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd219677219921%_))
                                 (let ((_%e219679219927%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd219677219921%_))))
                                   (let ((_%hd219680219931%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219679219927%_)))
                                         (_%tl219681219934%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219679219927%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd219680219931%_))
                                         (if (let ((__tmp221351
                                                    |gxc[1]#_g221352_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp221351
                                                _%hd219680219931%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl219681219934%_))
                                                 (let ((_%e219682219937%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl219681219934%_))))
                                                   (let ((_%hd219683219941%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e219682219937%_)))
                                                         (_%tl219684219944%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e219682219937%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl219684219944%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl219678219924%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl219616219714%_))
                         ((lambda (_%g219605219947%_
                                   _%g219606219949%_
                                   _%g219607219950%_
                                   _%g219608219951%_
                                   _%g219609219952%_
                                   _%g219610219953%_)
                            (let ((_%clause220024%_
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
                                                     (cons _%g219610219953%_
                                                           '()))
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
                                                 (cons _%g219608219951%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g219605219947%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked220026%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g219606219949%_))))
                              (_%loop219568%_
                               _%rest219599%_
                               (let ((_%$e220028%_ _%unchecked220026%_))
                                 (if _%$e220028%_
                                     _%$e220028%_
                                     _%unchecked-proc219573%_))
                               (cons _%clause220024%_
                                     _%unchecked-clauses219574%_))))
                          _%hd219683219941%_
                          _%hd219670219897%_
                          _%hd219657219853%_
                          _%hd219644219809%_
                          _%hd219631219765%_
                          _%hd219612219701%_)
                         (_%g219603219690%_ _%g219604219694%_))
                     (_%g219603219690%_ _%g219604219694%_))
                 (_%g219603219690%_ _%g219604219694%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g219603219690%_
                                                  _%g219604219694%_))
                                             (_%g219603219690%_
                                              _%g219604219694%_))
                                         (_%g219603219690%_
                                          _%g219604219694%_))))
                                 (_%g219603219690%_ _%g219604219694%_))))
                         (_%g219603219690%_ _%g219604219694%_))
                     (_%g219603219690%_ _%g219604219694%_)))
               (_%g219603219690%_ _%g219604219694%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219603219690%_
                                                _%g219604219694%_))
                                           (_%g219603219690%_
                                            _%g219604219694%_))))
                                   (_%g219603219690%_ _%g219604219694%_))
                               (_%g219603219690%_ _%g219604219694%_))
                           (_%g219603219690%_ _%g219604219694%_))))
                   (_%g219603219690%_ _%g219604219694%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g219603219690%_
                                                    _%g219604219694%_))
                                               (_%g219603219690%_
                                                _%g219604219694%_)))
                                         (_%g219603219690%_
                                          _%g219604219694%_))))
                                 (_%g219603219690%_ _%g219604219694%_))
                             (_%g219603219690%_ _%g219604219694%_))))
                     (_%g219603219690%_ _%g219604219694%_))
                 (_%g219603219690%_ _%g219604219694%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g219603219690%_
                                                      _%g219604219694%_))))
                                             (_%g219603219690%_
                                              _%g219604219694%_))))
                                     (_%g219603219690%_ _%g219604219694%_))
                                 (_%g219603219690%_ _%g219604219694%_)))
                           (_%g219603219690%_ _%g219604219694%_))))
                   (_%g219603219690%_ _%g219604219694%_))
               (_%g219603219690%_ _%g219604219694%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219603219690%_
                                                _%g219604219694%_))
                                           (_%g219603219690%_
                                            _%g219604219694%_))
                                       (_%g219603219690%_ _%g219604219694%_))))
                               (_%g219603219690%_ _%g219604219694%_))))
                       (_%g219603219690%_ _%g219604219694%_))
                   (_%g219603219690%_ _%g219604219694%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g219603219690%_
                                                      _%g219604219694%_))))
                                             (_%g219603219690%_
                                              _%g219604219694%_))
                                         (_%g219603219690%_
                                          _%g219604219694%_))))
                                 (_%g219603219690%_ _%g219604219694%_))
                             (_%g219603219690%_ _%g219604219694%_))
                         (_%g219603219690%_ _%g219604219694%_))))
                 (_%g219603219690%_ _%g219604219694%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g219603219690%_
                                                  _%g219604219694%_))
                                             (_%g219603219690%_
                                              _%g219604219694%_)))
                                       (_%g219603219690%_ _%g219604219694%_))))
                               (_%g219603219690%_ _%g219604219694%_))))
                       (_%g219603219690%_ _%g219604219694%_))))
               (_%g219603219690%_ _%g219604219694%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219603219690%_
                                                _%g219604219694%_)))))
                                   (_%g219602220032%_ _%hd219601%_)))))
                         (if (pair? _%rest219575219583%_)
                             (let ((_%hd219580220040%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest219575219583%_)))
                                   (_%tl219581220043%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest219575219583%_))))
                               (let* ((_%hd220046%_ _%hd219580220040%_)
                                      (_%rest220049%_ _%tl219581220043%_))
                                 (_%K219579220036%_
                                  _%rest220049%_
                                  _%hd220046%_)))
                             (_%else219577219595%_))))))
                (begin
                  (let ((_g221342_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g221341_)
                               (##values-length _g221341_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g221342_ 2)))
                        (error "Context expects 2 values" _g221342_)))
                  (let ((_%unchecked-proc220052%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221341_ 0)))
                        (_%unchecked-clauses220054%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221341_ 1))))
                    (if _%unchecked-proc220052%_
                        (let* ((_%g220056220080%_
                                (lambda (_%g220057220076%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g220057220076%_))))
                               (_%g220055220165%_
                                (lambda (_%g220057220084%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g220057220084%_))
                                      (let ((_%e220060220087%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g220057220084%_))))
                                        (let ((_%hd220061220091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e220060220087%_)))
                                              (_%tl220062220094%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e220060220087%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl220062220094%_))
                                              (let ((_%e220063220097%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl220062220094%_))))
                                                (let ((_%hd220064220101%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e220063220097%_)))
                                                      (_%tl220065220104%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e220063220097%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd220064220101%_))
                                                      (let ((_g221353_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd220064220101%_ '0))))
                (begin
                  (let ((_g221354_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g221353_)
                               (##values-length _g221353_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g221354_ 2)))
                        (error "Context expects 2 values" _g221354_)))
                  (let ((_%target220066220107%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221353_ 0)))
                        (_%tl220068220110%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221353_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl220068220110%_))
                        (letrec ((_%loop220069220113%_
                                  (lambda (_%hd220067220117%_
                                           _%clause220073220120%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd220067220117%_))
                                        (let ((_%e220070220122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd220067220117%_))))
                                          (let ((_%lp-hd220071220126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e220070220122%_)))
                                                (_%lp-tl220072220129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e220070220122%_))))
                                            (_%loop220069220113%_
                                             _%lp-tl220072220129%_
                                             (cons _%lp-hd220071220126%_
                                                   _%clause220073220120%_))))
                                        (let ((_%clause220074220132%_
                                               (reverse _%clause220073220120%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl220065220104%_))
                                              ((lambda (_%g220058220135%_
                                                        _%g220059220137%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g220059220137%_
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
                                             (let ((__tmp221355
                                                    (lambda (_%g220156220159%_
                                                             _%g220157220162%_)
                                                      (cons _%g220156220159%_
                                                            _%g220157220162%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp221355
                                                '()
                                                _%g220058220135%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause220074220132%_
                                               _%hd220061220091%_)
                                              (_%g220056220080%_
                                               _%g220057220084%_)))))))
                          (_%loop220069220113%_ _%target220066220107%_ '()))
                        (_%g220056220080%_ _%g220057220084%_)))))
              (_%g220056220080%_ _%g220057220084%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g220056220080%_
                                               _%g220057220084%_))))
                                      (_%g220056220080%_ _%g220057220084%_)))))
                          (_%g220055220165%_
                           (list _%unchecked-proc220052%_
                                 _%unchecked-clauses220054%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g219507219518%_))))
                                        (_%g219505220169%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g219292219370%_
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
                                          _%g219406219487%_
                                          _%g219407219489%_))
                                       (let ((__tmp221356
                                              (lambda (_%g220172220176%_
                                                       _%g220173220179%_
                                                       _%g220174220181%_)
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
                                (cons _%g220173220179%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g220172220176%_ '())))))
              _%g220174220181%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp221356
                                          '()
                                          _%g219406219487%_
                                          _%g219407219489%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig219417219483%_
                                    _%arity219418219485%_))))))
                   (_%loop219411219443%_ _%target219408219437%_ '() '()))
                 (_%g219404219430%_ _%g219405219434%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219404219430%_
                                                _%g219405219434%_)))))
                                   (_%g219403220184%_ _%signatures219401%_))
                                 (_%g219289219313%_ _%g219290219317%_)))
                           _%case-signature219307219365%_
                           _%hd219297219334%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop219302219346%_
                                                   _%target219299219340%_
                                                   '()))
                                                (_%g219289219313%_
                                                 _%g219290219317%_)))))
                                      (_%g219289219313%_ _%g219290219317%_))))
                              (_%g219289219313%_ _%g219290219317%_))))
                      (_%g219289219313%_ _%g219290219317%_)))))
          (_%g219288220188%_ _%stx219286%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx220196%_)
        (let* ((_%__stx221176221177%_ _%$stx220196%_)
               (_%g220202220262%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx221176221177%_)))))
          (let ((_%__kont221179221180%_
                 (lambda (_%g220204220484%_ _%g220205220486%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g220205220486%_ '()))
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
                                                       (cons _%g220205220486%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g220204220484%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont221181221182%_
                 (lambda (_%g220219220409%_
                          _%g220220220411%_
                          _%g220221220412%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g220221220412%_ '()))
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
                                                       (cons _%g220221220412%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g220220220411%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g220219220409%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont221183221184%_
                 (lambda (_%g220238220323%_
                          _%g220239220325%_
                          _%g220240220326%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g220240220326%_ '()))
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
                                                       (cons _%g220240220326%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g220239220325%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g220238220323%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx221176221177%_))
                (let ((_%e220206220440%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx221176221177%_))))
                  (let ((_%tl220208220447%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e220206220440%_)))
                        (_%hd220207220444%_
                         (let ()
                           (declare (not safe))
                           (##car _%e220206220440%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl220208220447%_))
                        (let ((_%e220209220450%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl220208220447%_))))
                          (let ((_%tl220211220457%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e220209220450%_)))
                                (_%hd220210220454%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e220209220450%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd220210220454%_))
                                (let ((_%e220212220460%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd220210220454%_))))
                                  (if (equal? _%e220212220460%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl220211220457%_))
                                          (let ((_%e220213220464%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl220211220457%_))))
                                            (let ((_%tl220215220471%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e220213220464%_)))
                                                  (_%hd220214220468%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e220213220464%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl220215220471%_))
                                                  (let ((_%e220216220474%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl220215220471%_))))
                                                    (let ((_%tl220218220481%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e220216220474%_)))
                                                          (_%hd220217220478%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e220216220474%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl220218220481%_))
                                                          (_%__kont221179221180%_
                                                           _%hd220217220478%_
                                                           _%hd220214220468%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g220202220262%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g220202220262%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g220202220262%_)))
                                      (if (equal? _%e220212220460%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl220211220457%_))
                                              (let ((_%e220229220379%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl220211220457%_))))
                                                (let ((_%tl220231220386%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e220229220379%_)))
                                                      (_%hd220230220383%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e220229220379%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl220231220386%_))
                                                      (let ((_%e220232220389%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl220231220386%_))))
                (let ((_%tl220234220396%_
                       (let () (declare (not safe)) (##cdr _%e220232220389%_)))
                      (_%hd220233220393%_
                       (let ()
                         (declare (not safe))
                         (##car _%e220232220389%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl220234220396%_))
                      (let ((_%e220235220399%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl220234220396%_))))
                        (let ((_%tl220237220406%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e220235220399%_)))
                              (_%hd220236220403%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e220235220399%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl220237220406%_))
                              (_%__kont221181221182%_
                               _%hd220236220403%_
                               _%hd220233220393%_
                               _%hd220230220383%_)
                              (let ()
                                (declare (not safe))
                                (_%g220202220262%_)))))
                      (let () (declare (not safe)) (_%g220202220262%_)))))
              (let () (declare (not safe)) (_%g220202220262%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g220202220262%_)))
                                          (if (equal? _%e220212220460%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl220211220457%_))
                                                  (let ((_%e220248220293%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl220211220457%_))))
                                                    (let ((_%tl220250220300%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e220248220293%_)))
                                                          (_%hd220249220297%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e220248220293%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl220250220300%_))
                                                          (let ((_%e220251220303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl220250220300%_))))
                    (let ((_%tl220253220310%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e220251220303%_)))
                          (_%hd220252220307%_
                           (let ()
                             (declare (not safe))
                             (##car _%e220251220303%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl220253220310%_))
                          (let ((_%e220254220313%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl220253220310%_))))
                            (let ((_%tl220256220320%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e220254220313%_)))
                                  (_%hd220255220317%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e220254220313%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl220256220320%_))
                                  (_%__kont221183221184%_
                                   _%hd220255220317%_
                                   _%hd220252220307%_
                                   _%hd220249220297%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g220202220262%_)))))
                          (let () (declare (not safe)) (_%g220202220262%_)))))
                  (let () (declare (not safe)) (_%g220202220262%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g220202220262%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g220202220262%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g220202220262%_)))))
                        (let () (declare (not safe)) (_%g220202220262%_)))))
                (let () (declare (not safe)) (_%g220202220262%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx220508%_)
        (let* ((_%g220512220532%_
                (lambda (_%g220513220528%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g220513220528%_))))
               (_%g220511220601%_
                (lambda (_%g220513220536%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g220513220536%_))
                      (let ((_%e220515220539%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g220513220536%_))))
                        (let ((_%hd220516220543%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e220515220539%_)))
                              (_%tl220517220546%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e220515220539%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl220517220546%_))
                              (let ((_g221357_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl220517220546%_
                                        '0))))
                                (begin
                                  (let ((_g221358_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221357_)
                                               (##values-length _g221357_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221358_ 2)))
                                        (error "Context expects 2 values"
                                               _g221358_)))
                                  (let ((_%target220518220549%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221357_ 0)))
                                        (_%tl220520220552%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221357_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl220520220552%_))
                                        (letrec ((_%loop220521220555%_
                                                  (lambda (_%hd220519220559%_
                                                           _%decl220525220562%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd220519220559%_))
                                                        (let ((_%e220522220564%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd220519220559%_))))
                  (let ((_%lp-hd220523220568%_
                         (let ()
                           (declare (not safe))
                           (##car _%e220522220564%_)))
                        (_%lp-tl220524220571%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e220522220564%_))))
                    (_%loop220521220555%_
                     _%lp-tl220524220571%_
                     (cons _%lp-hd220523220568%_ _%decl220525220562%_))))
                (let ((_%decl220526220574%_ (reverse _%decl220525220562%_)))
                  ((lambda (_%g220514220577%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp221359
                                  (lambda (_%g220592220595%_ _%g220593220598%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g220592220595%_)
                                          _%g220593220598%_))))
                             (declare (not safe))
                             (__foldr1 __tmp221359 '() _%g220514220577%_))))
                   _%decl220526220574%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop220521220555%_
                                           _%target220518220549%_
                                           '()))
                                        (_%g220512220532%_
                                         _%g220513220536%_)))))
                              (_%g220512220532%_ _%g220513220536%_))))
                      (_%g220512220532%_ _%g220513220536%_)))))
          (_%g220511220601%_ _%$stx220508%_))))))
