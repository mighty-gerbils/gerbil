(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_%type-t22473%_)
      (let ((_%$e22476%_ (gx#module-context-ns (gx#current-expander-context))))
        (if _%$e22476%_
            ((lambda (_%ns22480%_)
               (gx#stx-identifier
                _%type-t22473%_
                _%ns22480%_
                '"#"
                _%type-t22473%_
                '"::t"))
             _%$e22476%_)
            (let ((_%mid22485%_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _%type-t22473%_
               _%mid22485%_
               '"#"
               _%type-t22473%_
               '"::t"))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_%type-t22470%_)
      (if (gx#module-context? (gx#current-expander-context))
          (|gerbil/core/mop~MOP-1[1]#module-type-id| _%type-t22470%_)
          (make-symbol '"__" (gensym (gx#stx-e _%type-t22470%_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_%stx21058%_ _%struct?21060%_)
      (letrec ((_%wrap21062%_
                (lambda (_%e-stx22467%_)
                  (gx#stx-wrap-source
                   _%e-stx22467%_
                   (gx#stx-source _%stx21058%_))))
               (_%slot-name21064%_
                (lambda (_%slot-spec22384%_)
                  (let* ((_%g2238722406%_
                          (lambda (_%g2238822402%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2238822402%_)))
                         (_%g2238622463%_
                          (lambda (_%g2238822410%_)
                            (if (gx#stx-pair? _%g2238822410%_)
                                (let ((_%e2239222413%_
                                       (gx#syntax-e _%g2238822410%_)))
                                  (let ((_%hd2239322417%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2239222413%_)))
                                        (_%tl2239422420%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2239222413%_))))
                                    (if (gx#stx-pair? _%tl2239422420%_)
                                        (let ((_%e2239522423%_
                                               (gx#syntax-e _%tl2239422420%_)))
                                          (let ((_%hd2239622427%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2239522423%_)))
                                                (_%tl2239722430%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2239522423%_))))
                                            (if (gx#stx-pair? _%tl2239722430%_)
                                                (let ((_%e2239822433%_
                                                       (gx#syntax-e
                                                        _%tl2239722430%_)))
                                                  (let ((_%hd2239922437%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2239822433%_)))
                                                        (_%tl2240022440%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2239822433%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2240022440%_)
                                                        ((lambda (_%g2238922443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2239022445%_
                          _%g2239122446%_)
                   _%g2239122446%_)
                 _%hd2239922437%_
                 _%hd2239622427%_
                 _%hd2239322417%_)
                (_%g2238722406%_ _%g2238822410%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2238722406%_
                                                 _%g2238822410%_))))
                                        (_%g2238722406%_ _%g2238822410%_))))
                                (_%g2238722406%_ _%g2238822410%_)))))
                    (_%g2238622463%_ _%slot-spec22384%_))))
               (_%class-opt?21065%_
                (lambda (_%key22381%_)
                  (let ((__tmp27524 (gx#stx-e _%key22381%_)))
                    (declare (not safe))
                    (##memq __tmp27524
                            '(struct:
                              slots:
                              id:
                              name:
                              properties:
                              constructor:
                              final:
                              mixin:
                              metaclass:))))))
        (let* ((_%g2106721094%_
                (lambda (_%g2106821090%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2106821090%_)))
               (_%g2106622377%_
                (lambda (_%g2106821098%_)
                  (if (gx#stx-pair? _%g2106821098%_)
                      (let ((_%e2107421101%_ (gx#syntax-e _%g2106821098%_)))
                        (let ((_%hd2107521105%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2107421101%_)))
                              (_%tl2107621108%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2107421101%_))))
                          (if (gx#stx-pair? _%tl2107621108%_)
                              (let ((_%e2107721111%_
                                     (gx#syntax-e _%tl2107621108%_)))
                                (let ((_%hd2107821115%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2107721111%_)))
                                      (_%tl2107921118%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2107721111%_))))
                                  (if (gx#stx-pair? _%tl2107921118%_)
                                      (let ((_%e2108021121%_
                                             (gx#syntax-e _%tl2107921118%_)))
                                        (let ((_%hd2108121125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2108021121%_)))
                                              (_%tl2108221128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2108021121%_))))
                                          (if (gx#stx-pair? _%tl2108221128%_)
                                              (let ((_%e2108321131%_
                                                     (gx#syntax-e
                                                      _%tl2108221128%_)))
                                                (let ((_%hd2108421135%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2108321131%_)))
                                                      (_%tl2108521138%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2108321131%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl2108521138%_)
                                                      (let ((_%e2108621141%_
                                                             (gx#syntax-e
                                                              _%tl2108521138%_)))
                                                        (let ((_%hd2108721145%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2108621141%_)))
                      (_%tl2108821148%_
                       (let () (declare (not safe)) (##cdr _%e2108621141%_))))
                  ((lambda (_%g2106921151%_
                            _%g2107021153%_
                            _%g2107121154%_
                            _%g2107221155%_
                            _%g2107321156%_)
                     (if (and (gx#identifier? _%g2107321156%_)
                              (gx#identifier-list? _%g2107221155%_)
                              (or (gx#identifier? _%g2107121154%_)
                                  (gx#stx-false? _%g2107121154%_))
                              (gx#identifier? _%g2107021153%_)
                              (gx#stx-plist?
                               _%g2106921151%_
                               _%class-opt?21065%_))
                         (let* ((_%struct?21196%_
                                 (let ((_%$e21186%_ _%struct?21060%_))
                                   (if _%$e21186%_
                                       _%$e21186%_
                                       (let ((_%$e21190%_
                                              (gx#stx-getq
                                               'struct:
                                               _%g2106921151%_)))
                                         (if _%$e21190%_
                                             (gx#stx-e _%$e21190%_)
                                             '#f)))))
                                (_%slots21203%_
                                 (let ((_%$e21199%_
                                        (gx#stx-getq 'slots: _%g2106921151%_)))
                                   (if _%$e21199%_ _%$e21199%_ '())))
                                (_%mixin-slots21210%_
                                 (let ((_%$e21206%_
                                        (gx#stx-getq 'mixin: _%g2106921151%_)))
                                   (if _%$e21206%_ _%$e21206%_ '())))
                                (_%accessible-slots21213%_
                                 (append (gx#syntax->list _%slots21203%_)
                                         (gx#syntax->list
                                          _%mixin-slots21210%_)))
                                (_%metaclass21216%_
                                 (gx#stx-getq 'metaclass: _%g2106921151%_))
                                (_%g2121921236%_
                                 (lambda (_%g2122021232%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2122021232%_)))
                                (_%g2121822373%_
                                 (lambda (_%g2122021240%_)
                                   (if (gx#stx-pair/null? _%g2122021240%_)
                                       (let ((_g27525_
                                              (gx#syntax-split-splice
                                               _%g2122021240%_
                                               '0)))
                                         (begin
                                           (let ((_g27526_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27525_)
                                                        (##values-length
                                                         _g27525_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27526_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27526_)))
                                           (let ((_%target2122221243%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g27525_ 0)))
                                                 (_%tl2122421246%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g27525_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2122421246%_)
                                                 (letrec ((_%loop2122521249%_
                                                           (lambda (_%hd2122321253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%slot2122921256%_)
                     (if (gx#stx-pair? _%hd2122321253%_)
                         (let ((_%e2122621258%_
                                (gx#syntax-e _%hd2122321253%_)))
                           (let ((_%lp-hd2122721262%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2122621258%_)))
                                 (_%lp-tl2122821265%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2122621258%_))))
                             (_%loop2122521249%_
                              _%lp-tl2122821265%_
                              (cons _%lp-hd2122721262%_ _%slot2122921256%_))))
                         (let ((_%slot2123021268%_
                                (reverse _%slot2122921256%_)))
                           ((lambda (_%g2122121271%_)
                              (let* ((_%g2129221300%_
                                      (lambda (_%g2129321296%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2129321296%_)))
                                     (_%g2129122365%_
                                      (lambda (_%g2129321304%_)
                                        ((lambda (_%g2129421307%_)
                                           (let* ((_%g2132021328%_
                                                   (lambda (_%g2132121324%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2132121324%_)))
                                                  (_%g2131922357%_
                                                   (lambda (_%g2132121332%_)
                                                     ((lambda (_%g2132221335%_)
                                                        (let* ((_%g2134821356%_
                                                                (lambda (_%g2134921352%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2134921352%_)))
                       (_%g2134722353%_
                        (lambda (_%g2134921360%_)
                          ((lambda (_%g2135021363%_)
                             (let* ((_%g2137621384%_
                                     (lambda (_%g2137721380%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2137721380%_)))
                                    (_%g2137522349%_
                                     (lambda (_%g2137721388%_)
                                       ((lambda (_%g2137821391%_)
                                          (let* ((_%g2140421412%_
                                                  (lambda (_%g2140521408%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2140521408%_)))
                                                 (_%g2140322345%_
                                                  (lambda (_%g2140521416%_)
                                                    ((lambda (_%g2140621419%_)
                                                       (let* ((_%g2143221440%_
                                                               (lambda (_%g2143321436%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2143321436%_)))
                      (_%g2143122341%_
                       (lambda (_%g2143321444%_)
                         ((lambda (_%g2143421447%_)
                            (let* ((_%g2146021468%_
                                    (lambda (_%g2146121464%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2146121464%_)))
                                   (_%g2145922337%_
                                    (lambda (_%g2146121472%_)
                                      ((lambda (_%g2146221475%_)
                                         (let* ((_%g2148821496%_
                                                 (lambda (_%g2148921492%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2148921492%_)))
                                                (_%g2148722333%_
                                                 (lambda (_%g2148921500%_)
                                                   ((lambda (_%g2149021503%_)
                                                      (let* ((_%g2151621524%_
                                                              (lambda (_%g2151721520%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2151721520%_)))
                     (_%g2151522325%_
                      (lambda (_%g2151721528%_)
                        ((lambda (_%g2151821531%_)
                           (let* ((_%g2154421552%_
                                   (lambda (_%g2154521548%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2154521548%_)))
                                  (_%g2154322321%_
                                   (lambda (_%g2154521556%_)
                                     ((lambda (_%g2154621559%_)
                                        (let* ((_%g2157221580%_
                                                (lambda (_%g2157321576%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2157321576%_)))
                                               (_%g2157122317%_
                                                (lambda (_%g2157321584%_)
                                                  ((lambda (_%g2157421587%_)
                                                     (let* ((_%g2160021608%_
                                                             (lambda (_%g2160121604%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g2160121604%_)))
                                                            (_%g2159922282%_
                                                             (lambda (_%g2160121612%_)
                                                               ((lambda (_%g2160221615%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g2162821636%_
                                  (lambda (_%g2162921632%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2162921632%_)))
                                 (_%g2162722278%_
                                  (lambda (_%g2162921640%_)
                                    ((lambda (_%g2163021643%_)
                                       (let* ((_%g2165621664%_
                                               (lambda (_%g2165721660%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2165721660%_)))
                                              (_%g2165522266%_
                                               (lambda (_%g2165721668%_)
                                                 ((lambda (_%g2165821671%_)
                                                    (let* ((_%g2168421692%_
                                                            (lambda (_%g2168521688%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2168521688%_)))
                                                           (_%g2168322254%_
                                                            (lambda (_%g2168521696%_)
                                                              ((lambda (_%g2168621699%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%g2171221720%_
                                 (lambda (_%g2171321716%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2171321716%_)))
                                (_%g2171122250%_
                                 (lambda (_%g2171321724%_)
                                   ((lambda (_%g2171421727%_)
                                      (let* ((_%g2174021748%_
                                              (lambda (_%g2174121744%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2174121744%_)))
                                             (_%g2173922246%_
                                              (lambda (_%g2174121752%_)
                                                ((lambda (_%g2174221755%_)
                                                   (let* ((_%g2176821794%_
                                                           (lambda (_%g2176921790%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g2176921790%_)))
                                                          (_%g2176722158%_
                                                           (lambda (_%g2176921798%_)
                                                             (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2176921798%_)
                         (let ((_g27527_
                                (gx#syntax-split-splice _%g2176921798%_ '0)))
                           (begin
                             (let ((_g27528_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g27527_)
                                          (##values-length _g27527_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g27528_ 2)))
                                   (error "Context expects 2 values"
                                          _g27528_)))
                             (let ((_%target2177221801%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g27527_ 0)))
                                   (_%tl2177421804%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g27527_ 1))))
                               (if (gx#stx-null? _%tl2177421804%_)
                                   (letrec ((_%loop2177521807%_
                                             (lambda (_%hd2177321811%_
                                                      _%def-setf2177921814%_
                                                      _%def-getf2178021815%_)
                                               (if (gx#stx-pair?
                                                    _%hd2177321811%_)
                                                   (let ((_%e2177621817%_
                                                          (gx#syntax-e
                                                           _%hd2177321811%_)))
                                                     (let ((_%lp-hd2177721821%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e2177621817%_)))
                                                           (_%lp-tl2177821824%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e2177621817%_))))
                                                       (if (gx#stx-pair?
                                                            _%lp-hd2177721821%_)
                                                           (let ((_%e2178321827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%lp-hd2177721821%_)))
                     (let ((_%hd2178421831%_
                            (let ()
                              (declare (not safe))
                              (##car _%e2178321827%_)))
                           (_%tl2178521834%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e2178321827%_))))
                       (if (gx#stx-pair? _%tl2178521834%_)
                           (let ((_%e2178621837%_
                                  (gx#syntax-e _%tl2178521834%_)))
                             (let ((_%hd2178721841%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e2178621837%_)))
                                   (_%tl2178821844%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e2178621837%_))))
                               (if (gx#stx-null? _%tl2178821844%_)
                                   (_%loop2177521807%_
                                    _%lp-tl2177821824%_
                                    (cons _%hd2178721841%_
                                          _%def-setf2177921814%_)
                                    (cons _%hd2178421831%_
                                          _%def-getf2178021815%_))
                                   (_%g2176821794%_ _%g2176921798%_))))
                           (_%g2176821794%_ _%g2176921798%_))))
                   (_%g2176821794%_ _%g2176921798%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%def-setf2178121847%_
                                                          (reverse _%def-setf2177921814%_))
                                                         (_%def-getf2178221849%_
                                                          (reverse _%def-getf2178021815%_)))
                                                     ((lambda (_%g2177021851%_
                                                               _%g2177121853%_)
                                                        (let* ((_%g2187021896%_
                                                                (lambda (_%g2187121892%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2187121892%_)))
                       (_%g2186922006%_
                        (lambda (_%g2187121900%_)
                          (if (gx#stx-pair/null? _%g2187121900%_)
                              (let ((_g27529_
                                     (gx#syntax-split-splice
                                      _%g2187121900%_
                                      '0)))
                                (begin
                                  (let ((_g27530_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g27529_)
                                               (##values-length _g27529_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g27530_ 2)))
                                        (error "Context expects 2 values"
                                               _g27530_)))
                                  (let ((_%target2187421903%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g27529_ 0)))
                                        (_%tl2187621906%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g27529_ 1))))
                                    (if (gx#stx-null? _%tl2187621906%_)
                                        (letrec ((_%loop2187721909%_
                                                  (lambda (_%hd2187521913%_
                                                           _%def-usetf2188121916%_
                                                           _%def-ugetf2188221917%_)
                                                    (if (gx#stx-pair?
                                                         _%hd2187521913%_)
                                                        (let ((_%e2187821919%_
                                                               (gx#syntax-e
                                                                _%hd2187521913%_)))
                                                          (let ((_%lp-hd2187921923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2187821919%_)))
                        (_%lp-tl2188021926%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2187821919%_))))
                    (if (gx#stx-pair? _%lp-hd2187921923%_)
                        (let ((_%e2188521929%_
                               (gx#syntax-e _%lp-hd2187921923%_)))
                          (let ((_%hd2188621933%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2188521929%_)))
                                (_%tl2188721936%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2188521929%_))))
                            (if (gx#stx-pair? _%tl2188721936%_)
                                (let ((_%e2188821939%_
                                       (gx#syntax-e _%tl2188721936%_)))
                                  (let ((_%hd2188921943%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2188821939%_)))
                                        (_%tl2189021946%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2188821939%_))))
                                    (if (gx#stx-null? _%tl2189021946%_)
                                        (_%loop2187721909%_
                                         _%lp-tl2188021926%_
                                         (cons _%hd2188921943%_
                                               _%def-usetf2188121916%_)
                                         (cons _%hd2188621933%_
                                               _%def-ugetf2188221917%_))
                                        (_%g2187021896%_ _%g2187121900%_))))
                                (_%g2187021896%_ _%g2187121900%_))))
                        (_%g2187021896%_ _%g2187121900%_))))
                (let ((_%def-usetf2188321949%_
                       (reverse _%def-usetf2188121916%_))
                      (_%def-ugetf2188421951%_
                       (reverse _%def-ugetf2188221917%_)))
                  ((lambda (_%g2187221953%_ _%g2187321955%_)
                     (_%wrap21062%_
                      (cons (gx#datum->syntax '#f 'begin)
                            (cons _%g2168621699%_
                                  (cons _%g2174221755%_
                                        (cons _%g2171421727%_
                                              (foldr (lambda (_%g2197321982%_
                                                              _%g2197421985%_)
                                                       (cons _%g2197321982%_
                                                             _%g2197421985%_))
                                                     (foldr (lambda (_%g2197521988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g2197621991%_)
                      (cons _%g2197521988%_ _%g2197621991%_))
                    (foldr (lambda (_%g2197721994%_ _%g2197821997%_)
                             (cons _%g2197721994%_ _%g2197821997%_))
                           (foldr (lambda (_%g2197922000%_ _%g2198022003%_)
                                    (cons _%g2197922000%_ _%g2198022003%_))
                                  '()
                                  _%g2187221953%_)
                           _%g2187321955%_)
                    _%g2177021851%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2177121853%_)))))))
                   _%def-usetf2188321949%_
                   _%def-ugetf2188421951%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop2187721909%_
                                           _%target2187421903%_
                                           '()
                                           '()))
                                        (_%g2187021896%_ _%g2187121900%_)))))
                              (_%g2187021896%_ _%g2187121900%_)))))
                  (_%g2186922006%_
                   (gx#stx-map
                    (lambda (_%ref22010%_)
                      (let* ((_%g2201322032%_
                              (lambda (_%g2201422028%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2201422028%_)))
                             (_%g2201222154%_
                              (lambda (_%g2201422036%_)
                                (if (gx#stx-pair? _%g2201422036%_)
                                    (let ((_%e2201822039%_
                                           (gx#syntax-e _%g2201422036%_)))
                                      (let ((_%hd2201922043%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2201822039%_)))
                                            (_%tl2202022046%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2201822039%_))))
                                        (if (gx#stx-pair? _%tl2202022046%_)
                                            (let ((_%e2202122049%_
                                                   (gx#syntax-e
                                                    _%tl2202022046%_)))
                                              (let ((_%hd2202222053%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2202122049%_)))
                                                    (_%tl2202322056%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2202122049%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2202322056%_)
                                                    (let ((_%e2202422059%_
                                                           (gx#syntax-e
                                                            _%tl2202322056%_)))
                                                      (let ((_%hd2202522063%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2202422059%_)))
                    (_%tl2202622066%_
                     (let () (declare (not safe)) (##cdr _%e2202422059%_))))
                (if (gx#stx-null? _%tl2202622066%_)
                    ((lambda (_%g2201522069%_ _%g2201622071%_ _%g2201722072%_)
                       (let* ((_%g2209022105%_
                               (lambda (_%g2209122101%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2209122101%_)))
                              (_%g2208922150%_
                               (lambda (_%g2209122109%_)
                                 (if (gx#stx-pair? _%g2209122109%_)
                                     (let ((_%e2209422112%_
                                            (gx#syntax-e _%g2209122109%_)))
                                       (let ((_%hd2209522116%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2209422112%_)))
                                             (_%tl2209622119%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2209422112%_))))
                                         (if (gx#stx-pair? _%tl2209622119%_)
                                             (let ((_%e2209722122%_
                                                    (gx#syntax-e
                                                     _%tl2209622119%_)))
                                               (let ((_%hd2209822126%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2209722122%_)))
                                                     (_%tl2209922129%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2209722122%_))))
                                                 (if (gx#stx-null?
                                                      _%tl2209922129%_)
                                                     ((lambda (_%g2209222132%_
                                                               _%g2209322134%_)
                                                        (cons (_%wrap21062%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'def)
                             (cons _%g2209322134%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@mop.accessor)
                                                           (cons _%g2137821391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g2201722072%_ (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-class-slot-unchecked-accessor)
                         (cons _%g2107321156%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2201722072%_ '()))
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (cons (_%wrap21062%_
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%g2209222132%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@mop.mutator)
                         (cons _%g2137821391%_
                               (cons _%g2201722072%_ (cons '#f '()))))
                   (cons (cons (gx#datum->syntax
                                '#f
                                'make-class-slot-unchecked-mutator)
                               (cons _%g2107321156%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2201722072%_ '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            '())))
              _%hd2209822126%_
              _%hd2209522116%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2209022105%_
                                                      _%g2209122109%_))))
                                             (_%g2209022105%_
                                              _%g2209122109%_))))
                                     (_%g2209022105%_ _%g2209122109%_)))))
                         (_%g2208922150%_
                          (list (gx#stx-identifier
                                 _%g2201622071%_
                                 '"&"
                                 _%g2201622071%_)
                                (gx#stx-identifier
                                 _%g2201522069%_
                                 '"&"
                                 _%g2201522069%_)))))
                     _%hd2202522063%_
                     _%hd2202222053%_
                     _%hd2201922043%_)
                    (_%g2201322032%_ _%g2201422036%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2201322032%_
                                                     _%g2201422036%_))))
                                            (_%g2201322032%_
                                             _%g2201422036%_))))
                                    (_%g2201322032%_ _%g2201422036%_)))))
                        (_%g2201222154%_ _%ref22010%_)))
                    _%accessible-slots21213%_))))
              _%def-setf2178121847%_
              _%def-getf2178221849%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop2177521807%_
                                      _%target2177221801%_
                                      '()
                                      '()))
                                   (_%g2176821794%_ _%g2176921798%_)))))
                         (_%g2176821794%_ _%g2176921798%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2176722158%_
                                                      (gx#stx-map
                                                       (lambda (_%ref22162%_)
                                                         (let* ((_%g2216522184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2216622180%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2216622180%_)))
                        (_%g2216422242%_
                         (lambda (_%g2216622188%_)
                           (if (gx#stx-pair? _%g2216622188%_)
                               (let ((_%e2217022191%_
                                      (gx#syntax-e _%g2216622188%_)))
                                 (let ((_%hd2217122195%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2217022191%_)))
                                       (_%tl2217222198%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2217022191%_))))
                                   (if (gx#stx-pair? _%tl2217222198%_)
                                       (let ((_%e2217322201%_
                                              (gx#syntax-e _%tl2217222198%_)))
                                         (let ((_%hd2217422205%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e2217322201%_)))
                                               (_%tl2217522208%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e2217322201%_))))
                                           (if (gx#stx-pair? _%tl2217522208%_)
                                               (let ((_%e2217622211%_
                                                      (gx#syntax-e
                                                       _%tl2217522208%_)))
                                                 (let ((_%hd2217722215%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2217622211%_)))
                                                       (_%tl2217822218%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2217622211%_))))
                                                   (if (gx#stx-null?
                                                        _%tl2217822218%_)
                                                       ((lambda (_%g2216722221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2216822223%_
                         _%g2216922224%_)
                  (cons (_%wrap21062%_
                         (cons (gx#datum->syntax '#f 'def)
                               (cons _%g2216822223%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'begin-annotation)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@mop.accessor)
                                                             (cons _%g2137821391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g2216922224%_ (cons '#t '()))))
               (cons (cons (gx#datum->syntax '#f 'make-class-slot-accessor)
                           (cons _%g2107321156%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2216922224%_ '()))
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                        (cons (_%wrap21062%_
                               (cons (gx#datum->syntax '#f 'def)
                                     (cons _%g2216722221%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@mop.mutator)
                           (cons _%g2137821391%_
                                 (cons _%g2216922224%_ (cons '#t '()))))
                     (cons (cons (gx#datum->syntax
                                  '#f
                                  'make-class-slot-mutator)
                                 (cons _%g2107321156%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g2216922224%_ '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                              '())))
                _%hd2217722215%_
                _%hd2217422205%_
                _%hd2217122195%_)
               (_%g2216522184%_ _%g2216622188%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2216522184%_
                                                _%g2216622188%_))))
                                       (_%g2216522184%_ _%g2216622188%_))))
                               (_%g2216522184%_ _%g2216622188%_)))))
                   (_%g2216422242%_ _%ref22162%_)))
               _%accessible-slots21213%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g2174121752%_))))
                                        (_%g2173922246%_
                                         (_%wrap21062%_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _%g2107021153%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@mop.predicate)
                                      (cons _%g2137821391%_ '()))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'make-class-predicate)
                                            (cons _%g2107321156%_ '()))
                                      '())))
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g2171321724%_))))
                           (_%g2171122250%_
                            (if (gx#stx-false? _%g2107121154%_)
                                (cons (gx#datum->syntax '#f 'begin) '())
                                (_%wrap21062%_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _%g2107121154%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin-annotation)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '@mop.constructor)
                             (cons _%g2137821391%_ '()))
                       (cons (cons (gx#datum->syntax '#f 'lambda)
                                   (cons (gx#datum->syntax '#f '$args)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'apply)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'make-instance)
                                                           (cons _%g2107321156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))))
                       _%g2168521696%_))))
              (_%g2168322254%_
               (_%wrap21062%_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _%g2107321156%_
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.class)
                                                    (cons _%g2129421307%_
                                                          (cons _%g2140621419%_
                                                                (cons (foldr (lambda (_%g2225722260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              _%g2225822263%_)
                                       (cons _%g2225722260%_ _%g2225822263%_))
                                     '()
                                     _%g2122121271%_)
                              (cons _%g2135021363%_
                                    (cons _%g2143421447%_
                                          (cons _%g2146221475%_
                                                (cons _%g2149021503%_
                                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%g2165821671%_ '())))
                                  '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2165721668%_))))
                                         (_%g2165522266%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-class-type)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%g2129421307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote)
                          (cons _%g2132221335%_ '()))
                    (cons _%g2163021643%_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons (foldr (lambda (_%g2226922272%_
                                                            _%g2227022275%_)
                                                     (cons _%g2226922272%_
                                                           _%g2227022275%_))
                                                   '()
                                                   _%g2122121271%_)
                                            '()))
                                (cons _%g2160221615%_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2135021363%_ '()))
                                            '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g2162921640%_))))
                            (_%g2162722278%_
                             (cons (gx#datum->syntax '#f 'list)
                                   _%g2107221155%_))))
                        _%g2160121612%_))))
               (_%g2159922282%_
                (if (gx#stx-e _%metaclass21216%_)
                    (let* ((_%g2228622294%_
                            (lambda (_%g2228722290%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2228722290%_)))
                           (_%g2228522313%_
                            (lambda (_%g2228722298%_)
                              ((lambda (_%g2228822301%_)
                                 (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons 'metaclass:
                                                         (cons '::
                                                               (cons _%g2228822301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '::
                                                   (cons _%g2157421587%_
                                                         '())))))
                               _%g2228722298%_))))
                      (_%g2228522313%_ _%metaclass21216%_))
                    _%g2157421587%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g2157321584%_))))
                                          (_%g2157122317%_
                                           (if _%struct?21196%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         (cons 'struct: '#t))
                   (cons ':: (cons _%g2154621559%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2154621559%_))))
                                      _%g2154521556%_))))
                             (_%g2154322321%_
                              (if (gx#stx-e _%g2146221475%_)
                                  (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons 'final: '#t))
                                              (cons '::
                                                    (cons _%g2151821531%_
                                                          '()))))
                                  _%g2151821531%_))))
                         _%g2151721528%_))))
                (_%g2151522325%_
                 (let ((_%$e22329%_
                        (gx#stx-getq 'properties: _%g2106921151%_)))
                   (if _%$e22329%_
                       _%$e22329%_
                       (cons (gx#datum->syntax '#f '@list) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g2148921500%_))))
                                           (_%g2148722333%_
                                            (if (gx#stx-e _%metaclass21216%_)
                                                (gx#core-quote-syntax
                                                 _%metaclass21216%_)
                                                '#f))))
                                       _%g2146121472%_))))
                              (_%g2145922337%_
                               (gx#stx-getq 'final: _%g2106921151%_))))
                          _%g2143321444%_))))
                 (_%g2143122341%_ _%struct?21196%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2140521416%_))))
                                            (_%g2140322345%_
                                             (gx#stx-map
                                              gx#core-quote-syntax
                                              _%g2107221155%_))))
                                        _%g2137721388%_))))
                               (_%g2137522349%_
                                (gx#core-quote-syntax _%g2107321156%_))))
                           _%g2134921360%_))))
                  (_%g2134722353%_
                   (gx#stx-getq 'constructor: _%g2106921151%_))))
              _%g2132121332%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2131922357%_
                                              (let ((_%$e22361%_
                                                     (gx#stx-getq
                                                      'name:
                                                      _%g2106921151%_)))
                                                (if _%$e22361%_
                                                    _%$e22361%_
                                                    _%g2107321156%_)))))
                                         _%g2129321304%_))))
                                (_%g2129122365%_
                                 (let ((_%$e22369%_
                                        (gx#stx-getq 'id: _%g2106921151%_)))
                                   (if _%$e22369%_
                                       _%$e22369%_
                                       (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                        _%g2107321156%_))))))
                            _%slot2123021268%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2122521249%_
                                                    _%target2122221243%_
                                                    '()))
                                                 (_%g2121921236%_
                                                  _%g2122021240%_)))))
                                       (_%g2121921236%_ _%g2122021240%_)))))
                           (_%g2121822373%_
                            (gx#stx-map _%slot-name21064%_ _%slots21203%_)))
                         (_%g2106721094%_ _%g2106821098%_)))
                   _%tl2108821148%_
                   _%hd2108721145%_
                   _%hd2108421135%_
                   _%hd2108121125%_
                   _%hd2107821115%_)))
              (_%g2106721094%_ _%g2106821098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2106721094%_
                                               _%g2106821098%_))))
                                      (_%g2106721094%_ _%g2106821098%_))))
                              (_%g2106721094%_ _%g2106821098%_))))
                      (_%g2106721094%_ _%g2106821098%_)))))
          (_%g2106622377%_ _%stx21058%_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_%stx22491%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22491%_ '#t)))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_%stx22494%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22494%_ '#f))))
