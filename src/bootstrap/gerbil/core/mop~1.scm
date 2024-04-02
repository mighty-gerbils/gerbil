(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_%type-t22498%_)
      (let ((_%$e22501%_ (gx#module-context-ns (gx#current-expander-context))))
        (if _%$e22501%_
            ((lambda (_%ns22505%_)
               (gx#stx-identifier
                _%type-t22498%_
                _%ns22505%_
                '"#"
                _%type-t22498%_
                '"::t"))
             _%$e22501%_)
            (let ()
              (let ((_%mid22510%_
                     (gx#expander-context-id (gx#current-expander-context))))
                (gx#stx-identifier
                 _%type-t22498%_
                 _%mid22510%_
                 '"#"
                 _%type-t22498%_
                 '"::t")))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_%type-t22495%_)
      (if (gx#module-context? (gx#current-expander-context))
          (let ()
            (declare (not safe))
            (|gerbil/core/mop~MOP-1[1]#module-type-id| _%type-t22495%_))
          (make-symbol '"__" (gensym (gx#stx-e _%type-t22495%_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_%stx21073%_ _%struct?21075%_)
      (letrec ((_%wrap21077%_
                (lambda (_%e-stx22492%_)
                  (gx#stx-wrap-source
                   _%e-stx22492%_
                   (gx#stx-source _%stx21073%_))))
               (_%slot-name21079%_
                (lambda (_%slot-spec22409%_)
                  (let* ((_%g2241222431%_
                          (lambda (_%g2241322427%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2241322427%_)))
                         (_%g2241122488%_
                          (lambda (_%g2241322435%_)
                            (if (gx#stx-pair? _%g2241322435%_)
                                (let ((_%e2241922438%_
                                       (gx#syntax-e _%g2241322435%_)))
                                  (let ((_%hd2241822442%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2241922438%_)))
                                        (_%tl2241722445%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2241922438%_))))
                                    (if (gx#stx-pair? _%tl2241722445%_)
                                        (let ((_%e2242222448%_
                                               (gx#syntax-e _%tl2241722445%_)))
                                          (let ((_%hd2242122452%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2242222448%_)))
                                                (_%tl2242022455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2242222448%_))))
                                            (if (gx#stx-pair? _%tl2242022455%_)
                                                (let ((_%e2242522458%_
                                                       (gx#syntax-e
                                                        _%tl2242022455%_)))
                                                  (let ((_%hd2242422462%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2242522458%_)))
                                                        (_%tl2242322465%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2242522458%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2242322465%_)
                                                        ((lambda (_%L22468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L22470%_
                          _%L22471%_)
                   _%L22471%_)
                 _%hd2242422462%_
                 _%hd2242122452%_
                 _%hd2241822442%_)
                (let ()
                  (declare (not safe))
                  (_%g2241222431%_ _%g2241322435%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2241222431%_
                                                   _%g2241322435%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2241222431%_ _%g2241322435%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2241222431%_ _%g2241322435%_))))))
                    (declare (not safe))
                    (_%g2241122488%_ _%slot-spec22409%_))))
               (_%class-opt?21080%_
                (lambda (_%key22406%_)
                  (let ((__tmp27232 (gx#stx-e _%key22406%_)))
                    (declare (not safe))
                    (##memq __tmp27232
                            '(struct:
                              slots:
                              id:
                              name:
                              properties:
                              constructor:
                              final:
                              mixin:
                              metaclass:))))))
        (let* ((_%g2108221109%_
                (lambda (_%g2108321105%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2108321105%_)))
               (_%g2108122402%_
                (lambda (_%g2108321113%_)
                  (if (gx#stx-pair? _%g2108321113%_)
                      (let ((_%e2109121116%_ (gx#syntax-e _%g2108321113%_)))
                        (let ((_%hd2109021120%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2109121116%_)))
                              (_%tl2108921123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2109121116%_))))
                          (if (gx#stx-pair? _%tl2108921123%_)
                              (let ((_%e2109421126%_
                                     (gx#syntax-e _%tl2108921123%_)))
                                (let ((_%hd2109321130%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2109421126%_)))
                                      (_%tl2109221133%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2109421126%_))))
                                  (if (gx#stx-pair? _%tl2109221133%_)
                                      (let ((_%e2109721136%_
                                             (gx#syntax-e _%tl2109221133%_)))
                                        (let ((_%hd2109621140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2109721136%_)))
                                              (_%tl2109521143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2109721136%_))))
                                          (if (gx#stx-pair? _%tl2109521143%_)
                                              (let ((_%e2110021146%_
                                                     (gx#syntax-e
                                                      _%tl2109521143%_)))
                                                (let ((_%hd2109921150%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2110021146%_)))
                                                      (_%tl2109821153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2110021146%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl2109821153%_)
                                                      (let ((_%e2110321156%_
                                                             (gx#syntax-e
                                                              _%tl2109821153%_)))
                                                        (let ((_%hd2110221160%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2110321156%_)))
                      (_%tl2110121163%_
                       (let () (declare (not safe)) (##cdr _%e2110321156%_))))
                  ((lambda (_%L21166%_
                            _%L21168%_
                            _%L21169%_
                            _%L21170%_
                            _%L21171%_)
                     (if (and (gx#identifier? _%L21171%_)
                              (gx#identifier-list? _%L21170%_)
                              (or (gx#identifier? _%L21169%_)
                                  (gx#stx-false? _%L21169%_))
                              (gx#identifier? _%L21168%_)
                              (gx#stx-plist? _%L21166%_ _%class-opt?21080%_))
                         (let* ((_%struct?21211%_
                                 (let ((_%$e21201%_ _%struct?21075%_))
                                   (if _%$e21201%_
                                       _%$e21201%_
                                       (let ((_%$e21205%_
                                              (gx#stx-getq
                                               'struct:
                                               _%L21166%_)))
                                         (if _%$e21205%_
                                             (gx#stx-e _%$e21205%_)
                                             (let () '#f))))))
                                (_%slots21218%_
                                 (let ((_%$e21214%_
                                        (gx#stx-getq 'slots: _%L21166%_)))
                                   (if _%$e21214%_ _%$e21214%_ '())))
                                (_%mixin-slots21225%_
                                 (let ((_%$e21221%_
                                        (gx#stx-getq 'mixin: _%L21166%_)))
                                   (if _%$e21221%_ _%$e21221%_ '())))
                                (_%accessible-slots21228%_
                                 (append (gx#syntax->list _%slots21218%_)
                                         (gx#syntax->list
                                          _%mixin-slots21225%_)))
                                (_%metaclass21231%_
                                 (gx#stx-getq 'metaclass: _%L21166%_))
                                (_%g2123421251%_
                                 (lambda (_%g2123521247%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2123521247%_)))
                                (_%g2123322398%_
                                 (lambda (_%g2123521255%_)
                                   (if (gx#stx-pair/null? _%g2123521255%_)
                                       (let ((_g27233_
                                              (gx#syntax-split-splice
                                               _%g2123521255%_
                                               '0)))
                                         (begin
                                           (let ((_g27234_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27233_)
                                                        (##vector-length
                                                         _g27233_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27234_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27234_)))
                                           (let ((_%target2123721258%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g27233_ 0)))
                                                 (_%tl2123921261%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g27233_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2123921261%_)
                                                 (letrec ((_%loop2124021264%_
                                                           (lambda (_%hd2123821268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%slot2124421271%_)
                     (if (gx#stx-pair? _%hd2123821268%_)
                         (let ((_%e2124121274%_
                                (gx#syntax-e _%hd2123821268%_)))
                           (let ((_%lp-hd2124221278%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2124121274%_)))
                                 (_%lp-tl2124321281%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2124121274%_))))
                             (let ((__tmp27235
                                    (cons _%lp-hd2124221278%_
                                          _%slot2124421271%_)))
                               (declare (not safe))
                               (_%loop2124021264%_
                                _%lp-tl2124321281%_
                                __tmp27235))))
                         (let ((_%slot2124521284%_
                                (reverse _%slot2124421271%_)))
                           ((lambda (_%L21288%_)
                              (let ()
                                (let* ((_%g2130921317%_
                                        (lambda (_%g2131021313%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2131021313%_)))
                                       (_%g2130822390%_
                                        (lambda (_%g2131021321%_)
                                          ((lambda (_%L21324%_)
                                             (let ()
                                               (let* ((_%g2133721345%_
                                                       (lambda (_%g2133821341%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2133821341%_)))
                                                      (_%g2133622382%_
                                                       (lambda (_%g2133821349%_)
                                                         ((lambda (_%L21352%_)
                                                            (let ()
                                                              (let* ((_%g2136521373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2136621369%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2136621369%_)))
                             (_%g2136422378%_
                              (lambda (_%g2136621377%_)
                                ((lambda (_%L21380%_)
                                   (let ()
                                     (let* ((_%g2139321401%_
                                             (lambda (_%g2139421397%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g2139421397%_)))
                                            (_%g2139222374%_
                                             (lambda (_%g2139421405%_)
                                               ((lambda (_%L21408%_)
                                                  (let ()
                                                    (let* ((_%g2142121429%_
                                                            (lambda (_%g2142221425%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2142221425%_)))
                                                           (_%g2142022370%_
                                                            (lambda (_%g2142221433%_)
                                                              ((lambda (_%L21436%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_%g2144921457%_
                                   (lambda (_%g2145021453%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2145021453%_)))
                                  (_%g2144822366%_
                                   (lambda (_%g2145021461%_)
                                     ((lambda (_%L21464%_)
                                        (let ()
                                          (let* ((_%g2147721485%_
                                                  (lambda (_%g2147821481%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2147821481%_)))
                                                 (_%g2147622362%_
                                                  (lambda (_%g2147821489%_)
                                                    ((lambda (_%L21492%_)
                                                       (let ()
                                                         (let* ((_%g2150521513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2150621509%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2150621509%_)))
                        (_%g2150422358%_
                         (lambda (_%g2150621517%_)
                           ((lambda (_%L21520%_)
                              (let ()
                                (let* ((_%g2153321541%_
                                        (lambda (_%g2153421537%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2153421537%_)))
                                       (_%g2153222350%_
                                        (lambda (_%g2153421545%_)
                                          ((lambda (_%L21548%_)
                                             (let ()
                                               (let* ((_%g2156121569%_
                                                       (lambda (_%g2156221565%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2156221565%_)))
                                                      (_%g2156022346%_
                                                       (lambda (_%g2156221573%_)
                                                         ((lambda (_%L21576%_)
                                                            (let ()
                                                              (let* ((_%g2158921597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2159021593%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2159021593%_)))
                             (_%g2158822342%_
                              (lambda (_%g2159021601%_)
                                ((lambda (_%L21604%_)
                                   (let ()
                                     (let* ((_%g2161721625%_
                                             (lambda (_%g2161821621%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g2161821621%_)))
                                            (_%g2161622307%_
                                             (lambda (_%g2161821629%_)
                                               ((lambda (_%L21632%_)
                                                  (let ()
                                                    (let* ((_%g2164521653%_
                                                            (lambda (_%g2164621649%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2164621649%_)))
                                                           (_%g2164422303%_
                                                            (lambda (_%g2164621657%_)
                                                              ((lambda (_%L21660%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_%g2167321681%_
                                   (lambda (_%g2167421677%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2167421677%_)))
                                  (_%g2167222291%_
                                   (lambda (_%g2167421685%_)
                                     ((lambda (_%L21688%_)
                                        (let ()
                                          (let* ((_%g2170121709%_
                                                  (lambda (_%g2170221705%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2170221705%_)))
                                                 (_%g2170022279%_
                                                  (lambda (_%g2170221713%_)
                                                    ((lambda (_%L21716%_)
                                                       (let ()
                                                         (let* ((_%g2172921737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2173021733%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2173021733%_)))
                        (_%g2172822275%_
                         (lambda (_%g2173021741%_)
                           ((lambda (_%L21744%_)
                              (let ()
                                (let* ((_%g2175721765%_
                                        (lambda (_%g2175821761%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2175821761%_)))
                                       (_%g2175622271%_
                                        (lambda (_%g2175821769%_)
                                          ((lambda (_%L21772%_)
                                             (let ()
                                               (let* ((_%g2178521811%_
                                                       (lambda (_%g2178621807%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2178621807%_)))
                                                      (_%g2178422183%_
                                                       (lambda (_%g2178621815%_)
                                                         (if (gx#stx-pair/null?
                                                              _%g2178621815%_)
                                                             (let ((_g27236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _%g2178621815%_ '0)))
                       (begin
                         (let ((_g27237_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g27236_)
                                      (##vector-length _g27236_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g27237_ 2)))
                               (error "Context expects 2 values" _g27237_)))
                         (let ((_%target2178921818%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g27236_ 0)))
                               (_%tl2179121821%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g27236_ 1))))
                           (if (gx#stx-null? _%tl2179121821%_)
                               (letrec ((_%loop2179221824%_
                                         (lambda (_%hd2179021828%_
                                                  _%def-setf2179621831%_
                                                  _%def-getf2179721833%_)
                                           (if (gx#stx-pair? _%hd2179021828%_)
                                               (let ((_%e2179321836%_
                                                      (gx#syntax-e
                                                       _%hd2179021828%_)))
                                                 (let ((_%lp-hd2179421840%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2179321836%_)))
                                                       (_%lp-tl2179521843%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2179321836%_))))
                                                   (if (gx#stx-pair?
                                                        _%lp-hd2179421840%_)
                                                       (let ((_%e2180221846%_
                                                              (gx#syntax-e
                                                               _%lp-hd2179421840%_)))
                                                         (let ((_%hd2180121850%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2180221846%_)))
                       (_%tl2180021853%_
                        (let () (declare (not safe)) (##cdr _%e2180221846%_))))
                   (if (gx#stx-pair? _%tl2180021853%_)
                       (let ((_%e2180521856%_ (gx#syntax-e _%tl2180021853%_)))
                         (let ((_%hd2180421860%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2180521856%_)))
                               (_%tl2180321863%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2180521856%_))))
                           (if (gx#stx-null? _%tl2180321863%_)
                               (let ((__tmp27239
                                      (cons _%hd2180421860%_
                                            _%def-setf2179621831%_))
                                     (__tmp27238
                                      (cons _%hd2180121850%_
                                            _%def-getf2179721833%_)))
                                 (declare (not safe))
                                 (_%loop2179221824%_
                                  _%lp-tl2179521843%_
                                  __tmp27239
                                  __tmp27238))
                               (let ()
                                 (declare (not safe))
                                 (_%g2178521811%_ _%g2178621815%_)))))
                       (let ()
                         (declare (not safe))
                         (_%g2178521811%_ _%g2178621815%_)))))
               (let ()
                 (declare (not safe))
                 (_%g2178521811%_ _%g2178621815%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%def-setf2179821866%_
                                                      (reverse _%def-setf2179621831%_))
                                                     (_%def-getf2179921869%_
                                                      (reverse _%def-getf2179721833%_)))
                                                 ((lambda (_%L21872%_
                                                           _%L21874%_)
                                                    (let ()
                                                      (let* ((_%g2189121917%_
                                                              (lambda (_%g2189221913%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2189221913%_)))
                     (_%g2189022031%_
                      (lambda (_%g2189221921%_)
                        (if (gx#stx-pair/null? _%g2189221921%_)
                            (let ((_g27240_
                                   (gx#syntax-split-splice
                                    _%g2189221921%_
                                    '0)))
                              (begin
                                (let ((_g27241_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g27240_)
                                             (##vector-length _g27240_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g27241_ 2)))
                                      (error "Context expects 2 values"
                                             _g27241_)))
                                (let ((_%target2189521924%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g27240_ 0)))
                                      (_%tl2189721927%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g27240_ 1))))
                                  (if (gx#stx-null? _%tl2189721927%_)
                                      (letrec ((_%loop2189821930%_
                                                (lambda (_%hd2189621934%_
                                                         _%def-usetf2190221937%_
                                                         _%def-ugetf2190321939%_)
                                                  (if (gx#stx-pair?
                                                       _%hd2189621934%_)
                                                      (let ((_%e2189921942%_
                                                             (gx#syntax-e
                                                              _%hd2189621934%_)))
                                                        (let ((_%lp-hd2190021946%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2189921942%_)))
                      (_%lp-tl2190121949%_
                       (let () (declare (not safe)) (##cdr _%e2189921942%_))))
                  (if (gx#stx-pair? _%lp-hd2190021946%_)
                      (let ((_%e2190821952%_
                             (gx#syntax-e _%lp-hd2190021946%_)))
                        (let ((_%hd2190721956%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2190821952%_)))
                              (_%tl2190621959%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2190821952%_))))
                          (if (gx#stx-pair? _%tl2190621959%_)
                              (let ((_%e2191121962%_
                                     (gx#syntax-e _%tl2190621959%_)))
                                (let ((_%hd2191021966%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2191121962%_)))
                                      (_%tl2190921969%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2191121962%_))))
                                  (if (gx#stx-null? _%tl2190921969%_)
                                      (let ((__tmp27243
                                             (cons _%hd2191021966%_
                                                   _%def-usetf2190221937%_))
                                            (__tmp27242
                                             (cons _%hd2190721956%_
                                                   _%def-ugetf2190321939%_)))
                                        (declare (not safe))
                                        (_%loop2189821930%_
                                         _%lp-tl2190121949%_
                                         __tmp27243
                                         __tmp27242))
                                      (let ()
                                        (declare (not safe))
                                        (_%g2189121917%_ _%g2189221921%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g2189121917%_ _%g2189221921%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g2189121917%_ _%g2189221921%_)))))
              (let ((_%def-usetf2190421972%_ (reverse _%def-usetf2190221937%_))
                    (_%def-ugetf2190521975%_
                     (reverse _%def-ugetf2190321939%_)))
                ((lambda (_%L21978%_ _%L21980%_)
                   (let ()
                     (let ()
                       (let ((__tmp27244
                              (cons (gx#datum->syntax '#f 'begin)
                                    (cons _%L21716%_
                                          (cons _%L21772%_
                                                (cons _%L21744%_
                                                      (foldr (lambda (_%g2199822007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2199922010%_)
                       (cons _%g2199822007%_ _%g2199922010%_))
                     (foldr (lambda (_%g2200022013%_ _%g2200122016%_)
                              (cons _%g2200022013%_ _%g2200122016%_))
                            (foldr (lambda (_%g2200222019%_ _%g2200322022%_)
                                     (cons _%g2200222019%_ _%g2200322022%_))
                                   (foldr (lambda (_%g2200422025%_
                                                   _%g2200522028%_)
                                            (cons _%g2200422025%_
                                                  _%g2200522028%_))
                                          '()
                                          _%L21978%_)
                                   _%L21980%_)
                            _%L21872%_)
                     _%L21874%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (_%wrap21077%_ __tmp27244)))))
                 _%def-usetf2190421972%_
                 _%def-ugetf2190521975%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_%loop2189821930%_
                                           _%target2189521924%_
                                           '()
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_%g2189121917%_ _%g2189221921%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g2189121917%_ _%g2189221921%_)))))
                     (__tmp27245
                      (gx#stx-map
                       (lambda (_%ref22035%_)
                         (let* ((_%g2203822057%_
                                 (lambda (_%g2203922053%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2203922053%_)))
                                (_%g2203722179%_
                                 (lambda (_%g2203922061%_)
                                   (if (gx#stx-pair? _%g2203922061%_)
                                       (let ((_%e2204522064%_
                                              (gx#syntax-e _%g2203922061%_)))
                                         (let ((_%hd2204422068%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e2204522064%_)))
                                               (_%tl2204322071%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e2204522064%_))))
                                           (if (gx#stx-pair? _%tl2204322071%_)
                                               (let ((_%e2204822074%_
                                                      (gx#syntax-e
                                                       _%tl2204322071%_)))
                                                 (let ((_%hd2204722078%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2204822074%_)))
                                                       (_%tl2204622081%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2204822074%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2204622081%_)
                                                       (let ((_%e2205122084%_
                                                              (gx#syntax-e
                                                               _%tl2204622081%_)))
                                                         (let ((_%hd2205022088%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2205122084%_)))
                       (_%tl2204922091%_
                        (let () (declare (not safe)) (##cdr _%e2205122084%_))))
                   (if (gx#stx-null? _%tl2204922091%_)
                       ((lambda (_%L22094%_ _%L22096%_ _%L22097%_)
                          (let* ((_%g2211522130%_
                                  (lambda (_%g2211622126%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2211622126%_)))
                                 (_%g2211422175%_
                                  (lambda (_%g2211622134%_)
                                    (if (gx#stx-pair? _%g2211622134%_)
                                        (let ((_%e2212122137%_
                                               (gx#syntax-e _%g2211622134%_)))
                                          (let ((_%hd2212022141%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2212122137%_)))
                                                (_%tl2211922144%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2212122137%_))))
                                            (if (gx#stx-pair? _%tl2211922144%_)
                                                (let ((_%e2212422147%_
                                                       (gx#syntax-e
                                                        _%tl2211922144%_)))
                                                  (let ((_%hd2212322151%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2212422147%_)))
                                                        (_%tl2212222154%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2212422147%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2212222154%_)
                                                        ((lambda (_%L22157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L22159%_)
                   (let ()
                     (cons (let ((__tmp27246
                                  (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L22159%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.accessor)
                              (cons _%L21408%_
                                    (cons _%L22097%_ (cons '#f '()))))
                        (cons (cons (gx#datum->syntax
                                     '#f
                                     'make-class-slot-unchecked-accessor)
                                    (cons _%L21171%_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _%L22097%_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                             (declare (not safe))
                             (_%wrap21077%_ __tmp27246))
                           (cons (let ((__tmp27247
                                        (cons (gx#datum->syntax '#f 'def)
                                              (cons _%L22157%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation)
                        (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                    (cons _%L21408%_
                                          (cons _%L22097%_ (cons '#f '()))))
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'make-class-slot-unchecked-mutator)
                                          (cons _%L21171%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L22097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (_%wrap21077%_ __tmp27247))
                                 '()))))
                 _%hd2212322151%_
                 _%hd2212022141%_)
                (let ()
                  (declare (not safe))
                  (_%g2211522130%_ _%g2211622134%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2211522130%_
                                                   _%g2211622134%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2211522130%_ _%g2211622134%_)))))
                                 (__tmp27248
                                  (list (gx#stx-identifier
                                         _%L22096%_
                                         '"&"
                                         _%L22096%_)
                                        (gx#stx-identifier
                                         _%L22094%_
                                         '"&"
                                         _%L22094%_))))
                            (declare (not safe))
                            (_%g2211422175%_ __tmp27248)))
                        _%hd2205022088%_
                        _%hd2204722078%_
                        _%hd2204422068%_)
                       (let ()
                         (declare (not safe))
                         (_%g2203822057%_ _%g2203922061%_)))))
               (let ()
                 (declare (not safe))
                 (_%g2203822057%_ _%g2203922061%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g2203822057%_
                                                  _%g2203922061%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g2203822057%_ _%g2203922061%_))))))
                           (declare (not safe))
                           (_%g2203722179%_ _%ref22035%_)))
                       _%accessible-slots21228%_)))
                (declare (not safe))
                (_%g2189022031%_ __tmp27245))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%def-setf2179821866%_
                                                  _%def-getf2179921869%_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_%loop2179221824%_
                                    _%target2178921818%_
                                    '()
                                    '())))
                               (let ()
                                 (declare (not safe))
                                 (_%g2178521811%_ _%g2178621815%_))))))
                     (let ()
                       (declare (not safe))
                       (_%g2178521811%_ _%g2178621815%_)))))
              (__tmp27249
               (gx#stx-map
                (lambda (_%ref22187%_)
                  (let* ((_%g2219022209%_
                          (lambda (_%g2219122205%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2219122205%_)))
                         (_%g2218922267%_
                          (lambda (_%g2219122213%_)
                            (if (gx#stx-pair? _%g2219122213%_)
                                (let ((_%e2219722216%_
                                       (gx#syntax-e _%g2219122213%_)))
                                  (let ((_%hd2219622220%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2219722216%_)))
                                        (_%tl2219522223%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2219722216%_))))
                                    (if (gx#stx-pair? _%tl2219522223%_)
                                        (let ((_%e2220022226%_
                                               (gx#syntax-e _%tl2219522223%_)))
                                          (let ((_%hd2219922230%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2220022226%_)))
                                                (_%tl2219822233%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2220022226%_))))
                                            (if (gx#stx-pair? _%tl2219822233%_)
                                                (let ((_%e2220322236%_
                                                       (gx#syntax-e
                                                        _%tl2219822233%_)))
                                                  (let ((_%hd2220222240%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2220322236%_)))
                                                        (_%tl2220122243%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2220322236%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2220122243%_)
                                                        ((lambda (_%L22246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L22248%_
                          _%L22249%_)
                   (cons (let ((__tmp27250
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _%L22248%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@mop.accessor)
                            (cons _%L21408%_ (cons _%L22249%_ (cons '#t '()))))
                      (cons (cons (gx#datum->syntax
                                   '#f
                                   'make-class-slot-accessor)
                                  (cons _%L21171%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%L22249%_ '()))
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                           (declare (not safe))
                           (_%wrap21077%_ __tmp27250))
                         (cons (let ((__tmp27251
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _%L22246%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@mop.mutator)
                                  (cons _%L21408%_
                                        (cons _%L22249%_ (cons '#t '()))))
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'make-class-slot-mutator)
                                        (cons _%L21171%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%L22249%_
                                                                '()))
                                                    '())))
                                  '())))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (declare (not safe))
                                 (_%wrap21077%_ __tmp27251))
                               '())))
                 _%hd2220222240%_
                 _%hd2219922230%_
                 _%hd2219622220%_)
                (let ()
                  (declare (not safe))
                  (_%g2219022209%_ _%g2219122213%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2219022209%_
                                                   _%g2219122213%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2219022209%_ _%g2219122213%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2219022209%_ _%g2219122213%_))))))
                    (declare (not safe))
                    (_%g2218922267%_ _%ref22187%_)))
                _%accessible-slots21228%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_%g2178422183%_
                                                  __tmp27249))))
                                           _%g2175821769%_)))
                                       (__tmp27252
                                        (let ((__tmp27253
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L21168%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '@mop.predicate)
                                           (cons _%L21408%_ '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'make-class-predicate)
                                                 (cons _%L21171%_ '()))
                                           '())))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (_%wrap21077%_ __tmp27253))))
                                  (declare (not safe))
                                  (_%g2175622271%_ __tmp27252))))
                            _%g2173021741%_)))
                        (__tmp27254
                         (if (gx#stx-false? _%L21169%_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (let ((__tmp27255
                                    (cons (gx#datum->syntax '#f 'def)
                                          (cons _%L21169%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'begin-annotation)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '@mop.constructor)
                                (cons _%L21408%_ '()))
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (gx#datum->syntax '#f '$args)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'apply)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'make-instance)
                                                              (cons _%L21171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                '())))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (_%wrap21077%_ __tmp27255)))))
                   (declare (not safe))
                   (_%g2172822275%_ __tmp27254))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2170221713%_)))
                                                 (__tmp27256
                                                  (let ((__tmp27257
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'def)
                                                               (cons _%L21171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'begin-annotation)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@mop.class)
                                                     (cons _%L21324%_
                                                           (cons _%L21436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (foldr (lambda (_%g2228222285%_ _%g2228322288%_)
                                        (cons _%g2228222285%_ _%g2228322288%_))
                                      '()
                                      _%L21288%_)
                               (cons _%L21380%_
                                     (cons _%L21464%_
                                           (cons _%L21492%_
                                                 (cons _%L21520%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L21688%_ '())))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%wrap21077%_
                                                     __tmp27257))))
                                            (declare (not safe))
                                            (_%g2170022279%_ __tmp27256))))
                                      _%g2167421685%_)))
                                  (__tmp27258
                                   (cons (gx#datum->syntax
                                          '#f
                                          'make-class-type)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L21324%_ '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%L21352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L21660%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons (foldr (lambda (_%g2229422297%_
                                                     _%g2229522300%_)
                                              (cons _%g2229422297%_
                                                    _%g2229522300%_))
                                            '()
                                            _%L21288%_)
                                     '()))
                         (cons _%L21632%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L21380%_ '()))
                                     '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (_%g2167222291%_ __tmp27258))))
                       _%g2164621657%_)))
                   (__tmp27259 (cons (gx#datum->syntax '#f 'list) _%L21170%_)))
              (declare (not safe))
              (_%g2164422303%_ __tmp27259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g2161821629%_)))
                                            (__tmp27260
                                             (if (gx#stx-e _%metaclass21231%_)
                                                 (let* ((_%g2231122319%_
                                                         (lambda (_%g2231222315%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2231222315%_)))
                                                        (_%g2231022338%_
                                                         (lambda (_%g2231222323%_)
                                                           ((lambda (_%L22326%_)
                                                              (let ()
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@list)
                              (cons (cons (gx#datum->syntax '#f '@list)
                                          (cons 'metaclass:
                                                (cons '::
                                                      (cons _%L22326%_ '()))))
                                    (cons ':: (cons _%L21604%_ '()))))))
                    _%g2231222323%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%g2231022338%_
                                                    _%metaclass21231%_))
                                                 _%L21604%_)))
                                       (declare (not safe))
                                       (_%g2161622307%_ __tmp27260))))
                                 _%g2159021601%_)))
                             (__tmp27261
                              (if _%struct?21211%_
                                  (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons 'struct: '#t))
                                              (cons '::
                                                    (cons _%L21576%_ '()))))
                                  _%L21576%_)))
                        (declare (not safe))
                        (_%g2158822342%_ __tmp27261))))
                  _%g2156221573%_)))
              (__tmp27262
               (if (gx#stx-e _%L21492%_)
                   (cons (gx#datum->syntax '#f '@list)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons 'final: '#t))
                               (cons ':: (cons _%L21548%_ '()))))
                   _%L21548%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_%g2156022346%_
                                                  __tmp27262))))
                                           _%g2153421545%_)))
                                       (__tmp27263
                                        (let ((_%$e22354%_
                                               (gx#stx-getq
                                                'properties:
                                                _%L21166%_)))
                                          (if _%$e22354%_
                                              _%$e22354%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    '())))))
                                  (declare (not safe))
                                  (_%g2153222350%_ __tmp27263))))
                            _%g2150621517%_)))
                        (__tmp27264
                         (if (gx#stx-e _%metaclass21231%_)
                             (gx#core-quote-syntax _%metaclass21231%_)
                             '#f)))
                   (declare (not safe))
                   (_%g2150422358%_ __tmp27264))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2147821489%_)))
                                                 (__tmp27265
                                                  (gx#stx-getq
                                                   'final:
                                                   _%L21166%_)))
                                            (declare (not safe))
                                            (_%g2147622362%_ __tmp27265))))
                                      _%g2145021461%_))))
                             (declare (not safe))
                             (_%g2144822366%_ _%struct?21211%_))))
                       _%g2142221433%_)))
                   (__tmp27266 (gx#stx-map gx#core-quote-syntax _%L21170%_)))
              (declare (not safe))
              (_%g2142022370%_ __tmp27266))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g2139421405%_)))
                                            (__tmp27267
                                             (gx#core-quote-syntax
                                              _%L21171%_)))
                                       (declare (not safe))
                                       (_%g2139222374%_ __tmp27267))))
                                 _%g2136621377%_)))
                             (__tmp27268
                              (gx#stx-getq 'constructor: _%L21166%_)))
                        (declare (not safe))
                        (_%g2136422378%_ __tmp27268))))
                  _%g2133821349%_)))
              (__tmp27269
               (let ((_%$e22386%_ (gx#stx-getq 'name: _%L21166%_)))
                 (if _%$e22386%_ _%$e22386%_ _%L21171%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_%g2133622382%_
                                                  __tmp27269))))
                                           _%g2131021321%_)))
                                       (__tmp27270
                                        (let ((_%$e22394%_
                                               (gx#stx-getq 'id: _%L21166%_)))
                                          (if _%$e22394%_
                                              _%$e22394%_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                                 _%L21171%_))))))
                                  (declare (not safe))
                                  (_%g2130822390%_ __tmp27270))))
                            _%slot2124521284%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%loop2124021264%_
                                                      _%target2123721258%_
                                                      '())))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g2123421251%_
                                                    _%g2123521255%_))))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g2123421251%_ _%g2123521255%_)))))
                                (__tmp27271
                                 (gx#stx-map
                                  _%slot-name21079%_
                                  _%slots21218%_)))
                           (declare (not safe))
                           (_%g2123322398%_ __tmp27271))
                         (let ()
                           (declare (not safe))
                           (_%g2108221109%_ _%g2108321113%_))))
                   _%tl2110121163%_
                   _%hd2110221160%_
                   _%hd2109921150%_
                   _%hd2109621140%_
                   _%hd2109321130%_)))
              (let ()
                (declare (not safe))
                (_%g2108221109%_ _%g2108321113%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g2108221109%_
                                                 _%g2108321113%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g2108221109%_ _%g2108321113%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g2108221109%_ _%g2108321113%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g2108221109%_ _%g2108321113%_))))))
          (declare (not safe))
          (_%g2108122402%_ _%stx21073%_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_%stx22516%_)
      (let ()
        (declare (not safe))
        (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22516%_ '#t))))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_%stx22519%_)
      (let ()
        (declare (not safe))
        (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22519%_ '#f)))))
