(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_%type-t22472%_)
      (let ((_%$e22475%_ (gx#module-context-ns (gx#current-expander-context))))
        (if _%$e22475%_
            (gx#stx-identifier
             _%type-t22472%_
             _%$e22475%_
             '"#"
             _%type-t22472%_
             '"::t")
            (let ((_%mid22484%_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _%type-t22472%_
               _%mid22484%_
               '"#"
               _%type-t22472%_
               '"::t"))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_%type-t22469%_)
      (if (gx#module-context? (gx#current-expander-context))
          (|gerbil/core/mop~MOP-1[1]#module-type-id| _%type-t22469%_)
          (make-symbol '"__" (gensym (gx#stx-e _%type-t22469%_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_%stx21057%_ _%struct?21059%_)
      (letrec ((_%wrap21061%_
                (lambda (_%e-stx22466%_)
                  (gx#stx-wrap-source
                   _%e-stx22466%_
                   (gx#stx-source _%stx21057%_))))
               (_%slot-name21063%_
                (lambda (_%slot-spec22383%_)
                  (let* ((_%g2238622405%_
                          (lambda (_%g2238722401%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2238722401%_)))
                         (_%g2238522462%_
                          (lambda (_%g2238722409%_)
                            (if (gx#stx-pair? _%g2238722409%_)
                                (let ((_%e2239122412%_
                                       (gx#syntax-e _%g2238722409%_)))
                                  (let ((_%hd2239222416%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2239122412%_)))
                                        (_%tl2239322419%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2239122412%_))))
                                    (if (gx#stx-pair? _%tl2239322419%_)
                                        (let ((_%e2239422422%_
                                               (gx#syntax-e _%tl2239322419%_)))
                                          (let ((_%hd2239522426%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2239422422%_)))
                                                (_%tl2239622429%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2239422422%_))))
                                            (if (gx#stx-pair? _%tl2239622429%_)
                                                (let ((_%e2239722432%_
                                                       (gx#syntax-e
                                                        _%tl2239622429%_)))
                                                  (let ((_%hd2239822436%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2239722432%_)))
                                                        (_%tl2239922439%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2239722432%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2239922439%_)
                                                        _%hd2239222416%_
                                                        (_%g2238622405%_
                                                         _%g2238722409%_))))
                                                (_%g2238622405%_
                                                 _%g2238722409%_))))
                                        (_%g2238622405%_ _%g2238722409%_))))
                                (_%g2238622405%_ _%g2238722409%_)))))
                    (_%g2238522462%_ _%slot-spec22383%_))))
               (_%class-opt?21064%_
                (lambda (_%key22380%_)
                  (let ((__tmp27527 (gx#stx-e _%key22380%_)))
                    (declare (not safe))
                    (##memq __tmp27527
                            '(struct:
                              slots:
                              id:
                              name:
                              properties:
                              constructor:
                              final:
                              mixin:
                              metaclass:))))))
        (let* ((_%g2106621093%_
                (lambda (_%g2106721089%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2106721089%_)))
               (_%g2106522376%_
                (lambda (_%g2106721097%_)
                  (if (gx#stx-pair? _%g2106721097%_)
                      (let ((_%e2107321100%_ (gx#syntax-e _%g2106721097%_)))
                        (let ((_%hd2107421104%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2107321100%_)))
                              (_%tl2107521107%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2107321100%_))))
                          (if (gx#stx-pair? _%tl2107521107%_)
                              (let ((_%e2107621110%_
                                     (gx#syntax-e _%tl2107521107%_)))
                                (let ((_%hd2107721114%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2107621110%_)))
                                      (_%tl2107821117%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2107621110%_))))
                                  (if (gx#stx-pair? _%tl2107821117%_)
                                      (let ((_%e2107921120%_
                                             (gx#syntax-e _%tl2107821117%_)))
                                        (let ((_%hd2108021124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2107921120%_)))
                                              (_%tl2108121127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2107921120%_))))
                                          (if (gx#stx-pair? _%tl2108121127%_)
                                              (let ((_%e2108221130%_
                                                     (gx#syntax-e
                                                      _%tl2108121127%_)))
                                                (let ((_%hd2108321134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2108221130%_)))
                                                      (_%tl2108421137%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2108221130%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl2108421137%_)
                                                      (let ((_%e2108521140%_
                                                             (gx#syntax-e
                                                              _%tl2108421137%_)))
                                                        (let ((_%hd2108621144%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2108521140%_)))
                      (_%tl2108721147%_
                       (let () (declare (not safe)) (##cdr _%e2108521140%_))))
                  (if (and (gx#identifier? _%hd2107721114%_)
                           (gx#identifier-list? _%hd2108021124%_)
                           (or (gx#identifier? _%hd2108321134%_)
                               (gx#stx-false? _%hd2108321134%_))
                           (gx#identifier? _%hd2108621144%_)
                           (gx#stx-plist?
                            _%tl2108721147%_
                            _%class-opt?21064%_))
                      (let* ((_%struct?21195%_
                              (let ((_%$e21185%_ _%struct?21059%_))
                                (if _%$e21185%_
                                    _%$e21185%_
                                    (let ((_%$e21189%_
                                           (gx#stx-getq
                                            'struct:
                                            _%tl2108721147%_)))
                                      (if _%$e21189%_
                                          (gx#stx-e _%$e21189%_)
                                          '#f)))))
                             (_%slots21202%_
                              (let ((_%$e21198%_
                                     (gx#stx-getq 'slots: _%tl2108721147%_)))
                                (if _%$e21198%_ _%$e21198%_ '())))
                             (_%mixin-slots21209%_
                              (let ((_%$e21205%_
                                     (gx#stx-getq 'mixin: _%tl2108721147%_)))
                                (if _%$e21205%_ _%$e21205%_ '())))
                             (_%accessible-slots21212%_
                              (append (gx#syntax->list _%slots21202%_)
                                      (gx#syntax->list _%mixin-slots21209%_)))
                             (_%metaclass21215%_
                              (gx#stx-getq 'metaclass: _%tl2108721147%_))
                             (_%g2121821235%_
                              (lambda (_%g2121921231%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2121921231%_)))
                             (_%g2121722372%_
                              (lambda (_%g2121921239%_)
                                (if (gx#stx-pair/null? _%g2121921239%_)
                                    (let ((_g27528_
                                           (gx#syntax-split-splice
                                            _%g2121921239%_
                                            '0)))
                                      (begin
                                        (let ((_g27529_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g27528_)
                                                     (##values-length _g27528_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g27529_ 2)))
                                              (error "Context expects 2 values"
                                                     _g27529_)))
                                        (let ((_%target2122121242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g27528_ 0)))
                                              (_%tl2122321245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g27528_ 1))))
                                          (if (gx#stx-null? _%tl2122321245%_)
                                              (letrec ((_%loop2122421248%_
                                                        (lambda (_%hd2122221252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%slot2122821255%_)
                  (if (gx#stx-pair? _%hd2122221252%_)
                      (let ((_%e2122521257%_ (gx#syntax-e _%hd2122221252%_)))
                        (let ((_%lp-hd2122621261%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2122521257%_)))
                              (_%lp-tl2122721264%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2122521257%_))))
                          (_%loop2122421248%_
                           _%lp-tl2122721264%_
                           (cons _%lp-hd2122621261%_ _%slot2122821255%_))))
                      (let* ((_%slot2122921267%_ (reverse _%slot2122821255%_))
                             (_%g2129121299%_
                              (lambda (_%g2129221295%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2129221295%_)))
                             (_%g2129022364%_
                              (lambda (_%g2129221303%_)
                                (let* ((_%g2131921327%_
                                        (lambda (_%g2132021323%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2132021323%_)))
                                       (_%g2131822356%_
                                        (lambda (_%g2132021331%_)
                                          (let* ((_%g2134721355%_
                                                  (lambda (_%g2134821351%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2134821351%_)))
                                                 (_%g2134622352%_
                                                  (lambda (_%g2134821359%_)
                                                    (let* ((_%g2137521383%_
                                                            (lambda (_%g2137621379%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2137621379%_)))
                                                           (_%g2137422348%_
                                                            (lambda (_%g2137621387%_)
                                                              (let* ((_%g2140321411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2140421407%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2140421407%_)))
                             (_%g2140222344%_
                              (lambda (_%g2140421415%_)
                                (let* ((_%g2143121439%_
                                        (lambda (_%g2143221435%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2143221435%_)))
                                       (_%g2143022340%_
                                        (lambda (_%g2143221443%_)
                                          (let* ((_%g2145921467%_
                                                  (lambda (_%g2146021463%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2146021463%_)))
                                                 (_%g2145822336%_
                                                  (lambda (_%g2146021471%_)
                                                    (let* ((_%g2148721495%_
                                                            (lambda (_%g2148821491%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2148821491%_)))
                                                           (_%g2148622332%_
                                                            (lambda (_%g2148821499%_)
                                                              (let* ((_%g2151521523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2151621519%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2151621519%_)))
                             (_%g2151422324%_
                              (lambda (_%g2151621527%_)
                                (let* ((_%g2154321551%_
                                        (lambda (_%g2154421547%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2154421547%_)))
                                       (_%g2154222320%_
                                        (lambda (_%g2154421555%_)
                                          (let* ((_%g2157121579%_
                                                  (lambda (_%g2157221575%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2157221575%_)))
                                                 (_%g2157022316%_
                                                  (lambda (_%g2157221583%_)
                                                    (let* ((_%g2159921607%_
                                                            (lambda (_%g2160021603%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2160021603%_)))
                                                           (_%g2159822281%_
                                                            (lambda (_%g2160021611%_)
                                                              (let* ((_%g2162721635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2162821631%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2162821631%_)))
                             (_%g2162622277%_
                              (lambda (_%g2162821639%_)
                                (let* ((_%g2165521663%_
                                        (lambda (_%g2165621659%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2165621659%_)))
                                       (_%g2165422265%_
                                        (lambda (_%g2165621667%_)
                                          (let* ((_%g2168321691%_
                                                  (lambda (_%g2168421687%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2168421687%_)))
                                                 (_%g2168222253%_
                                                  (lambda (_%g2168421695%_)
                                                    (let* ((_%g2171121719%_
                                                            (lambda (_%g2171221715%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2171221715%_)))
                                                           (_%g2171022249%_
                                                            (lambda (_%g2171221723%_)
                                                              (let* ((_%g2173921747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2174021743%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2174021743%_)))
                             (_%g2173822245%_
                              (lambda (_%g2174021751%_)
                                (let* ((_%g2176721793%_
                                        (lambda (_%g2176821789%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2176821789%_)))
                                       (_%g2176622157%_
                                        (lambda (_%g2176821797%_)
                                          (if (gx#stx-pair/null?
                                               _%g2176821797%_)
                                              (let ((_g27530_
                                                     (gx#syntax-split-splice
                                                      _%g2176821797%_
                                                      '0)))
                                                (begin
                                                  (let ((_g27531_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g27530_)
                                                               (##values-length
                                                                _g27530_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g27531_ 2)))
                (error "Context expects 2 values" _g27531_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target2177121800%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g27530_
                                                            0)))
                                                        (_%tl2177321803%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g27530_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl2177321803%_)
                                                        (letrec ((_%loop2177421806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd2177221810%_
                                   _%def-setf2177821813%_
                                   _%def-getf2177921814%_)
                            (if (gx#stx-pair? _%hd2177221810%_)
                                (let ((_%e2177521816%_
                                       (gx#syntax-e _%hd2177221810%_)))
                                  (let ((_%lp-hd2177621820%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2177521816%_)))
                                        (_%lp-tl2177721823%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2177521816%_))))
                                    (if (gx#stx-pair? _%lp-hd2177621820%_)
                                        (let ((_%e2178221826%_
                                               (gx#syntax-e
                                                _%lp-hd2177621820%_)))
                                          (let ((_%hd2178321830%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2178221826%_)))
                                                (_%tl2178421833%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2178221826%_))))
                                            (if (gx#stx-pair? _%tl2178421833%_)
                                                (let ((_%e2178521836%_
                                                       (gx#syntax-e
                                                        _%tl2178421833%_)))
                                                  (let ((_%hd2178621840%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2178521836%_)))
                                                        (_%tl2178721843%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2178521836%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2178721843%_)
                                                        (_%loop2177421806%_
                                                         _%lp-tl2177721823%_
                                                         (cons _%hd2178621840%_
                                                               _%def-setf2177821813%_)
                                                         (cons _%hd2178321830%_
                                                               _%def-getf2177921814%_))
                                                        (_%g2176721793%_
                                                         _%g2176821797%_))))
                                                (_%g2176721793%_
                                                 _%g2176821797%_))))
                                        (_%g2176721793%_ _%g2176821797%_))))
                                (let ((_%def-setf2178021846%_
                                       (reverse _%def-setf2177821813%_))
                                      (_%def-getf2178121848%_
                                       (reverse _%def-getf2177921814%_)))
                                  (let* ((_%g2186921895%_
                                          (lambda (_%g2187021891%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2187021891%_)))
                                         (_%g2186822005%_
                                          (lambda (_%g2187021899%_)
                                            (if (gx#stx-pair/null?
                                                 _%g2187021899%_)
                                                (let ((_g27532_
                                                       (gx#syntax-split-splice
                                                        _%g2187021899%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g27533_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g27532_)
                         (##values-length _g27532_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g27533_ 2)))
                  (error "Context expects 2 values" _g27533_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target2187321902%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g27532_
                                                              0)))
                                                          (_%tl2187521905%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g27532_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl2187521905%_)
                                                          (letrec ((_%loop2187621908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd2187421912%_
                                     _%def-usetf2188021915%_
                                     _%def-ugetf2188121916%_)
                              (if (gx#stx-pair? _%hd2187421912%_)
                                  (let ((_%e2187721918%_
                                         (gx#syntax-e _%hd2187421912%_)))
                                    (let ((_%lp-hd2187821922%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2187721918%_)))
                                          (_%lp-tl2187921925%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2187721918%_))))
                                      (if (gx#stx-pair? _%lp-hd2187821922%_)
                                          (let ((_%e2188421928%_
                                                 (gx#syntax-e
                                                  _%lp-hd2187821922%_)))
                                            (let ((_%hd2188521932%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2188421928%_)))
                                                  (_%tl2188621935%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2188421928%_))))
                                              (if (gx#stx-pair?
                                                   _%tl2188621935%_)
                                                  (let ((_%e2188721938%_
                                                         (gx#syntax-e
                                                          _%tl2188621935%_)))
                                                    (let ((_%hd2188821942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2188721938%_)))
                                                          (_%tl2188921945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2188721938%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2188921945%_)
                                                          (_%loop2187621908%_
                                                           _%lp-tl2187921925%_
                                                           (cons _%hd2188821942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%def-usetf2188021915%_)
                   (cons _%hd2188521932%_ _%def-ugetf2188121916%_))
                  (_%g2186921895%_ _%g2187021899%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2186921895%_
                                                   _%g2187021899%_))))
                                          (_%g2186921895%_ _%g2187021899%_))))
                                  (let ((_%def-usetf2188221948%_
                                         (reverse _%def-usetf2188021915%_))
                                        (_%def-ugetf2188321950%_
                                         (reverse _%def-ugetf2188121916%_)))
                                    (_%wrap21061%_
                                     (cons (gx#datum->syntax '#f 'begin)
                                           (cons _%g2168421695%_
                                                 (cons _%g2174021751%_
                                                       (cons _%g2171221723%_
                                                             (foldr (lambda (_%g2197221981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g2197321984%_)
                              (cons _%g2197221981%_ _%g2197321984%_))
                            (foldr (lambda (_%g2197421987%_ _%g2197521990%_)
                                     (cons _%g2197421987%_ _%g2197521990%_))
                                   (foldr (lambda (_%g2197621993%_
                                                   _%g2197721996%_)
                                            (cons _%g2197621993%_
                                                  _%g2197721996%_))
                                          (foldr (lambda (_%g2197821999%_
                                                          _%g2197922002%_)
                                                   (cons _%g2197821999%_
                                                         _%g2197922002%_))
                                                 '()
                                                 _%def-usetf2188221948%_)
                                          _%def-ugetf2188321950%_)
                                   _%def-setf2178021846%_)
                            _%def-getf2178121848%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (_%loop2187621908%_ _%target2187321902%_ '() '()))
                  (_%g2186921895%_ _%g2187021899%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2186921895%_
                                                 _%g2187021899%_)))))
                                    (_%g2186822005%_
                                     (gx#stx-map
                                      (lambda (_%ref22009%_)
                                        (let* ((_%g2201222031%_
                                                (lambda (_%g2201322027%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2201322027%_)))
                                               (_%g2201122153%_
                                                (lambda (_%g2201322035%_)
                                                  (if (gx#stx-pair?
                                                       _%g2201322035%_)
                                                      (let ((_%e2201722038%_
                                                             (gx#syntax-e
                                                              _%g2201322035%_)))
                                                        (let ((_%hd2201822042%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2201722038%_)))
                      (_%tl2201922045%_
                       (let () (declare (not safe)) (##cdr _%e2201722038%_))))
                  (if (gx#stx-pair? _%tl2201922045%_)
                      (let ((_%e2202022048%_ (gx#syntax-e _%tl2201922045%_)))
                        (let ((_%hd2202122052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2202022048%_)))
                              (_%tl2202222055%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2202022048%_))))
                          (if (gx#stx-pair? _%tl2202222055%_)
                              (let ((_%e2202322058%_
                                     (gx#syntax-e _%tl2202222055%_)))
                                (let ((_%hd2202422062%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2202322058%_)))
                                      (_%tl2202522065%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2202322058%_))))
                                  (if (gx#stx-null? _%tl2202522065%_)
                                      (let* ((_%g2208922104%_
                                              (lambda (_%g2209022100%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2209022100%_)))
                                             (_%g2208822149%_
                                              (lambda (_%g2209022108%_)
                                                (if (gx#stx-pair?
                                                     _%g2209022108%_)
                                                    (let ((_%e2209322111%_
                                                           (gx#syntax-e
                                                            _%g2209022108%_)))
                                                      (let ((_%hd2209422115%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2209322111%_)))
                    (_%tl2209522118%_
                     (let () (declare (not safe)) (##cdr _%e2209322111%_))))
                (if (gx#stx-pair? _%tl2209522118%_)
                    (let ((_%e2209622121%_ (gx#syntax-e _%tl2209522118%_)))
                      (let ((_%hd2209722125%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2209622121%_)))
                            (_%tl2209822128%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2209622121%_))))
                        (if (gx#stx-null? _%tl2209822128%_)
                            (cons (_%wrap21061%_
                                   (cons (gx#datum->syntax '#f 'def)
                                         (cons _%hd2209422115%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'begin-annotation)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '@mop.accessor)
                               (cons _%g2137621387%_
                                     (cons _%hd2201822042%_ (cons '#f '()))))
                         (cons (cons (gx#datum->syntax
                                      '#f
                                      'make-class-slot-unchecked-accessor)
                                     (cons _%hd2107721114%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _%hd2201822042%_
                                                             '()))
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                  (cons (_%wrap21061%_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _%hd2209722125%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                     (cons _%g2137621387%_
                                           (cons _%hd2201822042%_
                                                 (cons '#f '()))))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'make-class-slot-unchecked-mutator)
                                           (cons _%hd2107721114%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%hd2201822042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))
                            (_%g2208922104%_ _%g2209022108%_))))
                    (_%g2208922104%_ _%g2209022108%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2208922104%_
                                                     _%g2209022108%_)))))
                                        (_%g2208822149%_
                                         (list (gx#stx-identifier
                                                _%hd2202122052%_
                                                '"&"
                                                _%hd2202122052%_)
                                               (gx#stx-identifier
                                                _%hd2202422062%_
                                                '"&"
                                                _%hd2202422062%_))))
                                      (_%g2201222031%_ _%g2201322035%_))))
                              (_%g2201222031%_ _%g2201322035%_))))
                      (_%g2201222031%_ _%g2201322035%_))))
              (_%g2201222031%_ _%g2201322035%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2201122153%_ _%ref22009%_)))
                                      _%accessible-slots21212%_))))))))
                  (_%loop2177421806%_ _%target2177121800%_ '() '()))
                (_%g2176721793%_ _%g2176821797%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2176721793%_
                                               _%g2176821797%_)))))
                                  (_%g2176622157%_
                                   (gx#stx-map
                                    (lambda (_%ref22161%_)
                                      (let* ((_%g2216422183%_
                                              (lambda (_%g2216522179%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2216522179%_)))
                                             (_%g2216322241%_
                                              (lambda (_%g2216522187%_)
                                                (if (gx#stx-pair?
                                                     _%g2216522187%_)
                                                    (let ((_%e2216922190%_
                                                           (gx#syntax-e
                                                            _%g2216522187%_)))
                                                      (let ((_%hd2217022194%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2216922190%_)))
                    (_%tl2217122197%_
                     (let () (declare (not safe)) (##cdr _%e2216922190%_))))
                (if (gx#stx-pair? _%tl2217122197%_)
                    (let ((_%e2217222200%_ (gx#syntax-e _%tl2217122197%_)))
                      (let ((_%hd2217322204%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2217222200%_)))
                            (_%tl2217422207%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2217222200%_))))
                        (if (gx#stx-pair? _%tl2217422207%_)
                            (let ((_%e2217522210%_
                                   (gx#syntax-e _%tl2217422207%_)))
                              (let ((_%hd2217622214%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2217522210%_)))
                                    (_%tl2217722217%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2217522210%_))))
                                (if (gx#stx-null? _%tl2217722217%_)
                                    (cons (_%wrap21061%_
                                           (cons (gx#datum->syntax '#f 'def)
                                                 (cons _%hd2217322204%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin-annotation)
                           (cons (cons (gx#datum->syntax '#f '@mop.accessor)
                                       (cons _%g2137621387%_
                                             (cons _%hd2217022194%_
                                                   (cons '#t '()))))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'make-class-slot-accessor)
                                             (cons _%hd2107721114%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%hd2217022194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_%wrap21061%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons _%hd2217622214%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'begin-annotation)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '@mop.mutator)
                                             (cons _%g2137621387%_
                                                   (cons _%hd2217022194%_
                                                         (cons '#t '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'make-class-slot-mutator)
                                                   (cons _%hd2107721114%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _%hd2217022194%_ '()))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_%g2216422183%_ _%g2216522187%_))))
                            (_%g2216422183%_ _%g2216522187%_))))
                    (_%g2216422183%_ _%g2216522187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2216422183%_
                                                     _%g2216522187%_)))))
                                        (_%g2216322241%_ _%ref22161%_)))
                                    _%accessible-slots21212%_))))))
                        (_%g2173822245%_
                         (_%wrap21061%_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _%hd2108621144%_
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'begin-annotation)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '@mop.predicate)
                                                              (cons _%g2137621387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'make-class-predicate)
                            (cons _%hd2107721114%_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
              (_%g2171022249%_
               (if (gx#stx-false? _%hd2108321134%_)
                   (cons (gx#datum->syntax '#f 'begin) '())
                   (_%wrap21061%_
                    (cons (gx#datum->syntax '#f 'def)
                          (cons _%hd2108321134%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'begin-annotation)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '@mop.constructor)
                                                        (cons _%g2137621387%_
                                                              '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'lambda)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$args)
                            (cons (cons (gx#datum->syntax '#f 'apply)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'make-instance)
                                              (cons _%hd2107721114%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$args)
                                                          '()))))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2168222253%_
                                             (_%wrap21061%_
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%hd2107721114%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@mop.class)
                                          (cons _%g2129221303%_
                                                (cons _%g2140421415%_
                                                      (cons (foldr (lambda (_%g2225622259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g2225722262%_)
                             (cons _%g2225622259%_ _%g2225722262%_))
                           '()
                           _%slot2122921267%_)
                    (cons _%g2134821359%_
                          (cons _%g2143221443%_
                                (cons _%g2146021471%_
                                      (cons _%g2148821499%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons _%g2165621667%_ '())))
                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%g2165422265%_
                                   (cons (gx#datum->syntax
                                          '#f
                                          'make-class-type)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g2129221303%_
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%g2132021331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%g2162821639%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons (foldr (lambda (_%g2226822271%_
                                                     _%g2226922274%_)
                                              (cons _%g2226822271%_
                                                    _%g2226922274%_))
                                            '()
                                            _%slot2122921267%_)
                                     '()))
                         (cons _%g2160021611%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2134821359%_ '()))
                                     '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (_%g2162622277%_
                         (cons (gx#datum->syntax '#f 'list)
                               _%hd2108021124%_))))))
              (_%g2159822281%_
               (if (gx#stx-e _%metaclass21215%_)
                   (let* ((_%g2228522293%_
                           (lambda (_%g2228622289%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2228622289%_)))
                          (_%g2228422312%_
                           (lambda (_%g2228622297%_)
                             (cons (gx#datum->syntax '#f '@list)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons 'metaclass:
                                                     (cons '::
                                                           (cons _%g2228622297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons '::
                                               (cons _%g2157221583%_ '())))))))
                     (_%g2228422312%_ _%metaclass21215%_))
                   _%g2157221583%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2157022316%_
                                             (if _%struct?21195%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@list)
                           (cons 'struct: '#t))
                     (cons ':: (cons _%g2154421555%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g2154421555%_))))))
                                  (_%g2154222320%_
                                   (if (gx#stx-e _%g2146021471%_)
                                       (cons (gx#datum->syntax '#f '@list)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (cons 'final: '#t))
                                                   (cons '::
                                                         (cons _%g2151621527%_
                                                               '()))))
                                       _%g2151621527%_))))))
                        (_%g2151422324%_
                         (let ((_%$e22328%_
                                (gx#stx-getq 'properties: _%tl2108721147%_)))
                           (if _%$e22328%_
                               _%$e22328%_
                               (cons (gx#datum->syntax '#f '@list) '()))))))))
              (_%g2148622332%_
               (if (gx#stx-e _%metaclass21215%_)
                   (gx#core-quote-syntax _%metaclass21215%_)
                   '#f))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2145822336%_
                                             (gx#stx-getq
                                              'final:
                                              _%tl2108721147%_))))))
                                  (_%g2143022340%_ _%struct?21195%_)))))
                        (_%g2140222344%_
                         (gx#stx-map
                          gx#core-quote-syntax
                          _%hd2108021124%_))))))
              (_%g2137422348%_ (gx#core-quote-syntax _%hd2107721114%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2134622352%_
                                             (gx#stx-getq
                                              'constructor:
                                              _%tl2108721147%_))))))
                                  (_%g2131822356%_
                                   (let ((_%$e22360%_
                                          (gx#stx-getq
                                           'name:
                                           _%tl2108721147%_)))
                                     (if _%$e22360%_
                                         _%$e22360%_
                                         _%hd2107721114%_)))))))
                        (_%g2129022364%_
                         (let ((_%$e22368%_
                                (gx#stx-getq 'id: _%tl2108721147%_)))
                           (if _%$e22368%_
                               _%$e22368%_
                               (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                _%hd2107721114%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop2122421248%_
                                                 _%target2122121242%_
                                                 '()))
                                              (_%g2121821235%_
                                               _%g2121921239%_)))))
                                    (_%g2121821235%_ _%g2121921239%_)))))
                        (_%g2121722372%_
                         (gx#stx-map _%slot-name21063%_ _%slots21202%_)))
                      (_%g2106621093%_ _%g2106721097%_))))
              (_%g2106621093%_ _%g2106721097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2106621093%_
                                               _%g2106721097%_))))
                                      (_%g2106621093%_ _%g2106721097%_))))
                              (_%g2106621093%_ _%g2106721097%_))))
                      (_%g2106621093%_ _%g2106721097%_)))))
          (_%g2106522376%_ _%stx21057%_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_%stx22490%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22490%_ '#t)))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_%stx22493%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22493%_ '#f))))
