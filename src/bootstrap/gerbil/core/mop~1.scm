(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_%type-t22501%_)
      (let ((_%$e22504%_ (gx#module-context-ns (gx#current-expander-context))))
        (if _%$e22504%_
            ((lambda (_%ns22508%_)
               (gx#stx-identifier
                _%type-t22501%_
                _%ns22508%_
                '"#"
                _%type-t22501%_
                '"::t"))
             _%$e22504%_)
            (let ((_%mid22513%_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _%type-t22501%_
               _%mid22513%_
               '"#"
               _%type-t22501%_
               '"::t"))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_%type-t22498%_)
      (if (gx#module-context? (gx#current-expander-context))
          (let ()
            (declare (not safe))
            (|gerbil/core/mop~MOP-1[1]#module-type-id| _%type-t22498%_))
          (make-symbol '"__" (gensym (gx#stx-e _%type-t22498%_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_%stx21076%_ _%struct?21078%_)
      (letrec ((_%wrap21080%_
                (lambda (_%e-stx22495%_)
                  (gx#stx-wrap-source
                   _%e-stx22495%_
                   (gx#stx-source _%stx21076%_))))
               (_%slot-name21082%_
                (lambda (_%slot-spec22412%_)
                  (let* ((_%g2241522434%_
                          (lambda (_%g2241622430%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2241622430%_)))
                         (_%g2241422491%_
                          (lambda (_%g2241622438%_)
                            (if (gx#stx-pair? _%g2241622438%_)
                                (let ((_%e2242222441%_
                                       (gx#syntax-e _%g2241622438%_)))
                                  (let ((_%hd2242122445%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2242222441%_)))
                                        (_%tl2242022448%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2242222441%_))))
                                    (if (gx#stx-pair? _%tl2242022448%_)
                                        (let ((_%e2242522451%_
                                               (gx#syntax-e _%tl2242022448%_)))
                                          (let ((_%hd2242422455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2242522451%_)))
                                                (_%tl2242322458%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2242522451%_))))
                                            (if (gx#stx-pair? _%tl2242322458%_)
                                                (let ((_%e2242822461%_
                                                       (gx#syntax-e
                                                        _%tl2242322458%_)))
                                                  (let ((_%hd2242722465%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2242822461%_)))
                                                        (_%tl2242622468%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2242822461%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2242622468%_)
                                                        ((lambda (_%L22471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L22473%_
                          _%L22474%_)
                   _%L22474%_)
                 _%hd2242722465%_
                 _%hd2242422455%_
                 _%hd2242122445%_)
                (let ()
                  (declare (not safe))
                  (_%g2241522434%_ _%g2241622438%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2241522434%_
                                                   _%g2241622438%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2241522434%_ _%g2241622438%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2241522434%_ _%g2241622438%_))))))
                    (declare (not safe))
                    (_%g2241422491%_ _%slot-spec22412%_))))
               (_%class-opt?21083%_
                (lambda (_%key22409%_)
                  (let ((__tmp27197 (gx#stx-e _%key22409%_)))
                    (declare (not safe))
                    (##memq __tmp27197
                            '(struct:
                              slots:
                              id:
                              name:
                              properties:
                              constructor:
                              final:
                              mixin:
                              metaclass:))))))
        (let* ((_%g2108521112%_
                (lambda (_%g2108621108%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2108621108%_)))
               (_%g2108422405%_
                (lambda (_%g2108621116%_)
                  (if (gx#stx-pair? _%g2108621116%_)
                      (let ((_%e2109421119%_ (gx#syntax-e _%g2108621116%_)))
                        (let ((_%hd2109321123%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2109421119%_)))
                              (_%tl2109221126%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2109421119%_))))
                          (if (gx#stx-pair? _%tl2109221126%_)
                              (let ((_%e2109721129%_
                                     (gx#syntax-e _%tl2109221126%_)))
                                (let ((_%hd2109621133%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2109721129%_)))
                                      (_%tl2109521136%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2109721129%_))))
                                  (if (gx#stx-pair? _%tl2109521136%_)
                                      (let ((_%e2110021139%_
                                             (gx#syntax-e _%tl2109521136%_)))
                                        (let ((_%hd2109921143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2110021139%_)))
                                              (_%tl2109821146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2110021139%_))))
                                          (if (gx#stx-pair? _%tl2109821146%_)
                                              (let ((_%e2110321149%_
                                                     (gx#syntax-e
                                                      _%tl2109821146%_)))
                                                (let ((_%hd2110221153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2110321149%_)))
                                                      (_%tl2110121156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2110321149%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl2110121156%_)
                                                      (let ((_%e2110621159%_
                                                             (gx#syntax-e
                                                              _%tl2110121156%_)))
                                                        (let ((_%hd2110521163%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2110621159%_)))
                      (_%tl2110421166%_
                       (let () (declare (not safe)) (##cdr _%e2110621159%_))))
                  ((lambda (_%L21169%_
                            _%L21171%_
                            _%L21172%_
                            _%L21173%_
                            _%L21174%_)
                     (if (and (gx#identifier? _%L21174%_)
                              (gx#identifier-list? _%L21173%_)
                              (or (gx#identifier? _%L21172%_)
                                  (gx#stx-false? _%L21172%_))
                              (gx#identifier? _%L21171%_)
                              (gx#stx-plist? _%L21169%_ _%class-opt?21083%_))
                         (let* ((_%struct?21214%_
                                 (let ((_%$e21204%_ _%struct?21078%_))
                                   (if _%$e21204%_
                                       _%$e21204%_
                                       (let ((_%$e21208%_
                                              (gx#stx-getq
                                               'struct:
                                               _%L21169%_)))
                                         (if _%$e21208%_
                                             (gx#stx-e _%$e21208%_)
                                             (let () '#f))))))
                                (_%slots21221%_
                                 (let ((_%$e21217%_
                                        (gx#stx-getq 'slots: _%L21169%_)))
                                   (if _%$e21217%_ _%$e21217%_ '())))
                                (_%mixin-slots21228%_
                                 (let ((_%$e21224%_
                                        (gx#stx-getq 'mixin: _%L21169%_)))
                                   (if _%$e21224%_ _%$e21224%_ '())))
                                (_%accessible-slots21231%_
                                 (append (gx#syntax->list _%slots21221%_)
                                         (gx#syntax->list
                                          _%mixin-slots21228%_)))
                                (_%metaclass21234%_
                                 (gx#stx-getq 'metaclass: _%L21169%_))
                                (_%g2123721254%_
                                 (lambda (_%g2123821250%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2123821250%_)))
                                (_%g2123622401%_
                                 (lambda (_%g2123821258%_)
                                   (if (gx#stx-pair/null? _%g2123821258%_)
                                       (let ((_g27198_
                                              (gx#syntax-split-splice
                                               _%g2123821258%_
                                               '0)))
                                         (begin
                                           (let ((_g27199_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27198_)
                                                        (##vector-length
                                                         _g27198_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27199_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27199_)))
                                           (let ((_%target2124021261%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g27198_ 0)))
                                                 (_%tl2124221264%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g27198_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2124221264%_)
                                                 (letrec ((_%loop2124321267%_
                                                           (lambda (_%hd2124121271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%slot2124721274%_)
                     (if (gx#stx-pair? _%hd2124121271%_)
                         (let ((_%e2124421277%_
                                (gx#syntax-e _%hd2124121271%_)))
                           (let ((_%lp-hd2124521281%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2124421277%_)))
                                 (_%lp-tl2124621284%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2124421277%_))))
                             (let ((__tmp27200
                                    (cons _%lp-hd2124521281%_
                                          _%slot2124721274%_)))
                               (declare (not safe))
                               (_%loop2124321267%_
                                _%lp-tl2124621284%_
                                __tmp27200))))
                         (let ((_%slot2124821287%_
                                (reverse _%slot2124721274%_)))
                           ((lambda (_%L21291%_)
                              (let ()
                                (let* ((_%g2131221320%_
                                        (lambda (_%g2131321316%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2131321316%_)))
                                       (_%g2131122393%_
                                        (lambda (_%g2131321324%_)
                                          ((lambda (_%L21327%_)
                                             (let ()
                                               (let* ((_%g2134021348%_
                                                       (lambda (_%g2134121344%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2134121344%_)))
                                                      (_%g2133922385%_
                                                       (lambda (_%g2134121352%_)
                                                         ((lambda (_%L21355%_)
                                                            (let ()
                                                              (let* ((_%g2136821376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2136921372%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2136921372%_)))
                             (_%g2136722381%_
                              (lambda (_%g2136921380%_)
                                ((lambda (_%L21383%_)
                                   (let ()
                                     (let* ((_%g2139621404%_
                                             (lambda (_%g2139721400%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g2139721400%_)))
                                            (_%g2139522377%_
                                             (lambda (_%g2139721408%_)
                                               ((lambda (_%L21411%_)
                                                  (let ()
                                                    (let* ((_%g2142421432%_
                                                            (lambda (_%g2142521428%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2142521428%_)))
                                                           (_%g2142322373%_
                                                            (lambda (_%g2142521436%_)
                                                              ((lambda (_%L21439%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_%g2145221460%_
                                   (lambda (_%g2145321456%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2145321456%_)))
                                  (_%g2145122369%_
                                   (lambda (_%g2145321464%_)
                                     ((lambda (_%L21467%_)
                                        (let ()
                                          (let* ((_%g2148021488%_
                                                  (lambda (_%g2148121484%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2148121484%_)))
                                                 (_%g2147922365%_
                                                  (lambda (_%g2148121492%_)
                                                    ((lambda (_%L21495%_)
                                                       (let ()
                                                         (let* ((_%g2150821516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2150921512%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2150921512%_)))
                        (_%g2150722361%_
                         (lambda (_%g2150921520%_)
                           ((lambda (_%L21523%_)
                              (let ()
                                (let* ((_%g2153621544%_
                                        (lambda (_%g2153721540%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2153721540%_)))
                                       (_%g2153522353%_
                                        (lambda (_%g2153721548%_)
                                          ((lambda (_%L21551%_)
                                             (let ()
                                               (let* ((_%g2156421572%_
                                                       (lambda (_%g2156521568%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2156521568%_)))
                                                      (_%g2156322349%_
                                                       (lambda (_%g2156521576%_)
                                                         ((lambda (_%L21579%_)
                                                            (let ()
                                                              (let* ((_%g2159221600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2159321596%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2159321596%_)))
                             (_%g2159122345%_
                              (lambda (_%g2159321604%_)
                                ((lambda (_%L21607%_)
                                   (let ()
                                     (let* ((_%g2162021628%_
                                             (lambda (_%g2162121624%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g2162121624%_)))
                                            (_%g2161922310%_
                                             (lambda (_%g2162121632%_)
                                               ((lambda (_%L21635%_)
                                                  (let ()
                                                    (let* ((_%g2164821656%_
                                                            (lambda (_%g2164921652%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2164921652%_)))
                                                           (_%g2164722306%_
                                                            (lambda (_%g2164921660%_)
                                                              ((lambda (_%L21663%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_%g2167621684%_
                                   (lambda (_%g2167721680%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2167721680%_)))
                                  (_%g2167522294%_
                                   (lambda (_%g2167721688%_)
                                     ((lambda (_%L21691%_)
                                        (let ()
                                          (let* ((_%g2170421712%_
                                                  (lambda (_%g2170521708%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2170521708%_)))
                                                 (_%g2170322282%_
                                                  (lambda (_%g2170521716%_)
                                                    ((lambda (_%L21719%_)
                                                       (let ()
                                                         (let* ((_%g2173221740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2173321736%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2173321736%_)))
                        (_%g2173122278%_
                         (lambda (_%g2173321744%_)
                           ((lambda (_%L21747%_)
                              (let ()
                                (let* ((_%g2176021768%_
                                        (lambda (_%g2176121764%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2176121764%_)))
                                       (_%g2175922274%_
                                        (lambda (_%g2176121772%_)
                                          ((lambda (_%L21775%_)
                                             (let ()
                                               (let* ((_%g2178821814%_
                                                       (lambda (_%g2178921810%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2178921810%_)))
                                                      (_%g2178722186%_
                                                       (lambda (_%g2178921818%_)
                                                         (if (gx#stx-pair/null?
                                                              _%g2178921818%_)
                                                             (let ((_g27201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _%g2178921818%_ '0)))
                       (begin
                         (let ((_g27202_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g27201_)
                                      (##vector-length _g27201_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g27202_ 2)))
                               (error "Context expects 2 values" _g27202_)))
                         (let ((_%target2179221821%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g27201_ 0)))
                               (_%tl2179421824%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g27201_ 1))))
                           (if (gx#stx-null? _%tl2179421824%_)
                               (letrec ((_%loop2179521827%_
                                         (lambda (_%hd2179321831%_
                                                  _%def-setf2179921834%_
                                                  _%def-getf2180021836%_)
                                           (if (gx#stx-pair? _%hd2179321831%_)
                                               (let ((_%e2179621839%_
                                                      (gx#syntax-e
                                                       _%hd2179321831%_)))
                                                 (let ((_%lp-hd2179721843%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2179621839%_)))
                                                       (_%lp-tl2179821846%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2179621839%_))))
                                                   (if (gx#stx-pair?
                                                        _%lp-hd2179721843%_)
                                                       (let ((_%e2180521849%_
                                                              (gx#syntax-e
                                                               _%lp-hd2179721843%_)))
                                                         (let ((_%hd2180421853%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2180521849%_)))
                       (_%tl2180321856%_
                        (let () (declare (not safe)) (##cdr _%e2180521849%_))))
                   (if (gx#stx-pair? _%tl2180321856%_)
                       (let ((_%e2180821859%_ (gx#syntax-e _%tl2180321856%_)))
                         (let ((_%hd2180721863%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2180821859%_)))
                               (_%tl2180621866%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2180821859%_))))
                           (if (gx#stx-null? _%tl2180621866%_)
                               (let ((__tmp27204
                                      (cons _%hd2180721863%_
                                            _%def-setf2179921834%_))
                                     (__tmp27203
                                      (cons _%hd2180421853%_
                                            _%def-getf2180021836%_)))
                                 (declare (not safe))
                                 (_%loop2179521827%_
                                  _%lp-tl2179821846%_
                                  __tmp27204
                                  __tmp27203))
                               (let ()
                                 (declare (not safe))
                                 (_%g2178821814%_ _%g2178921818%_)))))
                       (let ()
                         (declare (not safe))
                         (_%g2178821814%_ _%g2178921818%_)))))
               (let ()
                 (declare (not safe))
                 (_%g2178821814%_ _%g2178921818%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%def-setf2180121869%_
                                                      (reverse _%def-setf2179921834%_))
                                                     (_%def-getf2180221872%_
                                                      (reverse _%def-getf2180021836%_)))
                                                 ((lambda (_%L21875%_
                                                           _%L21877%_)
                                                    (let ()
                                                      (let* ((_%g2189421920%_
                                                              (lambda (_%g2189521916%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2189521916%_)))
                     (_%g2189322034%_
                      (lambda (_%g2189521924%_)
                        (if (gx#stx-pair/null? _%g2189521924%_)
                            (let ((_g27205_
                                   (gx#syntax-split-splice
                                    _%g2189521924%_
                                    '0)))
                              (begin
                                (let ((_g27206_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g27205_)
                                             (##vector-length _g27205_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g27206_ 2)))
                                      (error "Context expects 2 values"
                                             _g27206_)))
                                (let ((_%target2189821927%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g27205_ 0)))
                                      (_%tl2190021930%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g27205_ 1))))
                                  (if (gx#stx-null? _%tl2190021930%_)
                                      (letrec ((_%loop2190121933%_
                                                (lambda (_%hd2189921937%_
                                                         _%def-usetf2190521940%_
                                                         _%def-ugetf2190621942%_)
                                                  (if (gx#stx-pair?
                                                       _%hd2189921937%_)
                                                      (let ((_%e2190221945%_
                                                             (gx#syntax-e
                                                              _%hd2189921937%_)))
                                                        (let ((_%lp-hd2190321949%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2190221945%_)))
                      (_%lp-tl2190421952%_
                       (let () (declare (not safe)) (##cdr _%e2190221945%_))))
                  (if (gx#stx-pair? _%lp-hd2190321949%_)
                      (let ((_%e2191121955%_
                             (gx#syntax-e _%lp-hd2190321949%_)))
                        (let ((_%hd2191021959%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2191121955%_)))
                              (_%tl2190921962%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2191121955%_))))
                          (if (gx#stx-pair? _%tl2190921962%_)
                              (let ((_%e2191421965%_
                                     (gx#syntax-e _%tl2190921962%_)))
                                (let ((_%hd2191321969%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2191421965%_)))
                                      (_%tl2191221972%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2191421965%_))))
                                  (if (gx#stx-null? _%tl2191221972%_)
                                      (let ((__tmp27208
                                             (cons _%hd2191321969%_
                                                   _%def-usetf2190521940%_))
                                            (__tmp27207
                                             (cons _%hd2191021959%_
                                                   _%def-ugetf2190621942%_)))
                                        (declare (not safe))
                                        (_%loop2190121933%_
                                         _%lp-tl2190421952%_
                                         __tmp27208
                                         __tmp27207))
                                      (let ()
                                        (declare (not safe))
                                        (_%g2189421920%_ _%g2189521924%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g2189421920%_ _%g2189521924%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g2189421920%_ _%g2189521924%_)))))
              (let ((_%def-usetf2190721975%_ (reverse _%def-usetf2190521940%_))
                    (_%def-ugetf2190821978%_
                     (reverse _%def-ugetf2190621942%_)))
                ((lambda (_%L21981%_ _%L21983%_)
                   (let ((__tmp27209
                          (cons (gx#datum->syntax '#f 'begin)
                                (cons _%L21719%_
                                      (cons _%L21775%_
                                            (cons _%L21747%_
                                                  (foldr (lambda (_%g2200122010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2200222013%_)
                   (cons _%g2200122010%_ _%g2200222013%_))
                 (foldr (lambda (_%g2200322016%_ _%g2200422019%_)
                          (cons _%g2200322016%_ _%g2200422019%_))
                        (foldr (lambda (_%g2200522022%_ _%g2200622025%_)
                                 (cons _%g2200522022%_ _%g2200622025%_))
                               (foldr (lambda (_%g2200722028%_ _%g2200822031%_)
                                        (cons _%g2200722028%_ _%g2200822031%_))
                                      '()
                                      _%L21981%_)
                               _%L21983%_)
                        _%L21875%_)
                 _%L21877%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (declare (not safe))
                     (_%wrap21080%_ __tmp27209)))
                 _%def-usetf2190721975%_
                 _%def-ugetf2190821978%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_%loop2190121933%_
                                           _%target2189821927%_
                                           '()
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_%g2189421920%_ _%g2189521924%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g2189421920%_ _%g2189521924%_)))))
                     (__tmp27210
                      (gx#stx-map
                       (lambda (_%ref22038%_)
                         (let* ((_%g2204122060%_
                                 (lambda (_%g2204222056%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2204222056%_)))
                                (_%g2204022182%_
                                 (lambda (_%g2204222064%_)
                                   (if (gx#stx-pair? _%g2204222064%_)
                                       (let ((_%e2204822067%_
                                              (gx#syntax-e _%g2204222064%_)))
                                         (let ((_%hd2204722071%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e2204822067%_)))
                                               (_%tl2204622074%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e2204822067%_))))
                                           (if (gx#stx-pair? _%tl2204622074%_)
                                               (let ((_%e2205122077%_
                                                      (gx#syntax-e
                                                       _%tl2204622074%_)))
                                                 (let ((_%hd2205022081%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2205122077%_)))
                                                       (_%tl2204922084%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2205122077%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2204922084%_)
                                                       (let ((_%e2205422087%_
                                                              (gx#syntax-e
                                                               _%tl2204922084%_)))
                                                         (let ((_%hd2205322091%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2205422087%_)))
                       (_%tl2205222094%_
                        (let () (declare (not safe)) (##cdr _%e2205422087%_))))
                   (if (gx#stx-null? _%tl2205222094%_)
                       ((lambda (_%L22097%_ _%L22099%_ _%L22100%_)
                          (let* ((_%g2211822133%_
                                  (lambda (_%g2211922129%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2211922129%_)))
                                 (_%g2211722178%_
                                  (lambda (_%g2211922137%_)
                                    (if (gx#stx-pair? _%g2211922137%_)
                                        (let ((_%e2212422140%_
                                               (gx#syntax-e _%g2211922137%_)))
                                          (let ((_%hd2212322144%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2212422140%_)))
                                                (_%tl2212222147%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2212422140%_))))
                                            (if (gx#stx-pair? _%tl2212222147%_)
                                                (let ((_%e2212722150%_
                                                       (gx#syntax-e
                                                        _%tl2212222147%_)))
                                                  (let ((_%hd2212622154%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2212722150%_)))
                                                        (_%tl2212522157%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2212722150%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2212522157%_)
                                                        ((lambda (_%L22160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L22162%_)
                   (let ()
                     (cons (let ((__tmp27211
                                  (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L22162%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.accessor)
                              (cons _%L21411%_
                                    (cons _%L22100%_ (cons '#f '()))))
                        (cons (cons (gx#datum->syntax
                                     '#f
                                     'make-class-slot-unchecked-accessor)
                                    (cons _%L21174%_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _%L22100%_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                             (declare (not safe))
                             (_%wrap21080%_ __tmp27211))
                           (cons (let ((__tmp27212
                                        (cons (gx#datum->syntax '#f 'def)
                                              (cons _%L22160%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation)
                        (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                    (cons _%L21411%_
                                          (cons _%L22100%_ (cons '#f '()))))
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'make-class-slot-unchecked-mutator)
                                          (cons _%L21174%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L22100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (_%wrap21080%_ __tmp27212))
                                 '()))))
                 _%hd2212622154%_
                 _%hd2212322144%_)
                (let ()
                  (declare (not safe))
                  (_%g2211822133%_ _%g2211922137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2211822133%_
                                                   _%g2211922137%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2211822133%_ _%g2211922137%_)))))
                                 (__tmp27213
                                  (list (gx#stx-identifier
                                         _%L22099%_
                                         '"&"
                                         _%L22099%_)
                                        (gx#stx-identifier
                                         _%L22097%_
                                         '"&"
                                         _%L22097%_))))
                            (declare (not safe))
                            (_%g2211722178%_ __tmp27213)))
                        _%hd2205322091%_
                        _%hd2205022081%_
                        _%hd2204722071%_)
                       (let ()
                         (declare (not safe))
                         (_%g2204122060%_ _%g2204222064%_)))))
               (let ()
                 (declare (not safe))
                 (_%g2204122060%_ _%g2204222064%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g2204122060%_
                                                  _%g2204222064%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g2204122060%_ _%g2204222064%_))))))
                           (declare (not safe))
                           (_%g2204022182%_ _%ref22038%_)))
                       _%accessible-slots21231%_)))
                (declare (not safe))
                (_%g2189322034%_ __tmp27210))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%def-setf2180121869%_
                                                  _%def-getf2180221872%_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_%loop2179521827%_
                                    _%target2179221821%_
                                    '()
                                    '())))
                               (let ()
                                 (declare (not safe))
                                 (_%g2178821814%_ _%g2178921818%_))))))
                     (let ()
                       (declare (not safe))
                       (_%g2178821814%_ _%g2178921818%_)))))
              (__tmp27214
               (gx#stx-map
                (lambda (_%ref22190%_)
                  (let* ((_%g2219322212%_
                          (lambda (_%g2219422208%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2219422208%_)))
                         (_%g2219222270%_
                          (lambda (_%g2219422216%_)
                            (if (gx#stx-pair? _%g2219422216%_)
                                (let ((_%e2220022219%_
                                       (gx#syntax-e _%g2219422216%_)))
                                  (let ((_%hd2219922223%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2220022219%_)))
                                        (_%tl2219822226%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2220022219%_))))
                                    (if (gx#stx-pair? _%tl2219822226%_)
                                        (let ((_%e2220322229%_
                                               (gx#syntax-e _%tl2219822226%_)))
                                          (let ((_%hd2220222233%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2220322229%_)))
                                                (_%tl2220122236%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2220322229%_))))
                                            (if (gx#stx-pair? _%tl2220122236%_)
                                                (let ((_%e2220622239%_
                                                       (gx#syntax-e
                                                        _%tl2220122236%_)))
                                                  (let ((_%hd2220522243%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2220622239%_)))
                                                        (_%tl2220422246%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2220622239%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2220422246%_)
                                                        ((lambda (_%L22249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L22251%_
                          _%L22252%_)
                   (cons (let ((__tmp27215
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _%L22251%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@mop.accessor)
                            (cons _%L21411%_ (cons _%L22252%_ (cons '#t '()))))
                      (cons (cons (gx#datum->syntax
                                   '#f
                                   'make-class-slot-accessor)
                                  (cons _%L21174%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%L22252%_ '()))
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                           (declare (not safe))
                           (_%wrap21080%_ __tmp27215))
                         (cons (let ((__tmp27216
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _%L22249%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@mop.mutator)
                                  (cons _%L21411%_
                                        (cons _%L22252%_ (cons '#t '()))))
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'make-class-slot-mutator)
                                        (cons _%L21174%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%L22252%_
                                                                '()))
                                                    '())))
                                  '())))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (declare (not safe))
                                 (_%wrap21080%_ __tmp27216))
                               '())))
                 _%hd2220522243%_
                 _%hd2220222233%_
                 _%hd2219922223%_)
                (let ()
                  (declare (not safe))
                  (_%g2219322212%_ _%g2219422216%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2219322212%_
                                                   _%g2219422216%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2219322212%_ _%g2219422216%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2219322212%_ _%g2219422216%_))))))
                    (declare (not safe))
                    (_%g2219222270%_ _%ref22190%_)))
                _%accessible-slots21231%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_%g2178722186%_
                                                  __tmp27214))))
                                           _%g2176121772%_)))
                                       (__tmp27217
                                        (let ((__tmp27218
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L21171%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '@mop.predicate)
                                           (cons _%L21411%_ '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'make-class-predicate)
                                                 (cons _%L21174%_ '()))
                                           '())))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (_%wrap21080%_ __tmp27218))))
                                  (declare (not safe))
                                  (_%g2175922274%_ __tmp27217))))
                            _%g2173321744%_)))
                        (__tmp27219
                         (if (gx#stx-false? _%L21172%_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (let ((__tmp27220
                                    (cons (gx#datum->syntax '#f 'def)
                                          (cons _%L21172%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'begin-annotation)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '@mop.constructor)
                                (cons _%L21411%_ '()))
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (gx#datum->syntax '#f '$args)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'apply)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'make-instance)
                                                              (cons _%L21174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                '())))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (_%wrap21080%_ __tmp27220)))))
                   (declare (not safe))
                   (_%g2173122278%_ __tmp27219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2170521716%_)))
                                                 (__tmp27221
                                                  (let ((__tmp27222
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'def)
                                                               (cons _%L21174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'begin-annotation)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@mop.class)
                                                     (cons _%L21327%_
                                                           (cons _%L21439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (foldr (lambda (_%g2228522288%_ _%g2228622291%_)
                                        (cons _%g2228522288%_ _%g2228622291%_))
                                      '()
                                      _%L21291%_)
                               (cons _%L21383%_
                                     (cons _%L21467%_
                                           (cons _%L21495%_
                                                 (cons _%L21523%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L21691%_ '())))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%wrap21080%_
                                                     __tmp27222))))
                                            (declare (not safe))
                                            (_%g2170322282%_ __tmp27221))))
                                      _%g2167721688%_)))
                                  (__tmp27223
                                   (cons (gx#datum->syntax
                                          '#f
                                          'make-class-type)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L21327%_ '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%L21355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L21663%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons (foldr (lambda (_%g2229722300%_
                                                     _%g2229822303%_)
                                              (cons _%g2229722300%_
                                                    _%g2229822303%_))
                                            '()
                                            _%L21291%_)
                                     '()))
                         (cons _%L21635%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L21383%_ '()))
                                     '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (_%g2167522294%_ __tmp27223))))
                       _%g2164921660%_)))
                   (__tmp27224 (cons (gx#datum->syntax '#f 'list) _%L21173%_)))
              (declare (not safe))
              (_%g2164722306%_ __tmp27224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g2162121632%_)))
                                            (__tmp27225
                                             (if (gx#stx-e _%metaclass21234%_)
                                                 (let* ((_%g2231422322%_
                                                         (lambda (_%g2231522318%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2231522318%_)))
                                                        (_%g2231322341%_
                                                         (lambda (_%g2231522326%_)
                                                           ((lambda (_%L22329%_)
                                                              (let ()
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@list)
                              (cons (cons (gx#datum->syntax '#f '@list)
                                          (cons 'metaclass:
                                                (cons '::
                                                      (cons _%L22329%_ '()))))
                                    (cons ':: (cons _%L21607%_ '()))))))
                    _%g2231522326%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%g2231322341%_
                                                    _%metaclass21234%_))
                                                 _%L21607%_)))
                                       (declare (not safe))
                                       (_%g2161922310%_ __tmp27225))))
                                 _%g2159321604%_)))
                             (__tmp27226
                              (if _%struct?21214%_
                                  (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons 'struct: '#t))
                                              (cons '::
                                                    (cons _%L21579%_ '()))))
                                  _%L21579%_)))
                        (declare (not safe))
                        (_%g2159122345%_ __tmp27226))))
                  _%g2156521576%_)))
              (__tmp27227
               (if (gx#stx-e _%L21495%_)
                   (cons (gx#datum->syntax '#f '@list)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons 'final: '#t))
                               (cons ':: (cons _%L21551%_ '()))))
                   _%L21551%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_%g2156322349%_
                                                  __tmp27227))))
                                           _%g2153721548%_)))
                                       (__tmp27228
                                        (let ((_%$e22357%_
                                               (gx#stx-getq
                                                'properties:
                                                _%L21169%_)))
                                          (if _%$e22357%_
                                              _%$e22357%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    '())))))
                                  (declare (not safe))
                                  (_%g2153522353%_ __tmp27228))))
                            _%g2150921520%_)))
                        (__tmp27229
                         (if (gx#stx-e _%metaclass21234%_)
                             (gx#core-quote-syntax _%metaclass21234%_)
                             '#f)))
                   (declare (not safe))
                   (_%g2150722361%_ __tmp27229))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2148121492%_)))
                                                 (__tmp27230
                                                  (gx#stx-getq
                                                   'final:
                                                   _%L21169%_)))
                                            (declare (not safe))
                                            (_%g2147922365%_ __tmp27230))))
                                      _%g2145321464%_))))
                             (declare (not safe))
                             (_%g2145122369%_ _%struct?21214%_))))
                       _%g2142521436%_)))
                   (__tmp27231 (gx#stx-map gx#core-quote-syntax _%L21173%_)))
              (declare (not safe))
              (_%g2142322373%_ __tmp27231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g2139721408%_)))
                                            (__tmp27232
                                             (gx#core-quote-syntax
                                              _%L21174%_)))
                                       (declare (not safe))
                                       (_%g2139522377%_ __tmp27232))))
                                 _%g2136921380%_)))
                             (__tmp27233
                              (gx#stx-getq 'constructor: _%L21169%_)))
                        (declare (not safe))
                        (_%g2136722381%_ __tmp27233))))
                  _%g2134121352%_)))
              (__tmp27234
               (let ((_%$e22389%_ (gx#stx-getq 'name: _%L21169%_)))
                 (if _%$e22389%_ _%$e22389%_ _%L21174%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_%g2133922385%_
                                                  __tmp27234))))
                                           _%g2131321324%_)))
                                       (__tmp27235
                                        (let ((_%$e22397%_
                                               (gx#stx-getq 'id: _%L21169%_)))
                                          (if _%$e22397%_
                                              _%$e22397%_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                                 _%L21174%_))))))
                                  (declare (not safe))
                                  (_%g2131122393%_ __tmp27235))))
                            _%slot2124821287%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%loop2124321267%_
                                                      _%target2124021261%_
                                                      '())))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g2123721254%_
                                                    _%g2123821258%_))))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g2123721254%_ _%g2123821258%_)))))
                                (__tmp27236
                                 (gx#stx-map
                                  _%slot-name21082%_
                                  _%slots21221%_)))
                           (declare (not safe))
                           (_%g2123622401%_ __tmp27236))
                         (let ()
                           (declare (not safe))
                           (_%g2108521112%_ _%g2108621116%_))))
                   _%tl2110421166%_
                   _%hd2110521163%_
                   _%hd2110221153%_
                   _%hd2109921143%_
                   _%hd2109621133%_)))
              (let ()
                (declare (not safe))
                (_%g2108521112%_ _%g2108621116%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g2108521112%_
                                                 _%g2108621116%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g2108521112%_ _%g2108621116%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g2108521112%_ _%g2108621116%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g2108521112%_ _%g2108621116%_))))))
          (declare (not safe))
          (_%g2108422405%_ _%stx21076%_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_%stx22519%_)
      (let ()
        (declare (not safe))
        (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22519%_ '#t))))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_%stx22522%_)
      (let ()
        (declare (not safe))
        (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22522%_ '#f)))))
