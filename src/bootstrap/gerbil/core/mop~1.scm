(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_%type-t22529%_)
      (let ((_%$e22532%_ (gx#module-context-ns (gx#current-expander-context))))
        (if _%$e22532%_
            ((lambda (_%ns22536%_)
               (gx#stx-identifier
                _%type-t22529%_
                _%ns22536%_
                '"#"
                _%type-t22529%_
                '"::t"))
             _%$e22532%_)
            (let ((_%mid22541%_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _%type-t22529%_
               _%mid22541%_
               '"#"
               _%type-t22529%_
               '"::t"))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_%type-t22526%_)
      (if (gx#module-context? (gx#current-expander-context))
          (|gerbil/core/mop~MOP-1[1]#module-type-id| _%type-t22526%_)
          (make-symbol '"__" (gensym (gx#stx-e _%type-t22526%_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_%stx21114%_ _%struct?21116%_)
      (letrec ((_%wrap21118%_
                (lambda (_%e-stx22523%_)
                  (gx#stx-wrap-source
                   _%e-stx22523%_
                   (gx#stx-source _%stx21114%_))))
               (_%slot-name21120%_
                (lambda (_%slot-spec22440%_)
                  (let* ((_%g2244322462%_
                          (lambda (_%g2244422458%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2244422458%_)))
                         (_%g2244222519%_
                          (lambda (_%g2244422466%_)
                            (if (gx#stx-pair? _%g2244422466%_)
                                (let ((_%e2244822469%_
                                       (gx#syntax-e _%g2244422466%_)))
                                  (let ((_%hd2244922473%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2244822469%_)))
                                        (_%tl2245022476%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2244822469%_))))
                                    (if (gx#stx-pair? _%tl2245022476%_)
                                        (let ((_%e2245122479%_
                                               (gx#syntax-e _%tl2245022476%_)))
                                          (let ((_%hd2245222483%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2245122479%_)))
                                                (_%tl2245322486%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2245122479%_))))
                                            (if (gx#stx-pair? _%tl2245322486%_)
                                                (let ((_%e2245422489%_
                                                       (gx#syntax-e
                                                        _%tl2245322486%_)))
                                                  (let ((_%hd2245522493%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2245422489%_)))
                                                        (_%tl2245622496%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2245422489%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2245622496%_)
                                                        ((lambda (_%g2244522499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2244622501%_
                          _%g2244722502%_)
                   _%g2244722502%_)
                 _%hd2245522493%_
                 _%hd2245222483%_
                 _%hd2244922473%_)
                (_%g2244322462%_ _%g2244422466%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2244322462%_
                                                 _%g2244422466%_))))
                                        (_%g2244322462%_ _%g2244422466%_))))
                                (_%g2244322462%_ _%g2244422466%_)))))
                    (_%g2244222519%_ _%slot-spec22440%_))))
               (_%class-opt?21121%_
                (lambda (_%key22437%_)
                  (let ((__tmp27224 (gx#stx-e _%key22437%_)))
                    (declare (not safe))
                    (##memq __tmp27224
                            '(struct:
                              slots:
                              id:
                              name:
                              properties:
                              constructor:
                              final:
                              mixin:
                              metaclass:))))))
        (let* ((_%g2112321150%_
                (lambda (_%g2112421146%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2112421146%_)))
               (_%g2112222433%_
                (lambda (_%g2112421154%_)
                  (if (gx#stx-pair? _%g2112421154%_)
                      (let ((_%e2113021157%_ (gx#syntax-e _%g2112421154%_)))
                        (let ((_%hd2113121161%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2113021157%_)))
                              (_%tl2113221164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2113021157%_))))
                          (if (gx#stx-pair? _%tl2113221164%_)
                              (let ((_%e2113321167%_
                                     (gx#syntax-e _%tl2113221164%_)))
                                (let ((_%hd2113421171%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2113321167%_)))
                                      (_%tl2113521174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2113321167%_))))
                                  (if (gx#stx-pair? _%tl2113521174%_)
                                      (let ((_%e2113621177%_
                                             (gx#syntax-e _%tl2113521174%_)))
                                        (let ((_%hd2113721181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2113621177%_)))
                                              (_%tl2113821184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2113621177%_))))
                                          (if (gx#stx-pair? _%tl2113821184%_)
                                              (let ((_%e2113921187%_
                                                     (gx#syntax-e
                                                      _%tl2113821184%_)))
                                                (let ((_%hd2114021191%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2113921187%_)))
                                                      (_%tl2114121194%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2113921187%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl2114121194%_)
                                                      (let ((_%e2114221197%_
                                                             (gx#syntax-e
                                                              _%tl2114121194%_)))
                                                        (let ((_%hd2114321201%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2114221197%_)))
                      (_%tl2114421204%_
                       (let () (declare (not safe)) (##cdr _%e2114221197%_))))
                  ((lambda (_%g2112521207%_
                            _%g2112621209%_
                            _%g2112721210%_
                            _%g2112821211%_
                            _%g2112921212%_)
                     (if (and (gx#identifier? _%g2112921212%_)
                              (gx#identifier-list? _%g2112821211%_)
                              (or (gx#identifier? _%g2112721210%_)
                                  (gx#stx-false? _%g2112721210%_))
                              (gx#identifier? _%g2112621209%_)
                              (gx#stx-plist?
                               _%g2112521207%_
                               _%class-opt?21121%_))
                         (let* ((_%struct?21252%_
                                 (let ((_%$e21242%_ _%struct?21116%_))
                                   (if _%$e21242%_
                                       _%$e21242%_
                                       (let ((_%$e21246%_
                                              (gx#stx-getq
                                               'struct:
                                               _%g2112521207%_)))
                                         (if _%$e21246%_
                                             (gx#stx-e _%$e21246%_)
                                             '#f)))))
                                (_%slots21259%_
                                 (let ((_%$e21255%_
                                        (gx#stx-getq 'slots: _%g2112521207%_)))
                                   (if _%$e21255%_ _%$e21255%_ '())))
                                (_%mixin-slots21266%_
                                 (let ((_%$e21262%_
                                        (gx#stx-getq 'mixin: _%g2112521207%_)))
                                   (if _%$e21262%_ _%$e21262%_ '())))
                                (_%accessible-slots21269%_
                                 (append (gx#syntax->list _%slots21259%_)
                                         (gx#syntax->list
                                          _%mixin-slots21266%_)))
                                (_%metaclass21272%_
                                 (gx#stx-getq 'metaclass: _%g2112521207%_))
                                (_%g2127521292%_
                                 (lambda (_%g2127621288%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2127621288%_)))
                                (_%g2127422429%_
                                 (lambda (_%g2127621296%_)
                                   (if (gx#stx-pair/null? _%g2127621296%_)
                                       (let ((_g27225_
                                              (gx#syntax-split-splice
                                               _%g2127621296%_
                                               '0)))
                                         (begin
                                           (let ((_g27226_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27225_)
                                                        (##values-length
                                                         _g27225_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27226_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27226_)))
                                           (let ((_%target2127821299%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g27225_ 0)))
                                                 (_%tl2128021302%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g27225_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2128021302%_)
                                                 (letrec ((_%loop2128121305%_
                                                           (lambda (_%hd2127921309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%slot2128521312%_)
                     (if (gx#stx-pair? _%hd2127921309%_)
                         (let ((_%e2128221314%_
                                (gx#syntax-e _%hd2127921309%_)))
                           (let ((_%lp-hd2128321318%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2128221314%_)))
                                 (_%lp-tl2128421321%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2128221314%_))))
                             (_%loop2128121305%_
                              _%lp-tl2128421321%_
                              (cons _%lp-hd2128321318%_ _%slot2128521312%_))))
                         (let ((_%slot2128621324%_
                                (reverse _%slot2128521312%_)))
                           ((lambda (_%g2127721327%_)
                              (let* ((_%g2134821356%_
                                      (lambda (_%g2134921352%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2134921352%_)))
                                     (_%g2134722421%_
                                      (lambda (_%g2134921360%_)
                                        ((lambda (_%g2135021363%_)
                                           (let* ((_%g2137621384%_
                                                   (lambda (_%g2137721380%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2137721380%_)))
                                                  (_%g2137522413%_
                                                   (lambda (_%g2137721388%_)
                                                     ((lambda (_%g2137821391%_)
                                                        (let* ((_%g2140421412%_
                                                                (lambda (_%g2140521408%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2140521408%_)))
                       (_%g2140322409%_
                        (lambda (_%g2140521416%_)
                          ((lambda (_%g2140621419%_)
                             (let* ((_%g2143221440%_
                                     (lambda (_%g2143321436%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2143321436%_)))
                                    (_%g2143122405%_
                                     (lambda (_%g2143321444%_)
                                       ((lambda (_%g2143421447%_)
                                          (let* ((_%g2146021468%_
                                                  (lambda (_%g2146121464%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2146121464%_)))
                                                 (_%g2145922401%_
                                                  (lambda (_%g2146121472%_)
                                                    ((lambda (_%g2146221475%_)
                                                       (let* ((_%g2148821496%_
                                                               (lambda (_%g2148921492%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2148921492%_)))
                      (_%g2148722397%_
                       (lambda (_%g2148921500%_)
                         ((lambda (_%g2149021503%_)
                            (let* ((_%g2151621524%_
                                    (lambda (_%g2151721520%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2151721520%_)))
                                   (_%g2151522393%_
                                    (lambda (_%g2151721528%_)
                                      ((lambda (_%g2151821531%_)
                                         (let* ((_%g2154421552%_
                                                 (lambda (_%g2154521548%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2154521548%_)))
                                                (_%g2154322389%_
                                                 (lambda (_%g2154521556%_)
                                                   ((lambda (_%g2154621559%_)
                                                      (let* ((_%g2157221580%_
                                                              (lambda (_%g2157321576%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2157321576%_)))
                     (_%g2157122381%_
                      (lambda (_%g2157321584%_)
                        ((lambda (_%g2157421587%_)
                           (let* ((_%g2160021608%_
                                   (lambda (_%g2160121604%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2160121604%_)))
                                  (_%g2159922377%_
                                   (lambda (_%g2160121612%_)
                                     ((lambda (_%g2160221615%_)
                                        (let* ((_%g2162821636%_
                                                (lambda (_%g2162921632%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2162921632%_)))
                                               (_%g2162722373%_
                                                (lambda (_%g2162921640%_)
                                                  ((lambda (_%g2163021643%_)
                                                     (let* ((_%g2165621664%_
                                                             (lambda (_%g2165721660%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g2165721660%_)))
                                                            (_%g2165522338%_
                                                             (lambda (_%g2165721668%_)
                                                               ((lambda (_%g2165821671%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g2168421692%_
                                  (lambda (_%g2168521688%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2168521688%_)))
                                 (_%g2168322334%_
                                  (lambda (_%g2168521696%_)
                                    ((lambda (_%g2168621699%_)
                                       (let* ((_%g2171221720%_
                                               (lambda (_%g2171321716%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2171321716%_)))
                                              (_%g2171122322%_
                                               (lambda (_%g2171321724%_)
                                                 ((lambda (_%g2171421727%_)
                                                    (let* ((_%g2174021748%_
                                                            (lambda (_%g2174121744%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2174121744%_)))
                                                           (_%g2173922310%_
                                                            (lambda (_%g2174121752%_)
                                                              ((lambda (_%g2174221755%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%g2176821776%_
                                 (lambda (_%g2176921772%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2176921772%_)))
                                (_%g2176722306%_
                                 (lambda (_%g2176921780%_)
                                   ((lambda (_%g2177021783%_)
                                      (let* ((_%g2179621804%_
                                              (lambda (_%g2179721800%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2179721800%_)))
                                             (_%g2179522302%_
                                              (lambda (_%g2179721808%_)
                                                ((lambda (_%g2179821811%_)
                                                   (let* ((_%g2182421850%_
                                                           (lambda (_%g2182521846%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g2182521846%_)))
                                                          (_%g2182322214%_
                                                           (lambda (_%g2182521854%_)
                                                             (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2182521854%_)
                         (let ((_g27227_
                                (gx#syntax-split-splice _%g2182521854%_ '0)))
                           (begin
                             (let ((_g27228_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g27227_)
                                          (##values-length _g27227_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g27228_ 2)))
                                   (error "Context expects 2 values"
                                          _g27228_)))
                             (let ((_%target2182821857%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g27227_ 0)))
                                   (_%tl2183021860%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g27227_ 1))))
                               (if (gx#stx-null? _%tl2183021860%_)
                                   (letrec ((_%loop2183121863%_
                                             (lambda (_%hd2182921867%_
                                                      _%def-setf2183521870%_
                                                      _%def-getf2183621871%_)
                                               (if (gx#stx-pair?
                                                    _%hd2182921867%_)
                                                   (let ((_%e2183221873%_
                                                          (gx#syntax-e
                                                           _%hd2182921867%_)))
                                                     (let ((_%lp-hd2183321877%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e2183221873%_)))
                                                           (_%lp-tl2183421880%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e2183221873%_))))
                                                       (if (gx#stx-pair?
                                                            _%lp-hd2183321877%_)
                                                           (let ((_%e2183921883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%lp-hd2183321877%_)))
                     (let ((_%hd2184021887%_
                            (let ()
                              (declare (not safe))
                              (##car _%e2183921883%_)))
                           (_%tl2184121890%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e2183921883%_))))
                       (if (gx#stx-pair? _%tl2184121890%_)
                           (let ((_%e2184221893%_
                                  (gx#syntax-e _%tl2184121890%_)))
                             (let ((_%hd2184321897%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e2184221893%_)))
                                   (_%tl2184421900%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e2184221893%_))))
                               (if (gx#stx-null? _%tl2184421900%_)
                                   (_%loop2183121863%_
                                    _%lp-tl2183421880%_
                                    (cons _%hd2184321897%_
                                          _%def-setf2183521870%_)
                                    (cons _%hd2184021887%_
                                          _%def-getf2183621871%_))
                                   (_%g2182421850%_ _%g2182521854%_))))
                           (_%g2182421850%_ _%g2182521854%_))))
                   (_%g2182421850%_ _%g2182521854%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%def-setf2183721903%_
                                                          (reverse _%def-setf2183521870%_))
                                                         (_%def-getf2183821905%_
                                                          (reverse _%def-getf2183621871%_)))
                                                     ((lambda (_%g2182621907%_
                                                               _%g2182721909%_)
                                                        (let* ((_%g2192621952%_
                                                                (lambda (_%g2192721948%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2192721948%_)))
                       (_%g2192522062%_
                        (lambda (_%g2192721956%_)
                          (if (gx#stx-pair/null? _%g2192721956%_)
                              (let ((_g27229_
                                     (gx#syntax-split-splice
                                      _%g2192721956%_
                                      '0)))
                                (begin
                                  (let ((_g27230_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g27229_)
                                               (##values-length _g27229_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g27230_ 2)))
                                        (error "Context expects 2 values"
                                               _g27230_)))
                                  (let ((_%target2193021959%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g27229_ 0)))
                                        (_%tl2193221962%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g27229_ 1))))
                                    (if (gx#stx-null? _%tl2193221962%_)
                                        (letrec ((_%loop2193321965%_
                                                  (lambda (_%hd2193121969%_
                                                           _%def-usetf2193721972%_
                                                           _%def-ugetf2193821973%_)
                                                    (if (gx#stx-pair?
                                                         _%hd2193121969%_)
                                                        (let ((_%e2193421975%_
                                                               (gx#syntax-e
                                                                _%hd2193121969%_)))
                                                          (let ((_%lp-hd2193521979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2193421975%_)))
                        (_%lp-tl2193621982%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2193421975%_))))
                    (if (gx#stx-pair? _%lp-hd2193521979%_)
                        (let ((_%e2194121985%_
                               (gx#syntax-e _%lp-hd2193521979%_)))
                          (let ((_%hd2194221989%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2194121985%_)))
                                (_%tl2194321992%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2194121985%_))))
                            (if (gx#stx-pair? _%tl2194321992%_)
                                (let ((_%e2194421995%_
                                       (gx#syntax-e _%tl2194321992%_)))
                                  (let ((_%hd2194521999%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2194421995%_)))
                                        (_%tl2194622002%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2194421995%_))))
                                    (if (gx#stx-null? _%tl2194622002%_)
                                        (_%loop2193321965%_
                                         _%lp-tl2193621982%_
                                         (cons _%hd2194521999%_
                                               _%def-usetf2193721972%_)
                                         (cons _%hd2194221989%_
                                               _%def-ugetf2193821973%_))
                                        (_%g2192621952%_ _%g2192721956%_))))
                                (_%g2192621952%_ _%g2192721956%_))))
                        (_%g2192621952%_ _%g2192721956%_))))
                (let ((_%def-usetf2193922005%_
                       (reverse _%def-usetf2193721972%_))
                      (_%def-ugetf2194022007%_
                       (reverse _%def-ugetf2193821973%_)))
                  ((lambda (_%g2192822009%_ _%g2192922011%_)
                     (_%wrap21118%_
                      (cons (gx#datum->syntax '#f 'begin)
                            (cons _%g2174221755%_
                                  (cons _%g2179821811%_
                                        (cons _%g2177021783%_
                                              (foldr (lambda (_%g2202922038%_
                                                              _%g2203022041%_)
                                                       (cons _%g2202922038%_
                                                             _%g2203022041%_))
                                                     (foldr (lambda (_%g2203122044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g2203222047%_)
                      (cons _%g2203122044%_ _%g2203222047%_))
                    (foldr (lambda (_%g2203322050%_ _%g2203422053%_)
                             (cons _%g2203322050%_ _%g2203422053%_))
                           (foldr (lambda (_%g2203522056%_ _%g2203622059%_)
                                    (cons _%g2203522056%_ _%g2203622059%_))
                                  '()
                                  _%g2192822009%_)
                           _%g2192922011%_)
                    _%g2182621907%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2182721909%_)))))))
                   _%def-usetf2193922005%_
                   _%def-ugetf2194022007%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop2193321965%_
                                           _%target2193021959%_
                                           '()
                                           '()))
                                        (_%g2192621952%_ _%g2192721956%_)))))
                              (_%g2192621952%_ _%g2192721956%_)))))
                  (_%g2192522062%_
                   (gx#stx-map
                    (lambda (_%ref22066%_)
                      (let* ((_%g2206922088%_
                              (lambda (_%g2207022084%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2207022084%_)))
                             (_%g2206822210%_
                              (lambda (_%g2207022092%_)
                                (if (gx#stx-pair? _%g2207022092%_)
                                    (let ((_%e2207422095%_
                                           (gx#syntax-e _%g2207022092%_)))
                                      (let ((_%hd2207522099%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2207422095%_)))
                                            (_%tl2207622102%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2207422095%_))))
                                        (if (gx#stx-pair? _%tl2207622102%_)
                                            (let ((_%e2207722105%_
                                                   (gx#syntax-e
                                                    _%tl2207622102%_)))
                                              (let ((_%hd2207822109%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2207722105%_)))
                                                    (_%tl2207922112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2207722105%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2207922112%_)
                                                    (let ((_%e2208022115%_
                                                           (gx#syntax-e
                                                            _%tl2207922112%_)))
                                                      (let ((_%hd2208122119%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2208022115%_)))
                    (_%tl2208222122%_
                     (let () (declare (not safe)) (##cdr _%e2208022115%_))))
                (if (gx#stx-null? _%tl2208222122%_)
                    ((lambda (_%g2207122125%_ _%g2207222127%_ _%g2207322128%_)
                       (let* ((_%g2214622161%_
                               (lambda (_%g2214722157%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2214722157%_)))
                              (_%g2214522206%_
                               (lambda (_%g2214722165%_)
                                 (if (gx#stx-pair? _%g2214722165%_)
                                     (let ((_%e2215022168%_
                                            (gx#syntax-e _%g2214722165%_)))
                                       (let ((_%hd2215122172%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2215022168%_)))
                                             (_%tl2215222175%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2215022168%_))))
                                         (if (gx#stx-pair? _%tl2215222175%_)
                                             (let ((_%e2215322178%_
                                                    (gx#syntax-e
                                                     _%tl2215222175%_)))
                                               (let ((_%hd2215422182%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2215322178%_)))
                                                     (_%tl2215522185%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2215322178%_))))
                                                 (if (gx#stx-null?
                                                      _%tl2215522185%_)
                                                     ((lambda (_%g2214822188%_
                                                               _%g2214922190%_)
                                                        (cons (_%wrap21118%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'def)
                             (cons _%g2214922190%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@mop.accessor)
                                                           (cons _%g2143421447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g2207322128%_ (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-class-slot-unchecked-accessor)
                         (cons _%g2112921212%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2207322128%_ '()))
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (cons (_%wrap21118%_
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%g2214822188%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@mop.mutator)
                         (cons _%g2143421447%_
                               (cons _%g2207322128%_ (cons '#f '()))))
                   (cons (cons (gx#datum->syntax
                                '#f
                                'make-class-slot-unchecked-mutator)
                               (cons _%g2112921212%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2207322128%_ '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            '())))
              _%hd2215422182%_
              _%hd2215122172%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2214622161%_
                                                      _%g2214722165%_))))
                                             (_%g2214622161%_
                                              _%g2214722165%_))))
                                     (_%g2214622161%_ _%g2214722165%_)))))
                         (_%g2214522206%_
                          (list (gx#stx-identifier
                                 _%g2207222127%_
                                 '"&"
                                 _%g2207222127%_)
                                (gx#stx-identifier
                                 _%g2207122125%_
                                 '"&"
                                 _%g2207122125%_)))))
                     _%hd2208122119%_
                     _%hd2207822109%_
                     _%hd2207522099%_)
                    (_%g2206922088%_ _%g2207022092%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2206922088%_
                                                     _%g2207022092%_))))
                                            (_%g2206922088%_
                                             _%g2207022092%_))))
                                    (_%g2206922088%_ _%g2207022092%_)))))
                        (_%g2206822210%_ _%ref22066%_)))
                    _%accessible-slots21269%_))))
              _%def-setf2183721903%_
              _%def-getf2183821905%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop2183121863%_
                                      _%target2182821857%_
                                      '()
                                      '()))
                                   (_%g2182421850%_ _%g2182521854%_)))))
                         (_%g2182421850%_ _%g2182521854%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2182322214%_
                                                      (gx#stx-map
                                                       (lambda (_%ref22218%_)
                                                         (let* ((_%g2222122240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2222222236%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2222222236%_)))
                        (_%g2222022298%_
                         (lambda (_%g2222222244%_)
                           (if (gx#stx-pair? _%g2222222244%_)
                               (let ((_%e2222622247%_
                                      (gx#syntax-e _%g2222222244%_)))
                                 (let ((_%hd2222722251%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2222622247%_)))
                                       (_%tl2222822254%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2222622247%_))))
                                   (if (gx#stx-pair? _%tl2222822254%_)
                                       (let ((_%e2222922257%_
                                              (gx#syntax-e _%tl2222822254%_)))
                                         (let ((_%hd2223022261%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e2222922257%_)))
                                               (_%tl2223122264%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e2222922257%_))))
                                           (if (gx#stx-pair? _%tl2223122264%_)
                                               (let ((_%e2223222267%_
                                                      (gx#syntax-e
                                                       _%tl2223122264%_)))
                                                 (let ((_%hd2223322271%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2223222267%_)))
                                                       (_%tl2223422274%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2223222267%_))))
                                                   (if (gx#stx-null?
                                                        _%tl2223422274%_)
                                                       ((lambda (_%g2222322277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2222422279%_
                         _%g2222522280%_)
                  (cons (_%wrap21118%_
                         (cons (gx#datum->syntax '#f 'def)
                               (cons _%g2222422279%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'begin-annotation)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@mop.accessor)
                                                             (cons _%g2143421447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g2222522280%_ (cons '#t '()))))
               (cons (cons (gx#datum->syntax '#f 'make-class-slot-accessor)
                           (cons _%g2112921212%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2222522280%_ '()))
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                        (cons (_%wrap21118%_
                               (cons (gx#datum->syntax '#f 'def)
                                     (cons _%g2222322277%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@mop.mutator)
                           (cons _%g2143421447%_
                                 (cons _%g2222522280%_ (cons '#t '()))))
                     (cons (cons (gx#datum->syntax
                                  '#f
                                  'make-class-slot-mutator)
                                 (cons _%g2112921212%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g2222522280%_ '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                              '())))
                _%hd2223322271%_
                _%hd2223022261%_
                _%hd2222722251%_)
               (_%g2222122240%_ _%g2222222244%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2222122240%_
                                                _%g2222222244%_))))
                                       (_%g2222122240%_ _%g2222222244%_))))
                               (_%g2222122240%_ _%g2222222244%_)))))
                   (_%g2222022298%_ _%ref22218%_)))
               _%accessible-slots21269%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g2179721808%_))))
                                        (_%g2179522302%_
                                         (_%wrap21118%_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _%g2112621209%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@mop.predicate)
                                      (cons _%g2143421447%_ '()))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'make-class-predicate)
                                            (cons _%g2112921212%_ '()))
                                      '())))
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g2176921780%_))))
                           (_%g2176722306%_
                            (if (gx#stx-false? _%g2112721210%_)
                                (cons (gx#datum->syntax '#f 'begin) '())
                                (_%wrap21118%_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _%g2112721210%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin-annotation)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '@mop.constructor)
                             (cons _%g2143421447%_ '()))
                       (cons (cons (gx#datum->syntax '#f 'lambda)
                                   (cons (gx#datum->syntax '#f '$args)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'apply)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'make-instance)
                                                           (cons _%g2112921212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))))
                       _%g2174121752%_))))
              (_%g2173922310%_
               (_%wrap21118%_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _%g2112921212%_
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.class)
                                                    (cons _%g2135021363%_
                                                          (cons _%g2146221475%_
                                                                (cons (foldr (lambda (_%g2231322316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              _%g2231422319%_)
                                       (cons _%g2231322316%_ _%g2231422319%_))
                                     '()
                                     _%g2127721327%_)
                              (cons _%g2140621419%_
                                    (cons _%g2149021503%_
                                          (cons _%g2151821531%_
                                                (cons _%g2154621559%_
                                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%g2171421727%_ '())))
                                  '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2171321724%_))))
                                         (_%g2171122322%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-class-type)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%g2135021363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote)
                          (cons _%g2137821391%_ '()))
                    (cons _%g2168621699%_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons (foldr (lambda (_%g2232522328%_
                                                            _%g2232622331%_)
                                                     (cons _%g2232522328%_
                                                           _%g2232622331%_))
                                                   '()
                                                   _%g2127721327%_)
                                            '()))
                                (cons _%g2165821671%_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2140621419%_ '()))
                                            '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g2168521696%_))))
                            (_%g2168322334%_
                             (cons (gx#datum->syntax '#f 'list)
                                   _%g2112821211%_))))
                        _%g2165721668%_))))
               (_%g2165522338%_
                (if (gx#stx-e _%metaclass21272%_)
                    (let* ((_%g2234222350%_
                            (lambda (_%g2234322346%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2234322346%_)))
                           (_%g2234122369%_
                            (lambda (_%g2234322354%_)
                              ((lambda (_%g2234422357%_)
                                 (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons 'metaclass:
                                                         (cons '::
                                                               (cons _%g2234422357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '::
                                                   (cons _%g2163021643%_
                                                         '())))))
                               _%g2234322354%_))))
                      (_%g2234122369%_ _%metaclass21272%_))
                    _%g2163021643%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g2162921640%_))))
                                          (_%g2162722373%_
                                           (if _%struct?21252%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         (cons 'struct: '#t))
                   (cons ':: (cons _%g2160221615%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2160221615%_))))
                                      _%g2160121612%_))))
                             (_%g2159922377%_
                              (if (gx#stx-e _%g2151821531%_)
                                  (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons 'final: '#t))
                                              (cons '::
                                                    (cons _%g2157421587%_
                                                          '()))))
                                  _%g2157421587%_))))
                         _%g2157321584%_))))
                (_%g2157122381%_
                 (let ((_%$e22385%_
                        (gx#stx-getq 'properties: _%g2112521207%_)))
                   (if _%$e22385%_
                       _%$e22385%_
                       (cons (gx#datum->syntax '#f '@list) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g2154521556%_))))
                                           (_%g2154322389%_
                                            (if (gx#stx-e _%metaclass21272%_)
                                                (gx#core-quote-syntax
                                                 _%metaclass21272%_)
                                                '#f))))
                                       _%g2151721528%_))))
                              (_%g2151522393%_
                               (gx#stx-getq 'final: _%g2112521207%_))))
                          _%g2148921500%_))))
                 (_%g2148722397%_ _%struct?21252%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2146121472%_))))
                                            (_%g2145922401%_
                                             (gx#stx-map
                                              gx#core-quote-syntax
                                              _%g2112821211%_))))
                                        _%g2143321444%_))))
                               (_%g2143122405%_
                                (gx#core-quote-syntax _%g2112921212%_))))
                           _%g2140521416%_))))
                  (_%g2140322409%_
                   (gx#stx-getq 'constructor: _%g2112521207%_))))
              _%g2137721388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2137522413%_
                                              (let ((_%$e22417%_
                                                     (gx#stx-getq
                                                      'name:
                                                      _%g2112521207%_)))
                                                (if _%$e22417%_
                                                    _%$e22417%_
                                                    _%g2112921212%_)))))
                                         _%g2134921360%_))))
                                (_%g2134722421%_
                                 (let ((_%$e22425%_
                                        (gx#stx-getq 'id: _%g2112521207%_)))
                                   (if _%$e22425%_
                                       _%$e22425%_
                                       (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                        _%g2112921212%_))))))
                            _%slot2128621324%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2128121305%_
                                                    _%target2127821299%_
                                                    '()))
                                                 (_%g2127521292%_
                                                  _%g2127621296%_)))))
                                       (_%g2127521292%_ _%g2127621296%_)))))
                           (_%g2127422429%_
                            (gx#stx-map _%slot-name21120%_ _%slots21259%_)))
                         (_%g2112321150%_ _%g2112421154%_)))
                   _%tl2114421204%_
                   _%hd2114321201%_
                   _%hd2114021191%_
                   _%hd2113721181%_
                   _%hd2113421171%_)))
              (_%g2112321150%_ _%g2112421154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2112321150%_
                                               _%g2112421154%_))))
                                      (_%g2112321150%_ _%g2112421154%_))))
                              (_%g2112321150%_ _%g2112421154%_))))
                      (_%g2112321150%_ _%g2112421154%_)))))
          (_%g2112222433%_ _%stx21114%_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_%stx22547%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22547%_ '#t)))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_%stx22550%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22550%_ '#f))))
