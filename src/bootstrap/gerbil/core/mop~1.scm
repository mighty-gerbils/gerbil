(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_%type-t22522%_)
      (let ((_%$e22525%_ (gx#module-context-ns (gx#current-expander-context))))
        (if _%$e22525%_
            ((lambda (_%ns22529%_)
               (gx#stx-identifier
                _%type-t22522%_
                _%ns22529%_
                '"#"
                _%type-t22522%_
                '"::t"))
             _%$e22525%_)
            (let ((_%mid22534%_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _%type-t22522%_
               _%mid22534%_
               '"#"
               _%type-t22522%_
               '"::t"))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_%type-t22519%_)
      (if (gx#module-context? (gx#current-expander-context))
          (|gerbil/core/mop~MOP-1[1]#module-type-id| _%type-t22519%_)
          (make-symbol '"__" (gensym (gx#stx-e _%type-t22519%_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_%stx21107%_ _%struct?21109%_)
      (letrec ((_%wrap21111%_
                (lambda (_%e-stx22516%_)
                  (gx#stx-wrap-source
                   _%e-stx22516%_
                   (gx#stx-source _%stx21107%_))))
               (_%slot-name21113%_
                (lambda (_%slot-spec22433%_)
                  (let* ((_%g2243622455%_
                          (lambda (_%g2243722451%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2243722451%_)))
                         (_%g2243522512%_
                          (lambda (_%g2243722459%_)
                            (if (gx#stx-pair? _%g2243722459%_)
                                (let ((_%e2244122462%_
                                       (gx#syntax-e _%g2243722459%_)))
                                  (let ((_%hd2244222466%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2244122462%_)))
                                        (_%tl2244322469%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2244122462%_))))
                                    (if (gx#stx-pair? _%tl2244322469%_)
                                        (let ((_%e2244422472%_
                                               (gx#syntax-e _%tl2244322469%_)))
                                          (let ((_%hd2244522476%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2244422472%_)))
                                                (_%tl2244622479%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2244422472%_))))
                                            (if (gx#stx-pair? _%tl2244622479%_)
                                                (let ((_%e2244722482%_
                                                       (gx#syntax-e
                                                        _%tl2244622479%_)))
                                                  (let ((_%hd2244822486%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2244722482%_)))
                                                        (_%tl2244922489%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2244722482%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2244922489%_)
                                                        ((lambda (_%g2243822492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2243922494%_
                          _%g2244022495%_)
                   _%g2244022495%_)
                 _%hd2244822486%_
                 _%hd2244522476%_
                 _%hd2244222466%_)
                (_%g2243622455%_ _%g2243722459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2243622455%_
                                                 _%g2243722459%_))))
                                        (_%g2243622455%_ _%g2243722459%_))))
                                (_%g2243622455%_ _%g2243722459%_)))))
                    (_%g2243522512%_ _%slot-spec22433%_))))
               (_%class-opt?21114%_
                (lambda (_%key22430%_)
                  (let ((__tmp27216 (gx#stx-e _%key22430%_)))
                    (declare (not safe))
                    (##memq __tmp27216
                            '(struct:
                              slots:
                              id:
                              name:
                              properties:
                              constructor:
                              final:
                              mixin:
                              metaclass:))))))
        (let* ((_%g2111621143%_
                (lambda (_%g2111721139%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2111721139%_)))
               (_%g2111522426%_
                (lambda (_%g2111721147%_)
                  (if (gx#stx-pair? _%g2111721147%_)
                      (let ((_%e2112321150%_ (gx#syntax-e _%g2111721147%_)))
                        (let ((_%hd2112421154%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2112321150%_)))
                              (_%tl2112521157%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2112321150%_))))
                          (if (gx#stx-pair? _%tl2112521157%_)
                              (let ((_%e2112621160%_
                                     (gx#syntax-e _%tl2112521157%_)))
                                (let ((_%hd2112721164%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2112621160%_)))
                                      (_%tl2112821167%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2112621160%_))))
                                  (if (gx#stx-pair? _%tl2112821167%_)
                                      (let ((_%e2112921170%_
                                             (gx#syntax-e _%tl2112821167%_)))
                                        (let ((_%hd2113021174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2112921170%_)))
                                              (_%tl2113121177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2112921170%_))))
                                          (if (gx#stx-pair? _%tl2113121177%_)
                                              (let ((_%e2113221180%_
                                                     (gx#syntax-e
                                                      _%tl2113121177%_)))
                                                (let ((_%hd2113321184%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2113221180%_)))
                                                      (_%tl2113421187%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2113221180%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl2113421187%_)
                                                      (let ((_%e2113521190%_
                                                             (gx#syntax-e
                                                              _%tl2113421187%_)))
                                                        (let ((_%hd2113621194%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2113521190%_)))
                      (_%tl2113721197%_
                       (let () (declare (not safe)) (##cdr _%e2113521190%_))))
                  ((lambda (_%g2111821200%_
                            _%g2111921202%_
                            _%g2112021203%_
                            _%g2112121204%_
                            _%g2112221205%_)
                     (if (and (gx#identifier? _%g2112221205%_)
                              (gx#identifier-list? _%g2112121204%_)
                              (or (gx#identifier? _%g2112021203%_)
                                  (gx#stx-false? _%g2112021203%_))
                              (gx#identifier? _%g2111921202%_)
                              (gx#stx-plist?
                               _%g2111821200%_
                               _%class-opt?21114%_))
                         (let* ((_%struct?21245%_
                                 (let ((_%$e21235%_ _%struct?21109%_))
                                   (if _%$e21235%_
                                       _%$e21235%_
                                       (let ((_%$e21239%_
                                              (gx#stx-getq
                                               'struct:
                                               _%g2111821200%_)))
                                         (if _%$e21239%_
                                             (gx#stx-e _%$e21239%_)
                                             '#f)))))
                                (_%slots21252%_
                                 (let ((_%$e21248%_
                                        (gx#stx-getq 'slots: _%g2111821200%_)))
                                   (if _%$e21248%_ _%$e21248%_ '())))
                                (_%mixin-slots21259%_
                                 (let ((_%$e21255%_
                                        (gx#stx-getq 'mixin: _%g2111821200%_)))
                                   (if _%$e21255%_ _%$e21255%_ '())))
                                (_%accessible-slots21262%_
                                 (append (gx#syntax->list _%slots21252%_)
                                         (gx#syntax->list
                                          _%mixin-slots21259%_)))
                                (_%metaclass21265%_
                                 (gx#stx-getq 'metaclass: _%g2111821200%_))
                                (_%g2126821285%_
                                 (lambda (_%g2126921281%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2126921281%_)))
                                (_%g2126722422%_
                                 (lambda (_%g2126921289%_)
                                   (if (gx#stx-pair/null? _%g2126921289%_)
                                       (let ((_g27217_
                                              (gx#syntax-split-splice
                                               _%g2126921289%_
                                               '0)))
                                         (begin
                                           (let ((_g27218_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27217_)
                                                        (##values-length
                                                         _g27217_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27218_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27218_)))
                                           (let ((_%target2127121292%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g27217_ 0)))
                                                 (_%tl2127321295%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g27217_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2127321295%_)
                                                 (letrec ((_%loop2127421298%_
                                                           (lambda (_%hd2127221302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%slot2127821305%_)
                     (if (gx#stx-pair? _%hd2127221302%_)
                         (let ((_%e2127521307%_
                                (gx#syntax-e _%hd2127221302%_)))
                           (let ((_%lp-hd2127621311%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2127521307%_)))
                                 (_%lp-tl2127721314%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2127521307%_))))
                             (_%loop2127421298%_
                              _%lp-tl2127721314%_
                              (cons _%lp-hd2127621311%_ _%slot2127821305%_))))
                         (let ((_%slot2127921317%_
                                (reverse _%slot2127821305%_)))
                           ((lambda (_%g2127021320%_)
                              (let* ((_%g2134121349%_
                                      (lambda (_%g2134221345%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2134221345%_)))
                                     (_%g2134022414%_
                                      (lambda (_%g2134221353%_)
                                        ((lambda (_%g2134321356%_)
                                           (let* ((_%g2136921377%_
                                                   (lambda (_%g2137021373%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2137021373%_)))
                                                  (_%g2136822406%_
                                                   (lambda (_%g2137021381%_)
                                                     ((lambda (_%g2137121384%_)
                                                        (let* ((_%g2139721405%_
                                                                (lambda (_%g2139821401%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2139821401%_)))
                       (_%g2139622402%_
                        (lambda (_%g2139821409%_)
                          ((lambda (_%g2139921412%_)
                             (let* ((_%g2142521433%_
                                     (lambda (_%g2142621429%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2142621429%_)))
                                    (_%g2142422398%_
                                     (lambda (_%g2142621437%_)
                                       ((lambda (_%g2142721440%_)
                                          (let* ((_%g2145321461%_
                                                  (lambda (_%g2145421457%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2145421457%_)))
                                                 (_%g2145222394%_
                                                  (lambda (_%g2145421465%_)
                                                    ((lambda (_%g2145521468%_)
                                                       (let* ((_%g2148121489%_
                                                               (lambda (_%g2148221485%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2148221485%_)))
                      (_%g2148022390%_
                       (lambda (_%g2148221493%_)
                         ((lambda (_%g2148321496%_)
                            (let* ((_%g2150921517%_
                                    (lambda (_%g2151021513%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2151021513%_)))
                                   (_%g2150822386%_
                                    (lambda (_%g2151021521%_)
                                      ((lambda (_%g2151121524%_)
                                         (let* ((_%g2153721545%_
                                                 (lambda (_%g2153821541%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2153821541%_)))
                                                (_%g2153622382%_
                                                 (lambda (_%g2153821549%_)
                                                   ((lambda (_%g2153921552%_)
                                                      (let* ((_%g2156521573%_
                                                              (lambda (_%g2156621569%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2156621569%_)))
                     (_%g2156422374%_
                      (lambda (_%g2156621577%_)
                        ((lambda (_%g2156721580%_)
                           (let* ((_%g2159321601%_
                                   (lambda (_%g2159421597%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2159421597%_)))
                                  (_%g2159222370%_
                                   (lambda (_%g2159421605%_)
                                     ((lambda (_%g2159521608%_)
                                        (let* ((_%g2162121629%_
                                                (lambda (_%g2162221625%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2162221625%_)))
                                               (_%g2162022366%_
                                                (lambda (_%g2162221633%_)
                                                  ((lambda (_%g2162321636%_)
                                                     (let* ((_%g2164921657%_
                                                             (lambda (_%g2165021653%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g2165021653%_)))
                                                            (_%g2164822331%_
                                                             (lambda (_%g2165021661%_)
                                                               ((lambda (_%g2165121664%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g2167721685%_
                                  (lambda (_%g2167821681%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2167821681%_)))
                                 (_%g2167622327%_
                                  (lambda (_%g2167821689%_)
                                    ((lambda (_%g2167921692%_)
                                       (let* ((_%g2170521713%_
                                               (lambda (_%g2170621709%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2170621709%_)))
                                              (_%g2170422315%_
                                               (lambda (_%g2170621717%_)
                                                 ((lambda (_%g2170721720%_)
                                                    (let* ((_%g2173321741%_
                                                            (lambda (_%g2173421737%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2173421737%_)))
                                                           (_%g2173222303%_
                                                            (lambda (_%g2173421745%_)
                                                              ((lambda (_%g2173521748%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%g2176121769%_
                                 (lambda (_%g2176221765%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2176221765%_)))
                                (_%g2176022299%_
                                 (lambda (_%g2176221773%_)
                                   ((lambda (_%g2176321776%_)
                                      (let* ((_%g2178921797%_
                                              (lambda (_%g2179021793%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2179021793%_)))
                                             (_%g2178822295%_
                                              (lambda (_%g2179021801%_)
                                                ((lambda (_%g2179121804%_)
                                                   (let* ((_%g2181721843%_
                                                           (lambda (_%g2181821839%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g2181821839%_)))
                                                          (_%g2181622207%_
                                                           (lambda (_%g2181821847%_)
                                                             (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2181821847%_)
                         (let ((_g27219_
                                (gx#syntax-split-splice _%g2181821847%_ '0)))
                           (begin
                             (let ((_g27220_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g27219_)
                                          (##values-length _g27219_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g27220_ 2)))
                                   (error "Context expects 2 values"
                                          _g27220_)))
                             (let ((_%target2182121850%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g27219_ 0)))
                                   (_%tl2182321853%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g27219_ 1))))
                               (if (gx#stx-null? _%tl2182321853%_)
                                   (letrec ((_%loop2182421856%_
                                             (lambda (_%hd2182221860%_
                                                      _%def-setf2182821863%_
                                                      _%def-getf2182921864%_)
                                               (if (gx#stx-pair?
                                                    _%hd2182221860%_)
                                                   (let ((_%e2182521866%_
                                                          (gx#syntax-e
                                                           _%hd2182221860%_)))
                                                     (let ((_%lp-hd2182621870%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e2182521866%_)))
                                                           (_%lp-tl2182721873%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e2182521866%_))))
                                                       (if (gx#stx-pair?
                                                            _%lp-hd2182621870%_)
                                                           (let ((_%e2183221876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%lp-hd2182621870%_)))
                     (let ((_%hd2183321880%_
                            (let ()
                              (declare (not safe))
                              (##car _%e2183221876%_)))
                           (_%tl2183421883%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e2183221876%_))))
                       (if (gx#stx-pair? _%tl2183421883%_)
                           (let ((_%e2183521886%_
                                  (gx#syntax-e _%tl2183421883%_)))
                             (let ((_%hd2183621890%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e2183521886%_)))
                                   (_%tl2183721893%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e2183521886%_))))
                               (if (gx#stx-null? _%tl2183721893%_)
                                   (_%loop2182421856%_
                                    _%lp-tl2182721873%_
                                    (cons _%hd2183621890%_
                                          _%def-setf2182821863%_)
                                    (cons _%hd2183321880%_
                                          _%def-getf2182921864%_))
                                   (_%g2181721843%_ _%g2181821847%_))))
                           (_%g2181721843%_ _%g2181821847%_))))
                   (_%g2181721843%_ _%g2181821847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%def-setf2183021896%_
                                                          (reverse _%def-setf2182821863%_))
                                                         (_%def-getf2183121898%_
                                                          (reverse _%def-getf2182921864%_)))
                                                     ((lambda (_%g2181921900%_
                                                               _%g2182021902%_)
                                                        (let* ((_%g2191921945%_
                                                                (lambda (_%g2192021941%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2192021941%_)))
                       (_%g2191822055%_
                        (lambda (_%g2192021949%_)
                          (if (gx#stx-pair/null? _%g2192021949%_)
                              (let ((_g27221_
                                     (gx#syntax-split-splice
                                      _%g2192021949%_
                                      '0)))
                                (begin
                                  (let ((_g27222_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g27221_)
                                               (##values-length _g27221_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g27222_ 2)))
                                        (error "Context expects 2 values"
                                               _g27222_)))
                                  (let ((_%target2192321952%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g27221_ 0)))
                                        (_%tl2192521955%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g27221_ 1))))
                                    (if (gx#stx-null? _%tl2192521955%_)
                                        (letrec ((_%loop2192621958%_
                                                  (lambda (_%hd2192421962%_
                                                           _%def-usetf2193021965%_
                                                           _%def-ugetf2193121966%_)
                                                    (if (gx#stx-pair?
                                                         _%hd2192421962%_)
                                                        (let ((_%e2192721968%_
                                                               (gx#syntax-e
                                                                _%hd2192421962%_)))
                                                          (let ((_%lp-hd2192821972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2192721968%_)))
                        (_%lp-tl2192921975%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2192721968%_))))
                    (if (gx#stx-pair? _%lp-hd2192821972%_)
                        (let ((_%e2193421978%_
                               (gx#syntax-e _%lp-hd2192821972%_)))
                          (let ((_%hd2193521982%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2193421978%_)))
                                (_%tl2193621985%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2193421978%_))))
                            (if (gx#stx-pair? _%tl2193621985%_)
                                (let ((_%e2193721988%_
                                       (gx#syntax-e _%tl2193621985%_)))
                                  (let ((_%hd2193821992%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2193721988%_)))
                                        (_%tl2193921995%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2193721988%_))))
                                    (if (gx#stx-null? _%tl2193921995%_)
                                        (_%loop2192621958%_
                                         _%lp-tl2192921975%_
                                         (cons _%hd2193821992%_
                                               _%def-usetf2193021965%_)
                                         (cons _%hd2193521982%_
                                               _%def-ugetf2193121966%_))
                                        (_%g2191921945%_ _%g2192021949%_))))
                                (_%g2191921945%_ _%g2192021949%_))))
                        (_%g2191921945%_ _%g2192021949%_))))
                (let ((_%def-usetf2193221998%_
                       (reverse _%def-usetf2193021965%_))
                      (_%def-ugetf2193322000%_
                       (reverse _%def-ugetf2193121966%_)))
                  ((lambda (_%g2192122002%_ _%g2192222004%_)
                     (_%wrap21111%_
                      (cons (gx#datum->syntax '#f 'begin)
                            (cons _%g2173521748%_
                                  (cons _%g2179121804%_
                                        (cons _%g2176321776%_
                                              (foldr (lambda (_%g2202222031%_
                                                              _%g2202322034%_)
                                                       (cons _%g2202222031%_
                                                             _%g2202322034%_))
                                                     (foldr (lambda (_%g2202422037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g2202522040%_)
                      (cons _%g2202422037%_ _%g2202522040%_))
                    (foldr (lambda (_%g2202622043%_ _%g2202722046%_)
                             (cons _%g2202622043%_ _%g2202722046%_))
                           (foldr (lambda (_%g2202822049%_ _%g2202922052%_)
                                    (cons _%g2202822049%_ _%g2202922052%_))
                                  '()
                                  _%g2192122002%_)
                           _%g2192222004%_)
                    _%g2181921900%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2182021902%_)))))))
                   _%def-usetf2193221998%_
                   _%def-ugetf2193322000%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop2192621958%_
                                           _%target2192321952%_
                                           '()
                                           '()))
                                        (_%g2191921945%_ _%g2192021949%_)))))
                              (_%g2191921945%_ _%g2192021949%_)))))
                  (_%g2191822055%_
                   (gx#stx-map
                    (lambda (_%ref22059%_)
                      (let* ((_%g2206222081%_
                              (lambda (_%g2206322077%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2206322077%_)))
                             (_%g2206122203%_
                              (lambda (_%g2206322085%_)
                                (if (gx#stx-pair? _%g2206322085%_)
                                    (let ((_%e2206722088%_
                                           (gx#syntax-e _%g2206322085%_)))
                                      (let ((_%hd2206822092%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2206722088%_)))
                                            (_%tl2206922095%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2206722088%_))))
                                        (if (gx#stx-pair? _%tl2206922095%_)
                                            (let ((_%e2207022098%_
                                                   (gx#syntax-e
                                                    _%tl2206922095%_)))
                                              (let ((_%hd2207122102%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2207022098%_)))
                                                    (_%tl2207222105%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2207022098%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2207222105%_)
                                                    (let ((_%e2207322108%_
                                                           (gx#syntax-e
                                                            _%tl2207222105%_)))
                                                      (let ((_%hd2207422112%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2207322108%_)))
                    (_%tl2207522115%_
                     (let () (declare (not safe)) (##cdr _%e2207322108%_))))
                (if (gx#stx-null? _%tl2207522115%_)
                    ((lambda (_%g2206422118%_ _%g2206522120%_ _%g2206622121%_)
                       (let* ((_%g2213922154%_
                               (lambda (_%g2214022150%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2214022150%_)))
                              (_%g2213822199%_
                               (lambda (_%g2214022158%_)
                                 (if (gx#stx-pair? _%g2214022158%_)
                                     (let ((_%e2214322161%_
                                            (gx#syntax-e _%g2214022158%_)))
                                       (let ((_%hd2214422165%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2214322161%_)))
                                             (_%tl2214522168%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2214322161%_))))
                                         (if (gx#stx-pair? _%tl2214522168%_)
                                             (let ((_%e2214622171%_
                                                    (gx#syntax-e
                                                     _%tl2214522168%_)))
                                               (let ((_%hd2214722175%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2214622171%_)))
                                                     (_%tl2214822178%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2214622171%_))))
                                                 (if (gx#stx-null?
                                                      _%tl2214822178%_)
                                                     ((lambda (_%g2214122181%_
                                                               _%g2214222183%_)
                                                        (cons (_%wrap21111%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'def)
                             (cons _%g2214222183%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@mop.accessor)
                                                           (cons _%g2142721440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g2206622121%_ (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-class-slot-unchecked-accessor)
                         (cons _%g2112221205%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2206622121%_ '()))
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (cons (_%wrap21111%_
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%g2214122181%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@mop.mutator)
                         (cons _%g2142721440%_
                               (cons _%g2206622121%_ (cons '#f '()))))
                   (cons (cons (gx#datum->syntax
                                '#f
                                'make-class-slot-unchecked-mutator)
                               (cons _%g2112221205%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2206622121%_ '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            '())))
              _%hd2214722175%_
              _%hd2214422165%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2213922154%_
                                                      _%g2214022158%_))))
                                             (_%g2213922154%_
                                              _%g2214022158%_))))
                                     (_%g2213922154%_ _%g2214022158%_)))))
                         (_%g2213822199%_
                          (list (gx#stx-identifier
                                 _%g2206522120%_
                                 '"&"
                                 _%g2206522120%_)
                                (gx#stx-identifier
                                 _%g2206422118%_
                                 '"&"
                                 _%g2206422118%_)))))
                     _%hd2207422112%_
                     _%hd2207122102%_
                     _%hd2206822092%_)
                    (_%g2206222081%_ _%g2206322085%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2206222081%_
                                                     _%g2206322085%_))))
                                            (_%g2206222081%_
                                             _%g2206322085%_))))
                                    (_%g2206222081%_ _%g2206322085%_)))))
                        (_%g2206122203%_ _%ref22059%_)))
                    _%accessible-slots21262%_))))
              _%def-setf2183021896%_
              _%def-getf2183121898%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop2182421856%_
                                      _%target2182121850%_
                                      '()
                                      '()))
                                   (_%g2181721843%_ _%g2181821847%_)))))
                         (_%g2181721843%_ _%g2181821847%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2181622207%_
                                                      (gx#stx-map
                                                       (lambda (_%ref22211%_)
                                                         (let* ((_%g2221422233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2221522229%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2221522229%_)))
                        (_%g2221322291%_
                         (lambda (_%g2221522237%_)
                           (if (gx#stx-pair? _%g2221522237%_)
                               (let ((_%e2221922240%_
                                      (gx#syntax-e _%g2221522237%_)))
                                 (let ((_%hd2222022244%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2221922240%_)))
                                       (_%tl2222122247%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2221922240%_))))
                                   (if (gx#stx-pair? _%tl2222122247%_)
                                       (let ((_%e2222222250%_
                                              (gx#syntax-e _%tl2222122247%_)))
                                         (let ((_%hd2222322254%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e2222222250%_)))
                                               (_%tl2222422257%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e2222222250%_))))
                                           (if (gx#stx-pair? _%tl2222422257%_)
                                               (let ((_%e2222522260%_
                                                      (gx#syntax-e
                                                       _%tl2222422257%_)))
                                                 (let ((_%hd2222622264%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2222522260%_)))
                                                       (_%tl2222722267%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2222522260%_))))
                                                   (if (gx#stx-null?
                                                        _%tl2222722267%_)
                                                       ((lambda (_%g2221622270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2221722272%_
                         _%g2221822273%_)
                  (cons (_%wrap21111%_
                         (cons (gx#datum->syntax '#f 'def)
                               (cons _%g2221722272%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'begin-annotation)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@mop.accessor)
                                                             (cons _%g2142721440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g2221822273%_ (cons '#t '()))))
               (cons (cons (gx#datum->syntax '#f 'make-class-slot-accessor)
                           (cons _%g2112221205%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2221822273%_ '()))
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                        (cons (_%wrap21111%_
                               (cons (gx#datum->syntax '#f 'def)
                                     (cons _%g2221622270%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@mop.mutator)
                           (cons _%g2142721440%_
                                 (cons _%g2221822273%_ (cons '#t '()))))
                     (cons (cons (gx#datum->syntax
                                  '#f
                                  'make-class-slot-mutator)
                                 (cons _%g2112221205%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g2221822273%_ '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                              '())))
                _%hd2222622264%_
                _%hd2222322254%_
                _%hd2222022244%_)
               (_%g2221422233%_ _%g2221522237%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2221422233%_
                                                _%g2221522237%_))))
                                       (_%g2221422233%_ _%g2221522237%_))))
                               (_%g2221422233%_ _%g2221522237%_)))))
                   (_%g2221322291%_ _%ref22211%_)))
               _%accessible-slots21262%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g2179021801%_))))
                                        (_%g2178822295%_
                                         (_%wrap21111%_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _%g2111921202%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@mop.predicate)
                                      (cons _%g2142721440%_ '()))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'make-class-predicate)
                                            (cons _%g2112221205%_ '()))
                                      '())))
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g2176221773%_))))
                           (_%g2176022299%_
                            (if (gx#stx-false? _%g2112021203%_)
                                (cons (gx#datum->syntax '#f 'begin) '())
                                (_%wrap21111%_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _%g2112021203%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin-annotation)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '@mop.constructor)
                             (cons _%g2142721440%_ '()))
                       (cons (cons (gx#datum->syntax '#f 'lambda)
                                   (cons (gx#datum->syntax '#f '$args)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'apply)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'make-instance)
                                                           (cons _%g2112221205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))))
                       _%g2173421745%_))))
              (_%g2173222303%_
               (_%wrap21111%_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _%g2112221205%_
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.class)
                                                    (cons _%g2134321356%_
                                                          (cons _%g2145521468%_
                                                                (cons (foldr (lambda (_%g2230622309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              _%g2230722312%_)
                                       (cons _%g2230622309%_ _%g2230722312%_))
                                     '()
                                     _%g2127021320%_)
                              (cons _%g2139921412%_
                                    (cons _%g2148321496%_
                                          (cons _%g2151121524%_
                                                (cons _%g2153921552%_
                                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%g2170721720%_ '())))
                                  '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2170621717%_))))
                                         (_%g2170422315%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-class-type)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%g2134321356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote)
                          (cons _%g2137121384%_ '()))
                    (cons _%g2167921692%_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons (foldr (lambda (_%g2231822321%_
                                                            _%g2231922324%_)
                                                     (cons _%g2231822321%_
                                                           _%g2231922324%_))
                                                   '()
                                                   _%g2127021320%_)
                                            '()))
                                (cons _%g2165121664%_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2139921412%_ '()))
                                            '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g2167821689%_))))
                            (_%g2167622327%_
                             (cons (gx#datum->syntax '#f 'list)
                                   _%g2112121204%_))))
                        _%g2165021661%_))))
               (_%g2164822331%_
                (if (gx#stx-e _%metaclass21265%_)
                    (let* ((_%g2233522343%_
                            (lambda (_%g2233622339%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2233622339%_)))
                           (_%g2233422362%_
                            (lambda (_%g2233622347%_)
                              ((lambda (_%g2233722350%_)
                                 (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons 'metaclass:
                                                         (cons '::
                                                               (cons _%g2233722350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '::
                                                   (cons _%g2162321636%_
                                                         '())))))
                               _%g2233622347%_))))
                      (_%g2233422362%_ _%metaclass21265%_))
                    _%g2162321636%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g2162221633%_))))
                                          (_%g2162022366%_
                                           (if _%struct?21245%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         (cons 'struct: '#t))
                   (cons ':: (cons _%g2159521608%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2159521608%_))))
                                      _%g2159421605%_))))
                             (_%g2159222370%_
                              (if (gx#stx-e _%g2151121524%_)
                                  (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons 'final: '#t))
                                              (cons '::
                                                    (cons _%g2156721580%_
                                                          '()))))
                                  _%g2156721580%_))))
                         _%g2156621577%_))))
                (_%g2156422374%_
                 (let ((_%$e22378%_
                        (gx#stx-getq 'properties: _%g2111821200%_)))
                   (if _%$e22378%_
                       _%$e22378%_
                       (cons (gx#datum->syntax '#f '@list) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g2153821549%_))))
                                           (_%g2153622382%_
                                            (if (gx#stx-e _%metaclass21265%_)
                                                (gx#core-quote-syntax
                                                 _%metaclass21265%_)
                                                '#f))))
                                       _%g2151021521%_))))
                              (_%g2150822386%_
                               (gx#stx-getq 'final: _%g2111821200%_))))
                          _%g2148221493%_))))
                 (_%g2148022390%_ _%struct?21245%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2145421465%_))))
                                            (_%g2145222394%_
                                             (gx#stx-map
                                              gx#core-quote-syntax
                                              _%g2112121204%_))))
                                        _%g2142621437%_))))
                               (_%g2142422398%_
                                (gx#core-quote-syntax _%g2112221205%_))))
                           _%g2139821409%_))))
                  (_%g2139622402%_
                   (gx#stx-getq 'constructor: _%g2111821200%_))))
              _%g2137021381%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2136822406%_
                                              (let ((_%$e22410%_
                                                     (gx#stx-getq
                                                      'name:
                                                      _%g2111821200%_)))
                                                (if _%$e22410%_
                                                    _%$e22410%_
                                                    _%g2112221205%_)))))
                                         _%g2134221353%_))))
                                (_%g2134022414%_
                                 (let ((_%$e22418%_
                                        (gx#stx-getq 'id: _%g2111821200%_)))
                                   (if _%$e22418%_
                                       _%$e22418%_
                                       (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                        _%g2112221205%_))))))
                            _%slot2127921317%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2127421298%_
                                                    _%target2127121292%_
                                                    '()))
                                                 (_%g2126821285%_
                                                  _%g2126921289%_)))))
                                       (_%g2126821285%_ _%g2126921289%_)))))
                           (_%g2126722422%_
                            (gx#stx-map _%slot-name21113%_ _%slots21252%_)))
                         (_%g2111621143%_ _%g2111721147%_)))
                   _%tl2113721197%_
                   _%hd2113621194%_
                   _%hd2113321184%_
                   _%hd2113021174%_
                   _%hd2112721164%_)))
              (_%g2111621143%_ _%g2111721147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2111621143%_
                                               _%g2111721147%_))))
                                      (_%g2111621143%_ _%g2111721147%_))))
                              (_%g2111621143%_ _%g2111721147%_))))
                      (_%g2111621143%_ _%g2111721147%_)))))
          (_%g2111522426%_ _%stx21107%_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_%stx22540%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22540%_ '#t)))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_%stx22543%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22543%_ '#f))))
