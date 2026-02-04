(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_%type-t22449%_)
      (let ((_%$e22452%_ (gx#module-context-ns (gx#current-expander-context))))
        (if _%$e22452%_
            ((lambda (_%ns22456%_)
               (gx#stx-identifier
                _%type-t22449%_
                _%ns22456%_
                '"#"
                _%type-t22449%_
                '"::t"))
             _%$e22452%_)
            (let ((_%mid22461%_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _%type-t22449%_
               _%mid22461%_
               '"#"
               _%type-t22449%_
               '"::t"))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_%type-t22446%_)
      (if (gx#module-context? (gx#current-expander-context))
          (|gerbil/core/mop~MOP-1[1]#module-type-id| _%type-t22446%_)
          (make-symbol '"__" (gensym (gx#stx-e _%type-t22446%_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_%stx21034%_ _%struct?21036%_)
      (letrec ((_%wrap21038%_
                (lambda (_%e-stx22443%_)
                  (gx#stx-wrap-source
                   _%e-stx22443%_
                   (gx#stx-source _%stx21034%_))))
               (_%slot-name21040%_
                (lambda (_%slot-spec22360%_)
                  (let* ((_%g2236322382%_
                          (lambda (_%g2236422378%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2236422378%_)))
                         (_%g2236222439%_
                          (lambda (_%g2236422386%_)
                            (if (gx#stx-pair? _%g2236422386%_)
                                (let ((_%e2236822389%_
                                       (gx#syntax-e _%g2236422386%_)))
                                  (let ((_%hd2236922393%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2236822389%_)))
                                        (_%tl2237022396%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2236822389%_))))
                                    (if (gx#stx-pair? _%tl2237022396%_)
                                        (let ((_%e2237122399%_
                                               (gx#syntax-e _%tl2237022396%_)))
                                          (let ((_%hd2237222403%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2237122399%_)))
                                                (_%tl2237322406%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2237122399%_))))
                                            (if (gx#stx-pair? _%tl2237322406%_)
                                                (let ((_%e2237422409%_
                                                       (gx#syntax-e
                                                        _%tl2237322406%_)))
                                                  (let ((_%hd2237522413%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2237422409%_)))
                                                        (_%tl2237622416%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2237422409%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2237622416%_)
                                                        ((lambda (_%g2236522419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2236622421%_
                          _%g2236722422%_)
                   _%g2236722422%_)
                 _%hd2237522413%_
                 _%hd2237222403%_
                 _%hd2236922393%_)
                (_%g2236322382%_ _%g2236422386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2236322382%_
                                                 _%g2236422386%_))))
                                        (_%g2236322382%_ _%g2236422386%_))))
                                (_%g2236322382%_ _%g2236422386%_)))))
                    (_%g2236222439%_ _%slot-spec22360%_))))
               (_%class-opt?21041%_
                (lambda (_%key22357%_)
                  (let ((__tmp27143 (gx#stx-e _%key22357%_)))
                    (declare (not safe))
                    (##memq __tmp27143
                            '(struct:
                              slots:
                              id:
                              name:
                              properties:
                              constructor:
                              final:
                              mixin:
                              metaclass:))))))
        (let* ((_%g2104321070%_
                (lambda (_%g2104421066%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2104421066%_)))
               (_%g2104222353%_
                (lambda (_%g2104421074%_)
                  (if (gx#stx-pair? _%g2104421074%_)
                      (let ((_%e2105021077%_ (gx#syntax-e _%g2104421074%_)))
                        (let ((_%hd2105121081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2105021077%_)))
                              (_%tl2105221084%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2105021077%_))))
                          (if (gx#stx-pair? _%tl2105221084%_)
                              (let ((_%e2105321087%_
                                     (gx#syntax-e _%tl2105221084%_)))
                                (let ((_%hd2105421091%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2105321087%_)))
                                      (_%tl2105521094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2105321087%_))))
                                  (if (gx#stx-pair? _%tl2105521094%_)
                                      (let ((_%e2105621097%_
                                             (gx#syntax-e _%tl2105521094%_)))
                                        (let ((_%hd2105721101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2105621097%_)))
                                              (_%tl2105821104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2105621097%_))))
                                          (if (gx#stx-pair? _%tl2105821104%_)
                                              (let ((_%e2105921107%_
                                                     (gx#syntax-e
                                                      _%tl2105821104%_)))
                                                (let ((_%hd2106021111%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2105921107%_)))
                                                      (_%tl2106121114%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2105921107%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl2106121114%_)
                                                      (let ((_%e2106221117%_
                                                             (gx#syntax-e
                                                              _%tl2106121114%_)))
                                                        (let ((_%hd2106321121%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2106221117%_)))
                      (_%tl2106421124%_
                       (let () (declare (not safe)) (##cdr _%e2106221117%_))))
                  ((lambda (_%g2104521127%_
                            _%g2104621129%_
                            _%g2104721130%_
                            _%g2104821131%_
                            _%g2104921132%_)
                     (if (and (gx#identifier? _%g2104921132%_)
                              (gx#identifier-list? _%g2104821131%_)
                              (or (gx#identifier? _%g2104721130%_)
                                  (gx#stx-false? _%g2104721130%_))
                              (gx#identifier? _%g2104621129%_)
                              (gx#stx-plist?
                               _%g2104521127%_
                               _%class-opt?21041%_))
                         (let* ((_%struct?21172%_
                                 (let ((_%$e21162%_ _%struct?21036%_))
                                   (if _%$e21162%_
                                       _%$e21162%_
                                       (let ((_%$e21166%_
                                              (gx#stx-getq
                                               'struct:
                                               _%g2104521127%_)))
                                         (if _%$e21166%_
                                             (gx#stx-e _%$e21166%_)
                                             '#f)))))
                                (_%slots21179%_
                                 (let ((_%$e21175%_
                                        (gx#stx-getq 'slots: _%g2104521127%_)))
                                   (if _%$e21175%_ _%$e21175%_ '())))
                                (_%mixin-slots21186%_
                                 (let ((_%$e21182%_
                                        (gx#stx-getq 'mixin: _%g2104521127%_)))
                                   (if _%$e21182%_ _%$e21182%_ '())))
                                (_%accessible-slots21189%_
                                 (append (gx#syntax->list _%slots21179%_)
                                         (gx#syntax->list
                                          _%mixin-slots21186%_)))
                                (_%metaclass21192%_
                                 (gx#stx-getq 'metaclass: _%g2104521127%_))
                                (_%g2119521212%_
                                 (lambda (_%g2119621208%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2119621208%_)))
                                (_%g2119422349%_
                                 (lambda (_%g2119621216%_)
                                   (if (gx#stx-pair/null? _%g2119621216%_)
                                       (let ((_g27144_
                                              (gx#syntax-split-splice
                                               _%g2119621216%_
                                               '0)))
                                         (begin
                                           (let ((_g27145_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27144_)
                                                        (##values-length
                                                         _g27144_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27145_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27145_)))
                                           (let ((_%target2119821219%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g27144_ 0)))
                                                 (_%tl2120021222%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g27144_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2120021222%_)
                                                 (letrec ((_%loop2120121225%_
                                                           (lambda (_%hd2119921229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%slot2120521232%_)
                     (if (gx#stx-pair? _%hd2119921229%_)
                         (let ((_%e2120221234%_
                                (gx#syntax-e _%hd2119921229%_)))
                           (let ((_%lp-hd2120321238%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2120221234%_)))
                                 (_%lp-tl2120421241%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2120221234%_))))
                             (_%loop2120121225%_
                              _%lp-tl2120421241%_
                              (cons _%lp-hd2120321238%_ _%slot2120521232%_))))
                         (let ((_%slot2120621244%_
                                (reverse _%slot2120521232%_)))
                           ((lambda (_%g2119721247%_)
                              (let* ((_%g2126821276%_
                                      (lambda (_%g2126921272%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2126921272%_)))
                                     (_%g2126722341%_
                                      (lambda (_%g2126921280%_)
                                        ((lambda (_%g2127021283%_)
                                           (let* ((_%g2129621304%_
                                                   (lambda (_%g2129721300%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2129721300%_)))
                                                  (_%g2129522333%_
                                                   (lambda (_%g2129721308%_)
                                                     ((lambda (_%g2129821311%_)
                                                        (let* ((_%g2132421332%_
                                                                (lambda (_%g2132521328%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2132521328%_)))
                       (_%g2132322329%_
                        (lambda (_%g2132521336%_)
                          ((lambda (_%g2132621339%_)
                             (let* ((_%g2135221360%_
                                     (lambda (_%g2135321356%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2135321356%_)))
                                    (_%g2135122325%_
                                     (lambda (_%g2135321364%_)
                                       ((lambda (_%g2135421367%_)
                                          (let* ((_%g2138021388%_
                                                  (lambda (_%g2138121384%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2138121384%_)))
                                                 (_%g2137922321%_
                                                  (lambda (_%g2138121392%_)
                                                    ((lambda (_%g2138221395%_)
                                                       (let* ((_%g2140821416%_
                                                               (lambda (_%g2140921412%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2140921412%_)))
                      (_%g2140722317%_
                       (lambda (_%g2140921420%_)
                         ((lambda (_%g2141021423%_)
                            (let* ((_%g2143621444%_
                                    (lambda (_%g2143721440%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2143721440%_)))
                                   (_%g2143522313%_
                                    (lambda (_%g2143721448%_)
                                      ((lambda (_%g2143821451%_)
                                         (let* ((_%g2146421472%_
                                                 (lambda (_%g2146521468%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2146521468%_)))
                                                (_%g2146322309%_
                                                 (lambda (_%g2146521476%_)
                                                   ((lambda (_%g2146621479%_)
                                                      (let* ((_%g2149221500%_
                                                              (lambda (_%g2149321496%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2149321496%_)))
                     (_%g2149122301%_
                      (lambda (_%g2149321504%_)
                        ((lambda (_%g2149421507%_)
                           (let* ((_%g2152021528%_
                                   (lambda (_%g2152121524%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2152121524%_)))
                                  (_%g2151922297%_
                                   (lambda (_%g2152121532%_)
                                     ((lambda (_%g2152221535%_)
                                        (let* ((_%g2154821556%_
                                                (lambda (_%g2154921552%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2154921552%_)))
                                               (_%g2154722293%_
                                                (lambda (_%g2154921560%_)
                                                  ((lambda (_%g2155021563%_)
                                                     (let* ((_%g2157621584%_
                                                             (lambda (_%g2157721580%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g2157721580%_)))
                                                            (_%g2157522258%_
                                                             (lambda (_%g2157721588%_)
                                                               ((lambda (_%g2157821591%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g2160421612%_
                                  (lambda (_%g2160521608%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2160521608%_)))
                                 (_%g2160322254%_
                                  (lambda (_%g2160521616%_)
                                    ((lambda (_%g2160621619%_)
                                       (let* ((_%g2163221640%_
                                               (lambda (_%g2163321636%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2163321636%_)))
                                              (_%g2163122242%_
                                               (lambda (_%g2163321644%_)
                                                 ((lambda (_%g2163421647%_)
                                                    (let* ((_%g2166021668%_
                                                            (lambda (_%g2166121664%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2166121664%_)))
                                                           (_%g2165922230%_
                                                            (lambda (_%g2166121672%_)
                                                              ((lambda (_%g2166221675%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%g2168821696%_
                                 (lambda (_%g2168921692%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2168921692%_)))
                                (_%g2168722226%_
                                 (lambda (_%g2168921700%_)
                                   ((lambda (_%g2169021703%_)
                                      (let* ((_%g2171621724%_
                                              (lambda (_%g2171721720%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2171721720%_)))
                                             (_%g2171522222%_
                                              (lambda (_%g2171721728%_)
                                                ((lambda (_%g2171821731%_)
                                                   (let* ((_%g2174421770%_
                                                           (lambda (_%g2174521766%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g2174521766%_)))
                                                          (_%g2174322134%_
                                                           (lambda (_%g2174521774%_)
                                                             (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2174521774%_)
                         (let ((_g27146_
                                (gx#syntax-split-splice _%g2174521774%_ '0)))
                           (begin
                             (let ((_g27147_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g27146_)
                                          (##values-length _g27146_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g27147_ 2)))
                                   (error "Context expects 2 values"
                                          _g27147_)))
                             (let ((_%target2174821777%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g27146_ 0)))
                                   (_%tl2175021780%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g27146_ 1))))
                               (if (gx#stx-null? _%tl2175021780%_)
                                   (letrec ((_%loop2175121783%_
                                             (lambda (_%hd2174921787%_
                                                      _%def-setf2175521790%_
                                                      _%def-getf2175621791%_)
                                               (if (gx#stx-pair?
                                                    _%hd2174921787%_)
                                                   (let ((_%e2175221793%_
                                                          (gx#syntax-e
                                                           _%hd2174921787%_)))
                                                     (let ((_%lp-hd2175321797%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e2175221793%_)))
                                                           (_%lp-tl2175421800%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e2175221793%_))))
                                                       (if (gx#stx-pair?
                                                            _%lp-hd2175321797%_)
                                                           (let ((_%e2175921803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%lp-hd2175321797%_)))
                     (let ((_%hd2176021807%_
                            (let ()
                              (declare (not safe))
                              (##car _%e2175921803%_)))
                           (_%tl2176121810%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e2175921803%_))))
                       (if (gx#stx-pair? _%tl2176121810%_)
                           (let ((_%e2176221813%_
                                  (gx#syntax-e _%tl2176121810%_)))
                             (let ((_%hd2176321817%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e2176221813%_)))
                                   (_%tl2176421820%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e2176221813%_))))
                               (if (gx#stx-null? _%tl2176421820%_)
                                   (_%loop2175121783%_
                                    _%lp-tl2175421800%_
                                    (cons _%hd2176321817%_
                                          _%def-setf2175521790%_)
                                    (cons _%hd2176021807%_
                                          _%def-getf2175621791%_))
                                   (_%g2174421770%_ _%g2174521774%_))))
                           (_%g2174421770%_ _%g2174521774%_))))
                   (_%g2174421770%_ _%g2174521774%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%def-setf2175721823%_
                                                          (reverse _%def-setf2175521790%_))
                                                         (_%def-getf2175821825%_
                                                          (reverse _%def-getf2175621791%_)))
                                                     ((lambda (_%g2174621827%_
                                                               _%g2174721829%_)
                                                        (let* ((_%g2184621872%_
                                                                (lambda (_%g2184721868%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2184721868%_)))
                       (_%g2184521982%_
                        (lambda (_%g2184721876%_)
                          (if (gx#stx-pair/null? _%g2184721876%_)
                              (let ((_g27148_
                                     (gx#syntax-split-splice
                                      _%g2184721876%_
                                      '0)))
                                (begin
                                  (let ((_g27149_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g27148_)
                                               (##values-length _g27148_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g27149_ 2)))
                                        (error "Context expects 2 values"
                                               _g27149_)))
                                  (let ((_%target2185021879%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g27148_ 0)))
                                        (_%tl2185221882%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g27148_ 1))))
                                    (if (gx#stx-null? _%tl2185221882%_)
                                        (letrec ((_%loop2185321885%_
                                                  (lambda (_%hd2185121889%_
                                                           _%def-usetf2185721892%_
                                                           _%def-ugetf2185821893%_)
                                                    (if (gx#stx-pair?
                                                         _%hd2185121889%_)
                                                        (let ((_%e2185421895%_
                                                               (gx#syntax-e
                                                                _%hd2185121889%_)))
                                                          (let ((_%lp-hd2185521899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2185421895%_)))
                        (_%lp-tl2185621902%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2185421895%_))))
                    (if (gx#stx-pair? _%lp-hd2185521899%_)
                        (let ((_%e2186121905%_
                               (gx#syntax-e _%lp-hd2185521899%_)))
                          (let ((_%hd2186221909%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2186121905%_)))
                                (_%tl2186321912%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2186121905%_))))
                            (if (gx#stx-pair? _%tl2186321912%_)
                                (let ((_%e2186421915%_
                                       (gx#syntax-e _%tl2186321912%_)))
                                  (let ((_%hd2186521919%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2186421915%_)))
                                        (_%tl2186621922%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2186421915%_))))
                                    (if (gx#stx-null? _%tl2186621922%_)
                                        (_%loop2185321885%_
                                         _%lp-tl2185621902%_
                                         (cons _%hd2186521919%_
                                               _%def-usetf2185721892%_)
                                         (cons _%hd2186221909%_
                                               _%def-ugetf2185821893%_))
                                        (_%g2184621872%_ _%g2184721876%_))))
                                (_%g2184621872%_ _%g2184721876%_))))
                        (_%g2184621872%_ _%g2184721876%_))))
                (let ((_%def-usetf2185921925%_
                       (reverse _%def-usetf2185721892%_))
                      (_%def-ugetf2186021927%_
                       (reverse _%def-ugetf2185821893%_)))
                  ((lambda (_%g2184821929%_ _%g2184921931%_)
                     (_%wrap21038%_
                      (cons (gx#datum->syntax '#f 'begin)
                            (cons _%g2166221675%_
                                  (cons _%g2171821731%_
                                        (cons _%g2169021703%_
                                              (foldr (lambda (_%g2194921958%_
                                                              _%g2195021961%_)
                                                       (cons _%g2194921958%_
                                                             _%g2195021961%_))
                                                     (foldr (lambda (_%g2195121964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g2195221967%_)
                      (cons _%g2195121964%_ _%g2195221967%_))
                    (foldr (lambda (_%g2195321970%_ _%g2195421973%_)
                             (cons _%g2195321970%_ _%g2195421973%_))
                           (foldr (lambda (_%g2195521976%_ _%g2195621979%_)
                                    (cons _%g2195521976%_ _%g2195621979%_))
                                  '()
                                  _%g2184821929%_)
                           _%g2184921931%_)
                    _%g2174621827%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2174721829%_)))))))
                   _%def-usetf2185921925%_
                   _%def-ugetf2186021927%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop2185321885%_
                                           _%target2185021879%_
                                           '()
                                           '()))
                                        (_%g2184621872%_ _%g2184721876%_)))))
                              (_%g2184621872%_ _%g2184721876%_)))))
                  (_%g2184521982%_
                   (gx#stx-map
                    (lambda (_%ref21986%_)
                      (let* ((_%g2198922008%_
                              (lambda (_%g2199022004%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2199022004%_)))
                             (_%g2198822130%_
                              (lambda (_%g2199022012%_)
                                (if (gx#stx-pair? _%g2199022012%_)
                                    (let ((_%e2199422015%_
                                           (gx#syntax-e _%g2199022012%_)))
                                      (let ((_%hd2199522019%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2199422015%_)))
                                            (_%tl2199622022%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2199422015%_))))
                                        (if (gx#stx-pair? _%tl2199622022%_)
                                            (let ((_%e2199722025%_
                                                   (gx#syntax-e
                                                    _%tl2199622022%_)))
                                              (let ((_%hd2199822029%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2199722025%_)))
                                                    (_%tl2199922032%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2199722025%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2199922032%_)
                                                    (let ((_%e2200022035%_
                                                           (gx#syntax-e
                                                            _%tl2199922032%_)))
                                                      (let ((_%hd2200122039%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2200022035%_)))
                    (_%tl2200222042%_
                     (let () (declare (not safe)) (##cdr _%e2200022035%_))))
                (if (gx#stx-null? _%tl2200222042%_)
                    ((lambda (_%g2199122045%_ _%g2199222047%_ _%g2199322048%_)
                       (let* ((_%g2206622081%_
                               (lambda (_%g2206722077%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2206722077%_)))
                              (_%g2206522126%_
                               (lambda (_%g2206722085%_)
                                 (if (gx#stx-pair? _%g2206722085%_)
                                     (let ((_%e2207022088%_
                                            (gx#syntax-e _%g2206722085%_)))
                                       (let ((_%hd2207122092%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2207022088%_)))
                                             (_%tl2207222095%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2207022088%_))))
                                         (if (gx#stx-pair? _%tl2207222095%_)
                                             (let ((_%e2207322098%_
                                                    (gx#syntax-e
                                                     _%tl2207222095%_)))
                                               (let ((_%hd2207422102%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2207322098%_)))
                                                     (_%tl2207522105%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2207322098%_))))
                                                 (if (gx#stx-null?
                                                      _%tl2207522105%_)
                                                     ((lambda (_%g2206822108%_
                                                               _%g2206922110%_)
                                                        (cons (_%wrap21038%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'def)
                             (cons _%g2206922110%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@mop.accessor)
                                                           (cons _%g2135421367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g2199322048%_ (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-class-slot-unchecked-accessor)
                         (cons _%g2104921132%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2199322048%_ '()))
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (cons (_%wrap21038%_
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%g2206822108%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@mop.mutator)
                         (cons _%g2135421367%_
                               (cons _%g2199322048%_ (cons '#f '()))))
                   (cons (cons (gx#datum->syntax
                                '#f
                                'make-class-slot-unchecked-mutator)
                               (cons _%g2104921132%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2199322048%_ '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            '())))
              _%hd2207422102%_
              _%hd2207122092%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2206622081%_
                                                      _%g2206722085%_))))
                                             (_%g2206622081%_
                                              _%g2206722085%_))))
                                     (_%g2206622081%_ _%g2206722085%_)))))
                         (_%g2206522126%_
                          (list (gx#stx-identifier
                                 _%g2199222047%_
                                 '"&"
                                 _%g2199222047%_)
                                (gx#stx-identifier
                                 _%g2199122045%_
                                 '"&"
                                 _%g2199122045%_)))))
                     _%hd2200122039%_
                     _%hd2199822029%_
                     _%hd2199522019%_)
                    (_%g2198922008%_ _%g2199022012%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2198922008%_
                                                     _%g2199022012%_))))
                                            (_%g2198922008%_
                                             _%g2199022012%_))))
                                    (_%g2198922008%_ _%g2199022012%_)))))
                        (_%g2198822130%_ _%ref21986%_)))
                    _%accessible-slots21189%_))))
              _%def-setf2175721823%_
              _%def-getf2175821825%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop2175121783%_
                                      _%target2174821777%_
                                      '()
                                      '()))
                                   (_%g2174421770%_ _%g2174521774%_)))))
                         (_%g2174421770%_ _%g2174521774%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2174322134%_
                                                      (gx#stx-map
                                                       (lambda (_%ref22138%_)
                                                         (let* ((_%g2214122160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2214222156%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2214222156%_)))
                        (_%g2214022218%_
                         (lambda (_%g2214222164%_)
                           (if (gx#stx-pair? _%g2214222164%_)
                               (let ((_%e2214622167%_
                                      (gx#syntax-e _%g2214222164%_)))
                                 (let ((_%hd2214722171%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2214622167%_)))
                                       (_%tl2214822174%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2214622167%_))))
                                   (if (gx#stx-pair? _%tl2214822174%_)
                                       (let ((_%e2214922177%_
                                              (gx#syntax-e _%tl2214822174%_)))
                                         (let ((_%hd2215022181%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e2214922177%_)))
                                               (_%tl2215122184%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e2214922177%_))))
                                           (if (gx#stx-pair? _%tl2215122184%_)
                                               (let ((_%e2215222187%_
                                                      (gx#syntax-e
                                                       _%tl2215122184%_)))
                                                 (let ((_%hd2215322191%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2215222187%_)))
                                                       (_%tl2215422194%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2215222187%_))))
                                                   (if (gx#stx-null?
                                                        _%tl2215422194%_)
                                                       ((lambda (_%g2214322197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2214422199%_
                         _%g2214522200%_)
                  (cons (_%wrap21038%_
                         (cons (gx#datum->syntax '#f 'def)
                               (cons _%g2214422199%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'begin-annotation)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@mop.accessor)
                                                             (cons _%g2135421367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g2214522200%_ (cons '#t '()))))
               (cons (cons (gx#datum->syntax '#f 'make-class-slot-accessor)
                           (cons _%g2104921132%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2214522200%_ '()))
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                        (cons (_%wrap21038%_
                               (cons (gx#datum->syntax '#f 'def)
                                     (cons _%g2214322197%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@mop.mutator)
                           (cons _%g2135421367%_
                                 (cons _%g2214522200%_ (cons '#t '()))))
                     (cons (cons (gx#datum->syntax
                                  '#f
                                  'make-class-slot-mutator)
                                 (cons _%g2104921132%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g2214522200%_ '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                              '())))
                _%hd2215322191%_
                _%hd2215022181%_
                _%hd2214722171%_)
               (_%g2214122160%_ _%g2214222164%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2214122160%_
                                                _%g2214222164%_))))
                                       (_%g2214122160%_ _%g2214222164%_))))
                               (_%g2214122160%_ _%g2214222164%_)))))
                   (_%g2214022218%_ _%ref22138%_)))
               _%accessible-slots21189%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g2171721728%_))))
                                        (_%g2171522222%_
                                         (_%wrap21038%_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _%g2104621129%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@mop.predicate)
                                      (cons _%g2135421367%_ '()))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'make-class-predicate)
                                            (cons _%g2104921132%_ '()))
                                      '())))
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g2168921700%_))))
                           (_%g2168722226%_
                            (if (gx#stx-false? _%g2104721130%_)
                                (cons (gx#datum->syntax '#f 'begin) '())
                                (_%wrap21038%_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _%g2104721130%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin-annotation)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '@mop.constructor)
                             (cons _%g2135421367%_ '()))
                       (cons (cons (gx#datum->syntax '#f 'lambda)
                                   (cons (gx#datum->syntax '#f '$args)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'apply)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'make-instance)
                                                           (cons _%g2104921132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))))
                       _%g2166121672%_))))
              (_%g2165922230%_
               (_%wrap21038%_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _%g2104921132%_
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.class)
                                                    (cons _%g2127021283%_
                                                          (cons _%g2138221395%_
                                                                (cons (foldr (lambda (_%g2223322236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              _%g2223422239%_)
                                       (cons _%g2223322236%_ _%g2223422239%_))
                                     '()
                                     _%g2119721247%_)
                              (cons _%g2132621339%_
                                    (cons _%g2141021423%_
                                          (cons _%g2143821451%_
                                                (cons _%g2146621479%_
                                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%g2163421647%_ '())))
                                  '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2163321644%_))))
                                         (_%g2163122242%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-class-type)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%g2127021283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote)
                          (cons _%g2129821311%_ '()))
                    (cons _%g2160621619%_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons (foldr (lambda (_%g2224522248%_
                                                            _%g2224622251%_)
                                                     (cons _%g2224522248%_
                                                           _%g2224622251%_))
                                                   '()
                                                   _%g2119721247%_)
                                            '()))
                                (cons _%g2157821591%_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2132621339%_ '()))
                                            '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g2160521616%_))))
                            (_%g2160322254%_
                             (cons (gx#datum->syntax '#f 'list)
                                   _%g2104821131%_))))
                        _%g2157721588%_))))
               (_%g2157522258%_
                (if (gx#stx-e _%metaclass21192%_)
                    (let* ((_%g2226222270%_
                            (lambda (_%g2226322266%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2226322266%_)))
                           (_%g2226122289%_
                            (lambda (_%g2226322274%_)
                              ((lambda (_%g2226422277%_)
                                 (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons 'metaclass:
                                                         (cons '::
                                                               (cons _%g2226422277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '::
                                                   (cons _%g2155021563%_
                                                         '())))))
                               _%g2226322274%_))))
                      (_%g2226122289%_ _%metaclass21192%_))
                    _%g2155021563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g2154921560%_))))
                                          (_%g2154722293%_
                                           (if _%struct?21172%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         (cons 'struct: '#t))
                   (cons ':: (cons _%g2152221535%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2152221535%_))))
                                      _%g2152121532%_))))
                             (_%g2151922297%_
                              (if (gx#stx-e _%g2143821451%_)
                                  (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons 'final: '#t))
                                              (cons '::
                                                    (cons _%g2149421507%_
                                                          '()))))
                                  _%g2149421507%_))))
                         _%g2149321504%_))))
                (_%g2149122301%_
                 (let ((_%$e22305%_
                        (gx#stx-getq 'properties: _%g2104521127%_)))
                   (if _%$e22305%_
                       _%$e22305%_
                       (cons (gx#datum->syntax '#f '@list) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g2146521476%_))))
                                           (_%g2146322309%_
                                            (if (gx#stx-e _%metaclass21192%_)
                                                (gx#core-quote-syntax
                                                 _%metaclass21192%_)
                                                '#f))))
                                       _%g2143721448%_))))
                              (_%g2143522313%_
                               (gx#stx-getq 'final: _%g2104521127%_))))
                          _%g2140921420%_))))
                 (_%g2140722317%_ _%struct?21172%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2138121392%_))))
                                            (_%g2137922321%_
                                             (gx#stx-map
                                              gx#core-quote-syntax
                                              _%g2104821131%_))))
                                        _%g2135321364%_))))
                               (_%g2135122325%_
                                (gx#core-quote-syntax _%g2104921132%_))))
                           _%g2132521336%_))))
                  (_%g2132322329%_
                   (gx#stx-getq 'constructor: _%g2104521127%_))))
              _%g2129721308%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2129522333%_
                                              (let ((_%$e22337%_
                                                     (gx#stx-getq
                                                      'name:
                                                      _%g2104521127%_)))
                                                (if _%$e22337%_
                                                    _%$e22337%_
                                                    _%g2104921132%_)))))
                                         _%g2126921280%_))))
                                (_%g2126722341%_
                                 (let ((_%$e22345%_
                                        (gx#stx-getq 'id: _%g2104521127%_)))
                                   (if _%$e22345%_
                                       _%$e22345%_
                                       (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                        _%g2104921132%_))))))
                            _%slot2120621244%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2120121225%_
                                                    _%target2119821219%_
                                                    '()))
                                                 (_%g2119521212%_
                                                  _%g2119621216%_)))))
                                       (_%g2119521212%_ _%g2119621216%_)))))
                           (_%g2119422349%_
                            (gx#stx-map _%slot-name21040%_ _%slots21179%_)))
                         (_%g2104321070%_ _%g2104421074%_)))
                   _%tl2106421124%_
                   _%hd2106321121%_
                   _%hd2106021111%_
                   _%hd2105721101%_
                   _%hd2105421091%_)))
              (_%g2104321070%_ _%g2104421074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2104321070%_
                                               _%g2104421074%_))))
                                      (_%g2104321070%_ _%g2104421074%_))))
                              (_%g2104321070%_ _%g2104421074%_))))
                      (_%g2104321070%_ _%g2104421074%_)))))
          (_%g2104222353%_ _%stx21034%_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_%stx22467%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22467%_ '#t)))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_%stx22470%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22470%_ '#f))))
