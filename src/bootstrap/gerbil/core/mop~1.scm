(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_%type-t22511%_)
      (let ((_%$e22514%_ (gx#module-context-ns (gx#current-expander-context))))
        (if _%$e22514%_
            ((lambda (_%ns22518%_)
               (gx#stx-identifier
                _%type-t22511%_
                _%ns22518%_
                '"#"
                _%type-t22511%_
                '"::t"))
             _%$e22514%_)
            (let ((_%mid22523%_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _%type-t22511%_
               _%mid22523%_
               '"#"
               _%type-t22511%_
               '"::t"))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_%type-t22508%_)
      (if (gx#module-context? (gx#current-expander-context))
          (|gerbil/core/mop~MOP-1[1]#module-type-id| _%type-t22508%_)
          (make-symbol '"__" (gensym (gx#stx-e _%type-t22508%_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_%stx21086%_ _%struct?21088%_)
      (letrec ((_%wrap21090%_
                (lambda (_%e-stx22505%_)
                  (gx#stx-wrap-source
                   _%e-stx22505%_
                   (gx#stx-source _%stx21086%_))))
               (_%slot-name21092%_
                (lambda (_%slot-spec22422%_)
                  (let* ((_%g2242522444%_
                          (lambda (_%g2242622440%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2242622440%_)))
                         (_%g2242422501%_
                          (lambda (_%g2242622448%_)
                            (if (gx#stx-pair? _%g2242622448%_)
                                (let ((_%e2243022451%_
                                       (gx#syntax-e _%g2242622448%_)))
                                  (let ((_%hd2243122455%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2243022451%_)))
                                        (_%tl2243222458%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2243022451%_))))
                                    (if (gx#stx-pair? _%tl2243222458%_)
                                        (let ((_%e2243322461%_
                                               (gx#syntax-e _%tl2243222458%_)))
                                          (let ((_%hd2243422465%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2243322461%_)))
                                                (_%tl2243522468%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2243322461%_))))
                                            (if (gx#stx-pair? _%tl2243522468%_)
                                                (let ((_%e2243622471%_
                                                       (gx#syntax-e
                                                        _%tl2243522468%_)))
                                                  (let ((_%hd2243722475%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2243622471%_)))
                                                        (_%tl2243822478%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2243622471%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2243822478%_)
                                                        ((lambda (_%L22481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L22483%_
                          _%L22484%_)
                   _%L22484%_)
                 _%hd2243722475%_
                 _%hd2243422465%_
                 _%hd2243122455%_)
                (_%g2242522444%_ _%g2242622448%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2242522444%_
                                                 _%g2242622448%_))))
                                        (_%g2242522444%_ _%g2242622448%_))))
                                (_%g2242522444%_ _%g2242622448%_)))))
                    (_%g2242422501%_ _%slot-spec22422%_))))
               (_%class-opt?21093%_
                (lambda (_%key22419%_)
                  (let ((__tmp27206 (gx#stx-e _%key22419%_)))
                    (declare (not safe))
                    (##memq __tmp27206
                            '(struct:
                              slots:
                              id:
                              name:
                              properties:
                              constructor:
                              final:
                              mixin:
                              metaclass:))))))
        (let* ((_%g2109521122%_
                (lambda (_%g2109621118%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2109621118%_)))
               (_%g2109422415%_
                (lambda (_%g2109621126%_)
                  (if (gx#stx-pair? _%g2109621126%_)
                      (let ((_%e2110221129%_ (gx#syntax-e _%g2109621126%_)))
                        (let ((_%hd2110321133%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2110221129%_)))
                              (_%tl2110421136%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2110221129%_))))
                          (if (gx#stx-pair? _%tl2110421136%_)
                              (let ((_%e2110521139%_
                                     (gx#syntax-e _%tl2110421136%_)))
                                (let ((_%hd2110621143%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2110521139%_)))
                                      (_%tl2110721146%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2110521139%_))))
                                  (if (gx#stx-pair? _%tl2110721146%_)
                                      (let ((_%e2110821149%_
                                             (gx#syntax-e _%tl2110721146%_)))
                                        (let ((_%hd2110921153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2110821149%_)))
                                              (_%tl2111021156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2110821149%_))))
                                          (if (gx#stx-pair? _%tl2111021156%_)
                                              (let ((_%e2111121159%_
                                                     (gx#syntax-e
                                                      _%tl2111021156%_)))
                                                (let ((_%hd2111221163%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2111121159%_)))
                                                      (_%tl2111321166%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2111121159%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl2111321166%_)
                                                      (let ((_%e2111421169%_
                                                             (gx#syntax-e
                                                              _%tl2111321166%_)))
                                                        (let ((_%hd2111521173%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2111421169%_)))
                      (_%tl2111621176%_
                       (let () (declare (not safe)) (##cdr _%e2111421169%_))))
                  ((lambda (_%L21179%_
                            _%L21181%_
                            _%L21182%_
                            _%L21183%_
                            _%L21184%_)
                     (if (and (gx#identifier? _%L21184%_)
                              (gx#identifier-list? _%L21183%_)
                              (or (gx#identifier? _%L21182%_)
                                  (gx#stx-false? _%L21182%_))
                              (gx#identifier? _%L21181%_)
                              (gx#stx-plist? _%L21179%_ _%class-opt?21093%_))
                         (let* ((_%struct?21224%_
                                 (let ((_%$e21214%_ _%struct?21088%_))
                                   (if _%$e21214%_
                                       _%$e21214%_
                                       (let ((_%$e21218%_
                                              (gx#stx-getq
                                               'struct:
                                               _%L21179%_)))
                                         (if _%$e21218%_
                                             (gx#stx-e _%$e21218%_)
                                             '#f)))))
                                (_%slots21231%_
                                 (let ((_%$e21227%_
                                        (gx#stx-getq 'slots: _%L21179%_)))
                                   (if _%$e21227%_ _%$e21227%_ '())))
                                (_%mixin-slots21238%_
                                 (let ((_%$e21234%_
                                        (gx#stx-getq 'mixin: _%L21179%_)))
                                   (if _%$e21234%_ _%$e21234%_ '())))
                                (_%accessible-slots21241%_
                                 (append (gx#syntax->list _%slots21231%_)
                                         (gx#syntax->list
                                          _%mixin-slots21238%_)))
                                (_%metaclass21244%_
                                 (gx#stx-getq 'metaclass: _%L21179%_))
                                (_%g2124721264%_
                                 (lambda (_%g2124821260%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2124821260%_)))
                                (_%g2124622411%_
                                 (lambda (_%g2124821268%_)
                                   (if (gx#stx-pair/null? _%g2124821268%_)
                                       (let ((_g27207_
                                              (gx#syntax-split-splice
                                               _%g2124821268%_
                                               '0)))
                                         (begin
                                           (let ((_g27208_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27207_)
                                                        (##values-length
                                                         _g27207_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27208_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27208_)))
                                           (let ((_%target2125021271%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g27207_ 0)))
                                                 (_%tl2125221274%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g27207_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2125221274%_)
                                                 (letrec ((_%loop2125321277%_
                                                           (lambda (_%hd2125121281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%slot2125721284%_)
                     (if (gx#stx-pair? _%hd2125121281%_)
                         (let ((_%e2125421287%_
                                (gx#syntax-e _%hd2125121281%_)))
                           (let ((_%lp-hd2125521291%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2125421287%_)))
                                 (_%lp-tl2125621294%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2125421287%_))))
                             (_%loop2125321277%_
                              _%lp-tl2125621294%_
                              (cons _%lp-hd2125521291%_ _%slot2125721284%_))))
                         (let ((_%slot2125821297%_
                                (reverse _%slot2125721284%_)))
                           ((lambda (_%L21301%_)
                              (let* ((_%g2132221330%_
                                      (lambda (_%g2132321326%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2132321326%_)))
                                     (_%g2132122403%_
                                      (lambda (_%g2132321334%_)
                                        ((lambda (_%L21337%_)
                                           (let* ((_%g2135021358%_
                                                   (lambda (_%g2135121354%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2135121354%_)))
                                                  (_%g2134922395%_
                                                   (lambda (_%g2135121362%_)
                                                     ((lambda (_%L21365%_)
                                                        (let* ((_%g2137821386%_
                                                                (lambda (_%g2137921382%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2137921382%_)))
                       (_%g2137722391%_
                        (lambda (_%g2137921390%_)
                          ((lambda (_%L21393%_)
                             (let* ((_%g2140621414%_
                                     (lambda (_%g2140721410%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2140721410%_)))
                                    (_%g2140522387%_
                                     (lambda (_%g2140721418%_)
                                       ((lambda (_%L21421%_)
                                          (let* ((_%g2143421442%_
                                                  (lambda (_%g2143521438%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2143521438%_)))
                                                 (_%g2143322383%_
                                                  (lambda (_%g2143521446%_)
                                                    ((lambda (_%L21449%_)
                                                       (let* ((_%g2146221470%_
                                                               (lambda (_%g2146321466%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2146321466%_)))
                      (_%g2146122379%_
                       (lambda (_%g2146321474%_)
                         ((lambda (_%L21477%_)
                            (let* ((_%g2149021498%_
                                    (lambda (_%g2149121494%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2149121494%_)))
                                   (_%g2148922375%_
                                    (lambda (_%g2149121502%_)
                                      ((lambda (_%L21505%_)
                                         (let* ((_%g2151821526%_
                                                 (lambda (_%g2151921522%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2151921522%_)))
                                                (_%g2151722371%_
                                                 (lambda (_%g2151921530%_)
                                                   ((lambda (_%L21533%_)
                                                      (let* ((_%g2154621554%_
                                                              (lambda (_%g2154721550%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2154721550%_)))
                     (_%g2154522363%_
                      (lambda (_%g2154721558%_)
                        ((lambda (_%L21561%_)
                           (let* ((_%g2157421582%_
                                   (lambda (_%g2157521578%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2157521578%_)))
                                  (_%g2157322359%_
                                   (lambda (_%g2157521586%_)
                                     ((lambda (_%L21589%_)
                                        (let* ((_%g2160221610%_
                                                (lambda (_%g2160321606%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2160321606%_)))
                                               (_%g2160122355%_
                                                (lambda (_%g2160321614%_)
                                                  ((lambda (_%L21617%_)
                                                     (let* ((_%g2163021638%_
                                                             (lambda (_%g2163121634%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g2163121634%_)))
                                                            (_%g2162922320%_
                                                             (lambda (_%g2163121642%_)
                                                               ((lambda (_%L21645%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g2165821666%_
                                  (lambda (_%g2165921662%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2165921662%_)))
                                 (_%g2165722316%_
                                  (lambda (_%g2165921670%_)
                                    ((lambda (_%L21673%_)
                                       (let* ((_%g2168621694%_
                                               (lambda (_%g2168721690%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2168721690%_)))
                                              (_%g2168522304%_
                                               (lambda (_%g2168721698%_)
                                                 ((lambda (_%L21701%_)
                                                    (let* ((_%g2171421722%_
                                                            (lambda (_%g2171521718%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2171521718%_)))
                                                           (_%g2171322292%_
                                                            (lambda (_%g2171521726%_)
                                                              ((lambda (_%L21729%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%g2174221750%_
                                 (lambda (_%g2174321746%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2174321746%_)))
                                (_%g2174122288%_
                                 (lambda (_%g2174321754%_)
                                   ((lambda (_%L21757%_)
                                      (let* ((_%g2177021778%_
                                              (lambda (_%g2177121774%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2177121774%_)))
                                             (_%g2176922284%_
                                              (lambda (_%g2177121782%_)
                                                ((lambda (_%L21785%_)
                                                   (let* ((_%g2179821824%_
                                                           (lambda (_%g2179921820%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g2179921820%_)))
                                                          (_%g2179722196%_
                                                           (lambda (_%g2179921828%_)
                                                             (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2179921828%_)
                         (let ((_g27209_
                                (gx#syntax-split-splice _%g2179921828%_ '0)))
                           (begin
                             (let ((_g27210_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g27209_)
                                          (##values-length _g27209_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g27210_ 2)))
                                   (error "Context expects 2 values"
                                          _g27210_)))
                             (let ((_%target2180221831%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g27209_ 0)))
                                   (_%tl2180421834%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g27209_ 1))))
                               (if (gx#stx-null? _%tl2180421834%_)
                                   (letrec ((_%loop2180521837%_
                                             (lambda (_%hd2180321841%_
                                                      _%def-setf2180921844%_
                                                      _%def-getf2181021846%_)
                                               (if (gx#stx-pair?
                                                    _%hd2180321841%_)
                                                   (let ((_%e2180621849%_
                                                          (gx#syntax-e
                                                           _%hd2180321841%_)))
                                                     (let ((_%lp-hd2180721853%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e2180621849%_)))
                                                           (_%lp-tl2180821856%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e2180621849%_))))
                                                       (if (gx#stx-pair?
                                                            _%lp-hd2180721853%_)
                                                           (let ((_%e2181321859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%lp-hd2180721853%_)))
                     (let ((_%hd2181421863%_
                            (let ()
                              (declare (not safe))
                              (##car _%e2181321859%_)))
                           (_%tl2181521866%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e2181321859%_))))
                       (if (gx#stx-pair? _%tl2181521866%_)
                           (let ((_%e2181621869%_
                                  (gx#syntax-e _%tl2181521866%_)))
                             (let ((_%hd2181721873%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e2181621869%_)))
                                   (_%tl2181821876%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e2181621869%_))))
                               (if (gx#stx-null? _%tl2181821876%_)
                                   (_%loop2180521837%_
                                    _%lp-tl2180821856%_
                                    (cons _%hd2181721873%_
                                          _%def-setf2180921844%_)
                                    (cons _%hd2181421863%_
                                          _%def-getf2181021846%_))
                                   (_%g2179821824%_ _%g2179921828%_))))
                           (_%g2179821824%_ _%g2179921828%_))))
                   (_%g2179821824%_ _%g2179921828%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%def-setf2181121879%_
                                                          (reverse _%def-setf2180921844%_))
                                                         (_%def-getf2181221882%_
                                                          (reverse _%def-getf2181021846%_)))
                                                     ((lambda (_%L21885%_
                                                               _%L21887%_)
                                                        (let* ((_%g2190421930%_
                                                                (lambda (_%g2190521926%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2190521926%_)))
                       (_%g2190322044%_
                        (lambda (_%g2190521934%_)
                          (if (gx#stx-pair/null? _%g2190521934%_)
                              (let ((_g27211_
                                     (gx#syntax-split-splice
                                      _%g2190521934%_
                                      '0)))
                                (begin
                                  (let ((_g27212_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g27211_)
                                               (##values-length _g27211_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g27212_ 2)))
                                        (error "Context expects 2 values"
                                               _g27212_)))
                                  (let ((_%target2190821937%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g27211_ 0)))
                                        (_%tl2191021940%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g27211_ 1))))
                                    (if (gx#stx-null? _%tl2191021940%_)
                                        (letrec ((_%loop2191121943%_
                                                  (lambda (_%hd2190921947%_
                                                           _%def-usetf2191521950%_
                                                           _%def-ugetf2191621952%_)
                                                    (if (gx#stx-pair?
                                                         _%hd2190921947%_)
                                                        (let ((_%e2191221955%_
                                                               (gx#syntax-e
                                                                _%hd2190921947%_)))
                                                          (let ((_%lp-hd2191321959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2191221955%_)))
                        (_%lp-tl2191421962%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2191221955%_))))
                    (if (gx#stx-pair? _%lp-hd2191321959%_)
                        (let ((_%e2191921965%_
                               (gx#syntax-e _%lp-hd2191321959%_)))
                          (let ((_%hd2192021969%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2191921965%_)))
                                (_%tl2192121972%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2191921965%_))))
                            (if (gx#stx-pair? _%tl2192121972%_)
                                (let ((_%e2192221975%_
                                       (gx#syntax-e _%tl2192121972%_)))
                                  (let ((_%hd2192321979%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2192221975%_)))
                                        (_%tl2192421982%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2192221975%_))))
                                    (if (gx#stx-null? _%tl2192421982%_)
                                        (_%loop2191121943%_
                                         _%lp-tl2191421962%_
                                         (cons _%hd2192321979%_
                                               _%def-usetf2191521950%_)
                                         (cons _%hd2192021969%_
                                               _%def-ugetf2191621952%_))
                                        (_%g2190421930%_ _%g2190521934%_))))
                                (_%g2190421930%_ _%g2190521934%_))))
                        (_%g2190421930%_ _%g2190521934%_))))
                (let ((_%def-usetf2191721985%_
                       (reverse _%def-usetf2191521950%_))
                      (_%def-ugetf2191821988%_
                       (reverse _%def-ugetf2191621952%_)))
                  ((lambda (_%L21991%_ _%L21993%_)
                     (_%wrap21090%_
                      (cons (gx#datum->syntax '#f 'begin)
                            (cons _%L21729%_
                                  (cons _%L21785%_
                                        (cons _%L21757%_
                                              (foldr (lambda (_%g2201122020%_
                                                              _%g2201222023%_)
                                                       (cons _%g2201122020%_
                                                             _%g2201222023%_))
                                                     (foldr (lambda (_%g2201322026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g2201422029%_)
                      (cons _%g2201322026%_ _%g2201422029%_))
                    (foldr (lambda (_%g2201522032%_ _%g2201622035%_)
                             (cons _%g2201522032%_ _%g2201622035%_))
                           (foldr (lambda (_%g2201722038%_ _%g2201822041%_)
                                    (cons _%g2201722038%_ _%g2201822041%_))
                                  '()
                                  _%L21991%_)
                           _%L21993%_)
                    _%L21885%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%L21887%_)))))))
                   _%def-usetf2191721985%_
                   _%def-ugetf2191821988%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop2191121943%_
                                           _%target2190821937%_
                                           '()
                                           '()))
                                        (_%g2190421930%_ _%g2190521934%_)))))
                              (_%g2190421930%_ _%g2190521934%_)))))
                  (_%g2190322044%_
                   (gx#stx-map
                    (lambda (_%ref22048%_)
                      (let* ((_%g2205122070%_
                              (lambda (_%g2205222066%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2205222066%_)))
                             (_%g2205022192%_
                              (lambda (_%g2205222074%_)
                                (if (gx#stx-pair? _%g2205222074%_)
                                    (let ((_%e2205622077%_
                                           (gx#syntax-e _%g2205222074%_)))
                                      (let ((_%hd2205722081%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2205622077%_)))
                                            (_%tl2205822084%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2205622077%_))))
                                        (if (gx#stx-pair? _%tl2205822084%_)
                                            (let ((_%e2205922087%_
                                                   (gx#syntax-e
                                                    _%tl2205822084%_)))
                                              (let ((_%hd2206022091%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2205922087%_)))
                                                    (_%tl2206122094%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2205922087%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2206122094%_)
                                                    (let ((_%e2206222097%_
                                                           (gx#syntax-e
                                                            _%tl2206122094%_)))
                                                      (let ((_%hd2206322101%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2206222097%_)))
                    (_%tl2206422104%_
                     (let () (declare (not safe)) (##cdr _%e2206222097%_))))
                (if (gx#stx-null? _%tl2206422104%_)
                    ((lambda (_%L22107%_ _%L22109%_ _%L22110%_)
                       (let* ((_%g2212822143%_
                               (lambda (_%g2212922139%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2212922139%_)))
                              (_%g2212722188%_
                               (lambda (_%g2212922147%_)
                                 (if (gx#stx-pair? _%g2212922147%_)
                                     (let ((_%e2213222150%_
                                            (gx#syntax-e _%g2212922147%_)))
                                       (let ((_%hd2213322154%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2213222150%_)))
                                             (_%tl2213422157%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2213222150%_))))
                                         (if (gx#stx-pair? _%tl2213422157%_)
                                             (let ((_%e2213522160%_
                                                    (gx#syntax-e
                                                     _%tl2213422157%_)))
                                               (let ((_%hd2213622164%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2213522160%_)))
                                                     (_%tl2213722167%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2213522160%_))))
                                                 (if (gx#stx-null?
                                                      _%tl2213722167%_)
                                                     ((lambda (_%L22170%_
                                                               _%L22172%_)
                                                        (cons (_%wrap21090%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'def)
                             (cons _%L22172%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@mop.accessor)
                                                           (cons _%L21421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L22110%_ (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-class-slot-unchecked-accessor)
                         (cons _%L21184%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L22110%_ '()))
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (cons (_%wrap21090%_
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%L22170%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@mop.mutator)
                         (cons _%L21421%_ (cons _%L22110%_ (cons '#f '()))))
                   (cons (cons (gx#datum->syntax
                                '#f
                                'make-class-slot-unchecked-mutator)
                               (cons _%L21184%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L22110%_ '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            '())))
              _%hd2213622164%_
              _%hd2213322154%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2212822143%_
                                                      _%g2212922147%_))))
                                             (_%g2212822143%_
                                              _%g2212922147%_))))
                                     (_%g2212822143%_ _%g2212922147%_)))))
                         (_%g2212722188%_
                          (list (gx#stx-identifier _%L22109%_ '"&" _%L22109%_)
                                (gx#stx-identifier
                                 _%L22107%_
                                 '"&"
                                 _%L22107%_)))))
                     _%hd2206322101%_
                     _%hd2206022091%_
                     _%hd2205722081%_)
                    (_%g2205122070%_ _%g2205222074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2205122070%_
                                                     _%g2205222074%_))))
                                            (_%g2205122070%_
                                             _%g2205222074%_))))
                                    (_%g2205122070%_ _%g2205222074%_)))))
                        (_%g2205022192%_ _%ref22048%_)))
                    _%accessible-slots21241%_))))
              _%def-setf2181121879%_
              _%def-getf2181221882%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop2180521837%_
                                      _%target2180221831%_
                                      '()
                                      '()))
                                   (_%g2179821824%_ _%g2179921828%_)))))
                         (_%g2179821824%_ _%g2179921828%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2179722196%_
                                                      (gx#stx-map
                                                       (lambda (_%ref22200%_)
                                                         (let* ((_%g2220322222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2220422218%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2220422218%_)))
                        (_%g2220222280%_
                         (lambda (_%g2220422226%_)
                           (if (gx#stx-pair? _%g2220422226%_)
                               (let ((_%e2220822229%_
                                      (gx#syntax-e _%g2220422226%_)))
                                 (let ((_%hd2220922233%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2220822229%_)))
                                       (_%tl2221022236%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2220822229%_))))
                                   (if (gx#stx-pair? _%tl2221022236%_)
                                       (let ((_%e2221122239%_
                                              (gx#syntax-e _%tl2221022236%_)))
                                         (let ((_%hd2221222243%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e2221122239%_)))
                                               (_%tl2221322246%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e2221122239%_))))
                                           (if (gx#stx-pair? _%tl2221322246%_)
                                               (let ((_%e2221422249%_
                                                      (gx#syntax-e
                                                       _%tl2221322246%_)))
                                                 (let ((_%hd2221522253%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2221422249%_)))
                                                       (_%tl2221622256%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2221422249%_))))
                                                   (if (gx#stx-null?
                                                        _%tl2221622256%_)
                                                       ((lambda (_%L22259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L22261%_
                         _%L22262%_)
                  (cons (_%wrap21090%_
                         (cons (gx#datum->syntax '#f 'def)
                               (cons _%L22261%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'begin-annotation)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@mop.accessor)
                                                             (cons _%L21421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L22262%_ (cons '#t '()))))
               (cons (cons (gx#datum->syntax '#f 'make-class-slot-accessor)
                           (cons _%L21184%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L22262%_ '()))
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                        (cons (_%wrap21090%_
                               (cons (gx#datum->syntax '#f 'def)
                                     (cons _%L22259%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@mop.mutator)
                           (cons _%L21421%_ (cons _%L22262%_ (cons '#t '()))))
                     (cons (cons (gx#datum->syntax
                                  '#f
                                  'make-class-slot-mutator)
                                 (cons _%L21184%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L22262%_ '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                              '())))
                _%hd2221522253%_
                _%hd2221222243%_
                _%hd2220922233%_)
               (_%g2220322222%_ _%g2220422226%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2220322222%_
                                                _%g2220422226%_))))
                                       (_%g2220322222%_ _%g2220422226%_))))
                               (_%g2220322222%_ _%g2220422226%_)))))
                   (_%g2220222280%_ _%ref22200%_)))
               _%accessible-slots21241%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g2177121782%_))))
                                        (_%g2176922284%_
                                         (_%wrap21090%_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _%L21181%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@mop.predicate)
                                      (cons _%L21421%_ '()))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'make-class-predicate)
                                            (cons _%L21184%_ '()))
                                      '())))
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g2174321754%_))))
                           (_%g2174122288%_
                            (if (gx#stx-false? _%L21182%_)
                                (cons (gx#datum->syntax '#f 'begin) '())
                                (_%wrap21090%_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _%L21182%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin-annotation)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '@mop.constructor)
                             (cons _%L21421%_ '()))
                       (cons (cons (gx#datum->syntax '#f 'lambda)
                                   (cons (gx#datum->syntax '#f '$args)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'apply)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'make-instance)
                                                           (cons _%L21184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))))
                       _%g2171521726%_))))
              (_%g2171322292%_
               (_%wrap21090%_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _%L21184%_
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.class)
                                                    (cons _%L21337%_
                                                          (cons _%L21449%_
                                                                (cons (foldr (lambda (_%g2229522298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              _%g2229622301%_)
                                       (cons _%g2229522298%_ _%g2229622301%_))
                                     '()
                                     _%L21301%_)
                              (cons _%L21393%_
                                    (cons _%L21477%_
                                          (cons _%L21505%_
                                                (cons _%L21533%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L21701%_ '())))
                                  '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2168721698%_))))
                                         (_%g2168522304%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-class-type)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L21337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote) (cons _%L21365%_ '()))
                    (cons _%L21673%_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons (foldr (lambda (_%g2230722310%_
                                                            _%g2230822313%_)
                                                     (cons _%g2230722310%_
                                                           _%g2230822313%_))
                                                   '()
                                                   _%L21301%_)
                                            '()))
                                (cons _%L21645%_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L21393%_ '()))
                                            '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g2165921670%_))))
                            (_%g2165722316%_
                             (cons (gx#datum->syntax '#f 'list) _%L21183%_))))
                        _%g2163121642%_))))
               (_%g2162922320%_
                (if (gx#stx-e _%metaclass21244%_)
                    (let* ((_%g2232422332%_
                            (lambda (_%g2232522328%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2232522328%_)))
                           (_%g2232322351%_
                            (lambda (_%g2232522336%_)
                              ((lambda (_%L22339%_)
                                 (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons 'metaclass:
                                                         (cons '::
                                                               (cons _%L22339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '::
                                                   (cons _%L21617%_ '())))))
                               _%g2232522336%_))))
                      (_%g2232322351%_ _%metaclass21244%_))
                    _%L21617%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g2160321614%_))))
                                          (_%g2160122355%_
                                           (if _%struct?21224%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         (cons 'struct: '#t))
                   (cons ':: (cons _%L21589%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%L21589%_))))
                                      _%g2157521586%_))))
                             (_%g2157322359%_
                              (if (gx#stx-e _%L21505%_)
                                  (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons 'final: '#t))
                                              (cons '::
                                                    (cons _%L21561%_ '()))))
                                  _%L21561%_))))
                         _%g2154721558%_))))
                (_%g2154522363%_
                 (let ((_%$e22367%_ (gx#stx-getq 'properties: _%L21179%_)))
                   (if _%$e22367%_
                       _%$e22367%_
                       (cons (gx#datum->syntax '#f '@list) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g2151921530%_))))
                                           (_%g2151722371%_
                                            (if (gx#stx-e _%metaclass21244%_)
                                                (gx#core-quote-syntax
                                                 _%metaclass21244%_)
                                                '#f))))
                                       _%g2149121502%_))))
                              (_%g2148922375%_
                               (gx#stx-getq 'final: _%L21179%_))))
                          _%g2146321474%_))))
                 (_%g2146122379%_ _%struct?21224%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2143521446%_))))
                                            (_%g2143322383%_
                                             (gx#stx-map
                                              gx#core-quote-syntax
                                              _%L21183%_))))
                                        _%g2140721418%_))))
                               (_%g2140522387%_
                                (gx#core-quote-syntax _%L21184%_))))
                           _%g2137921390%_))))
                  (_%g2137722391%_ (gx#stx-getq 'constructor: _%L21179%_))))
              _%g2135121362%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2134922395%_
                                              (let ((_%$e22399%_
                                                     (gx#stx-getq
                                                      'name:
                                                      _%L21179%_)))
                                                (if _%$e22399%_
                                                    _%$e22399%_
                                                    _%L21184%_)))))
                                         _%g2132321334%_))))
                                (_%g2132122403%_
                                 (let ((_%$e22407%_
                                        (gx#stx-getq 'id: _%L21179%_)))
                                   (if _%$e22407%_
                                       _%$e22407%_
                                       (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                        _%L21184%_))))))
                            _%slot2125821297%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2125321277%_
                                                    _%target2125021271%_
                                                    '()))
                                                 (_%g2124721264%_
                                                  _%g2124821268%_)))))
                                       (_%g2124721264%_ _%g2124821268%_)))))
                           (_%g2124622411%_
                            (gx#stx-map _%slot-name21092%_ _%slots21231%_)))
                         (_%g2109521122%_ _%g2109621126%_)))
                   _%tl2111621176%_
                   _%hd2111521173%_
                   _%hd2111221163%_
                   _%hd2110921153%_
                   _%hd2110621143%_)))
              (_%g2109521122%_ _%g2109621126%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2109521122%_
                                               _%g2109621126%_))))
                                      (_%g2109521122%_ _%g2109621126%_))))
                              (_%g2109521122%_ _%g2109621126%_))))
                      (_%g2109521122%_ _%g2109621126%_)))))
          (_%g2109422415%_ _%stx21086%_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_%stx22529%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22529%_ '#t)))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_%stx22532%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22532%_ '#f))))
