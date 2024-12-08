(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_%type-t22448%_)
      (let ((_%$e22451%_ (gx#module-context-ns (gx#current-expander-context))))
        (if _%$e22451%_
            ((lambda (_%ns22455%_)
               (gx#stx-identifier
                _%type-t22448%_
                _%ns22455%_
                '"#"
                _%type-t22448%_
                '"::t"))
             _%$e22451%_)
            (let ((_%mid22460%_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _%type-t22448%_
               _%mid22460%_
               '"#"
               _%type-t22448%_
               '"::t"))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_%type-t22445%_)
      (if (gx#module-context? (gx#current-expander-context))
          (|gerbil/core/mop~MOP-1[1]#module-type-id| _%type-t22445%_)
          (make-symbol '"__" (gensym (gx#stx-e _%type-t22445%_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_%stx21023%_ _%struct?21025%_)
      (letrec ((_%wrap21027%_
                (lambda (_%e-stx22442%_)
                  (gx#stx-wrap-source
                   _%e-stx22442%_
                   (gx#stx-source _%stx21023%_))))
               (_%slot-name21029%_
                (lambda (_%slot-spec22359%_)
                  (let* ((_%g2236222381%_
                          (lambda (_%g2236322377%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2236322377%_)))
                         (_%g2236122438%_
                          (lambda (_%g2236322385%_)
                            (if (gx#stx-pair? _%g2236322385%_)
                                (let ((_%e2236722388%_
                                       (gx#syntax-e _%g2236322385%_)))
                                  (let ((_%hd2236822392%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2236722388%_)))
                                        (_%tl2236922395%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2236722388%_))))
                                    (if (gx#stx-pair? _%tl2236922395%_)
                                        (let ((_%e2237022398%_
                                               (gx#syntax-e _%tl2236922395%_)))
                                          (let ((_%hd2237122402%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2237022398%_)))
                                                (_%tl2237222405%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2237022398%_))))
                                            (if (gx#stx-pair? _%tl2237222405%_)
                                                (let ((_%e2237322408%_
                                                       (gx#syntax-e
                                                        _%tl2237222405%_)))
                                                  (let ((_%hd2237422412%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2237322408%_)))
                                                        (_%tl2237522415%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2237322408%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2237522415%_)
                                                        ((lambda (_%L22418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L22420%_
                          _%L22421%_)
                   _%L22421%_)
                 _%hd2237422412%_
                 _%hd2237122402%_
                 _%hd2236822392%_)
                (_%g2236222381%_ _%g2236322385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2236222381%_
                                                 _%g2236322385%_))))
                                        (_%g2236222381%_ _%g2236322385%_))))
                                (_%g2236222381%_ _%g2236322385%_)))))
                    (_%g2236122438%_ _%slot-spec22359%_))))
               (_%class-opt?21030%_
                (lambda (_%key22356%_)
                  (let ((__tmp27143 (gx#stx-e _%key22356%_)))
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
        (let* ((_%g2103221059%_
                (lambda (_%g2103321055%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2103321055%_)))
               (_%g2103122352%_
                (lambda (_%g2103321063%_)
                  (if (gx#stx-pair? _%g2103321063%_)
                      (let ((_%e2103921066%_ (gx#syntax-e _%g2103321063%_)))
                        (let ((_%hd2104021070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2103921066%_)))
                              (_%tl2104121073%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2103921066%_))))
                          (if (gx#stx-pair? _%tl2104121073%_)
                              (let ((_%e2104221076%_
                                     (gx#syntax-e _%tl2104121073%_)))
                                (let ((_%hd2104321080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2104221076%_)))
                                      (_%tl2104421083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2104221076%_))))
                                  (if (gx#stx-pair? _%tl2104421083%_)
                                      (let ((_%e2104521086%_
                                             (gx#syntax-e _%tl2104421083%_)))
                                        (let ((_%hd2104621090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2104521086%_)))
                                              (_%tl2104721093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2104521086%_))))
                                          (if (gx#stx-pair? _%tl2104721093%_)
                                              (let ((_%e2104821096%_
                                                     (gx#syntax-e
                                                      _%tl2104721093%_)))
                                                (let ((_%hd2104921100%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2104821096%_)))
                                                      (_%tl2105021103%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2104821096%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl2105021103%_)
                                                      (let ((_%e2105121106%_
                                                             (gx#syntax-e
                                                              _%tl2105021103%_)))
                                                        (let ((_%hd2105221110%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2105121106%_)))
                      (_%tl2105321113%_
                       (let () (declare (not safe)) (##cdr _%e2105121106%_))))
                  ((lambda (_%L21116%_
                            _%L21118%_
                            _%L21119%_
                            _%L21120%_
                            _%L21121%_)
                     (if (and (gx#identifier? _%L21121%_)
                              (gx#identifier-list? _%L21120%_)
                              (or (gx#identifier? _%L21119%_)
                                  (gx#stx-false? _%L21119%_))
                              (gx#identifier? _%L21118%_)
                              (gx#stx-plist? _%L21116%_ _%class-opt?21030%_))
                         (let* ((_%struct?21161%_
                                 (let ((_%$e21151%_ _%struct?21025%_))
                                   (if _%$e21151%_
                                       _%$e21151%_
                                       (let ((_%$e21155%_
                                              (gx#stx-getq
                                               'struct:
                                               _%L21116%_)))
                                         (if _%$e21155%_
                                             (gx#stx-e _%$e21155%_)
                                             '#f)))))
                                (_%slots21168%_
                                 (let ((_%$e21164%_
                                        (gx#stx-getq 'slots: _%L21116%_)))
                                   (if _%$e21164%_ _%$e21164%_ '())))
                                (_%mixin-slots21175%_
                                 (let ((_%$e21171%_
                                        (gx#stx-getq 'mixin: _%L21116%_)))
                                   (if _%$e21171%_ _%$e21171%_ '())))
                                (_%accessible-slots21178%_
                                 (append (gx#syntax->list _%slots21168%_)
                                         (gx#syntax->list
                                          _%mixin-slots21175%_)))
                                (_%metaclass21181%_
                                 (gx#stx-getq 'metaclass: _%L21116%_))
                                (_%g2118421201%_
                                 (lambda (_%g2118521197%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2118521197%_)))
                                (_%g2118322348%_
                                 (lambda (_%g2118521205%_)
                                   (if (gx#stx-pair/null? _%g2118521205%_)
                                       (let ((_g27144_
                                              (gx#syntax-split-splice
                                               _%g2118521205%_
                                               '0)))
                                         (begin
                                           (let ((_g27145_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27144_)
                                                        (##vector-length
                                                         _g27144_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27145_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27145_)))
                                           (let ((_%target2118721208%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g27144_ 0)))
                                                 (_%tl2118921211%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g27144_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2118921211%_)
                                                 (letrec ((_%loop2119021214%_
                                                           (lambda (_%hd2118821218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%slot2119421221%_)
                     (if (gx#stx-pair? _%hd2118821218%_)
                         (let ((_%e2119121224%_
                                (gx#syntax-e _%hd2118821218%_)))
                           (let ((_%lp-hd2119221228%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2119121224%_)))
                                 (_%lp-tl2119321231%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2119121224%_))))
                             (_%loop2119021214%_
                              _%lp-tl2119321231%_
                              (cons _%lp-hd2119221228%_ _%slot2119421221%_))))
                         (let ((_%slot2119521234%_
                                (reverse _%slot2119421221%_)))
                           ((lambda (_%L21238%_)
                              (let* ((_%g2125921267%_
                                      (lambda (_%g2126021263%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2126021263%_)))
                                     (_%g2125822340%_
                                      (lambda (_%g2126021271%_)
                                        ((lambda (_%L21274%_)
                                           (let* ((_%g2128721295%_
                                                   (lambda (_%g2128821291%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2128821291%_)))
                                                  (_%g2128622332%_
                                                   (lambda (_%g2128821299%_)
                                                     ((lambda (_%L21302%_)
                                                        (let* ((_%g2131521323%_
                                                                (lambda (_%g2131621319%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2131621319%_)))
                       (_%g2131422328%_
                        (lambda (_%g2131621327%_)
                          ((lambda (_%L21330%_)
                             (let* ((_%g2134321351%_
                                     (lambda (_%g2134421347%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2134421347%_)))
                                    (_%g2134222324%_
                                     (lambda (_%g2134421355%_)
                                       ((lambda (_%L21358%_)
                                          (let* ((_%g2137121379%_
                                                  (lambda (_%g2137221375%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2137221375%_)))
                                                 (_%g2137022320%_
                                                  (lambda (_%g2137221383%_)
                                                    ((lambda (_%L21386%_)
                                                       (let* ((_%g2139921407%_
                                                               (lambda (_%g2140021403%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2140021403%_)))
                      (_%g2139822316%_
                       (lambda (_%g2140021411%_)
                         ((lambda (_%L21414%_)
                            (let* ((_%g2142721435%_
                                    (lambda (_%g2142821431%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2142821431%_)))
                                   (_%g2142622312%_
                                    (lambda (_%g2142821439%_)
                                      ((lambda (_%L21442%_)
                                         (let* ((_%g2145521463%_
                                                 (lambda (_%g2145621459%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2145621459%_)))
                                                (_%g2145422308%_
                                                 (lambda (_%g2145621467%_)
                                                   ((lambda (_%L21470%_)
                                                      (let* ((_%g2148321491%_
                                                              (lambda (_%g2148421487%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2148421487%_)))
                     (_%g2148222300%_
                      (lambda (_%g2148421495%_)
                        ((lambda (_%L21498%_)
                           (let* ((_%g2151121519%_
                                   (lambda (_%g2151221515%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2151221515%_)))
                                  (_%g2151022296%_
                                   (lambda (_%g2151221523%_)
                                     ((lambda (_%L21526%_)
                                        (let* ((_%g2153921547%_
                                                (lambda (_%g2154021543%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2154021543%_)))
                                               (_%g2153822292%_
                                                (lambda (_%g2154021551%_)
                                                  ((lambda (_%L21554%_)
                                                     (let* ((_%g2156721575%_
                                                             (lambda (_%g2156821571%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g2156821571%_)))
                                                            (_%g2156622257%_
                                                             (lambda (_%g2156821579%_)
                                                               ((lambda (_%L21582%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g2159521603%_
                                  (lambda (_%g2159621599%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2159621599%_)))
                                 (_%g2159422253%_
                                  (lambda (_%g2159621607%_)
                                    ((lambda (_%L21610%_)
                                       (let* ((_%g2162321631%_
                                               (lambda (_%g2162421627%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2162421627%_)))
                                              (_%g2162222241%_
                                               (lambda (_%g2162421635%_)
                                                 ((lambda (_%L21638%_)
                                                    (let* ((_%g2165121659%_
                                                            (lambda (_%g2165221655%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2165221655%_)))
                                                           (_%g2165022229%_
                                                            (lambda (_%g2165221663%_)
                                                              ((lambda (_%L21666%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%g2167921687%_
                                 (lambda (_%g2168021683%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2168021683%_)))
                                (_%g2167822225%_
                                 (lambda (_%g2168021691%_)
                                   ((lambda (_%L21694%_)
                                      (let* ((_%g2170721715%_
                                              (lambda (_%g2170821711%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2170821711%_)))
                                             (_%g2170622221%_
                                              (lambda (_%g2170821719%_)
                                                ((lambda (_%L21722%_)
                                                   (let* ((_%g2173521761%_
                                                           (lambda (_%g2173621757%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g2173621757%_)))
                                                          (_%g2173422133%_
                                                           (lambda (_%g2173621765%_)
                                                             (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2173621765%_)
                         (let ((_g27146_
                                (gx#syntax-split-splice _%g2173621765%_ '0)))
                           (begin
                             (let ((_g27147_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g27146_)
                                          (##vector-length _g27146_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g27147_ 2)))
                                   (error "Context expects 2 values"
                                          _g27147_)))
                             (let ((_%target2173921768%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _g27146_ 0)))
                                   (_%tl2174121771%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _g27146_ 1))))
                               (if (gx#stx-null? _%tl2174121771%_)
                                   (letrec ((_%loop2174221774%_
                                             (lambda (_%hd2174021778%_
                                                      _%def-setf2174621781%_
                                                      _%def-getf2174721783%_)
                                               (if (gx#stx-pair?
                                                    _%hd2174021778%_)
                                                   (let ((_%e2174321786%_
                                                          (gx#syntax-e
                                                           _%hd2174021778%_)))
                                                     (let ((_%lp-hd2174421790%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e2174321786%_)))
                                                           (_%lp-tl2174521793%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e2174321786%_))))
                                                       (if (gx#stx-pair?
                                                            _%lp-hd2174421790%_)
                                                           (let ((_%e2175021796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%lp-hd2174421790%_)))
                     (let ((_%hd2175121800%_
                            (let ()
                              (declare (not safe))
                              (##car _%e2175021796%_)))
                           (_%tl2175221803%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e2175021796%_))))
                       (if (gx#stx-pair? _%tl2175221803%_)
                           (let ((_%e2175321806%_
                                  (gx#syntax-e _%tl2175221803%_)))
                             (let ((_%hd2175421810%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e2175321806%_)))
                                   (_%tl2175521813%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e2175321806%_))))
                               (if (gx#stx-null? _%tl2175521813%_)
                                   (_%loop2174221774%_
                                    _%lp-tl2174521793%_
                                    (cons _%hd2175421810%_
                                          _%def-setf2174621781%_)
                                    (cons _%hd2175121800%_
                                          _%def-getf2174721783%_))
                                   (_%g2173521761%_ _%g2173621765%_))))
                           (_%g2173521761%_ _%g2173621765%_))))
                   (_%g2173521761%_ _%g2173621765%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%def-setf2174821816%_
                                                          (reverse _%def-setf2174621781%_))
                                                         (_%def-getf2174921819%_
                                                          (reverse _%def-getf2174721783%_)))
                                                     ((lambda (_%L21822%_
                                                               _%L21824%_)
                                                        (let* ((_%g2184121867%_
                                                                (lambda (_%g2184221863%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2184221863%_)))
                       (_%g2184021981%_
                        (lambda (_%g2184221871%_)
                          (if (gx#stx-pair/null? _%g2184221871%_)
                              (let ((_g27148_
                                     (gx#syntax-split-splice
                                      _%g2184221871%_
                                      '0)))
                                (begin
                                  (let ((_g27149_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g27148_)
                                               (##vector-length _g27148_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g27149_ 2)))
                                        (error "Context expects 2 values"
                                               _g27149_)))
                                  (let ((_%target2184521874%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g27148_ 0)))
                                        (_%tl2184721877%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g27148_ 1))))
                                    (if (gx#stx-null? _%tl2184721877%_)
                                        (letrec ((_%loop2184821880%_
                                                  (lambda (_%hd2184621884%_
                                                           _%def-usetf2185221887%_
                                                           _%def-ugetf2185321889%_)
                                                    (if (gx#stx-pair?
                                                         _%hd2184621884%_)
                                                        (let ((_%e2184921892%_
                                                               (gx#syntax-e
                                                                _%hd2184621884%_)))
                                                          (let ((_%lp-hd2185021896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2184921892%_)))
                        (_%lp-tl2185121899%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2184921892%_))))
                    (if (gx#stx-pair? _%lp-hd2185021896%_)
                        (let ((_%e2185621902%_
                               (gx#syntax-e _%lp-hd2185021896%_)))
                          (let ((_%hd2185721906%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2185621902%_)))
                                (_%tl2185821909%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2185621902%_))))
                            (if (gx#stx-pair? _%tl2185821909%_)
                                (let ((_%e2185921912%_
                                       (gx#syntax-e _%tl2185821909%_)))
                                  (let ((_%hd2186021916%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2185921912%_)))
                                        (_%tl2186121919%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2185921912%_))))
                                    (if (gx#stx-null? _%tl2186121919%_)
                                        (_%loop2184821880%_
                                         _%lp-tl2185121899%_
                                         (cons _%hd2186021916%_
                                               _%def-usetf2185221887%_)
                                         (cons _%hd2185721906%_
                                               _%def-ugetf2185321889%_))
                                        (_%g2184121867%_ _%g2184221871%_))))
                                (_%g2184121867%_ _%g2184221871%_))))
                        (_%g2184121867%_ _%g2184221871%_))))
                (let ((_%def-usetf2185421922%_
                       (reverse _%def-usetf2185221887%_))
                      (_%def-ugetf2185521925%_
                       (reverse _%def-ugetf2185321889%_)))
                  ((lambda (_%L21928%_ _%L21930%_)
                     (_%wrap21027%_
                      (cons (gx#datum->syntax '#f 'begin)
                            (cons _%L21666%_
                                  (cons _%L21722%_
                                        (cons _%L21694%_
                                              (foldr (lambda (_%g2194821957%_
                                                              _%g2194921960%_)
                                                       (cons _%g2194821957%_
                                                             _%g2194921960%_))
                                                     (foldr (lambda (_%g2195021963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g2195121966%_)
                      (cons _%g2195021963%_ _%g2195121966%_))
                    (foldr (lambda (_%g2195221969%_ _%g2195321972%_)
                             (cons _%g2195221969%_ _%g2195321972%_))
                           (foldr (lambda (_%g2195421975%_ _%g2195521978%_)
                                    (cons _%g2195421975%_ _%g2195521978%_))
                                  '()
                                  _%L21928%_)
                           _%L21930%_)
                    _%L21822%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%L21824%_)))))))
                   _%def-usetf2185421922%_
                   _%def-ugetf2185521925%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop2184821880%_
                                           _%target2184521874%_
                                           '()
                                           '()))
                                        (_%g2184121867%_ _%g2184221871%_)))))
                              (_%g2184121867%_ _%g2184221871%_)))))
                  (_%g2184021981%_
                   (gx#stx-map
                    (lambda (_%ref21985%_)
                      (let* ((_%g2198822007%_
                              (lambda (_%g2198922003%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2198922003%_)))
                             (_%g2198722129%_
                              (lambda (_%g2198922011%_)
                                (if (gx#stx-pair? _%g2198922011%_)
                                    (let ((_%e2199322014%_
                                           (gx#syntax-e _%g2198922011%_)))
                                      (let ((_%hd2199422018%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2199322014%_)))
                                            (_%tl2199522021%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2199322014%_))))
                                        (if (gx#stx-pair? _%tl2199522021%_)
                                            (let ((_%e2199622024%_
                                                   (gx#syntax-e
                                                    _%tl2199522021%_)))
                                              (let ((_%hd2199722028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2199622024%_)))
                                                    (_%tl2199822031%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2199622024%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2199822031%_)
                                                    (let ((_%e2199922034%_
                                                           (gx#syntax-e
                                                            _%tl2199822031%_)))
                                                      (let ((_%hd2200022038%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2199922034%_)))
                    (_%tl2200122041%_
                     (let () (declare (not safe)) (##cdr _%e2199922034%_))))
                (if (gx#stx-null? _%tl2200122041%_)
                    ((lambda (_%L22044%_ _%L22046%_ _%L22047%_)
                       (let* ((_%g2206522080%_
                               (lambda (_%g2206622076%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2206622076%_)))
                              (_%g2206422125%_
                               (lambda (_%g2206622084%_)
                                 (if (gx#stx-pair? _%g2206622084%_)
                                     (let ((_%e2206922087%_
                                            (gx#syntax-e _%g2206622084%_)))
                                       (let ((_%hd2207022091%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2206922087%_)))
                                             (_%tl2207122094%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2206922087%_))))
                                         (if (gx#stx-pair? _%tl2207122094%_)
                                             (let ((_%e2207222097%_
                                                    (gx#syntax-e
                                                     _%tl2207122094%_)))
                                               (let ((_%hd2207322101%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2207222097%_)))
                                                     (_%tl2207422104%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2207222097%_))))
                                                 (if (gx#stx-null?
                                                      _%tl2207422104%_)
                                                     ((lambda (_%L22107%_
                                                               _%L22109%_)
                                                        (cons (_%wrap21027%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'def)
                             (cons _%L22109%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@mop.accessor)
                                                           (cons _%L21358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L22047%_ (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-class-slot-unchecked-accessor)
                         (cons _%L21121%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L22047%_ '()))
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (cons (_%wrap21027%_
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%L22107%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@mop.mutator)
                         (cons _%L21358%_ (cons _%L22047%_ (cons '#f '()))))
                   (cons (cons (gx#datum->syntax
                                '#f
                                'make-class-slot-unchecked-mutator)
                               (cons _%L21121%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L22047%_ '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            '())))
              _%hd2207322101%_
              _%hd2207022091%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2206522080%_
                                                      _%g2206622084%_))))
                                             (_%g2206522080%_
                                              _%g2206622084%_))))
                                     (_%g2206522080%_ _%g2206622084%_)))))
                         (_%g2206422125%_
                          (list (gx#stx-identifier _%L22046%_ '"&" _%L22046%_)
                                (gx#stx-identifier
                                 _%L22044%_
                                 '"&"
                                 _%L22044%_)))))
                     _%hd2200022038%_
                     _%hd2199722028%_
                     _%hd2199422018%_)
                    (_%g2198822007%_ _%g2198922011%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2198822007%_
                                                     _%g2198922011%_))))
                                            (_%g2198822007%_
                                             _%g2198922011%_))))
                                    (_%g2198822007%_ _%g2198922011%_)))))
                        (_%g2198722129%_ _%ref21985%_)))
                    _%accessible-slots21178%_))))
              _%def-setf2174821816%_
              _%def-getf2174921819%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop2174221774%_
                                      _%target2173921768%_
                                      '()
                                      '()))
                                   (_%g2173521761%_ _%g2173621765%_)))))
                         (_%g2173521761%_ _%g2173621765%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2173422133%_
                                                      (gx#stx-map
                                                       (lambda (_%ref22137%_)
                                                         (let* ((_%g2214022159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2214122155%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2214122155%_)))
                        (_%g2213922217%_
                         (lambda (_%g2214122163%_)
                           (if (gx#stx-pair? _%g2214122163%_)
                               (let ((_%e2214522166%_
                                      (gx#syntax-e _%g2214122163%_)))
                                 (let ((_%hd2214622170%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2214522166%_)))
                                       (_%tl2214722173%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2214522166%_))))
                                   (if (gx#stx-pair? _%tl2214722173%_)
                                       (let ((_%e2214822176%_
                                              (gx#syntax-e _%tl2214722173%_)))
                                         (let ((_%hd2214922180%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e2214822176%_)))
                                               (_%tl2215022183%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e2214822176%_))))
                                           (if (gx#stx-pair? _%tl2215022183%_)
                                               (let ((_%e2215122186%_
                                                      (gx#syntax-e
                                                       _%tl2215022183%_)))
                                                 (let ((_%hd2215222190%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2215122186%_)))
                                                       (_%tl2215322193%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2215122186%_))))
                                                   (if (gx#stx-null?
                                                        _%tl2215322193%_)
                                                       ((lambda (_%L22196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L22198%_
                         _%L22199%_)
                  (cons (_%wrap21027%_
                         (cons (gx#datum->syntax '#f 'def)
                               (cons _%L22198%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'begin-annotation)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@mop.accessor)
                                                             (cons _%L21358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L22199%_ (cons '#t '()))))
               (cons (cons (gx#datum->syntax '#f 'make-class-slot-accessor)
                           (cons _%L21121%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L22199%_ '()))
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                        (cons (_%wrap21027%_
                               (cons (gx#datum->syntax '#f 'def)
                                     (cons _%L22196%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@mop.mutator)
                           (cons _%L21358%_ (cons _%L22199%_ (cons '#t '()))))
                     (cons (cons (gx#datum->syntax
                                  '#f
                                  'make-class-slot-mutator)
                                 (cons _%L21121%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L22199%_ '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                              '())))
                _%hd2215222190%_
                _%hd2214922180%_
                _%hd2214622170%_)
               (_%g2214022159%_ _%g2214122163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2214022159%_
                                                _%g2214122163%_))))
                                       (_%g2214022159%_ _%g2214122163%_))))
                               (_%g2214022159%_ _%g2214122163%_)))))
                   (_%g2213922217%_ _%ref22137%_)))
               _%accessible-slots21178%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g2170821719%_))))
                                        (_%g2170622221%_
                                         (_%wrap21027%_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _%L21118%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@mop.predicate)
                                      (cons _%L21358%_ '()))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'make-class-predicate)
                                            (cons _%L21121%_ '()))
                                      '())))
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g2168021691%_))))
                           (_%g2167822225%_
                            (if (gx#stx-false? _%L21119%_)
                                (cons (gx#datum->syntax '#f 'begin) '())
                                (_%wrap21027%_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _%L21119%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin-annotation)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '@mop.constructor)
                             (cons _%L21358%_ '()))
                       (cons (cons (gx#datum->syntax '#f 'lambda)
                                   (cons (gx#datum->syntax '#f '$args)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'apply)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'make-instance)
                                                           (cons _%L21121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))))
                       _%g2165221663%_))))
              (_%g2165022229%_
               (_%wrap21027%_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _%L21121%_
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.class)
                                                    (cons _%L21274%_
                                                          (cons _%L21386%_
                                                                (cons (foldr (lambda (_%g2223222235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              _%g2223322238%_)
                                       (cons _%g2223222235%_ _%g2223322238%_))
                                     '()
                                     _%L21238%_)
                              (cons _%L21330%_
                                    (cons _%L21414%_
                                          (cons _%L21442%_
                                                (cons _%L21470%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L21638%_ '())))
                                  '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2162421635%_))))
                                         (_%g2162222241%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-class-type)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L21274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote) (cons _%L21302%_ '()))
                    (cons _%L21610%_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons (foldr (lambda (_%g2224422247%_
                                                            _%g2224522250%_)
                                                     (cons _%g2224422247%_
                                                           _%g2224522250%_))
                                                   '()
                                                   _%L21238%_)
                                            '()))
                                (cons _%L21582%_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L21330%_ '()))
                                            '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g2159621607%_))))
                            (_%g2159422253%_
                             (cons (gx#datum->syntax '#f 'list) _%L21120%_))))
                        _%g2156821579%_))))
               (_%g2156622257%_
                (if (gx#stx-e _%metaclass21181%_)
                    (let* ((_%g2226122269%_
                            (lambda (_%g2226222265%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2226222265%_)))
                           (_%g2226022288%_
                            (lambda (_%g2226222273%_)
                              ((lambda (_%L22276%_)
                                 (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons 'metaclass:
                                                         (cons '::
                                                               (cons _%L22276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '::
                                                   (cons _%L21554%_ '())))))
                               _%g2226222273%_))))
                      (_%g2226022288%_ _%metaclass21181%_))
                    _%L21554%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g2154021551%_))))
                                          (_%g2153822292%_
                                           (if _%struct?21161%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         (cons 'struct: '#t))
                   (cons ':: (cons _%L21526%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%L21526%_))))
                                      _%g2151221523%_))))
                             (_%g2151022296%_
                              (if (gx#stx-e _%L21442%_)
                                  (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons 'final: '#t))
                                              (cons '::
                                                    (cons _%L21498%_ '()))))
                                  _%L21498%_))))
                         _%g2148421495%_))))
                (_%g2148222300%_
                 (let ((_%$e22304%_ (gx#stx-getq 'properties: _%L21116%_)))
                   (if _%$e22304%_
                       _%$e22304%_
                       (cons (gx#datum->syntax '#f '@list) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g2145621467%_))))
                                           (_%g2145422308%_
                                            (if (gx#stx-e _%metaclass21181%_)
                                                (gx#core-quote-syntax
                                                 _%metaclass21181%_)
                                                '#f))))
                                       _%g2142821439%_))))
                              (_%g2142622312%_
                               (gx#stx-getq 'final: _%L21116%_))))
                          _%g2140021411%_))))
                 (_%g2139822316%_ _%struct?21161%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2137221383%_))))
                                            (_%g2137022320%_
                                             (gx#stx-map
                                              gx#core-quote-syntax
                                              _%L21120%_))))
                                        _%g2134421355%_))))
                               (_%g2134222324%_
                                (gx#core-quote-syntax _%L21121%_))))
                           _%g2131621327%_))))
                  (_%g2131422328%_ (gx#stx-getq 'constructor: _%L21116%_))))
              _%g2128821299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2128622332%_
                                              (let ((_%$e22336%_
                                                     (gx#stx-getq
                                                      'name:
                                                      _%L21116%_)))
                                                (if _%$e22336%_
                                                    _%$e22336%_
                                                    _%L21121%_)))))
                                         _%g2126021271%_))))
                                (_%g2125822340%_
                                 (let ((_%$e22344%_
                                        (gx#stx-getq 'id: _%L21116%_)))
                                   (if _%$e22344%_
                                       _%$e22344%_
                                       (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                        _%L21121%_))))))
                            _%slot2119521234%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2119021214%_
                                                    _%target2118721208%_
                                                    '()))
                                                 (_%g2118421201%_
                                                  _%g2118521205%_)))))
                                       (_%g2118421201%_ _%g2118521205%_)))))
                           (_%g2118322348%_
                            (gx#stx-map _%slot-name21029%_ _%slots21168%_)))
                         (_%g2103221059%_ _%g2103321063%_)))
                   _%tl2105321113%_
                   _%hd2105221110%_
                   _%hd2104921100%_
                   _%hd2104621090%_
                   _%hd2104321080%_)))
              (_%g2103221059%_ _%g2103321063%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2103221059%_
                                               _%g2103321063%_))))
                                      (_%g2103221059%_ _%g2103321063%_))))
                              (_%g2103221059%_ _%g2103321063%_))))
                      (_%g2103221059%_ _%g2103321063%_)))))
          (_%g2103122352%_ _%stx21023%_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_%stx22466%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22466%_ '#t)))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_%stx22469%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22469%_ '#f))))
