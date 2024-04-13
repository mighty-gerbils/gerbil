(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_%type-t22412%_)
      (let ((_%$e22415%_ (gx#module-context-ns (gx#current-expander-context))))
        (if _%$e22415%_
            ((lambda (_%ns22419%_)
               (gx#stx-identifier
                _%type-t22412%_
                _%ns22419%_
                '"#"
                _%type-t22412%_
                '"::t"))
             _%$e22415%_)
            (let ((_%mid22424%_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _%type-t22412%_
               _%mid22424%_
               '"#"
               _%type-t22412%_
               '"::t"))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_%type-t22409%_)
      (if (gx#module-context? (gx#current-expander-context))
          (|gerbil/core/mop~MOP-1[1]#module-type-id| _%type-t22409%_)
          (make-symbol '"__" (gensym (gx#stx-e _%type-t22409%_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_%stx20987%_ _%struct?20989%_)
      (letrec ((_%wrap20991%_
                (lambda (_%e-stx22406%_)
                  (gx#stx-wrap-source
                   _%e-stx22406%_
                   (gx#stx-source _%stx20987%_))))
               (_%slot-name20993%_
                (lambda (_%slot-spec22323%_)
                  (let* ((_%g2232622345%_
                          (lambda (_%g2232722341%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2232722341%_)))
                         (_%g2232522402%_
                          (lambda (_%g2232722349%_)
                            (if (gx#stx-pair? _%g2232722349%_)
                                (let ((_%e2233122352%_
                                       (gx#syntax-e _%g2232722349%_)))
                                  (let ((_%hd2233222356%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2233122352%_)))
                                        (_%tl2233322359%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2233122352%_))))
                                    (if (gx#stx-pair? _%tl2233322359%_)
                                        (let ((_%e2233422362%_
                                               (gx#syntax-e _%tl2233322359%_)))
                                          (let ((_%hd2233522366%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2233422362%_)))
                                                (_%tl2233622369%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2233422362%_))))
                                            (if (gx#stx-pair? _%tl2233622369%_)
                                                (let ((_%e2233722372%_
                                                       (gx#syntax-e
                                                        _%tl2233622369%_)))
                                                  (let ((_%hd2233822376%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2233722372%_)))
                                                        (_%tl2233922379%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2233722372%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2233922379%_)
                                                        ((lambda (_%L22382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L22384%_
                          _%L22385%_)
                   _%L22385%_)
                 _%hd2233822376%_
                 _%hd2233522366%_
                 _%hd2233222356%_)
                (_%g2232622345%_ _%g2232722349%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2232622345%_
                                                 _%g2232722349%_))))
                                        (_%g2232622345%_ _%g2232722349%_))))
                                (_%g2232622345%_ _%g2232722349%_)))))
                    (_%g2232522402%_ _%slot-spec22323%_))))
               (_%class-opt?20994%_
                (lambda (_%key22320%_)
                  (let ((__tmp27107 (gx#stx-e _%key22320%_)))
                    (declare (not safe))
                    (##memq __tmp27107
                            '(struct:
                              slots:
                              id:
                              name:
                              properties:
                              constructor:
                              final:
                              mixin:
                              metaclass:))))))
        (let* ((_%g2099621023%_
                (lambda (_%g2099721019%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2099721019%_)))
               (_%g2099522316%_
                (lambda (_%g2099721027%_)
                  (if (gx#stx-pair? _%g2099721027%_)
                      (let ((_%e2100321030%_ (gx#syntax-e _%g2099721027%_)))
                        (let ((_%hd2100421034%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2100321030%_)))
                              (_%tl2100521037%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2100321030%_))))
                          (if (gx#stx-pair? _%tl2100521037%_)
                              (let ((_%e2100621040%_
                                     (gx#syntax-e _%tl2100521037%_)))
                                (let ((_%hd2100721044%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2100621040%_)))
                                      (_%tl2100821047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2100621040%_))))
                                  (if (gx#stx-pair? _%tl2100821047%_)
                                      (let ((_%e2100921050%_
                                             (gx#syntax-e _%tl2100821047%_)))
                                        (let ((_%hd2101021054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2100921050%_)))
                                              (_%tl2101121057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2100921050%_))))
                                          (if (gx#stx-pair? _%tl2101121057%_)
                                              (let ((_%e2101221060%_
                                                     (gx#syntax-e
                                                      _%tl2101121057%_)))
                                                (let ((_%hd2101321064%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2101221060%_)))
                                                      (_%tl2101421067%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2101221060%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl2101421067%_)
                                                      (let ((_%e2101521070%_
                                                             (gx#syntax-e
                                                              _%tl2101421067%_)))
                                                        (let ((_%hd2101621074%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2101521070%_)))
                      (_%tl2101721077%_
                       (let () (declare (not safe)) (##cdr _%e2101521070%_))))
                  ((lambda (_%L21080%_
                            _%L21082%_
                            _%L21083%_
                            _%L21084%_
                            _%L21085%_)
                     (if (and (gx#identifier? _%L21085%_)
                              (gx#identifier-list? _%L21084%_)
                              (or (gx#identifier? _%L21083%_)
                                  (gx#stx-false? _%L21083%_))
                              (gx#identifier? _%L21082%_)
                              (gx#stx-plist? _%L21080%_ _%class-opt?20994%_))
                         (let* ((_%struct?21125%_
                                 (let ((_%$e21115%_ _%struct?20989%_))
                                   (if _%$e21115%_
                                       _%$e21115%_
                                       (let ((_%$e21119%_
                                              (gx#stx-getq
                                               'struct:
                                               _%L21080%_)))
                                         (if _%$e21119%_
                                             (gx#stx-e _%$e21119%_)
                                             '#f)))))
                                (_%slots21132%_
                                 (let ((_%$e21128%_
                                        (gx#stx-getq 'slots: _%L21080%_)))
                                   (if _%$e21128%_ _%$e21128%_ '())))
                                (_%mixin-slots21139%_
                                 (let ((_%$e21135%_
                                        (gx#stx-getq 'mixin: _%L21080%_)))
                                   (if _%$e21135%_ _%$e21135%_ '())))
                                (_%accessible-slots21142%_
                                 (append (gx#syntax->list _%slots21132%_)
                                         (gx#syntax->list
                                          _%mixin-slots21139%_)))
                                (_%metaclass21145%_
                                 (gx#stx-getq 'metaclass: _%L21080%_))
                                (_%g2114821165%_
                                 (lambda (_%g2114921161%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2114921161%_)))
                                (_%g2114722312%_
                                 (lambda (_%g2114921169%_)
                                   (if (gx#stx-pair/null? _%g2114921169%_)
                                       (let ((_g27108_
                                              (gx#syntax-split-splice
                                               _%g2114921169%_
                                               '0)))
                                         (begin
                                           (let ((_g27109_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27108_)
                                                        (##vector-length
                                                         _g27108_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27109_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27109_)))
                                           (let ((_%target2115121172%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g27108_ 0)))
                                                 (_%tl2115321175%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g27108_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2115321175%_)
                                                 (letrec ((_%loop2115421178%_
                                                           (lambda (_%hd2115221182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%slot2115821185%_)
                     (if (gx#stx-pair? _%hd2115221182%_)
                         (let ((_%e2115521188%_
                                (gx#syntax-e _%hd2115221182%_)))
                           (let ((_%lp-hd2115621192%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2115521188%_)))
                                 (_%lp-tl2115721195%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2115521188%_))))
                             (_%loop2115421178%_
                              _%lp-tl2115721195%_
                              (cons _%lp-hd2115621192%_ _%slot2115821185%_))))
                         (let ((_%slot2115921198%_
                                (reverse _%slot2115821185%_)))
                           ((lambda (_%L21202%_)
                              (let* ((_%g2122321231%_
                                      (lambda (_%g2122421227%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2122421227%_)))
                                     (_%g2122222304%_
                                      (lambda (_%g2122421235%_)
                                        ((lambda (_%L21238%_)
                                           (let* ((_%g2125121259%_
                                                   (lambda (_%g2125221255%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2125221255%_)))
                                                  (_%g2125022296%_
                                                   (lambda (_%g2125221263%_)
                                                     ((lambda (_%L21266%_)
                                                        (let* ((_%g2127921287%_
                                                                (lambda (_%g2128021283%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2128021283%_)))
                       (_%g2127822292%_
                        (lambda (_%g2128021291%_)
                          ((lambda (_%L21294%_)
                             (let* ((_%g2130721315%_
                                     (lambda (_%g2130821311%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2130821311%_)))
                                    (_%g2130622288%_
                                     (lambda (_%g2130821319%_)
                                       ((lambda (_%L21322%_)
                                          (let* ((_%g2133521343%_
                                                  (lambda (_%g2133621339%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2133621339%_)))
                                                 (_%g2133422284%_
                                                  (lambda (_%g2133621347%_)
                                                    ((lambda (_%L21350%_)
                                                       (let* ((_%g2136321371%_
                                                               (lambda (_%g2136421367%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2136421367%_)))
                      (_%g2136222280%_
                       (lambda (_%g2136421375%_)
                         ((lambda (_%L21378%_)
                            (let* ((_%g2139121399%_
                                    (lambda (_%g2139221395%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2139221395%_)))
                                   (_%g2139022276%_
                                    (lambda (_%g2139221403%_)
                                      ((lambda (_%L21406%_)
                                         (let* ((_%g2141921427%_
                                                 (lambda (_%g2142021423%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2142021423%_)))
                                                (_%g2141822272%_
                                                 (lambda (_%g2142021431%_)
                                                   ((lambda (_%L21434%_)
                                                      (let* ((_%g2144721455%_
                                                              (lambda (_%g2144821451%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2144821451%_)))
                     (_%g2144622264%_
                      (lambda (_%g2144821459%_)
                        ((lambda (_%L21462%_)
                           (let* ((_%g2147521483%_
                                   (lambda (_%g2147621479%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2147621479%_)))
                                  (_%g2147422260%_
                                   (lambda (_%g2147621487%_)
                                     ((lambda (_%L21490%_)
                                        (let* ((_%g2150321511%_
                                                (lambda (_%g2150421507%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2150421507%_)))
                                               (_%g2150222256%_
                                                (lambda (_%g2150421515%_)
                                                  ((lambda (_%L21518%_)
                                                     (let* ((_%g2153121539%_
                                                             (lambda (_%g2153221535%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g2153221535%_)))
                                                            (_%g2153022221%_
                                                             (lambda (_%g2153221543%_)
                                                               ((lambda (_%L21546%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g2155921567%_
                                  (lambda (_%g2156021563%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2156021563%_)))
                                 (_%g2155822217%_
                                  (lambda (_%g2156021571%_)
                                    ((lambda (_%L21574%_)
                                       (let* ((_%g2158721595%_
                                               (lambda (_%g2158821591%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2158821591%_)))
                                              (_%g2158622205%_
                                               (lambda (_%g2158821599%_)
                                                 ((lambda (_%L21602%_)
                                                    (let* ((_%g2161521623%_
                                                            (lambda (_%g2161621619%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2161621619%_)))
                                                           (_%g2161422193%_
                                                            (lambda (_%g2161621627%_)
                                                              ((lambda (_%L21630%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%g2164321651%_
                                 (lambda (_%g2164421647%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2164421647%_)))
                                (_%g2164222189%_
                                 (lambda (_%g2164421655%_)
                                   ((lambda (_%L21658%_)
                                      (let* ((_%g2167121679%_
                                              (lambda (_%g2167221675%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2167221675%_)))
                                             (_%g2167022185%_
                                              (lambda (_%g2167221683%_)
                                                ((lambda (_%L21686%_)
                                                   (let* ((_%g2169921725%_
                                                           (lambda (_%g2170021721%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g2170021721%_)))
                                                          (_%g2169822097%_
                                                           (lambda (_%g2170021729%_)
                                                             (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2170021729%_)
                         (let ((_g27110_
                                (gx#syntax-split-splice _%g2170021729%_ '0)))
                           (begin
                             (let ((_g27111_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g27110_)
                                          (##vector-length _g27110_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g27111_ 2)))
                                   (error "Context expects 2 values"
                                          _g27111_)))
                             (let ((_%target2170321732%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _g27110_ 0)))
                                   (_%tl2170521735%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _g27110_ 1))))
                               (if (gx#stx-null? _%tl2170521735%_)
                                   (letrec ((_%loop2170621738%_
                                             (lambda (_%hd2170421742%_
                                                      _%def-setf2171021745%_
                                                      _%def-getf2171121747%_)
                                               (if (gx#stx-pair?
                                                    _%hd2170421742%_)
                                                   (let ((_%e2170721750%_
                                                          (gx#syntax-e
                                                           _%hd2170421742%_)))
                                                     (let ((_%lp-hd2170821754%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e2170721750%_)))
                                                           (_%lp-tl2170921757%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e2170721750%_))))
                                                       (if (gx#stx-pair?
                                                            _%lp-hd2170821754%_)
                                                           (let ((_%e2171421760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%lp-hd2170821754%_)))
                     (let ((_%hd2171521764%_
                            (let ()
                              (declare (not safe))
                              (##car _%e2171421760%_)))
                           (_%tl2171621767%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e2171421760%_))))
                       (if (gx#stx-pair? _%tl2171621767%_)
                           (let ((_%e2171721770%_
                                  (gx#syntax-e _%tl2171621767%_)))
                             (let ((_%hd2171821774%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e2171721770%_)))
                                   (_%tl2171921777%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e2171721770%_))))
                               (if (gx#stx-null? _%tl2171921777%_)
                                   (_%loop2170621738%_
                                    _%lp-tl2170921757%_
                                    (cons _%hd2171821774%_
                                          _%def-setf2171021745%_)
                                    (cons _%hd2171521764%_
                                          _%def-getf2171121747%_))
                                   (_%g2169921725%_ _%g2170021729%_))))
                           (_%g2169921725%_ _%g2170021729%_))))
                   (_%g2169921725%_ _%g2170021729%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%def-setf2171221780%_
                                                          (reverse _%def-setf2171021745%_))
                                                         (_%def-getf2171321783%_
                                                          (reverse _%def-getf2171121747%_)))
                                                     ((lambda (_%L21786%_
                                                               _%L21788%_)
                                                        (let* ((_%g2180521831%_
                                                                (lambda (_%g2180621827%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2180621827%_)))
                       (_%g2180421945%_
                        (lambda (_%g2180621835%_)
                          (if (gx#stx-pair/null? _%g2180621835%_)
                              (let ((_g27112_
                                     (gx#syntax-split-splice
                                      _%g2180621835%_
                                      '0)))
                                (begin
                                  (let ((_g27113_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g27112_)
                                               (##vector-length _g27112_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g27113_ 2)))
                                        (error "Context expects 2 values"
                                               _g27113_)))
                                  (let ((_%target2180921838%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g27112_ 0)))
                                        (_%tl2181121841%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g27112_ 1))))
                                    (if (gx#stx-null? _%tl2181121841%_)
                                        (letrec ((_%loop2181221844%_
                                                  (lambda (_%hd2181021848%_
                                                           _%def-usetf2181621851%_
                                                           _%def-ugetf2181721853%_)
                                                    (if (gx#stx-pair?
                                                         _%hd2181021848%_)
                                                        (let ((_%e2181321856%_
                                                               (gx#syntax-e
                                                                _%hd2181021848%_)))
                                                          (let ((_%lp-hd2181421860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2181321856%_)))
                        (_%lp-tl2181521863%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2181321856%_))))
                    (if (gx#stx-pair? _%lp-hd2181421860%_)
                        (let ((_%e2182021866%_
                               (gx#syntax-e _%lp-hd2181421860%_)))
                          (let ((_%hd2182121870%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2182021866%_)))
                                (_%tl2182221873%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2182021866%_))))
                            (if (gx#stx-pair? _%tl2182221873%_)
                                (let ((_%e2182321876%_
                                       (gx#syntax-e _%tl2182221873%_)))
                                  (let ((_%hd2182421880%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2182321876%_)))
                                        (_%tl2182521883%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2182321876%_))))
                                    (if (gx#stx-null? _%tl2182521883%_)
                                        (_%loop2181221844%_
                                         _%lp-tl2181521863%_
                                         (cons _%hd2182421880%_
                                               _%def-usetf2181621851%_)
                                         (cons _%hd2182121870%_
                                               _%def-ugetf2181721853%_))
                                        (_%g2180521831%_ _%g2180621835%_))))
                                (_%g2180521831%_ _%g2180621835%_))))
                        (_%g2180521831%_ _%g2180621835%_))))
                (let ((_%def-usetf2181821886%_
                       (reverse _%def-usetf2181621851%_))
                      (_%def-ugetf2181921889%_
                       (reverse _%def-ugetf2181721853%_)))
                  ((lambda (_%L21892%_ _%L21894%_)
                     (_%wrap20991%_
                      (cons (gx#datum->syntax '#f 'begin)
                            (cons _%L21630%_
                                  (cons _%L21686%_
                                        (cons _%L21658%_
                                              (foldr (lambda (_%g2191221921%_
                                                              _%g2191321924%_)
                                                       (cons _%g2191221921%_
                                                             _%g2191321924%_))
                                                     (foldr (lambda (_%g2191421927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g2191521930%_)
                      (cons _%g2191421927%_ _%g2191521930%_))
                    (foldr (lambda (_%g2191621933%_ _%g2191721936%_)
                             (cons _%g2191621933%_ _%g2191721936%_))
                           (foldr (lambda (_%g2191821939%_ _%g2191921942%_)
                                    (cons _%g2191821939%_ _%g2191921942%_))
                                  '()
                                  _%L21892%_)
                           _%L21894%_)
                    _%L21786%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%L21788%_)))))))
                   _%def-usetf2181821886%_
                   _%def-ugetf2181921889%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop2181221844%_
                                           _%target2180921838%_
                                           '()
                                           '()))
                                        (_%g2180521831%_ _%g2180621835%_)))))
                              (_%g2180521831%_ _%g2180621835%_)))))
                  (_%g2180421945%_
                   (gx#stx-map
                    (lambda (_%ref21949%_)
                      (let* ((_%g2195221971%_
                              (lambda (_%g2195321967%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2195321967%_)))
                             (_%g2195122093%_
                              (lambda (_%g2195321975%_)
                                (if (gx#stx-pair? _%g2195321975%_)
                                    (let ((_%e2195721978%_
                                           (gx#syntax-e _%g2195321975%_)))
                                      (let ((_%hd2195821982%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2195721978%_)))
                                            (_%tl2195921985%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2195721978%_))))
                                        (if (gx#stx-pair? _%tl2195921985%_)
                                            (let ((_%e2196021988%_
                                                   (gx#syntax-e
                                                    _%tl2195921985%_)))
                                              (let ((_%hd2196121992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2196021988%_)))
                                                    (_%tl2196221995%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2196021988%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2196221995%_)
                                                    (let ((_%e2196321998%_
                                                           (gx#syntax-e
                                                            _%tl2196221995%_)))
                                                      (let ((_%hd2196422002%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2196321998%_)))
                    (_%tl2196522005%_
                     (let () (declare (not safe)) (##cdr _%e2196321998%_))))
                (if (gx#stx-null? _%tl2196522005%_)
                    ((lambda (_%L22008%_ _%L22010%_ _%L22011%_)
                       (let* ((_%g2202922044%_
                               (lambda (_%g2203022040%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2203022040%_)))
                              (_%g2202822089%_
                               (lambda (_%g2203022048%_)
                                 (if (gx#stx-pair? _%g2203022048%_)
                                     (let ((_%e2203322051%_
                                            (gx#syntax-e _%g2203022048%_)))
                                       (let ((_%hd2203422055%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2203322051%_)))
                                             (_%tl2203522058%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2203322051%_))))
                                         (if (gx#stx-pair? _%tl2203522058%_)
                                             (let ((_%e2203622061%_
                                                    (gx#syntax-e
                                                     _%tl2203522058%_)))
                                               (let ((_%hd2203722065%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2203622061%_)))
                                                     (_%tl2203822068%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2203622061%_))))
                                                 (if (gx#stx-null?
                                                      _%tl2203822068%_)
                                                     ((lambda (_%L22071%_
                                                               _%L22073%_)
                                                        (cons (_%wrap20991%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'def)
                             (cons _%L22073%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@mop.accessor)
                                                           (cons _%L21322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L22011%_ (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-class-slot-unchecked-accessor)
                         (cons _%L21085%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L22011%_ '()))
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (cons (_%wrap20991%_
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%L22071%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@mop.mutator)
                         (cons _%L21322%_ (cons _%L22011%_ (cons '#f '()))))
                   (cons (cons (gx#datum->syntax
                                '#f
                                'make-class-slot-unchecked-mutator)
                               (cons _%L21085%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L22011%_ '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            '())))
              _%hd2203722065%_
              _%hd2203422055%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2202922044%_
                                                      _%g2203022048%_))))
                                             (_%g2202922044%_
                                              _%g2203022048%_))))
                                     (_%g2202922044%_ _%g2203022048%_)))))
                         (_%g2202822089%_
                          (list (gx#stx-identifier _%L22010%_ '"&" _%L22010%_)
                                (gx#stx-identifier
                                 _%L22008%_
                                 '"&"
                                 _%L22008%_)))))
                     _%hd2196422002%_
                     _%hd2196121992%_
                     _%hd2195821982%_)
                    (_%g2195221971%_ _%g2195321975%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2195221971%_
                                                     _%g2195321975%_))))
                                            (_%g2195221971%_
                                             _%g2195321975%_))))
                                    (_%g2195221971%_ _%g2195321975%_)))))
                        (_%g2195122093%_ _%ref21949%_)))
                    _%accessible-slots21142%_))))
              _%def-setf2171221780%_
              _%def-getf2171321783%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop2170621738%_
                                      _%target2170321732%_
                                      '()
                                      '()))
                                   (_%g2169921725%_ _%g2170021729%_)))))
                         (_%g2169921725%_ _%g2170021729%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2169822097%_
                                                      (gx#stx-map
                                                       (lambda (_%ref22101%_)
                                                         (let* ((_%g2210422123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2210522119%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2210522119%_)))
                        (_%g2210322181%_
                         (lambda (_%g2210522127%_)
                           (if (gx#stx-pair? _%g2210522127%_)
                               (let ((_%e2210922130%_
                                      (gx#syntax-e _%g2210522127%_)))
                                 (let ((_%hd2211022134%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2210922130%_)))
                                       (_%tl2211122137%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2210922130%_))))
                                   (if (gx#stx-pair? _%tl2211122137%_)
                                       (let ((_%e2211222140%_
                                              (gx#syntax-e _%tl2211122137%_)))
                                         (let ((_%hd2211322144%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e2211222140%_)))
                                               (_%tl2211422147%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e2211222140%_))))
                                           (if (gx#stx-pair? _%tl2211422147%_)
                                               (let ((_%e2211522150%_
                                                      (gx#syntax-e
                                                       _%tl2211422147%_)))
                                                 (let ((_%hd2211622154%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2211522150%_)))
                                                       (_%tl2211722157%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2211522150%_))))
                                                   (if (gx#stx-null?
                                                        _%tl2211722157%_)
                                                       ((lambda (_%L22160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L22162%_
                         _%L22163%_)
                  (cons (_%wrap20991%_
                         (cons (gx#datum->syntax '#f 'def)
                               (cons _%L22162%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'begin-annotation)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@mop.accessor)
                                                             (cons _%L21322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L22163%_ (cons '#t '()))))
               (cons (cons (gx#datum->syntax '#f 'make-class-slot-accessor)
                           (cons _%L21085%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L22163%_ '()))
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                        (cons (_%wrap20991%_
                               (cons (gx#datum->syntax '#f 'def)
                                     (cons _%L22160%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@mop.mutator)
                           (cons _%L21322%_ (cons _%L22163%_ (cons '#t '()))))
                     (cons (cons (gx#datum->syntax
                                  '#f
                                  'make-class-slot-mutator)
                                 (cons _%L21085%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L22163%_ '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                              '())))
                _%hd2211622154%_
                _%hd2211322144%_
                _%hd2211022134%_)
               (_%g2210422123%_ _%g2210522127%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2210422123%_
                                                _%g2210522127%_))))
                                       (_%g2210422123%_ _%g2210522127%_))))
                               (_%g2210422123%_ _%g2210522127%_)))))
                   (_%g2210322181%_ _%ref22101%_)))
               _%accessible-slots21142%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g2167221683%_))))
                                        (_%g2167022185%_
                                         (_%wrap20991%_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _%L21082%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@mop.predicate)
                                      (cons _%L21322%_ '()))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'make-class-predicate)
                                            (cons _%L21085%_ '()))
                                      '())))
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g2164421655%_))))
                           (_%g2164222189%_
                            (if (gx#stx-false? _%L21083%_)
                                (cons (gx#datum->syntax '#f 'begin) '())
                                (_%wrap20991%_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _%L21083%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin-annotation)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '@mop.constructor)
                             (cons _%L21322%_ '()))
                       (cons (cons (gx#datum->syntax '#f 'lambda)
                                   (cons (gx#datum->syntax '#f '$args)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'apply)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'make-instance)
                                                           (cons _%L21085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))))
                       _%g2161621627%_))))
              (_%g2161422193%_
               (_%wrap20991%_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _%L21085%_
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.class)
                                                    (cons _%L21238%_
                                                          (cons _%L21350%_
                                                                (cons (foldr (lambda (_%g2219622199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              _%g2219722202%_)
                                       (cons _%g2219622199%_ _%g2219722202%_))
                                     '()
                                     _%L21202%_)
                              (cons _%L21294%_
                                    (cons _%L21378%_
                                          (cons _%L21406%_
                                                (cons _%L21434%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L21602%_ '())))
                                  '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2158821599%_))))
                                         (_%g2158622205%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-class-type)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L21238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote) (cons _%L21266%_ '()))
                    (cons _%L21574%_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons (foldr (lambda (_%g2220822211%_
                                                            _%g2220922214%_)
                                                     (cons _%g2220822211%_
                                                           _%g2220922214%_))
                                                   '()
                                                   _%L21202%_)
                                            '()))
                                (cons _%L21546%_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L21294%_ '()))
                                            '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g2156021571%_))))
                            (_%g2155822217%_
                             (cons (gx#datum->syntax '#f 'list) _%L21084%_))))
                        _%g2153221543%_))))
               (_%g2153022221%_
                (if (gx#stx-e _%metaclass21145%_)
                    (let* ((_%g2222522233%_
                            (lambda (_%g2222622229%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2222622229%_)))
                           (_%g2222422252%_
                            (lambda (_%g2222622237%_)
                              ((lambda (_%L22240%_)
                                 (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons 'metaclass:
                                                         (cons '::
                                                               (cons _%L22240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '::
                                                   (cons _%L21518%_ '())))))
                               _%g2222622237%_))))
                      (_%g2222422252%_ _%metaclass21145%_))
                    _%L21518%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g2150421515%_))))
                                          (_%g2150222256%_
                                           (if _%struct?21125%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         (cons 'struct: '#t))
                   (cons ':: (cons _%L21490%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%L21490%_))))
                                      _%g2147621487%_))))
                             (_%g2147422260%_
                              (if (gx#stx-e _%L21406%_)
                                  (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons 'final: '#t))
                                              (cons '::
                                                    (cons _%L21462%_ '()))))
                                  _%L21462%_))))
                         _%g2144821459%_))))
                (_%g2144622264%_
                 (let ((_%$e22268%_ (gx#stx-getq 'properties: _%L21080%_)))
                   (if _%$e22268%_
                       _%$e22268%_
                       (cons (gx#datum->syntax '#f '@list) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g2142021431%_))))
                                           (_%g2141822272%_
                                            (if (gx#stx-e _%metaclass21145%_)
                                                (gx#core-quote-syntax
                                                 _%metaclass21145%_)
                                                '#f))))
                                       _%g2139221403%_))))
                              (_%g2139022276%_
                               (gx#stx-getq 'final: _%L21080%_))))
                          _%g2136421375%_))))
                 (_%g2136222280%_ _%struct?21125%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2133621347%_))))
                                            (_%g2133422284%_
                                             (gx#stx-map
                                              gx#core-quote-syntax
                                              _%L21084%_))))
                                        _%g2130821319%_))))
                               (_%g2130622288%_
                                (gx#core-quote-syntax _%L21085%_))))
                           _%g2128021291%_))))
                  (_%g2127822292%_ (gx#stx-getq 'constructor: _%L21080%_))))
              _%g2125221263%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2125022296%_
                                              (let ((_%$e22300%_
                                                     (gx#stx-getq
                                                      'name:
                                                      _%L21080%_)))
                                                (if _%$e22300%_
                                                    _%$e22300%_
                                                    _%L21085%_)))))
                                         _%g2122421235%_))))
                                (_%g2122222304%_
                                 (let ((_%$e22308%_
                                        (gx#stx-getq 'id: _%L21080%_)))
                                   (if _%$e22308%_
                                       _%$e22308%_
                                       (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                        _%L21085%_))))))
                            _%slot2115921198%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2115421178%_
                                                    _%target2115121172%_
                                                    '()))
                                                 (_%g2114821165%_
                                                  _%g2114921169%_)))))
                                       (_%g2114821165%_ _%g2114921169%_)))))
                           (_%g2114722312%_
                            (gx#stx-map _%slot-name20993%_ _%slots21132%_)))
                         (_%g2099621023%_ _%g2099721027%_)))
                   _%tl2101721077%_
                   _%hd2101621074%_
                   _%hd2101321064%_
                   _%hd2101021054%_
                   _%hd2100721044%_)))
              (_%g2099621023%_ _%g2099721027%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2099621023%_
                                               _%g2099721027%_))))
                                      (_%g2099621023%_ _%g2099721027%_))))
                              (_%g2099621023%_ _%g2099721027%_))))
                      (_%g2099621023%_ _%g2099721027%_)))))
          (_%g2099522316%_ _%stx20987%_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_%stx22430%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22430%_ '#t)))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_%stx22433%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22433%_ '#f))))
