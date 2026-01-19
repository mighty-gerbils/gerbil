(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_%type-t22405%_)
      (let ((_%$e22408%_ (gx#module-context-ns (gx#current-expander-context))))
        (if _%$e22408%_
            ((lambda (_%ns22412%_)
               (gx#stx-identifier
                _%type-t22405%_
                _%ns22412%_
                '"#"
                _%type-t22405%_
                '"::t"))
             _%$e22408%_)
            (let ((_%mid22417%_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _%type-t22405%_
               _%mid22417%_
               '"#"
               _%type-t22405%_
               '"::t"))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_%type-t22402%_)
      (if (gx#module-context? (gx#current-expander-context))
          (|gerbil/core/mop~MOP-1[1]#module-type-id| _%type-t22402%_)
          (make-symbol '"__" (gensym (gx#stx-e _%type-t22402%_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_%stx20980%_ _%struct?20982%_)
      (letrec ((_%wrap20984%_
                (lambda (_%e-stx22399%_)
                  (gx#stx-wrap-source
                   _%e-stx22399%_
                   (gx#stx-source _%stx20980%_))))
               (_%slot-name20986%_
                (lambda (_%slot-spec22316%_)
                  (let* ((_%g2231922338%_
                          (lambda (_%g2232022334%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2232022334%_)))
                         (_%g2231822395%_
                          (lambda (_%g2232022342%_)
                            (if (gx#stx-pair? _%g2232022342%_)
                                (let ((_%e2232422345%_
                                       (gx#syntax-e _%g2232022342%_)))
                                  (let ((_%hd2232522349%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2232422345%_)))
                                        (_%tl2232622352%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2232422345%_))))
                                    (if (gx#stx-pair? _%tl2232622352%_)
                                        (let ((_%e2232722355%_
                                               (gx#syntax-e _%tl2232622352%_)))
                                          (let ((_%hd2232822359%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2232722355%_)))
                                                (_%tl2232922362%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2232722355%_))))
                                            (if (gx#stx-pair? _%tl2232922362%_)
                                                (let ((_%e2233022365%_
                                                       (gx#syntax-e
                                                        _%tl2232922362%_)))
                                                  (let ((_%hd2233122369%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2233022365%_)))
                                                        (_%tl2233222372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2233022365%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2233222372%_)
                                                        ((lambda (_%L22375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L22377%_
                          _%L22378%_)
                   _%L22378%_)
                 _%hd2233122369%_
                 _%hd2232822359%_
                 _%hd2232522349%_)
                (_%g2231922338%_ _%g2232022342%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2231922338%_
                                                 _%g2232022342%_))))
                                        (_%g2231922338%_ _%g2232022342%_))))
                                (_%g2231922338%_ _%g2232022342%_)))))
                    (_%g2231822395%_ _%slot-spec22316%_))))
               (_%class-opt?20987%_
                (lambda (_%key22313%_)
                  (let ((__tmp27136 (gx#stx-e _%key22313%_)))
                    (declare (not safe))
                    (##memq __tmp27136
                            '(struct:
                              slots:
                              id:
                              name:
                              properties:
                              constructor:
                              final:
                              mixin:
                              metaclass:))))))
        (let* ((_%g2098921016%_
                (lambda (_%g2099021012%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2099021012%_)))
               (_%g2098822309%_
                (lambda (_%g2099021020%_)
                  (if (gx#stx-pair? _%g2099021020%_)
                      (let ((_%e2099621023%_ (gx#syntax-e _%g2099021020%_)))
                        (let ((_%hd2099721027%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2099621023%_)))
                              (_%tl2099821030%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2099621023%_))))
                          (if (gx#stx-pair? _%tl2099821030%_)
                              (let ((_%e2099921033%_
                                     (gx#syntax-e _%tl2099821030%_)))
                                (let ((_%hd2100021037%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2099921033%_)))
                                      (_%tl2100121040%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2099921033%_))))
                                  (if (gx#stx-pair? _%tl2100121040%_)
                                      (let ((_%e2100221043%_
                                             (gx#syntax-e _%tl2100121040%_)))
                                        (let ((_%hd2100321047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2100221043%_)))
                                              (_%tl2100421050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2100221043%_))))
                                          (if (gx#stx-pair? _%tl2100421050%_)
                                              (let ((_%e2100521053%_
                                                     (gx#syntax-e
                                                      _%tl2100421050%_)))
                                                (let ((_%hd2100621057%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2100521053%_)))
                                                      (_%tl2100721060%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2100521053%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl2100721060%_)
                                                      (let ((_%e2100821063%_
                                                             (gx#syntax-e
                                                              _%tl2100721060%_)))
                                                        (let ((_%hd2100921067%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2100821063%_)))
                      (_%tl2101021070%_
                       (let () (declare (not safe)) (##cdr _%e2100821063%_))))
                  ((lambda (_%L21073%_
                            _%L21075%_
                            _%L21076%_
                            _%L21077%_
                            _%L21078%_)
                     (if (and (gx#identifier? _%L21078%_)
                              (gx#identifier-list? _%L21077%_)
                              (or (gx#identifier? _%L21076%_)
                                  (gx#stx-false? _%L21076%_))
                              (gx#identifier? _%L21075%_)
                              (gx#stx-plist? _%L21073%_ _%class-opt?20987%_))
                         (let* ((_%struct?21118%_
                                 (let ((_%$e21108%_ _%struct?20982%_))
                                   (if _%$e21108%_
                                       _%$e21108%_
                                       (let ((_%$e21112%_
                                              (gx#stx-getq
                                               'struct:
                                               _%L21073%_)))
                                         (if _%$e21112%_
                                             (gx#stx-e _%$e21112%_)
                                             '#f)))))
                                (_%slots21125%_
                                 (let ((_%$e21121%_
                                        (gx#stx-getq 'slots: _%L21073%_)))
                                   (if _%$e21121%_ _%$e21121%_ '())))
                                (_%mixin-slots21132%_
                                 (let ((_%$e21128%_
                                        (gx#stx-getq 'mixin: _%L21073%_)))
                                   (if _%$e21128%_ _%$e21128%_ '())))
                                (_%accessible-slots21135%_
                                 (append (gx#syntax->list _%slots21125%_)
                                         (gx#syntax->list
                                          _%mixin-slots21132%_)))
                                (_%metaclass21138%_
                                 (gx#stx-getq 'metaclass: _%L21073%_))
                                (_%g2114121158%_
                                 (lambda (_%g2114221154%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2114221154%_)))
                                (_%g2114022305%_
                                 (lambda (_%g2114221162%_)
                                   (if (gx#stx-pair/null? _%g2114221162%_)
                                       (let ((_g27137_
                                              (gx#syntax-split-splice
                                               _%g2114221162%_
                                               '0)))
                                         (begin
                                           (let ((_g27138_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27137_)
                                                        (##values-length
                                                         _g27137_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27138_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27138_)))
                                           (let ((_%target2114421165%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g27137_ 0)))
                                                 (_%tl2114621168%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g27137_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2114621168%_)
                                                 (letrec ((_%loop2114721171%_
                                                           (lambda (_%hd2114521175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%slot2115121178%_)
                     (if (gx#stx-pair? _%hd2114521175%_)
                         (let ((_%e2114821181%_
                                (gx#syntax-e _%hd2114521175%_)))
                           (let ((_%lp-hd2114921185%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2114821181%_)))
                                 (_%lp-tl2115021188%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2114821181%_))))
                             (_%loop2114721171%_
                              _%lp-tl2115021188%_
                              (cons _%lp-hd2114921185%_ _%slot2115121178%_))))
                         (let ((_%slot2115221191%_
                                (reverse _%slot2115121178%_)))
                           ((lambda (_%L21195%_)
                              (let* ((_%g2121621224%_
                                      (lambda (_%g2121721220%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2121721220%_)))
                                     (_%g2121522297%_
                                      (lambda (_%g2121721228%_)
                                        ((lambda (_%L21231%_)
                                           (let* ((_%g2124421252%_
                                                   (lambda (_%g2124521248%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2124521248%_)))
                                                  (_%g2124322289%_
                                                   (lambda (_%g2124521256%_)
                                                     ((lambda (_%L21259%_)
                                                        (let* ((_%g2127221280%_
                                                                (lambda (_%g2127321276%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2127321276%_)))
                       (_%g2127122285%_
                        (lambda (_%g2127321284%_)
                          ((lambda (_%L21287%_)
                             (let* ((_%g2130021308%_
                                     (lambda (_%g2130121304%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2130121304%_)))
                                    (_%g2129922281%_
                                     (lambda (_%g2130121312%_)
                                       ((lambda (_%L21315%_)
                                          (let* ((_%g2132821336%_
                                                  (lambda (_%g2132921332%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2132921332%_)))
                                                 (_%g2132722277%_
                                                  (lambda (_%g2132921340%_)
                                                    ((lambda (_%L21343%_)
                                                       (let* ((_%g2135621364%_
                                                               (lambda (_%g2135721360%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2135721360%_)))
                      (_%g2135522273%_
                       (lambda (_%g2135721368%_)
                         ((lambda (_%L21371%_)
                            (let* ((_%g2138421392%_
                                    (lambda (_%g2138521388%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2138521388%_)))
                                   (_%g2138322269%_
                                    (lambda (_%g2138521396%_)
                                      ((lambda (_%L21399%_)
                                         (let* ((_%g2141221420%_
                                                 (lambda (_%g2141321416%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2141321416%_)))
                                                (_%g2141122265%_
                                                 (lambda (_%g2141321424%_)
                                                   ((lambda (_%L21427%_)
                                                      (let* ((_%g2144021448%_
                                                              (lambda (_%g2144121444%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2144121444%_)))
                     (_%g2143922257%_
                      (lambda (_%g2144121452%_)
                        ((lambda (_%L21455%_)
                           (let* ((_%g2146821476%_
                                   (lambda (_%g2146921472%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2146921472%_)))
                                  (_%g2146722253%_
                                   (lambda (_%g2146921480%_)
                                     ((lambda (_%L21483%_)
                                        (let* ((_%g2149621504%_
                                                (lambda (_%g2149721500%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2149721500%_)))
                                               (_%g2149522249%_
                                                (lambda (_%g2149721508%_)
                                                  ((lambda (_%L21511%_)
                                                     (let* ((_%g2152421532%_
                                                             (lambda (_%g2152521528%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g2152521528%_)))
                                                            (_%g2152322214%_
                                                             (lambda (_%g2152521536%_)
                                                               ((lambda (_%L21539%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g2155221560%_
                                  (lambda (_%g2155321556%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2155321556%_)))
                                 (_%g2155122210%_
                                  (lambda (_%g2155321564%_)
                                    ((lambda (_%L21567%_)
                                       (let* ((_%g2158021588%_
                                               (lambda (_%g2158121584%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2158121584%_)))
                                              (_%g2157922198%_
                                               (lambda (_%g2158121592%_)
                                                 ((lambda (_%L21595%_)
                                                    (let* ((_%g2160821616%_
                                                            (lambda (_%g2160921612%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2160921612%_)))
                                                           (_%g2160722186%_
                                                            (lambda (_%g2160921620%_)
                                                              ((lambda (_%L21623%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%g2163621644%_
                                 (lambda (_%g2163721640%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2163721640%_)))
                                (_%g2163522182%_
                                 (lambda (_%g2163721648%_)
                                   ((lambda (_%L21651%_)
                                      (let* ((_%g2166421672%_
                                              (lambda (_%g2166521668%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2166521668%_)))
                                             (_%g2166322178%_
                                              (lambda (_%g2166521676%_)
                                                ((lambda (_%L21679%_)
                                                   (let* ((_%g2169221718%_
                                                           (lambda (_%g2169321714%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g2169321714%_)))
                                                          (_%g2169122090%_
                                                           (lambda (_%g2169321722%_)
                                                             (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2169321722%_)
                         (let ((_g27139_
                                (gx#syntax-split-splice _%g2169321722%_ '0)))
                           (begin
                             (let ((_g27140_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g27139_)
                                          (##values-length _g27139_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g27140_ 2)))
                                   (error "Context expects 2 values"
                                          _g27140_)))
                             (let ((_%target2169621725%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g27139_ 0)))
                                   (_%tl2169821728%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g27139_ 1))))
                               (if (gx#stx-null? _%tl2169821728%_)
                                   (letrec ((_%loop2169921731%_
                                             (lambda (_%hd2169721735%_
                                                      _%def-setf2170321738%_
                                                      _%def-getf2170421740%_)
                                               (if (gx#stx-pair?
                                                    _%hd2169721735%_)
                                                   (let ((_%e2170021743%_
                                                          (gx#syntax-e
                                                           _%hd2169721735%_)))
                                                     (let ((_%lp-hd2170121747%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e2170021743%_)))
                                                           (_%lp-tl2170221750%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e2170021743%_))))
                                                       (if (gx#stx-pair?
                                                            _%lp-hd2170121747%_)
                                                           (let ((_%e2170721753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%lp-hd2170121747%_)))
                     (let ((_%hd2170821757%_
                            (let ()
                              (declare (not safe))
                              (##car _%e2170721753%_)))
                           (_%tl2170921760%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e2170721753%_))))
                       (if (gx#stx-pair? _%tl2170921760%_)
                           (let ((_%e2171021763%_
                                  (gx#syntax-e _%tl2170921760%_)))
                             (let ((_%hd2171121767%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e2171021763%_)))
                                   (_%tl2171221770%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e2171021763%_))))
                               (if (gx#stx-null? _%tl2171221770%_)
                                   (_%loop2169921731%_
                                    _%lp-tl2170221750%_
                                    (cons _%hd2171121767%_
                                          _%def-setf2170321738%_)
                                    (cons _%hd2170821757%_
                                          _%def-getf2170421740%_))
                                   (_%g2169221718%_ _%g2169321722%_))))
                           (_%g2169221718%_ _%g2169321722%_))))
                   (_%g2169221718%_ _%g2169321722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%def-setf2170521773%_
                                                          (reverse _%def-setf2170321738%_))
                                                         (_%def-getf2170621776%_
                                                          (reverse _%def-getf2170421740%_)))
                                                     ((lambda (_%L21779%_
                                                               _%L21781%_)
                                                        (let* ((_%g2179821824%_
                                                                (lambda (_%g2179921820%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2179921820%_)))
                       (_%g2179721938%_
                        (lambda (_%g2179921828%_)
                          (if (gx#stx-pair/null? _%g2179921828%_)
                              (let ((_g27141_
                                     (gx#syntax-split-splice
                                      _%g2179921828%_
                                      '0)))
                                (begin
                                  (let ((_g27142_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g27141_)
                                               (##values-length _g27141_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g27142_ 2)))
                                        (error "Context expects 2 values"
                                               _g27142_)))
                                  (let ((_%target2180221831%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g27141_ 0)))
                                        (_%tl2180421834%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g27141_ 1))))
                                    (if (gx#stx-null? _%tl2180421834%_)
                                        (letrec ((_%loop2180521837%_
                                                  (lambda (_%hd2180321841%_
                                                           _%def-usetf2180921844%_
                                                           _%def-ugetf2181021846%_)
                                                    (if (gx#stx-pair?
                                                         _%hd2180321841%_)
                                                        (let ((_%e2180621849%_
                                                               (gx#syntax-e
                                                                _%hd2180321841%_)))
                                                          (let ((_%lp-hd2180721853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2180621849%_)))
                        (_%lp-tl2180821856%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2180621849%_))))
                    (if (gx#stx-pair? _%lp-hd2180721853%_)
                        (let ((_%e2181321859%_
                               (gx#syntax-e _%lp-hd2180721853%_)))
                          (let ((_%hd2181421863%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2181321859%_)))
                                (_%tl2181521866%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2181321859%_))))
                            (if (gx#stx-pair? _%tl2181521866%_)
                                (let ((_%e2181621869%_
                                       (gx#syntax-e _%tl2181521866%_)))
                                  (let ((_%hd2181721873%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2181621869%_)))
                                        (_%tl2181821876%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2181621869%_))))
                                    (if (gx#stx-null? _%tl2181821876%_)
                                        (_%loop2180521837%_
                                         _%lp-tl2180821856%_
                                         (cons _%hd2181721873%_
                                               _%def-usetf2180921844%_)
                                         (cons _%hd2181421863%_
                                               _%def-ugetf2181021846%_))
                                        (_%g2179821824%_ _%g2179921828%_))))
                                (_%g2179821824%_ _%g2179921828%_))))
                        (_%g2179821824%_ _%g2179921828%_))))
                (let ((_%def-usetf2181121879%_
                       (reverse _%def-usetf2180921844%_))
                      (_%def-ugetf2181221882%_
                       (reverse _%def-ugetf2181021846%_)))
                  ((lambda (_%L21885%_ _%L21887%_)
                     (_%wrap20984%_
                      (cons (gx#datum->syntax '#f 'begin)
                            (cons _%L21623%_
                                  (cons _%L21679%_
                                        (cons _%L21651%_
                                              (foldr (lambda (_%g2190521914%_
                                                              _%g2190621917%_)
                                                       (cons _%g2190521914%_
                                                             _%g2190621917%_))
                                                     (foldr (lambda (_%g2190721920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g2190821923%_)
                      (cons _%g2190721920%_ _%g2190821923%_))
                    (foldr (lambda (_%g2190921926%_ _%g2191021929%_)
                             (cons _%g2190921926%_ _%g2191021929%_))
                           (foldr (lambda (_%g2191121932%_ _%g2191221935%_)
                                    (cons _%g2191121932%_ _%g2191221935%_))
                                  '()
                                  _%L21885%_)
                           _%L21887%_)
                    _%L21779%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%L21781%_)))))))
                   _%def-usetf2181121879%_
                   _%def-ugetf2181221882%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop2180521837%_
                                           _%target2180221831%_
                                           '()
                                           '()))
                                        (_%g2179821824%_ _%g2179921828%_)))))
                              (_%g2179821824%_ _%g2179921828%_)))))
                  (_%g2179721938%_
                   (gx#stx-map
                    (lambda (_%ref21942%_)
                      (let* ((_%g2194521964%_
                              (lambda (_%g2194621960%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2194621960%_)))
                             (_%g2194422086%_
                              (lambda (_%g2194621968%_)
                                (if (gx#stx-pair? _%g2194621968%_)
                                    (let ((_%e2195021971%_
                                           (gx#syntax-e _%g2194621968%_)))
                                      (let ((_%hd2195121975%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2195021971%_)))
                                            (_%tl2195221978%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2195021971%_))))
                                        (if (gx#stx-pair? _%tl2195221978%_)
                                            (let ((_%e2195321981%_
                                                   (gx#syntax-e
                                                    _%tl2195221978%_)))
                                              (let ((_%hd2195421985%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2195321981%_)))
                                                    (_%tl2195521988%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2195321981%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2195521988%_)
                                                    (let ((_%e2195621991%_
                                                           (gx#syntax-e
                                                            _%tl2195521988%_)))
                                                      (let ((_%hd2195721995%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2195621991%_)))
                    (_%tl2195821998%_
                     (let () (declare (not safe)) (##cdr _%e2195621991%_))))
                (if (gx#stx-null? _%tl2195821998%_)
                    ((lambda (_%L22001%_ _%L22003%_ _%L22004%_)
                       (let* ((_%g2202222037%_
                               (lambda (_%g2202322033%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2202322033%_)))
                              (_%g2202122082%_
                               (lambda (_%g2202322041%_)
                                 (if (gx#stx-pair? _%g2202322041%_)
                                     (let ((_%e2202622044%_
                                            (gx#syntax-e _%g2202322041%_)))
                                       (let ((_%hd2202722048%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2202622044%_)))
                                             (_%tl2202822051%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2202622044%_))))
                                         (if (gx#stx-pair? _%tl2202822051%_)
                                             (let ((_%e2202922054%_
                                                    (gx#syntax-e
                                                     _%tl2202822051%_)))
                                               (let ((_%hd2203022058%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2202922054%_)))
                                                     (_%tl2203122061%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2202922054%_))))
                                                 (if (gx#stx-null?
                                                      _%tl2203122061%_)
                                                     ((lambda (_%L22064%_
                                                               _%L22066%_)
                                                        (cons (_%wrap20984%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'def)
                             (cons _%L22066%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@mop.accessor)
                                                           (cons _%L21315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L22004%_ (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-class-slot-unchecked-accessor)
                         (cons _%L21078%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L22004%_ '()))
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (cons (_%wrap20984%_
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%L22064%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@mop.mutator)
                         (cons _%L21315%_ (cons _%L22004%_ (cons '#f '()))))
                   (cons (cons (gx#datum->syntax
                                '#f
                                'make-class-slot-unchecked-mutator)
                               (cons _%L21078%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L22004%_ '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            '())))
              _%hd2203022058%_
              _%hd2202722048%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2202222037%_
                                                      _%g2202322041%_))))
                                             (_%g2202222037%_
                                              _%g2202322041%_))))
                                     (_%g2202222037%_ _%g2202322041%_)))))
                         (_%g2202122082%_
                          (list (gx#stx-identifier _%L22003%_ '"&" _%L22003%_)
                                (gx#stx-identifier
                                 _%L22001%_
                                 '"&"
                                 _%L22001%_)))))
                     _%hd2195721995%_
                     _%hd2195421985%_
                     _%hd2195121975%_)
                    (_%g2194521964%_ _%g2194621968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2194521964%_
                                                     _%g2194621968%_))))
                                            (_%g2194521964%_
                                             _%g2194621968%_))))
                                    (_%g2194521964%_ _%g2194621968%_)))))
                        (_%g2194422086%_ _%ref21942%_)))
                    _%accessible-slots21135%_))))
              _%def-setf2170521773%_
              _%def-getf2170621776%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop2169921731%_
                                      _%target2169621725%_
                                      '()
                                      '()))
                                   (_%g2169221718%_ _%g2169321722%_)))))
                         (_%g2169221718%_ _%g2169321722%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2169122090%_
                                                      (gx#stx-map
                                                       (lambda (_%ref22094%_)
                                                         (let* ((_%g2209722116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2209822112%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2209822112%_)))
                        (_%g2209622174%_
                         (lambda (_%g2209822120%_)
                           (if (gx#stx-pair? _%g2209822120%_)
                               (let ((_%e2210222123%_
                                      (gx#syntax-e _%g2209822120%_)))
                                 (let ((_%hd2210322127%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2210222123%_)))
                                       (_%tl2210422130%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2210222123%_))))
                                   (if (gx#stx-pair? _%tl2210422130%_)
                                       (let ((_%e2210522133%_
                                              (gx#syntax-e _%tl2210422130%_)))
                                         (let ((_%hd2210622137%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e2210522133%_)))
                                               (_%tl2210722140%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e2210522133%_))))
                                           (if (gx#stx-pair? _%tl2210722140%_)
                                               (let ((_%e2210822143%_
                                                      (gx#syntax-e
                                                       _%tl2210722140%_)))
                                                 (let ((_%hd2210922147%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2210822143%_)))
                                                       (_%tl2211022150%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2210822143%_))))
                                                   (if (gx#stx-null?
                                                        _%tl2211022150%_)
                                                       ((lambda (_%L22153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L22155%_
                         _%L22156%_)
                  (cons (_%wrap20984%_
                         (cons (gx#datum->syntax '#f 'def)
                               (cons _%L22155%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'begin-annotation)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@mop.accessor)
                                                             (cons _%L21315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L22156%_ (cons '#t '()))))
               (cons (cons (gx#datum->syntax '#f 'make-class-slot-accessor)
                           (cons _%L21078%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L22156%_ '()))
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                        (cons (_%wrap20984%_
                               (cons (gx#datum->syntax '#f 'def)
                                     (cons _%L22153%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@mop.mutator)
                           (cons _%L21315%_ (cons _%L22156%_ (cons '#t '()))))
                     (cons (cons (gx#datum->syntax
                                  '#f
                                  'make-class-slot-mutator)
                                 (cons _%L21078%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L22156%_ '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                              '())))
                _%hd2210922147%_
                _%hd2210622137%_
                _%hd2210322127%_)
               (_%g2209722116%_ _%g2209822120%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2209722116%_
                                                _%g2209822120%_))))
                                       (_%g2209722116%_ _%g2209822120%_))))
                               (_%g2209722116%_ _%g2209822120%_)))))
                   (_%g2209622174%_ _%ref22094%_)))
               _%accessible-slots21135%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g2166521676%_))))
                                        (_%g2166322178%_
                                         (_%wrap20984%_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _%L21075%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@mop.predicate)
                                      (cons _%L21315%_ '()))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'make-class-predicate)
                                            (cons _%L21078%_ '()))
                                      '())))
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g2163721648%_))))
                           (_%g2163522182%_
                            (if (gx#stx-false? _%L21076%_)
                                (cons (gx#datum->syntax '#f 'begin) '())
                                (_%wrap20984%_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _%L21076%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin-annotation)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '@mop.constructor)
                             (cons _%L21315%_ '()))
                       (cons (cons (gx#datum->syntax '#f 'lambda)
                                   (cons (gx#datum->syntax '#f '$args)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'apply)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'make-instance)
                                                           (cons _%L21078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))))
                       _%g2160921620%_))))
              (_%g2160722186%_
               (_%wrap20984%_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _%L21078%_
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.class)
                                                    (cons _%L21231%_
                                                          (cons _%L21343%_
                                                                (cons (foldr (lambda (_%g2218922192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              _%g2219022195%_)
                                       (cons _%g2218922192%_ _%g2219022195%_))
                                     '()
                                     _%L21195%_)
                              (cons _%L21287%_
                                    (cons _%L21371%_
                                          (cons _%L21399%_
                                                (cons _%L21427%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L21595%_ '())))
                                  '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2158121592%_))))
                                         (_%g2157922198%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-class-type)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L21231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote) (cons _%L21259%_ '()))
                    (cons _%L21567%_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons (foldr (lambda (_%g2220122204%_
                                                            _%g2220222207%_)
                                                     (cons _%g2220122204%_
                                                           _%g2220222207%_))
                                                   '()
                                                   _%L21195%_)
                                            '()))
                                (cons _%L21539%_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L21287%_ '()))
                                            '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g2155321564%_))))
                            (_%g2155122210%_
                             (cons (gx#datum->syntax '#f 'list) _%L21077%_))))
                        _%g2152521536%_))))
               (_%g2152322214%_
                (if (gx#stx-e _%metaclass21138%_)
                    (let* ((_%g2221822226%_
                            (lambda (_%g2221922222%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2221922222%_)))
                           (_%g2221722245%_
                            (lambda (_%g2221922230%_)
                              ((lambda (_%L22233%_)
                                 (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons 'metaclass:
                                                         (cons '::
                                                               (cons _%L22233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '::
                                                   (cons _%L21511%_ '())))))
                               _%g2221922230%_))))
                      (_%g2221722245%_ _%metaclass21138%_))
                    _%L21511%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g2149721508%_))))
                                          (_%g2149522249%_
                                           (if _%struct?21118%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         (cons 'struct: '#t))
                   (cons ':: (cons _%L21483%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%L21483%_))))
                                      _%g2146921480%_))))
                             (_%g2146722253%_
                              (if (gx#stx-e _%L21399%_)
                                  (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons 'final: '#t))
                                              (cons '::
                                                    (cons _%L21455%_ '()))))
                                  _%L21455%_))))
                         _%g2144121452%_))))
                (_%g2143922257%_
                 (let ((_%$e22261%_ (gx#stx-getq 'properties: _%L21073%_)))
                   (if _%$e22261%_
                       _%$e22261%_
                       (cons (gx#datum->syntax '#f '@list) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g2141321424%_))))
                                           (_%g2141122265%_
                                            (if (gx#stx-e _%metaclass21138%_)
                                                (gx#core-quote-syntax
                                                 _%metaclass21138%_)
                                                '#f))))
                                       _%g2138521396%_))))
                              (_%g2138322269%_
                               (gx#stx-getq 'final: _%L21073%_))))
                          _%g2135721368%_))))
                 (_%g2135522273%_ _%struct?21118%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2132921340%_))))
                                            (_%g2132722277%_
                                             (gx#stx-map
                                              gx#core-quote-syntax
                                              _%L21077%_))))
                                        _%g2130121312%_))))
                               (_%g2129922281%_
                                (gx#core-quote-syntax _%L21078%_))))
                           _%g2127321284%_))))
                  (_%g2127122285%_ (gx#stx-getq 'constructor: _%L21073%_))))
              _%g2124521256%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2124322289%_
                                              (let ((_%$e22293%_
                                                     (gx#stx-getq
                                                      'name:
                                                      _%L21073%_)))
                                                (if _%$e22293%_
                                                    _%$e22293%_
                                                    _%L21078%_)))))
                                         _%g2121721228%_))))
                                (_%g2121522297%_
                                 (let ((_%$e22301%_
                                        (gx#stx-getq 'id: _%L21073%_)))
                                   (if _%$e22301%_
                                       _%$e22301%_
                                       (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                        _%L21078%_))))))
                            _%slot2115221191%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2114721171%_
                                                    _%target2114421165%_
                                                    '()))
                                                 (_%g2114121158%_
                                                  _%g2114221162%_)))))
                                       (_%g2114121158%_ _%g2114221162%_)))))
                           (_%g2114022305%_
                            (gx#stx-map _%slot-name20986%_ _%slots21125%_)))
                         (_%g2098921016%_ _%g2099021020%_)))
                   _%tl2101021070%_
                   _%hd2100921067%_
                   _%hd2100621057%_
                   _%hd2100321047%_
                   _%hd2100021037%_)))
              (_%g2098921016%_ _%g2099021020%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2098921016%_
                                               _%g2099021020%_))))
                                      (_%g2098921016%_ _%g2099021020%_))))
                              (_%g2098921016%_ _%g2099021020%_))))
                      (_%g2098921016%_ _%g2099021020%_)))))
          (_%g2098822309%_ _%stx20980%_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_%stx22423%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22423%_ '#t)))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_%stx22426%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22426%_ '#f))))
