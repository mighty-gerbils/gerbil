(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_%type-t22500%_)
      (let ((_%$e22503%_ (gx#module-context-ns (gx#current-expander-context))))
        (if _%$e22503%_
            ((lambda (_%ns22507%_)
               (gx#stx-identifier
                _%type-t22500%_
                _%ns22507%_
                '"#"
                _%type-t22500%_
                '"::t"))
             _%$e22503%_)
            (let ((_%mid22512%_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _%type-t22500%_
               _%mid22512%_
               '"#"
               _%type-t22500%_
               '"::t"))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_%type-t22497%_)
      (if (gx#module-context? (gx#current-expander-context))
          (|gerbil/core/mop~MOP-1[1]#module-type-id| _%type-t22497%_)
          (make-symbol '"__" (gensym (gx#stx-e _%type-t22497%_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_%stx21085%_ _%struct?21087%_)
      (letrec ((_%wrap21089%_
                (lambda (_%e-stx22494%_)
                  (gx#stx-wrap-source
                   _%e-stx22494%_
                   (gx#stx-source _%stx21085%_))))
               (_%slot-name21091%_
                (lambda (_%slot-spec22411%_)
                  (let* ((_%g2241422433%_
                          (lambda (_%g2241522429%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2241522429%_)))
                         (_%g2241322490%_
                          (lambda (_%g2241522437%_)
                            (if (gx#stx-pair? _%g2241522437%_)
                                (let ((_%e2241922440%_
                                       (gx#syntax-e _%g2241522437%_)))
                                  (let ((_%hd2242022444%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2241922440%_)))
                                        (_%tl2242122447%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2241922440%_))))
                                    (if (gx#stx-pair? _%tl2242122447%_)
                                        (let ((_%e2242222450%_
                                               (gx#syntax-e _%tl2242122447%_)))
                                          (let ((_%hd2242322454%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2242222450%_)))
                                                (_%tl2242422457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2242222450%_))))
                                            (if (gx#stx-pair? _%tl2242422457%_)
                                                (let ((_%e2242522460%_
                                                       (gx#syntax-e
                                                        _%tl2242422457%_)))
                                                  (let ((_%hd2242622464%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2242522460%_)))
                                                        (_%tl2242722467%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2242522460%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2242722467%_)
                                                        ((lambda (_%g2241622470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2241722472%_
                          _%g2241822473%_)
                   _%g2241822473%_)
                 _%hd2242622464%_
                 _%hd2242322454%_
                 _%hd2242022444%_)
                (_%g2241422433%_ _%g2241522437%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2241422433%_
                                                 _%g2241522437%_))))
                                        (_%g2241422433%_ _%g2241522437%_))))
                                (_%g2241422433%_ _%g2241522437%_)))))
                    (_%g2241322490%_ _%slot-spec22411%_))))
               (_%class-opt?21092%_
                (lambda (_%key22408%_)
                  (let ((__tmp200841 (gx#stx-e _%key22408%_)))
                    (declare (not safe))
                    (##memq __tmp200841
                            '(struct:
                              slots:
                              id:
                              name:
                              properties:
                              constructor:
                              final:
                              mixin:
                              metaclass:))))))
        (let* ((_%g2109421121%_
                (lambda (_%g2109521117%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2109521117%_)))
               (_%g2109322404%_
                (lambda (_%g2109521125%_)
                  (if (gx#stx-pair? _%g2109521125%_)
                      (let ((_%e2110121128%_ (gx#syntax-e _%g2109521125%_)))
                        (let ((_%hd2110221132%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2110121128%_)))
                              (_%tl2110321135%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2110121128%_))))
                          (if (gx#stx-pair? _%tl2110321135%_)
                              (let ((_%e2110421138%_
                                     (gx#syntax-e _%tl2110321135%_)))
                                (let ((_%hd2110521142%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2110421138%_)))
                                      (_%tl2110621145%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2110421138%_))))
                                  (if (gx#stx-pair? _%tl2110621145%_)
                                      (let ((_%e2110721148%_
                                             (gx#syntax-e _%tl2110621145%_)))
                                        (let ((_%hd2110821152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2110721148%_)))
                                              (_%tl2110921155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2110721148%_))))
                                          (if (gx#stx-pair? _%tl2110921155%_)
                                              (let ((_%e2111021158%_
                                                     (gx#syntax-e
                                                      _%tl2110921155%_)))
                                                (let ((_%hd2111121162%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2111021158%_)))
                                                      (_%tl2111221165%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2111021158%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl2111221165%_)
                                                      (let ((_%e2111321168%_
                                                             (gx#syntax-e
                                                              _%tl2111221165%_)))
                                                        (let ((_%hd2111421172%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2111321168%_)))
                      (_%tl2111521175%_
                       (let () (declare (not safe)) (##cdr _%e2111321168%_))))
                  ((lambda (_%g2109621178%_
                            _%g2109721180%_
                            _%g2109821181%_
                            _%g2109921182%_
                            _%g2110021183%_)
                     (if (and (gx#identifier? _%g2110021183%_)
                              (gx#identifier-list? _%g2109921182%_)
                              (or (gx#identifier? _%g2109821181%_)
                                  (gx#stx-false? _%g2109821181%_))
                              (gx#identifier? _%g2109721180%_)
                              (gx#stx-plist?
                               _%g2109621178%_
                               _%class-opt?21092%_))
                         (let* ((_%struct?21223%_
                                 (let ((_%$e21213%_ _%struct?21087%_))
                                   (if _%$e21213%_
                                       _%$e21213%_
                                       (let ((_%$e21217%_
                                              (gx#stx-getq
                                               'struct:
                                               _%g2109621178%_)))
                                         (if _%$e21217%_
                                             (gx#stx-e _%$e21217%_)
                                             '#f)))))
                                (_%slots21230%_
                                 (let ((_%$e21226%_
                                        (gx#stx-getq 'slots: _%g2109621178%_)))
                                   (if _%$e21226%_ _%$e21226%_ '())))
                                (_%mixin-slots21237%_
                                 (let ((_%$e21233%_
                                        (gx#stx-getq 'mixin: _%g2109621178%_)))
                                   (if _%$e21233%_ _%$e21233%_ '())))
                                (_%accessible-slots21240%_
                                 (append (gx#syntax->list _%slots21230%_)
                                         (gx#syntax->list
                                          _%mixin-slots21237%_)))
                                (_%metaclass21243%_
                                 (gx#stx-getq 'metaclass: _%g2109621178%_))
                                (_%g2124621263%_
                                 (lambda (_%g2124721259%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2124721259%_)))
                                (_%g2124522400%_
                                 (lambda (_%g2124721267%_)
                                   (if (gx#stx-pair/null? _%g2124721267%_)
                                       (let ((_g200842_
                                              (gx#syntax-split-splice
                                               _%g2124721267%_
                                               '0)))
                                         (begin
                                           (let ((_g200843_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g200842_)
                                                        (##values-length
                                                         _g200842_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g200843_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g200843_)))
                                           (let ((_%target2124921270%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g200842_
                                                     0)))
                                                 (_%tl2125121273%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g200842_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2125121273%_)
                                                 (letrec ((_%loop2125221276%_
                                                           (lambda (_%hd2125021280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%slot2125621283%_)
                     (if (gx#stx-pair? _%hd2125021280%_)
                         (let ((_%e2125321285%_
                                (gx#syntax-e _%hd2125021280%_)))
                           (let ((_%lp-hd2125421289%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2125321285%_)))
                                 (_%lp-tl2125521292%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2125321285%_))))
                             (_%loop2125221276%_
                              _%lp-tl2125521292%_
                              (cons _%lp-hd2125421289%_ _%slot2125621283%_))))
                         (let ((_%slot2125721295%_
                                (reverse _%slot2125621283%_)))
                           ((lambda (_%g2124821298%_)
                              (let* ((_%g2131921327%_
                                      (lambda (_%g2132021323%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2132021323%_)))
                                     (_%g2131822392%_
                                      (lambda (_%g2132021331%_)
                                        ((lambda (_%g2132121334%_)
                                           (let* ((_%g2134721355%_
                                                   (lambda (_%g2134821351%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2134821351%_)))
                                                  (_%g2134622384%_
                                                   (lambda (_%g2134821359%_)
                                                     ((lambda (_%g2134921362%_)
                                                        (let* ((_%g2137521383%_
                                                                (lambda (_%g2137621379%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2137621379%_)))
                       (_%g2137422380%_
                        (lambda (_%g2137621387%_)
                          ((lambda (_%g2137721390%_)
                             (let* ((_%g2140321411%_
                                     (lambda (_%g2140421407%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2140421407%_)))
                                    (_%g2140222376%_
                                     (lambda (_%g2140421415%_)
                                       ((lambda (_%g2140521418%_)
                                          (let* ((_%g2143121439%_
                                                  (lambda (_%g2143221435%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2143221435%_)))
                                                 (_%g2143022372%_
                                                  (lambda (_%g2143221443%_)
                                                    ((lambda (_%g2143321446%_)
                                                       (let* ((_%g2145921467%_
                                                               (lambda (_%g2146021463%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2146021463%_)))
                      (_%g2145822368%_
                       (lambda (_%g2146021471%_)
                         ((lambda (_%g2146121474%_)
                            (let* ((_%g2148721495%_
                                    (lambda (_%g2148821491%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2148821491%_)))
                                   (_%g2148622364%_
                                    (lambda (_%g2148821499%_)
                                      ((lambda (_%g2148921502%_)
                                         (let* ((_%g2151521523%_
                                                 (lambda (_%g2151621519%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2151621519%_)))
                                                (_%g2151422360%_
                                                 (lambda (_%g2151621527%_)
                                                   ((lambda (_%g2151721530%_)
                                                      (let* ((_%g2154321551%_
                                                              (lambda (_%g2154421547%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2154421547%_)))
                     (_%g2154222352%_
                      (lambda (_%g2154421555%_)
                        ((lambda (_%g2154521558%_)
                           (let* ((_%g2157121579%_
                                   (lambda (_%g2157221575%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2157221575%_)))
                                  (_%g2157022348%_
                                   (lambda (_%g2157221583%_)
                                     ((lambda (_%g2157321586%_)
                                        (let* ((_%g2159921607%_
                                                (lambda (_%g2160021603%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2160021603%_)))
                                               (_%g2159822344%_
                                                (lambda (_%g2160021611%_)
                                                  ((lambda (_%g2160121614%_)
                                                     (let* ((_%g2162721635%_
                                                             (lambda (_%g2162821631%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g2162821631%_)))
                                                            (_%g2162622309%_
                                                             (lambda (_%g2162821639%_)
                                                               ((lambda (_%g2162921642%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g2165521663%_
                                  (lambda (_%g2165621659%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2165621659%_)))
                                 (_%g2165422305%_
                                  (lambda (_%g2165621667%_)
                                    ((lambda (_%g2165721670%_)
                                       (let* ((_%g2168321691%_
                                               (lambda (_%g2168421687%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2168421687%_)))
                                              (_%g2168222293%_
                                               (lambda (_%g2168421695%_)
                                                 ((lambda (_%g2168521698%_)
                                                    (let* ((_%g2171121719%_
                                                            (lambda (_%g2171221715%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2171221715%_)))
                                                           (_%g2171022281%_
                                                            (lambda (_%g2171221723%_)
                                                              ((lambda (_%g2171321726%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%g2173921747%_
                                 (lambda (_%g2174021743%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2174021743%_)))
                                (_%g2173822277%_
                                 (lambda (_%g2174021751%_)
                                   ((lambda (_%g2174121754%_)
                                      (let* ((_%g2176721775%_
                                              (lambda (_%g2176821771%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2176821771%_)))
                                             (_%g2176622273%_
                                              (lambda (_%g2176821779%_)
                                                ((lambda (_%g2176921782%_)
                                                   (let* ((_%g2179521821%_
                                                           (lambda (_%g2179621817%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g2179621817%_)))
                                                          (_%g2179422185%_
                                                           (lambda (_%g2179621825%_)
                                                             (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2179621825%_)
                         (let ((_g200844_
                                (gx#syntax-split-splice _%g2179621825%_ '0)))
                           (begin
                             (let ((_g200845_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g200844_)
                                          (##values-length _g200844_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g200845_ 2)))
                                   (error "Context expects 2 values"
                                          _g200845_)))
                             (let ((_%target2179921828%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g200844_ 0)))
                                   (_%tl2180121831%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g200844_ 1))))
                               (if (gx#stx-null? _%tl2180121831%_)
                                   (letrec ((_%loop2180221834%_
                                             (lambda (_%hd2180021838%_
                                                      _%def-setf2180621841%_
                                                      _%def-getf2180721842%_)
                                               (if (gx#stx-pair?
                                                    _%hd2180021838%_)
                                                   (let ((_%e2180321844%_
                                                          (gx#syntax-e
                                                           _%hd2180021838%_)))
                                                     (let ((_%lp-hd2180421848%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e2180321844%_)))
                                                           (_%lp-tl2180521851%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e2180321844%_))))
                                                       (if (gx#stx-pair?
                                                            _%lp-hd2180421848%_)
                                                           (let ((_%e2181021854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%lp-hd2180421848%_)))
                     (let ((_%hd2181121858%_
                            (let ()
                              (declare (not safe))
                              (##car _%e2181021854%_)))
                           (_%tl2181221861%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e2181021854%_))))
                       (if (gx#stx-pair? _%tl2181221861%_)
                           (let ((_%e2181321864%_
                                  (gx#syntax-e _%tl2181221861%_)))
                             (let ((_%hd2181421868%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e2181321864%_)))
                                   (_%tl2181521871%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e2181321864%_))))
                               (if (gx#stx-null? _%tl2181521871%_)
                                   (_%loop2180221834%_
                                    _%lp-tl2180521851%_
                                    (cons _%hd2181421868%_
                                          _%def-setf2180621841%_)
                                    (cons _%hd2181121858%_
                                          _%def-getf2180721842%_))
                                   (_%g2179521821%_ _%g2179621825%_))))
                           (_%g2179521821%_ _%g2179621825%_))))
                   (_%g2179521821%_ _%g2179621825%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%def-setf2180821874%_
                                                          (reverse _%def-setf2180621841%_))
                                                         (_%def-getf2180921876%_
                                                          (reverse _%def-getf2180721842%_)))
                                                     ((lambda (_%g2179721878%_
                                                               _%g2179821880%_)
                                                        (let* ((_%g2189721923%_
                                                                (lambda (_%g2189821919%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2189821919%_)))
                       (_%g2189622033%_
                        (lambda (_%g2189821927%_)
                          (if (gx#stx-pair/null? _%g2189821927%_)
                              (let ((_g200846_
                                     (gx#syntax-split-splice
                                      _%g2189821927%_
                                      '0)))
                                (begin
                                  (let ((_g200847_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g200846_)
                                               (##values-length _g200846_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g200847_ 2)))
                                        (error "Context expects 2 values"
                                               _g200847_)))
                                  (let ((_%target2190121930%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g200846_ 0)))
                                        (_%tl2190321933%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g200846_ 1))))
                                    (if (gx#stx-null? _%tl2190321933%_)
                                        (letrec ((_%loop2190421936%_
                                                  (lambda (_%hd2190221940%_
                                                           _%def-usetf2190821943%_
                                                           _%def-ugetf2190921944%_)
                                                    (if (gx#stx-pair?
                                                         _%hd2190221940%_)
                                                        (let ((_%e2190521946%_
                                                               (gx#syntax-e
                                                                _%hd2190221940%_)))
                                                          (let ((_%lp-hd2190621950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2190521946%_)))
                        (_%lp-tl2190721953%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2190521946%_))))
                    (if (gx#stx-pair? _%lp-hd2190621950%_)
                        (let ((_%e2191221956%_
                               (gx#syntax-e _%lp-hd2190621950%_)))
                          (let ((_%hd2191321960%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2191221956%_)))
                                (_%tl2191421963%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2191221956%_))))
                            (if (gx#stx-pair? _%tl2191421963%_)
                                (let ((_%e2191521966%_
                                       (gx#syntax-e _%tl2191421963%_)))
                                  (let ((_%hd2191621970%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2191521966%_)))
                                        (_%tl2191721973%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2191521966%_))))
                                    (if (gx#stx-null? _%tl2191721973%_)
                                        (_%loop2190421936%_
                                         _%lp-tl2190721953%_
                                         (cons _%hd2191621970%_
                                               _%def-usetf2190821943%_)
                                         (cons _%hd2191321960%_
                                               _%def-ugetf2190921944%_))
                                        (_%g2189721923%_ _%g2189821927%_))))
                                (_%g2189721923%_ _%g2189821927%_))))
                        (_%g2189721923%_ _%g2189821927%_))))
                (let ((_%def-usetf2191021976%_
                       (reverse _%def-usetf2190821943%_))
                      (_%def-ugetf2191121978%_
                       (reverse _%def-ugetf2190921944%_)))
                  ((lambda (_%g2189921980%_ _%g2190021982%_)
                     (_%wrap21089%_
                      (cons (gx#datum->syntax '#f 'begin)
                            (cons _%g2171321726%_
                                  (cons _%g2176921782%_
                                        (cons _%g2174121754%_
                                              (foldr (lambda (_%g2200022009%_
                                                              _%g2200122012%_)
                                                       (cons _%g2200022009%_
                                                             _%g2200122012%_))
                                                     (foldr (lambda (_%g2200222015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g2200322018%_)
                      (cons _%g2200222015%_ _%g2200322018%_))
                    (foldr (lambda (_%g2200422021%_ _%g2200522024%_)
                             (cons _%g2200422021%_ _%g2200522024%_))
                           (foldr (lambda (_%g2200622027%_ _%g2200722030%_)
                                    (cons _%g2200622027%_ _%g2200722030%_))
                                  '()
                                  _%g2189921980%_)
                           _%g2190021982%_)
                    _%g2179721878%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2179821880%_)))))))
                   _%def-usetf2191021976%_
                   _%def-ugetf2191121978%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop2190421936%_
                                           _%target2190121930%_
                                           '()
                                           '()))
                                        (_%g2189721923%_ _%g2189821927%_)))))
                              (_%g2189721923%_ _%g2189821927%_)))))
                  (_%g2189622033%_
                   (gx#stx-map
                    (lambda (_%ref22037%_)
                      (let* ((_%g2204022059%_
                              (lambda (_%g2204122055%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2204122055%_)))
                             (_%g2203922181%_
                              (lambda (_%g2204122063%_)
                                (if (gx#stx-pair? _%g2204122063%_)
                                    (let ((_%e2204522066%_
                                           (gx#syntax-e _%g2204122063%_)))
                                      (let ((_%hd2204622070%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2204522066%_)))
                                            (_%tl2204722073%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2204522066%_))))
                                        (if (gx#stx-pair? _%tl2204722073%_)
                                            (let ((_%e2204822076%_
                                                   (gx#syntax-e
                                                    _%tl2204722073%_)))
                                              (let ((_%hd2204922080%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2204822076%_)))
                                                    (_%tl2205022083%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2204822076%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2205022083%_)
                                                    (let ((_%e2205122086%_
                                                           (gx#syntax-e
                                                            _%tl2205022083%_)))
                                                      (let ((_%hd2205222090%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2205122086%_)))
                    (_%tl2205322093%_
                     (let () (declare (not safe)) (##cdr _%e2205122086%_))))
                (if (gx#stx-null? _%tl2205322093%_)
                    ((lambda (_%g2204222096%_ _%g2204322098%_ _%g2204422099%_)
                       (let* ((_%g2211722132%_
                               (lambda (_%g2211822128%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2211822128%_)))
                              (_%g2211622177%_
                               (lambda (_%g2211822136%_)
                                 (if (gx#stx-pair? _%g2211822136%_)
                                     (let ((_%e2212122139%_
                                            (gx#syntax-e _%g2211822136%_)))
                                       (let ((_%hd2212222143%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2212122139%_)))
                                             (_%tl2212322146%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2212122139%_))))
                                         (if (gx#stx-pair? _%tl2212322146%_)
                                             (let ((_%e2212422149%_
                                                    (gx#syntax-e
                                                     _%tl2212322146%_)))
                                               (let ((_%hd2212522153%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2212422149%_)))
                                                     (_%tl2212622156%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2212422149%_))))
                                                 (if (gx#stx-null?
                                                      _%tl2212622156%_)
                                                     ((lambda (_%g2211922159%_
                                                               _%g2212022161%_)
                                                        (cons (_%wrap21089%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'def)
                             (cons _%g2212022161%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@mop.accessor)
                                                           (cons _%g2140521418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g2204422099%_ (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-class-slot-unchecked-accessor)
                         (cons _%g2110021183%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2204422099%_ '()))
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (cons (_%wrap21089%_
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%g2211922159%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@mop.mutator)
                         (cons _%g2140521418%_
                               (cons _%g2204422099%_ (cons '#f '()))))
                   (cons (cons (gx#datum->syntax
                                '#f
                                'make-class-slot-unchecked-mutator)
                               (cons _%g2110021183%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2204422099%_ '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            '())))
              _%hd2212522153%_
              _%hd2212222143%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2211722132%_
                                                      _%g2211822136%_))))
                                             (_%g2211722132%_
                                              _%g2211822136%_))))
                                     (_%g2211722132%_ _%g2211822136%_)))))
                         (_%g2211622177%_
                          (list (gx#stx-identifier
                                 _%g2204322098%_
                                 '"&"
                                 _%g2204322098%_)
                                (gx#stx-identifier
                                 _%g2204222096%_
                                 '"&"
                                 _%g2204222096%_)))))
                     _%hd2205222090%_
                     _%hd2204922080%_
                     _%hd2204622070%_)
                    (_%g2204022059%_ _%g2204122063%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2204022059%_
                                                     _%g2204122063%_))))
                                            (_%g2204022059%_
                                             _%g2204122063%_))))
                                    (_%g2204022059%_ _%g2204122063%_)))))
                        (_%g2203922181%_ _%ref22037%_)))
                    _%accessible-slots21240%_))))
              _%def-setf2180821874%_
              _%def-getf2180921876%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop2180221834%_
                                      _%target2179921828%_
                                      '()
                                      '()))
                                   (_%g2179521821%_ _%g2179621825%_)))))
                         (_%g2179521821%_ _%g2179621825%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2179422185%_
                                                      (gx#stx-map
                                                       (lambda (_%ref22189%_)
                                                         (let* ((_%g2219222211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2219322207%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2219322207%_)))
                        (_%g2219122269%_
                         (lambda (_%g2219322215%_)
                           (if (gx#stx-pair? _%g2219322215%_)
                               (let ((_%e2219722218%_
                                      (gx#syntax-e _%g2219322215%_)))
                                 (let ((_%hd2219822222%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2219722218%_)))
                                       (_%tl2219922225%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2219722218%_))))
                                   (if (gx#stx-pair? _%tl2219922225%_)
                                       (let ((_%e2220022228%_
                                              (gx#syntax-e _%tl2219922225%_)))
                                         (let ((_%hd2220122232%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e2220022228%_)))
                                               (_%tl2220222235%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e2220022228%_))))
                                           (if (gx#stx-pair? _%tl2220222235%_)
                                               (let ((_%e2220322238%_
                                                      (gx#syntax-e
                                                       _%tl2220222235%_)))
                                                 (let ((_%hd2220422242%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2220322238%_)))
                                                       (_%tl2220522245%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2220322238%_))))
                                                   (if (gx#stx-null?
                                                        _%tl2220522245%_)
                                                       ((lambda (_%g2219422248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2219522250%_
                         _%g2219622251%_)
                  (cons (_%wrap21089%_
                         (cons (gx#datum->syntax '#f 'def)
                               (cons _%g2219522250%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'begin-annotation)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@mop.accessor)
                                                             (cons _%g2140521418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g2219622251%_ (cons '#t '()))))
               (cons (cons (gx#datum->syntax '#f 'make-class-slot-accessor)
                           (cons _%g2110021183%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2219622251%_ '()))
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                        (cons (_%wrap21089%_
                               (cons (gx#datum->syntax '#f 'def)
                                     (cons _%g2219422248%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@mop.mutator)
                           (cons _%g2140521418%_
                                 (cons _%g2219622251%_ (cons '#t '()))))
                     (cons (cons (gx#datum->syntax
                                  '#f
                                  'make-class-slot-mutator)
                                 (cons _%g2110021183%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g2219622251%_ '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                              '())))
                _%hd2220422242%_
                _%hd2220122232%_
                _%hd2219822222%_)
               (_%g2219222211%_ _%g2219322215%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2219222211%_
                                                _%g2219322215%_))))
                                       (_%g2219222211%_ _%g2219322215%_))))
                               (_%g2219222211%_ _%g2219322215%_)))))
                   (_%g2219122269%_ _%ref22189%_)))
               _%accessible-slots21240%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g2176821779%_))))
                                        (_%g2176622273%_
                                         (_%wrap21089%_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _%g2109721180%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@mop.predicate)
                                      (cons _%g2140521418%_ '()))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'make-class-predicate)
                                            (cons _%g2110021183%_ '()))
                                      '())))
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g2174021751%_))))
                           (_%g2173822277%_
                            (if (gx#stx-false? _%g2109821181%_)
                                (cons (gx#datum->syntax '#f 'begin) '())
                                (_%wrap21089%_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _%g2109821181%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin-annotation)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '@mop.constructor)
                             (cons _%g2140521418%_ '()))
                       (cons (cons (gx#datum->syntax '#f 'lambda)
                                   (cons (gx#datum->syntax '#f '$args)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'apply)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'make-instance)
                                                           (cons _%g2110021183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))))
                       _%g2171221723%_))))
              (_%g2171022281%_
               (_%wrap21089%_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _%g2110021183%_
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.class)
                                                    (cons _%g2132121334%_
                                                          (cons _%g2143321446%_
                                                                (cons (foldr (lambda (_%g2228422287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              _%g2228522290%_)
                                       (cons _%g2228422287%_ _%g2228522290%_))
                                     '()
                                     _%g2124821298%_)
                              (cons _%g2137721390%_
                                    (cons _%g2146121474%_
                                          (cons _%g2148921502%_
                                                (cons _%g2151721530%_
                                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%g2168521698%_ '())))
                                  '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2168421695%_))))
                                         (_%g2168222293%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-class-type)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%g2132121334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote)
                          (cons _%g2134921362%_ '()))
                    (cons _%g2165721670%_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons (foldr (lambda (_%g2229622299%_
                                                            _%g2229722302%_)
                                                     (cons _%g2229622299%_
                                                           _%g2229722302%_))
                                                   '()
                                                   _%g2124821298%_)
                                            '()))
                                (cons _%g2162921642%_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2137721390%_ '()))
                                            '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g2165621667%_))))
                            (_%g2165422305%_
                             (cons (gx#datum->syntax '#f 'list)
                                   _%g2109921182%_))))
                        _%g2162821639%_))))
               (_%g2162622309%_
                (if (gx#stx-e _%metaclass21243%_)
                    (let* ((_%g2231322321%_
                            (lambda (_%g2231422317%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2231422317%_)))
                           (_%g2231222340%_
                            (lambda (_%g2231422325%_)
                              ((lambda (_%g2231522328%_)
                                 (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons 'metaclass:
                                                         (cons '::
                                                               (cons _%g2231522328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '::
                                                   (cons _%g2160121614%_
                                                         '())))))
                               _%g2231422325%_))))
                      (_%g2231222340%_ _%metaclass21243%_))
                    _%g2160121614%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g2160021611%_))))
                                          (_%g2159822344%_
                                           (if _%struct?21223%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         (cons 'struct: '#t))
                   (cons ':: (cons _%g2157321586%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2157321586%_))))
                                      _%g2157221583%_))))
                             (_%g2157022348%_
                              (if (gx#stx-e _%g2148921502%_)
                                  (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons 'final: '#t))
                                              (cons '::
                                                    (cons _%g2154521558%_
                                                          '()))))
                                  _%g2154521558%_))))
                         _%g2154421555%_))))
                (_%g2154222352%_
                 (let ((_%$e22356%_
                        (gx#stx-getq 'properties: _%g2109621178%_)))
                   (if _%$e22356%_
                       _%$e22356%_
                       (cons (gx#datum->syntax '#f '@list) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g2151621527%_))))
                                           (_%g2151422360%_
                                            (if (gx#stx-e _%metaclass21243%_)
                                                (gx#core-quote-syntax
                                                 _%metaclass21243%_)
                                                '#f))))
                                       _%g2148821499%_))))
                              (_%g2148622364%_
                               (gx#stx-getq 'final: _%g2109621178%_))))
                          _%g2146021471%_))))
                 (_%g2145822368%_ _%struct?21223%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2143221443%_))))
                                            (_%g2143022372%_
                                             (gx#stx-map
                                              gx#core-quote-syntax
                                              _%g2109921182%_))))
                                        _%g2140421415%_))))
                               (_%g2140222376%_
                                (gx#core-quote-syntax _%g2110021183%_))))
                           _%g2137621387%_))))
                  (_%g2137422380%_
                   (gx#stx-getq 'constructor: _%g2109621178%_))))
              _%g2134821359%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2134622384%_
                                              (let ((_%$e22388%_
                                                     (gx#stx-getq
                                                      'name:
                                                      _%g2109621178%_)))
                                                (if _%$e22388%_
                                                    _%$e22388%_
                                                    _%g2110021183%_)))))
                                         _%g2132021331%_))))
                                (_%g2131822392%_
                                 (let ((_%$e22396%_
                                        (gx#stx-getq 'id: _%g2109621178%_)))
                                   (if _%$e22396%_
                                       _%$e22396%_
                                       (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                        _%g2110021183%_))))))
                            _%slot2125721295%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2125221276%_
                                                    _%target2124921270%_
                                                    '()))
                                                 (_%g2124621263%_
                                                  _%g2124721267%_)))))
                                       (_%g2124621263%_ _%g2124721267%_)))))
                           (_%g2124522400%_
                            (gx#stx-map _%slot-name21091%_ _%slots21230%_)))
                         (_%g2109421121%_ _%g2109521125%_)))
                   _%tl2111521175%_
                   _%hd2111421172%_
                   _%hd2111121162%_
                   _%hd2110821152%_
                   _%hd2110521142%_)))
              (_%g2109421121%_ _%g2109521125%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2109421121%_
                                               _%g2109521125%_))))
                                      (_%g2109421121%_ _%g2109521125%_))))
                              (_%g2109421121%_ _%g2109521125%_))))
                      (_%g2109421121%_ _%g2109521125%_)))))
          (_%g2109322404%_ _%stx21085%_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_%stx22518%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22518%_ '#t)))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_%stx22521%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22521%_ '#f))))
