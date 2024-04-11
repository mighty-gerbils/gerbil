(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_%type-t22493%_)
      (let ((_%$e22496%_ (gx#module-context-ns (gx#current-expander-context))))
        (if _%$e22496%_
            ((lambda (_%ns22500%_)
               (gx#stx-identifier
                _%type-t22493%_
                _%ns22500%_
                '"#"
                _%type-t22493%_
                '"::t"))
             _%$e22496%_)
            (let ((_%mid22505%_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _%type-t22493%_
               _%mid22505%_
               '"#"
               _%type-t22493%_
               '"::t"))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_%type-t22490%_)
      (if (gx#module-context? (gx#current-expander-context))
          (|gerbil/core/mop~MOP-1[1]#module-type-id| _%type-t22490%_)
          (make-symbol '"__" (gensym (gx#stx-e _%type-t22490%_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_%stx21068%_ _%struct?21070%_)
      (letrec ((_%wrap21072%_
                (lambda (_%e-stx22487%_)
                  (gx#stx-wrap-source
                   _%e-stx22487%_
                   (gx#stx-source _%stx21068%_))))
               (_%slot-name21074%_
                (lambda (_%slot-spec22404%_)
                  (let* ((_%g2240722426%_
                          (lambda (_%g2240822422%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2240822422%_)))
                         (_%g2240622483%_
                          (lambda (_%g2240822430%_)
                            (if (gx#stx-pair? _%g2240822430%_)
                                (let ((_%e2241222433%_
                                       (gx#syntax-e _%g2240822430%_)))
                                  (let ((_%hd2241322437%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2241222433%_)))
                                        (_%tl2241422440%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2241222433%_))))
                                    (if (gx#stx-pair? _%tl2241422440%_)
                                        (let ((_%e2241522443%_
                                               (gx#syntax-e _%tl2241422440%_)))
                                          (let ((_%hd2241622447%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2241522443%_)))
                                                (_%tl2241722450%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2241522443%_))))
                                            (if (gx#stx-pair? _%tl2241722450%_)
                                                (let ((_%e2241822453%_
                                                       (gx#syntax-e
                                                        _%tl2241722450%_)))
                                                  (let ((_%hd2241922457%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2241822453%_)))
                                                        (_%tl2242022460%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2241822453%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2242022460%_)
                                                        ((lambda (_%L22463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L22465%_
                          _%L22466%_)
                   _%L22466%_)
                 _%hd2241922457%_
                 _%hd2241622447%_
                 _%hd2241322437%_)
                (_%g2240722426%_ _%g2240822430%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2240722426%_
                                                 _%g2240822430%_))))
                                        (_%g2240722426%_ _%g2240822430%_))))
                                (_%g2240722426%_ _%g2240822430%_)))))
                    (_%g2240622483%_ _%slot-spec22404%_))))
               (_%class-opt?21075%_
                (lambda (_%key22401%_)
                  (let ((__tmp27188 (gx#stx-e _%key22401%_)))
                    (declare (not safe))
                    (##memq __tmp27188
                            '(struct:
                              slots:
                              id:
                              name:
                              properties:
                              constructor:
                              final:
                              mixin:
                              metaclass:))))))
        (let* ((_%g2107721104%_
                (lambda (_%g2107821100%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2107821100%_)))
               (_%g2107622397%_
                (lambda (_%g2107821108%_)
                  (if (gx#stx-pair? _%g2107821108%_)
                      (let ((_%e2108421111%_ (gx#syntax-e _%g2107821108%_)))
                        (let ((_%hd2108521115%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2108421111%_)))
                              (_%tl2108621118%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2108421111%_))))
                          (if (gx#stx-pair? _%tl2108621118%_)
                              (let ((_%e2108721121%_
                                     (gx#syntax-e _%tl2108621118%_)))
                                (let ((_%hd2108821125%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2108721121%_)))
                                      (_%tl2108921128%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2108721121%_))))
                                  (if (gx#stx-pair? _%tl2108921128%_)
                                      (let ((_%e2109021131%_
                                             (gx#syntax-e _%tl2108921128%_)))
                                        (let ((_%hd2109121135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2109021131%_)))
                                              (_%tl2109221138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2109021131%_))))
                                          (if (gx#stx-pair? _%tl2109221138%_)
                                              (let ((_%e2109321141%_
                                                     (gx#syntax-e
                                                      _%tl2109221138%_)))
                                                (let ((_%hd2109421145%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2109321141%_)))
                                                      (_%tl2109521148%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2109321141%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl2109521148%_)
                                                      (let ((_%e2109621151%_
                                                             (gx#syntax-e
                                                              _%tl2109521148%_)))
                                                        (let ((_%hd2109721155%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2109621151%_)))
                      (_%tl2109821158%_
                       (let () (declare (not safe)) (##cdr _%e2109621151%_))))
                  ((lambda (_%L21161%_
                            _%L21163%_
                            _%L21164%_
                            _%L21165%_
                            _%L21166%_)
                     (if (and (gx#identifier? _%L21166%_)
                              (gx#identifier-list? _%L21165%_)
                              (or (gx#identifier? _%L21164%_)
                                  (gx#stx-false? _%L21164%_))
                              (gx#identifier? _%L21163%_)
                              (gx#stx-plist? _%L21161%_ _%class-opt?21075%_))
                         (let* ((_%struct?21206%_
                                 (let ((_%$e21196%_ _%struct?21070%_))
                                   (if _%$e21196%_
                                       _%$e21196%_
                                       (let ((_%$e21200%_
                                              (gx#stx-getq
                                               'struct:
                                               _%L21161%_)))
                                         (if _%$e21200%_
                                             (gx#stx-e _%$e21200%_)
                                             '#f)))))
                                (_%slots21213%_
                                 (let ((_%$e21209%_
                                        (gx#stx-getq 'slots: _%L21161%_)))
                                   (if _%$e21209%_ _%$e21209%_ '())))
                                (_%mixin-slots21220%_
                                 (let ((_%$e21216%_
                                        (gx#stx-getq 'mixin: _%L21161%_)))
                                   (if _%$e21216%_ _%$e21216%_ '())))
                                (_%accessible-slots21223%_
                                 (append (gx#syntax->list _%slots21213%_)
                                         (gx#syntax->list
                                          _%mixin-slots21220%_)))
                                (_%metaclass21226%_
                                 (gx#stx-getq 'metaclass: _%L21161%_))
                                (_%g2122921246%_
                                 (lambda (_%g2123021242%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2123021242%_)))
                                (_%g2122822393%_
                                 (lambda (_%g2123021250%_)
                                   (if (gx#stx-pair/null? _%g2123021250%_)
                                       (let ((_g27189_
                                              (gx#syntax-split-splice
                                               _%g2123021250%_
                                               '0)))
                                         (begin
                                           (let ((_g27190_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27189_)
                                                        (##vector-length
                                                         _g27189_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27190_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27190_)))
                                           (let ((_%target2123221253%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g27189_ 0)))
                                                 (_%tl2123421256%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g27189_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2123421256%_)
                                                 (letrec ((_%loop2123521259%_
                                                           (lambda (_%hd2123321263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%slot2123921266%_)
                     (if (gx#stx-pair? _%hd2123321263%_)
                         (let ((_%e2123621269%_
                                (gx#syntax-e _%hd2123321263%_)))
                           (let ((_%lp-hd2123721273%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2123621269%_)))
                                 (_%lp-tl2123821276%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2123621269%_))))
                             (_%loop2123521259%_
                              _%lp-tl2123821276%_
                              (cons _%lp-hd2123721273%_ _%slot2123921266%_))))
                         (let ((_%slot2124021279%_
                                (reverse _%slot2123921266%_)))
                           ((lambda (_%L21283%_)
                              (let* ((_%g2130421312%_
                                      (lambda (_%g2130521308%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2130521308%_)))
                                     (_%g2130322385%_
                                      (lambda (_%g2130521316%_)
                                        ((lambda (_%L21319%_)
                                           (let* ((_%g2133221340%_
                                                   (lambda (_%g2133321336%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2133321336%_)))
                                                  (_%g2133122377%_
                                                   (lambda (_%g2133321344%_)
                                                     ((lambda (_%L21347%_)
                                                        (let* ((_%g2136021368%_
                                                                (lambda (_%g2136121364%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2136121364%_)))
                       (_%g2135922373%_
                        (lambda (_%g2136121372%_)
                          ((lambda (_%L21375%_)
                             (let* ((_%g2138821396%_
                                     (lambda (_%g2138921392%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2138921392%_)))
                                    (_%g2138722369%_
                                     (lambda (_%g2138921400%_)
                                       ((lambda (_%L21403%_)
                                          (let* ((_%g2141621424%_
                                                  (lambda (_%g2141721420%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2141721420%_)))
                                                 (_%g2141522365%_
                                                  (lambda (_%g2141721428%_)
                                                    ((lambda (_%L21431%_)
                                                       (let* ((_%g2144421452%_
                                                               (lambda (_%g2144521448%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2144521448%_)))
                      (_%g2144322361%_
                       (lambda (_%g2144521456%_)
                         ((lambda (_%L21459%_)
                            (let* ((_%g2147221480%_
                                    (lambda (_%g2147321476%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2147321476%_)))
                                   (_%g2147122357%_
                                    (lambda (_%g2147321484%_)
                                      ((lambda (_%L21487%_)
                                         (let* ((_%g2150021508%_
                                                 (lambda (_%g2150121504%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2150121504%_)))
                                                (_%g2149922353%_
                                                 (lambda (_%g2150121512%_)
                                                   ((lambda (_%L21515%_)
                                                      (let* ((_%g2152821536%_
                                                              (lambda (_%g2152921532%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2152921532%_)))
                     (_%g2152722345%_
                      (lambda (_%g2152921540%_)
                        ((lambda (_%L21543%_)
                           (let* ((_%g2155621564%_
                                   (lambda (_%g2155721560%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2155721560%_)))
                                  (_%g2155522341%_
                                   (lambda (_%g2155721568%_)
                                     ((lambda (_%L21571%_)
                                        (let* ((_%g2158421592%_
                                                (lambda (_%g2158521588%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2158521588%_)))
                                               (_%g2158322337%_
                                                (lambda (_%g2158521596%_)
                                                  ((lambda (_%L21599%_)
                                                     (let* ((_%g2161221620%_
                                                             (lambda (_%g2161321616%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g2161321616%_)))
                                                            (_%g2161122302%_
                                                             (lambda (_%g2161321624%_)
                                                               ((lambda (_%L21627%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g2164021648%_
                                  (lambda (_%g2164121644%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2164121644%_)))
                                 (_%g2163922298%_
                                  (lambda (_%g2164121652%_)
                                    ((lambda (_%L21655%_)
                                       (let* ((_%g2166821676%_
                                               (lambda (_%g2166921672%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2166921672%_)))
                                              (_%g2166722286%_
                                               (lambda (_%g2166921680%_)
                                                 ((lambda (_%L21683%_)
                                                    (let* ((_%g2169621704%_
                                                            (lambda (_%g2169721700%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2169721700%_)))
                                                           (_%g2169522274%_
                                                            (lambda (_%g2169721708%_)
                                                              ((lambda (_%L21711%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%g2172421732%_
                                 (lambda (_%g2172521728%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2172521728%_)))
                                (_%g2172322270%_
                                 (lambda (_%g2172521736%_)
                                   ((lambda (_%L21739%_)
                                      (let* ((_%g2175221760%_
                                              (lambda (_%g2175321756%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2175321756%_)))
                                             (_%g2175122266%_
                                              (lambda (_%g2175321764%_)
                                                ((lambda (_%L21767%_)
                                                   (let* ((_%g2178021806%_
                                                           (lambda (_%g2178121802%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g2178121802%_)))
                                                          (_%g2177922178%_
                                                           (lambda (_%g2178121810%_)
                                                             (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2178121810%_)
                         (let ((_g27191_
                                (gx#syntax-split-splice _%g2178121810%_ '0)))
                           (begin
                             (let ((_g27192_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g27191_)
                                          (##vector-length _g27191_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g27192_ 2)))
                                   (error "Context expects 2 values"
                                          _g27192_)))
                             (let ((_%target2178421813%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _g27191_ 0)))
                                   (_%tl2178621816%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _g27191_ 1))))
                               (if (gx#stx-null? _%tl2178621816%_)
                                   (letrec ((_%loop2178721819%_
                                             (lambda (_%hd2178521823%_
                                                      _%def-setf2179121826%_
                                                      _%def-getf2179221828%_)
                                               (if (gx#stx-pair?
                                                    _%hd2178521823%_)
                                                   (let ((_%e2178821831%_
                                                          (gx#syntax-e
                                                           _%hd2178521823%_)))
                                                     (let ((_%lp-hd2178921835%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e2178821831%_)))
                                                           (_%lp-tl2179021838%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e2178821831%_))))
                                                       (if (gx#stx-pair?
                                                            _%lp-hd2178921835%_)
                                                           (let ((_%e2179521841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%lp-hd2178921835%_)))
                     (let ((_%hd2179621845%_
                            (let ()
                              (declare (not safe))
                              (##car _%e2179521841%_)))
                           (_%tl2179721848%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e2179521841%_))))
                       (if (gx#stx-pair? _%tl2179721848%_)
                           (let ((_%e2179821851%_
                                  (gx#syntax-e _%tl2179721848%_)))
                             (let ((_%hd2179921855%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e2179821851%_)))
                                   (_%tl2180021858%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e2179821851%_))))
                               (if (gx#stx-null? _%tl2180021858%_)
                                   (_%loop2178721819%_
                                    _%lp-tl2179021838%_
                                    (cons _%hd2179921855%_
                                          _%def-setf2179121826%_)
                                    (cons _%hd2179621845%_
                                          _%def-getf2179221828%_))
                                   (_%g2178021806%_ _%g2178121810%_))))
                           (_%g2178021806%_ _%g2178121810%_))))
                   (_%g2178021806%_ _%g2178121810%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%def-setf2179321861%_
                                                          (reverse _%def-setf2179121826%_))
                                                         (_%def-getf2179421864%_
                                                          (reverse _%def-getf2179221828%_)))
                                                     ((lambda (_%L21867%_
                                                               _%L21869%_)
                                                        (let* ((_%g2188621912%_
                                                                (lambda (_%g2188721908%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2188721908%_)))
                       (_%g2188522026%_
                        (lambda (_%g2188721916%_)
                          (if (gx#stx-pair/null? _%g2188721916%_)
                              (let ((_g27193_
                                     (gx#syntax-split-splice
                                      _%g2188721916%_
                                      '0)))
                                (begin
                                  (let ((_g27194_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g27193_)
                                               (##vector-length _g27193_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g27194_ 2)))
                                        (error "Context expects 2 values"
                                               _g27194_)))
                                  (let ((_%target2189021919%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g27193_ 0)))
                                        (_%tl2189221922%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g27193_ 1))))
                                    (if (gx#stx-null? _%tl2189221922%_)
                                        (letrec ((_%loop2189321925%_
                                                  (lambda (_%hd2189121929%_
                                                           _%def-usetf2189721932%_
                                                           _%def-ugetf2189821934%_)
                                                    (if (gx#stx-pair?
                                                         _%hd2189121929%_)
                                                        (let ((_%e2189421937%_
                                                               (gx#syntax-e
                                                                _%hd2189121929%_)))
                                                          (let ((_%lp-hd2189521941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2189421937%_)))
                        (_%lp-tl2189621944%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2189421937%_))))
                    (if (gx#stx-pair? _%lp-hd2189521941%_)
                        (let ((_%e2190121947%_
                               (gx#syntax-e _%lp-hd2189521941%_)))
                          (let ((_%hd2190221951%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2190121947%_)))
                                (_%tl2190321954%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2190121947%_))))
                            (if (gx#stx-pair? _%tl2190321954%_)
                                (let ((_%e2190421957%_
                                       (gx#syntax-e _%tl2190321954%_)))
                                  (let ((_%hd2190521961%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2190421957%_)))
                                        (_%tl2190621964%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2190421957%_))))
                                    (if (gx#stx-null? _%tl2190621964%_)
                                        (_%loop2189321925%_
                                         _%lp-tl2189621944%_
                                         (cons _%hd2190521961%_
                                               _%def-usetf2189721932%_)
                                         (cons _%hd2190221951%_
                                               _%def-ugetf2189821934%_))
                                        (_%g2188621912%_ _%g2188721916%_))))
                                (_%g2188621912%_ _%g2188721916%_))))
                        (_%g2188621912%_ _%g2188721916%_))))
                (let ((_%def-usetf2189921967%_
                       (reverse _%def-usetf2189721932%_))
                      (_%def-ugetf2190021970%_
                       (reverse _%def-ugetf2189821934%_)))
                  ((lambda (_%L21973%_ _%L21975%_)
                     (_%wrap21072%_
                      (cons (gx#datum->syntax '#f 'begin)
                            (cons _%L21711%_
                                  (cons _%L21767%_
                                        (cons _%L21739%_
                                              (foldr (lambda (_%g2199322002%_
                                                              _%g2199422005%_)
                                                       (cons _%g2199322002%_
                                                             _%g2199422005%_))
                                                     (foldr (lambda (_%g2199522008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g2199622011%_)
                      (cons _%g2199522008%_ _%g2199622011%_))
                    (foldr (lambda (_%g2199722014%_ _%g2199822017%_)
                             (cons _%g2199722014%_ _%g2199822017%_))
                           (foldr (lambda (_%g2199922020%_ _%g2200022023%_)
                                    (cons _%g2199922020%_ _%g2200022023%_))
                                  '()
                                  _%L21973%_)
                           _%L21975%_)
                    _%L21867%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%L21869%_)))))))
                   _%def-usetf2189921967%_
                   _%def-ugetf2190021970%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop2189321925%_
                                           _%target2189021919%_
                                           '()
                                           '()))
                                        (_%g2188621912%_ _%g2188721916%_)))))
                              (_%g2188621912%_ _%g2188721916%_)))))
                  (_%g2188522026%_
                   (gx#stx-map
                    (lambda (_%ref22030%_)
                      (let* ((_%g2203322052%_
                              (lambda (_%g2203422048%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2203422048%_)))
                             (_%g2203222174%_
                              (lambda (_%g2203422056%_)
                                (if (gx#stx-pair? _%g2203422056%_)
                                    (let ((_%e2203822059%_
                                           (gx#syntax-e _%g2203422056%_)))
                                      (let ((_%hd2203922063%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2203822059%_)))
                                            (_%tl2204022066%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2203822059%_))))
                                        (if (gx#stx-pair? _%tl2204022066%_)
                                            (let ((_%e2204122069%_
                                                   (gx#syntax-e
                                                    _%tl2204022066%_)))
                                              (let ((_%hd2204222073%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2204122069%_)))
                                                    (_%tl2204322076%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2204122069%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2204322076%_)
                                                    (let ((_%e2204422079%_
                                                           (gx#syntax-e
                                                            _%tl2204322076%_)))
                                                      (let ((_%hd2204522083%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2204422079%_)))
                    (_%tl2204622086%_
                     (let () (declare (not safe)) (##cdr _%e2204422079%_))))
                (if (gx#stx-null? _%tl2204622086%_)
                    ((lambda (_%L22089%_ _%L22091%_ _%L22092%_)
                       (let* ((_%g2211022125%_
                               (lambda (_%g2211122121%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2211122121%_)))
                              (_%g2210922170%_
                               (lambda (_%g2211122129%_)
                                 (if (gx#stx-pair? _%g2211122129%_)
                                     (let ((_%e2211422132%_
                                            (gx#syntax-e _%g2211122129%_)))
                                       (let ((_%hd2211522136%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2211422132%_)))
                                             (_%tl2211622139%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2211422132%_))))
                                         (if (gx#stx-pair? _%tl2211622139%_)
                                             (let ((_%e2211722142%_
                                                    (gx#syntax-e
                                                     _%tl2211622139%_)))
                                               (let ((_%hd2211822146%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2211722142%_)))
                                                     (_%tl2211922149%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2211722142%_))))
                                                 (if (gx#stx-null?
                                                      _%tl2211922149%_)
                                                     ((lambda (_%L22152%_
                                                               _%L22154%_)
                                                        (cons (_%wrap21072%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'def)
                             (cons _%L22154%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@mop.accessor)
                                                           (cons _%L21403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L22092%_ (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-class-slot-unchecked-accessor)
                         (cons _%L21166%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L22092%_ '()))
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (cons (_%wrap21072%_
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%L22152%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@mop.mutator)
                         (cons _%L21403%_ (cons _%L22092%_ (cons '#f '()))))
                   (cons (cons (gx#datum->syntax
                                '#f
                                'make-class-slot-unchecked-mutator)
                               (cons _%L21166%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L22092%_ '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            '())))
              _%hd2211822146%_
              _%hd2211522136%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2211022125%_
                                                      _%g2211122129%_))))
                                             (_%g2211022125%_
                                              _%g2211122129%_))))
                                     (_%g2211022125%_ _%g2211122129%_)))))
                         (_%g2210922170%_
                          (list (gx#stx-identifier _%L22091%_ '"&" _%L22091%_)
                                (gx#stx-identifier
                                 _%L22089%_
                                 '"&"
                                 _%L22089%_)))))
                     _%hd2204522083%_
                     _%hd2204222073%_
                     _%hd2203922063%_)
                    (_%g2203322052%_ _%g2203422056%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2203322052%_
                                                     _%g2203422056%_))))
                                            (_%g2203322052%_
                                             _%g2203422056%_))))
                                    (_%g2203322052%_ _%g2203422056%_)))))
                        (_%g2203222174%_ _%ref22030%_)))
                    _%accessible-slots21223%_))))
              _%def-setf2179321861%_
              _%def-getf2179421864%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop2178721819%_
                                      _%target2178421813%_
                                      '()
                                      '()))
                                   (_%g2178021806%_ _%g2178121810%_)))))
                         (_%g2178021806%_ _%g2178121810%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2177922178%_
                                                      (gx#stx-map
                                                       (lambda (_%ref22182%_)
                                                         (let* ((_%g2218522204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2218622200%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2218622200%_)))
                        (_%g2218422262%_
                         (lambda (_%g2218622208%_)
                           (if (gx#stx-pair? _%g2218622208%_)
                               (let ((_%e2219022211%_
                                      (gx#syntax-e _%g2218622208%_)))
                                 (let ((_%hd2219122215%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2219022211%_)))
                                       (_%tl2219222218%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2219022211%_))))
                                   (if (gx#stx-pair? _%tl2219222218%_)
                                       (let ((_%e2219322221%_
                                              (gx#syntax-e _%tl2219222218%_)))
                                         (let ((_%hd2219422225%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e2219322221%_)))
                                               (_%tl2219522228%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e2219322221%_))))
                                           (if (gx#stx-pair? _%tl2219522228%_)
                                               (let ((_%e2219622231%_
                                                      (gx#syntax-e
                                                       _%tl2219522228%_)))
                                                 (let ((_%hd2219722235%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2219622231%_)))
                                                       (_%tl2219822238%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2219622231%_))))
                                                   (if (gx#stx-null?
                                                        _%tl2219822238%_)
                                                       ((lambda (_%L22241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L22243%_
                         _%L22244%_)
                  (cons (_%wrap21072%_
                         (cons (gx#datum->syntax '#f 'def)
                               (cons _%L22243%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'begin-annotation)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@mop.accessor)
                                                             (cons _%L21403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L22244%_ (cons '#t '()))))
               (cons (cons (gx#datum->syntax '#f 'make-class-slot-accessor)
                           (cons _%L21166%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L22244%_ '()))
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                        (cons (_%wrap21072%_
                               (cons (gx#datum->syntax '#f 'def)
                                     (cons _%L22241%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@mop.mutator)
                           (cons _%L21403%_ (cons _%L22244%_ (cons '#t '()))))
                     (cons (cons (gx#datum->syntax
                                  '#f
                                  'make-class-slot-mutator)
                                 (cons _%L21166%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L22244%_ '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                              '())))
                _%hd2219722235%_
                _%hd2219422225%_
                _%hd2219122215%_)
               (_%g2218522204%_ _%g2218622208%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2218522204%_
                                                _%g2218622208%_))))
                                       (_%g2218522204%_ _%g2218622208%_))))
                               (_%g2218522204%_ _%g2218622208%_)))))
                   (_%g2218422262%_ _%ref22182%_)))
               _%accessible-slots21223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g2175321764%_))))
                                        (_%g2175122266%_
                                         (_%wrap21072%_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _%L21163%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@mop.predicate)
                                      (cons _%L21403%_ '()))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'make-class-predicate)
                                            (cons _%L21166%_ '()))
                                      '())))
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g2172521736%_))))
                           (_%g2172322270%_
                            (if (gx#stx-false? _%L21164%_)
                                (cons (gx#datum->syntax '#f 'begin) '())
                                (_%wrap21072%_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _%L21164%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin-annotation)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '@mop.constructor)
                             (cons _%L21403%_ '()))
                       (cons (cons (gx#datum->syntax '#f 'lambda)
                                   (cons (gx#datum->syntax '#f '$args)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'apply)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'make-instance)
                                                           (cons _%L21166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))))
                       _%g2169721708%_))))
              (_%g2169522274%_
               (_%wrap21072%_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _%L21166%_
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.class)
                                                    (cons _%L21319%_
                                                          (cons _%L21431%_
                                                                (cons (foldr (lambda (_%g2227722280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              _%g2227822283%_)
                                       (cons _%g2227722280%_ _%g2227822283%_))
                                     '()
                                     _%L21283%_)
                              (cons _%L21375%_
                                    (cons _%L21459%_
                                          (cons _%L21487%_
                                                (cons _%L21515%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L21683%_ '())))
                                  '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2166921680%_))))
                                         (_%g2166722286%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-class-type)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L21319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote) (cons _%L21347%_ '()))
                    (cons _%L21655%_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons (foldr (lambda (_%g2228922292%_
                                                            _%g2229022295%_)
                                                     (cons _%g2228922292%_
                                                           _%g2229022295%_))
                                                   '()
                                                   _%L21283%_)
                                            '()))
                                (cons _%L21627%_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L21375%_ '()))
                                            '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g2164121652%_))))
                            (_%g2163922298%_
                             (cons (gx#datum->syntax '#f 'list) _%L21165%_))))
                        _%g2161321624%_))))
               (_%g2161122302%_
                (if (gx#stx-e _%metaclass21226%_)
                    (let* ((_%g2230622314%_
                            (lambda (_%g2230722310%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2230722310%_)))
                           (_%g2230522333%_
                            (lambda (_%g2230722318%_)
                              ((lambda (_%L22321%_)
                                 (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons 'metaclass:
                                                         (cons '::
                                                               (cons _%L22321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '::
                                                   (cons _%L21599%_ '())))))
                               _%g2230722318%_))))
                      (_%g2230522333%_ _%metaclass21226%_))
                    _%L21599%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g2158521596%_))))
                                          (_%g2158322337%_
                                           (if _%struct?21206%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         (cons 'struct: '#t))
                   (cons ':: (cons _%L21571%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%L21571%_))))
                                      _%g2155721568%_))))
                             (_%g2155522341%_
                              (if (gx#stx-e _%L21487%_)
                                  (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons 'final: '#t))
                                              (cons '::
                                                    (cons _%L21543%_ '()))))
                                  _%L21543%_))))
                         _%g2152921540%_))))
                (_%g2152722345%_
                 (let ((_%$e22349%_ (gx#stx-getq 'properties: _%L21161%_)))
                   (if _%$e22349%_
                       _%$e22349%_
                       (cons (gx#datum->syntax '#f '@list) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g2150121512%_))))
                                           (_%g2149922353%_
                                            (if (gx#stx-e _%metaclass21226%_)
                                                (gx#core-quote-syntax
                                                 _%metaclass21226%_)
                                                '#f))))
                                       _%g2147321484%_))))
                              (_%g2147122357%_
                               (gx#stx-getq 'final: _%L21161%_))))
                          _%g2144521456%_))))
                 (_%g2144322361%_ _%struct?21206%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2141721428%_))))
                                            (_%g2141522365%_
                                             (gx#stx-map
                                              gx#core-quote-syntax
                                              _%L21165%_))))
                                        _%g2138921400%_))))
                               (_%g2138722369%_
                                (gx#core-quote-syntax _%L21166%_))))
                           _%g2136121372%_))))
                  (_%g2135922373%_ (gx#stx-getq 'constructor: _%L21161%_))))
              _%g2133321344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2133122377%_
                                              (let ((_%$e22381%_
                                                     (gx#stx-getq
                                                      'name:
                                                      _%L21161%_)))
                                                (if _%$e22381%_
                                                    _%$e22381%_
                                                    _%L21166%_)))))
                                         _%g2130521316%_))))
                                (_%g2130322385%_
                                 (let ((_%$e22389%_
                                        (gx#stx-getq 'id: _%L21161%_)))
                                   (if _%$e22389%_
                                       _%$e22389%_
                                       (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                        _%L21166%_))))))
                            _%slot2124021279%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2123521259%_
                                                    _%target2123221253%_
                                                    '()))
                                                 (_%g2122921246%_
                                                  _%g2123021250%_)))))
                                       (_%g2122921246%_ _%g2123021250%_)))))
                           (_%g2122822393%_
                            (gx#stx-map _%slot-name21074%_ _%slots21213%_)))
                         (_%g2107721104%_ _%g2107821108%_)))
                   _%tl2109821158%_
                   _%hd2109721155%_
                   _%hd2109421145%_
                   _%hd2109121135%_
                   _%hd2108821125%_)))
              (_%g2107721104%_ _%g2107821108%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2107721104%_
                                               _%g2107821108%_))))
                                      (_%g2107721104%_ _%g2107821108%_))))
                              (_%g2107721104%_ _%g2107821108%_))))
                      (_%g2107721104%_ _%g2107821108%_)))))
          (_%g2107622397%_ _%stx21068%_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_%stx22511%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22511%_ '#t)))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_%stx22514%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22514%_ '#f))))
