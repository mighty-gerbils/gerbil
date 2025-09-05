(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_%type-t22404%_)
      (let ((_%$e22407%_ (gx#module-context-ns (gx#current-expander-context))))
        (if _%$e22407%_
            ((lambda (_%ns22411%_)
               (gx#stx-identifier
                _%type-t22404%_
                _%ns22411%_
                '"#"
                _%type-t22404%_
                '"::t"))
             _%$e22407%_)
            (let ((_%mid22416%_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _%type-t22404%_
               _%mid22416%_
               '"#"
               _%type-t22404%_
               '"::t"))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_%type-t22401%_)
      (if (gx#module-context? (gx#current-expander-context))
          (|gerbil/core/mop~MOP-1[1]#module-type-id| _%type-t22401%_)
          (make-symbol '"__" (gensym (gx#stx-e _%type-t22401%_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_%stx20979%_ _%struct?20981%_)
      (letrec ((_%wrap20983%_
                (lambda (_%e-stx22398%_)
                  (gx#stx-wrap-source
                   _%e-stx22398%_
                   (gx#stx-source _%stx20979%_))))
               (_%slot-name20985%_
                (lambda (_%slot-spec22315%_)
                  (let* ((_%g2231822337%_
                          (lambda (_%g2231922333%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2231922333%_)))
                         (_%g2231722394%_
                          (lambda (_%g2231922341%_)
                            (if (gx#stx-pair? _%g2231922341%_)
                                (let ((_%e2232322344%_
                                       (gx#syntax-e _%g2231922341%_)))
                                  (let ((_%hd2232422348%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2232322344%_)))
                                        (_%tl2232522351%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2232322344%_))))
                                    (if (gx#stx-pair? _%tl2232522351%_)
                                        (let ((_%e2232622354%_
                                               (gx#syntax-e _%tl2232522351%_)))
                                          (let ((_%hd2232722358%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2232622354%_)))
                                                (_%tl2232822361%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2232622354%_))))
                                            (if (gx#stx-pair? _%tl2232822361%_)
                                                (let ((_%e2232922364%_
                                                       (gx#syntax-e
                                                        _%tl2232822361%_)))
                                                  (let ((_%hd2233022368%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2232922364%_)))
                                                        (_%tl2233122371%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2232922364%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2233122371%_)
                                                        ((lambda (_%L22374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L22376%_
                          _%L22377%_)
                   _%L22377%_)
                 _%hd2233022368%_
                 _%hd2232722358%_
                 _%hd2232422348%_)
                (_%g2231822337%_ _%g2231922341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2231822337%_
                                                 _%g2231922341%_))))
                                        (_%g2231822337%_ _%g2231922341%_))))
                                (_%g2231822337%_ _%g2231922341%_)))))
                    (_%g2231722394%_ _%slot-spec22315%_))))
               (_%class-opt?20986%_
                (lambda (_%key22312%_)
                  (let ((__tmp27099 (gx#stx-e _%key22312%_)))
                    (declare (not safe))
                    (##memq __tmp27099
                            '(struct:
                              slots:
                              id:
                              name:
                              properties:
                              constructor:
                              final:
                              mixin:
                              metaclass:))))))
        (let* ((_%g2098821015%_
                (lambda (_%g2098921011%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2098921011%_)))
               (_%g2098722308%_
                (lambda (_%g2098921019%_)
                  (if (gx#stx-pair? _%g2098921019%_)
                      (let ((_%e2099521022%_ (gx#syntax-e _%g2098921019%_)))
                        (let ((_%hd2099621026%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2099521022%_)))
                              (_%tl2099721029%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2099521022%_))))
                          (if (gx#stx-pair? _%tl2099721029%_)
                              (let ((_%e2099821032%_
                                     (gx#syntax-e _%tl2099721029%_)))
                                (let ((_%hd2099921036%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2099821032%_)))
                                      (_%tl2100021039%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2099821032%_))))
                                  (if (gx#stx-pair? _%tl2100021039%_)
                                      (let ((_%e2100121042%_
                                             (gx#syntax-e _%tl2100021039%_)))
                                        (let ((_%hd2100221046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2100121042%_)))
                                              (_%tl2100321049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2100121042%_))))
                                          (if (gx#stx-pair? _%tl2100321049%_)
                                              (let ((_%e2100421052%_
                                                     (gx#syntax-e
                                                      _%tl2100321049%_)))
                                                (let ((_%hd2100521056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2100421052%_)))
                                                      (_%tl2100621059%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2100421052%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl2100621059%_)
                                                      (let ((_%e2100721062%_
                                                             (gx#syntax-e
                                                              _%tl2100621059%_)))
                                                        (let ((_%hd2100821066%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2100721062%_)))
                      (_%tl2100921069%_
                       (let () (declare (not safe)) (##cdr _%e2100721062%_))))
                  ((lambda (_%L21072%_
                            _%L21074%_
                            _%L21075%_
                            _%L21076%_
                            _%L21077%_)
                     (if (and (gx#identifier? _%L21077%_)
                              (gx#identifier-list? _%L21076%_)
                              (or (gx#identifier? _%L21075%_)
                                  (gx#stx-false? _%L21075%_))
                              (gx#identifier? _%L21074%_)
                              (gx#stx-plist? _%L21072%_ _%class-opt?20986%_))
                         (let* ((_%struct?21117%_
                                 (let ((_%$e21107%_ _%struct?20981%_))
                                   (if _%$e21107%_
                                       _%$e21107%_
                                       (let ((_%$e21111%_
                                              (gx#stx-getq
                                               'struct:
                                               _%L21072%_)))
                                         (if _%$e21111%_
                                             (gx#stx-e _%$e21111%_)
                                             '#f)))))
                                (_%slots21124%_
                                 (let ((_%$e21120%_
                                        (gx#stx-getq 'slots: _%L21072%_)))
                                   (if _%$e21120%_ _%$e21120%_ '())))
                                (_%mixin-slots21131%_
                                 (let ((_%$e21127%_
                                        (gx#stx-getq 'mixin: _%L21072%_)))
                                   (if _%$e21127%_ _%$e21127%_ '())))
                                (_%accessible-slots21134%_
                                 (append (gx#syntax->list _%slots21124%_)
                                         (gx#syntax->list
                                          _%mixin-slots21131%_)))
                                (_%metaclass21137%_
                                 (gx#stx-getq 'metaclass: _%L21072%_))
                                (_%g2114021157%_
                                 (lambda (_%g2114121153%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2114121153%_)))
                                (_%g2113922304%_
                                 (lambda (_%g2114121161%_)
                                   (if (gx#stx-pair/null? _%g2114121161%_)
                                       (let ((_g27100_
                                              (gx#syntax-split-splice
                                               _%g2114121161%_
                                               '0)))
                                         (begin
                                           (let ((_g27101_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27100_)
                                                        (##values-length
                                                         _g27100_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27101_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27101_)))
                                           (let ((_%target2114321164%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g27100_ 0)))
                                                 (_%tl2114521167%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g27100_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2114521167%_)
                                                 (letrec ((_%loop2114621170%_
                                                           (lambda (_%hd2114421174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%slot2115021177%_)
                     (if (gx#stx-pair? _%hd2114421174%_)
                         (let ((_%e2114721180%_
                                (gx#syntax-e _%hd2114421174%_)))
                           (let ((_%lp-hd2114821184%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2114721180%_)))
                                 (_%lp-tl2114921187%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2114721180%_))))
                             (_%loop2114621170%_
                              _%lp-tl2114921187%_
                              (cons _%lp-hd2114821184%_ _%slot2115021177%_))))
                         (let ((_%slot2115121190%_
                                (reverse _%slot2115021177%_)))
                           ((lambda (_%L21194%_)
                              (let* ((_%g2121521223%_
                                      (lambda (_%g2121621219%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2121621219%_)))
                                     (_%g2121422296%_
                                      (lambda (_%g2121621227%_)
                                        ((lambda (_%L21230%_)
                                           (let* ((_%g2124321251%_
                                                   (lambda (_%g2124421247%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2124421247%_)))
                                                  (_%g2124222288%_
                                                   (lambda (_%g2124421255%_)
                                                     ((lambda (_%L21258%_)
                                                        (let* ((_%g2127121279%_
                                                                (lambda (_%g2127221275%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2127221275%_)))
                       (_%g2127022284%_
                        (lambda (_%g2127221283%_)
                          ((lambda (_%L21286%_)
                             (let* ((_%g2129921307%_
                                     (lambda (_%g2130021303%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2130021303%_)))
                                    (_%g2129822280%_
                                     (lambda (_%g2130021311%_)
                                       ((lambda (_%L21314%_)
                                          (let* ((_%g2132721335%_
                                                  (lambda (_%g2132821331%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2132821331%_)))
                                                 (_%g2132622276%_
                                                  (lambda (_%g2132821339%_)
                                                    ((lambda (_%L21342%_)
                                                       (let* ((_%g2135521363%_
                                                               (lambda (_%g2135621359%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2135621359%_)))
                      (_%g2135422272%_
                       (lambda (_%g2135621367%_)
                         ((lambda (_%L21370%_)
                            (let* ((_%g2138321391%_
                                    (lambda (_%g2138421387%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2138421387%_)))
                                   (_%g2138222268%_
                                    (lambda (_%g2138421395%_)
                                      ((lambda (_%L21398%_)
                                         (let* ((_%g2141121419%_
                                                 (lambda (_%g2141221415%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2141221415%_)))
                                                (_%g2141022264%_
                                                 (lambda (_%g2141221423%_)
                                                   ((lambda (_%L21426%_)
                                                      (let* ((_%g2143921447%_
                                                              (lambda (_%g2144021443%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2144021443%_)))
                     (_%g2143822256%_
                      (lambda (_%g2144021451%_)
                        ((lambda (_%L21454%_)
                           (let* ((_%g2146721475%_
                                   (lambda (_%g2146821471%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2146821471%_)))
                                  (_%g2146622252%_
                                   (lambda (_%g2146821479%_)
                                     ((lambda (_%L21482%_)
                                        (let* ((_%g2149521503%_
                                                (lambda (_%g2149621499%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2149621499%_)))
                                               (_%g2149422248%_
                                                (lambda (_%g2149621507%_)
                                                  ((lambda (_%L21510%_)
                                                     (let* ((_%g2152321531%_
                                                             (lambda (_%g2152421527%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g2152421527%_)))
                                                            (_%g2152222213%_
                                                             (lambda (_%g2152421535%_)
                                                               ((lambda (_%L21538%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g2155121559%_
                                  (lambda (_%g2155221555%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2155221555%_)))
                                 (_%g2155022209%_
                                  (lambda (_%g2155221563%_)
                                    ((lambda (_%L21566%_)
                                       (let* ((_%g2157921587%_
                                               (lambda (_%g2158021583%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2158021583%_)))
                                              (_%g2157822197%_
                                               (lambda (_%g2158021591%_)
                                                 ((lambda (_%L21594%_)
                                                    (let* ((_%g2160721615%_
                                                            (lambda (_%g2160821611%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2160821611%_)))
                                                           (_%g2160622185%_
                                                            (lambda (_%g2160821619%_)
                                                              ((lambda (_%L21622%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%g2163521643%_
                                 (lambda (_%g2163621639%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2163621639%_)))
                                (_%g2163422181%_
                                 (lambda (_%g2163621647%_)
                                   ((lambda (_%L21650%_)
                                      (let* ((_%g2166321671%_
                                              (lambda (_%g2166421667%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2166421667%_)))
                                             (_%g2166222177%_
                                              (lambda (_%g2166421675%_)
                                                ((lambda (_%L21678%_)
                                                   (let* ((_%g2169121717%_
                                                           (lambda (_%g2169221713%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g2169221713%_)))
                                                          (_%g2169022089%_
                                                           (lambda (_%g2169221721%_)
                                                             (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2169221721%_)
                         (let ((_g27102_
                                (gx#syntax-split-splice _%g2169221721%_ '0)))
                           (begin
                             (let ((_g27103_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g27102_)
                                          (##values-length _g27102_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g27103_ 2)))
                                   (error "Context expects 2 values"
                                          _g27103_)))
                             (let ((_%target2169521724%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g27102_ 0)))
                                   (_%tl2169721727%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g27102_ 1))))
                               (if (gx#stx-null? _%tl2169721727%_)
                                   (letrec ((_%loop2169821730%_
                                             (lambda (_%hd2169621734%_
                                                      _%def-setf2170221737%_
                                                      _%def-getf2170321739%_)
                                               (if (gx#stx-pair?
                                                    _%hd2169621734%_)
                                                   (let ((_%e2169921742%_
                                                          (gx#syntax-e
                                                           _%hd2169621734%_)))
                                                     (let ((_%lp-hd2170021746%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e2169921742%_)))
                                                           (_%lp-tl2170121749%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e2169921742%_))))
                                                       (if (gx#stx-pair?
                                                            _%lp-hd2170021746%_)
                                                           (let ((_%e2170621752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%lp-hd2170021746%_)))
                     (let ((_%hd2170721756%_
                            (let ()
                              (declare (not safe))
                              (##car _%e2170621752%_)))
                           (_%tl2170821759%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e2170621752%_))))
                       (if (gx#stx-pair? _%tl2170821759%_)
                           (let ((_%e2170921762%_
                                  (gx#syntax-e _%tl2170821759%_)))
                             (let ((_%hd2171021766%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e2170921762%_)))
                                   (_%tl2171121769%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e2170921762%_))))
                               (if (gx#stx-null? _%tl2171121769%_)
                                   (_%loop2169821730%_
                                    _%lp-tl2170121749%_
                                    (cons _%hd2171021766%_
                                          _%def-setf2170221737%_)
                                    (cons _%hd2170721756%_
                                          _%def-getf2170321739%_))
                                   (_%g2169121717%_ _%g2169221721%_))))
                           (_%g2169121717%_ _%g2169221721%_))))
                   (_%g2169121717%_ _%g2169221721%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%def-setf2170421772%_
                                                          (reverse _%def-setf2170221737%_))
                                                         (_%def-getf2170521775%_
                                                          (reverse _%def-getf2170321739%_)))
                                                     ((lambda (_%L21778%_
                                                               _%L21780%_)
                                                        (let* ((_%g2179721823%_
                                                                (lambda (_%g2179821819%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2179821819%_)))
                       (_%g2179621937%_
                        (lambda (_%g2179821827%_)
                          (if (gx#stx-pair/null? _%g2179821827%_)
                              (let ((_g27104_
                                     (gx#syntax-split-splice
                                      _%g2179821827%_
                                      '0)))
                                (begin
                                  (let ((_g27105_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g27104_)
                                               (##values-length _g27104_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g27105_ 2)))
                                        (error "Context expects 2 values"
                                               _g27105_)))
                                  (let ((_%target2180121830%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g27104_ 0)))
                                        (_%tl2180321833%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g27104_ 1))))
                                    (if (gx#stx-null? _%tl2180321833%_)
                                        (letrec ((_%loop2180421836%_
                                                  (lambda (_%hd2180221840%_
                                                           _%def-usetf2180821843%_
                                                           _%def-ugetf2180921845%_)
                                                    (if (gx#stx-pair?
                                                         _%hd2180221840%_)
                                                        (let ((_%e2180521848%_
                                                               (gx#syntax-e
                                                                _%hd2180221840%_)))
                                                          (let ((_%lp-hd2180621852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2180521848%_)))
                        (_%lp-tl2180721855%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2180521848%_))))
                    (if (gx#stx-pair? _%lp-hd2180621852%_)
                        (let ((_%e2181221858%_
                               (gx#syntax-e _%lp-hd2180621852%_)))
                          (let ((_%hd2181321862%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2181221858%_)))
                                (_%tl2181421865%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2181221858%_))))
                            (if (gx#stx-pair? _%tl2181421865%_)
                                (let ((_%e2181521868%_
                                       (gx#syntax-e _%tl2181421865%_)))
                                  (let ((_%hd2181621872%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2181521868%_)))
                                        (_%tl2181721875%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2181521868%_))))
                                    (if (gx#stx-null? _%tl2181721875%_)
                                        (_%loop2180421836%_
                                         _%lp-tl2180721855%_
                                         (cons _%hd2181621872%_
                                               _%def-usetf2180821843%_)
                                         (cons _%hd2181321862%_
                                               _%def-ugetf2180921845%_))
                                        (_%g2179721823%_ _%g2179821827%_))))
                                (_%g2179721823%_ _%g2179821827%_))))
                        (_%g2179721823%_ _%g2179821827%_))))
                (let ((_%def-usetf2181021878%_
                       (reverse _%def-usetf2180821843%_))
                      (_%def-ugetf2181121881%_
                       (reverse _%def-ugetf2180921845%_)))
                  ((lambda (_%L21884%_ _%L21886%_)
                     (_%wrap20983%_
                      (cons (gx#datum->syntax '#f 'begin)
                            (cons _%L21622%_
                                  (cons _%L21678%_
                                        (cons _%L21650%_
                                              (foldr (lambda (_%g2190421913%_
                                                              _%g2190521916%_)
                                                       (cons _%g2190421913%_
                                                             _%g2190521916%_))
                                                     (foldr (lambda (_%g2190621919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g2190721922%_)
                      (cons _%g2190621919%_ _%g2190721922%_))
                    (foldr (lambda (_%g2190821925%_ _%g2190921928%_)
                             (cons _%g2190821925%_ _%g2190921928%_))
                           (foldr (lambda (_%g2191021931%_ _%g2191121934%_)
                                    (cons _%g2191021931%_ _%g2191121934%_))
                                  '()
                                  _%L21884%_)
                           _%L21886%_)
                    _%L21778%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%L21780%_)))))))
                   _%def-usetf2181021878%_
                   _%def-ugetf2181121881%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop2180421836%_
                                           _%target2180121830%_
                                           '()
                                           '()))
                                        (_%g2179721823%_ _%g2179821827%_)))))
                              (_%g2179721823%_ _%g2179821827%_)))))
                  (_%g2179621937%_
                   (gx#stx-map
                    (lambda (_%ref21941%_)
                      (let* ((_%g2194421963%_
                              (lambda (_%g2194521959%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2194521959%_)))
                             (_%g2194322085%_
                              (lambda (_%g2194521967%_)
                                (if (gx#stx-pair? _%g2194521967%_)
                                    (let ((_%e2194921970%_
                                           (gx#syntax-e _%g2194521967%_)))
                                      (let ((_%hd2195021974%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2194921970%_)))
                                            (_%tl2195121977%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2194921970%_))))
                                        (if (gx#stx-pair? _%tl2195121977%_)
                                            (let ((_%e2195221980%_
                                                   (gx#syntax-e
                                                    _%tl2195121977%_)))
                                              (let ((_%hd2195321984%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2195221980%_)))
                                                    (_%tl2195421987%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2195221980%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2195421987%_)
                                                    (let ((_%e2195521990%_
                                                           (gx#syntax-e
                                                            _%tl2195421987%_)))
                                                      (let ((_%hd2195621994%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2195521990%_)))
                    (_%tl2195721997%_
                     (let () (declare (not safe)) (##cdr _%e2195521990%_))))
                (if (gx#stx-null? _%tl2195721997%_)
                    ((lambda (_%L22000%_ _%L22002%_ _%L22003%_)
                       (let* ((_%g2202122036%_
                               (lambda (_%g2202222032%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2202222032%_)))
                              (_%g2202022081%_
                               (lambda (_%g2202222040%_)
                                 (if (gx#stx-pair? _%g2202222040%_)
                                     (let ((_%e2202522043%_
                                            (gx#syntax-e _%g2202222040%_)))
                                       (let ((_%hd2202622047%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2202522043%_)))
                                             (_%tl2202722050%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2202522043%_))))
                                         (if (gx#stx-pair? _%tl2202722050%_)
                                             (let ((_%e2202822053%_
                                                    (gx#syntax-e
                                                     _%tl2202722050%_)))
                                               (let ((_%hd2202922057%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2202822053%_)))
                                                     (_%tl2203022060%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2202822053%_))))
                                                 (if (gx#stx-null?
                                                      _%tl2203022060%_)
                                                     ((lambda (_%L22063%_
                                                               _%L22065%_)
                                                        (cons (_%wrap20983%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'def)
                             (cons _%L22065%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@mop.accessor)
                                                           (cons _%L21314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L22003%_ (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-class-slot-unchecked-accessor)
                         (cons _%L21077%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L22003%_ '()))
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (cons (_%wrap20983%_
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%L22063%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@mop.mutator)
                         (cons _%L21314%_ (cons _%L22003%_ (cons '#f '()))))
                   (cons (cons (gx#datum->syntax
                                '#f
                                'make-class-slot-unchecked-mutator)
                               (cons _%L21077%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L22003%_ '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            '())))
              _%hd2202922057%_
              _%hd2202622047%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2202122036%_
                                                      _%g2202222040%_))))
                                             (_%g2202122036%_
                                              _%g2202222040%_))))
                                     (_%g2202122036%_ _%g2202222040%_)))))
                         (_%g2202022081%_
                          (list (gx#stx-identifier _%L22002%_ '"&" _%L22002%_)
                                (gx#stx-identifier
                                 _%L22000%_
                                 '"&"
                                 _%L22000%_)))))
                     _%hd2195621994%_
                     _%hd2195321984%_
                     _%hd2195021974%_)
                    (_%g2194421963%_ _%g2194521967%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2194421963%_
                                                     _%g2194521967%_))))
                                            (_%g2194421963%_
                                             _%g2194521967%_))))
                                    (_%g2194421963%_ _%g2194521967%_)))))
                        (_%g2194322085%_ _%ref21941%_)))
                    _%accessible-slots21134%_))))
              _%def-setf2170421772%_
              _%def-getf2170521775%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop2169821730%_
                                      _%target2169521724%_
                                      '()
                                      '()))
                                   (_%g2169121717%_ _%g2169221721%_)))))
                         (_%g2169121717%_ _%g2169221721%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2169022089%_
                                                      (gx#stx-map
                                                       (lambda (_%ref22093%_)
                                                         (let* ((_%g2209622115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2209722111%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2209722111%_)))
                        (_%g2209522173%_
                         (lambda (_%g2209722119%_)
                           (if (gx#stx-pair? _%g2209722119%_)
                               (let ((_%e2210122122%_
                                      (gx#syntax-e _%g2209722119%_)))
                                 (let ((_%hd2210222126%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2210122122%_)))
                                       (_%tl2210322129%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2210122122%_))))
                                   (if (gx#stx-pair? _%tl2210322129%_)
                                       (let ((_%e2210422132%_
                                              (gx#syntax-e _%tl2210322129%_)))
                                         (let ((_%hd2210522136%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e2210422132%_)))
                                               (_%tl2210622139%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e2210422132%_))))
                                           (if (gx#stx-pair? _%tl2210622139%_)
                                               (let ((_%e2210722142%_
                                                      (gx#syntax-e
                                                       _%tl2210622139%_)))
                                                 (let ((_%hd2210822146%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2210722142%_)))
                                                       (_%tl2210922149%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2210722142%_))))
                                                   (if (gx#stx-null?
                                                        _%tl2210922149%_)
                                                       ((lambda (_%L22152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L22154%_
                         _%L22155%_)
                  (cons (_%wrap20983%_
                         (cons (gx#datum->syntax '#f 'def)
                               (cons _%L22154%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'begin-annotation)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@mop.accessor)
                                                             (cons _%L21314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L22155%_ (cons '#t '()))))
               (cons (cons (gx#datum->syntax '#f 'make-class-slot-accessor)
                           (cons _%L21077%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L22155%_ '()))
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                        (cons (_%wrap20983%_
                               (cons (gx#datum->syntax '#f 'def)
                                     (cons _%L22152%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@mop.mutator)
                           (cons _%L21314%_ (cons _%L22155%_ (cons '#t '()))))
                     (cons (cons (gx#datum->syntax
                                  '#f
                                  'make-class-slot-mutator)
                                 (cons _%L21077%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L22155%_ '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                              '())))
                _%hd2210822146%_
                _%hd2210522136%_
                _%hd2210222126%_)
               (_%g2209622115%_ _%g2209722119%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2209622115%_
                                                _%g2209722119%_))))
                                       (_%g2209622115%_ _%g2209722119%_))))
                               (_%g2209622115%_ _%g2209722119%_)))))
                   (_%g2209522173%_ _%ref22093%_)))
               _%accessible-slots21134%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g2166421675%_))))
                                        (_%g2166222177%_
                                         (_%wrap20983%_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _%L21074%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@mop.predicate)
                                      (cons _%L21314%_ '()))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'make-class-predicate)
                                            (cons _%L21077%_ '()))
                                      '())))
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g2163621647%_))))
                           (_%g2163422181%_
                            (if (gx#stx-false? _%L21075%_)
                                (cons (gx#datum->syntax '#f 'begin) '())
                                (_%wrap20983%_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _%L21075%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin-annotation)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '@mop.constructor)
                             (cons _%L21314%_ '()))
                       (cons (cons (gx#datum->syntax '#f 'lambda)
                                   (cons (gx#datum->syntax '#f '$args)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'apply)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'make-instance)
                                                           (cons _%L21077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))))
                       _%g2160821619%_))))
              (_%g2160622185%_
               (_%wrap20983%_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _%L21077%_
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.class)
                                                    (cons _%L21230%_
                                                          (cons _%L21342%_
                                                                (cons (foldr (lambda (_%g2218822191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              _%g2218922194%_)
                                       (cons _%g2218822191%_ _%g2218922194%_))
                                     '()
                                     _%L21194%_)
                              (cons _%L21286%_
                                    (cons _%L21370%_
                                          (cons _%L21398%_
                                                (cons _%L21426%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L21594%_ '())))
                                  '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2158021591%_))))
                                         (_%g2157822197%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-class-type)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L21230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote) (cons _%L21258%_ '()))
                    (cons _%L21566%_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons (foldr (lambda (_%g2220022203%_
                                                            _%g2220122206%_)
                                                     (cons _%g2220022203%_
                                                           _%g2220122206%_))
                                                   '()
                                                   _%L21194%_)
                                            '()))
                                (cons _%L21538%_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L21286%_ '()))
                                            '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g2155221563%_))))
                            (_%g2155022209%_
                             (cons (gx#datum->syntax '#f 'list) _%L21076%_))))
                        _%g2152421535%_))))
               (_%g2152222213%_
                (if (gx#stx-e _%metaclass21137%_)
                    (let* ((_%g2221722225%_
                            (lambda (_%g2221822221%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2221822221%_)))
                           (_%g2221622244%_
                            (lambda (_%g2221822229%_)
                              ((lambda (_%L22232%_)
                                 (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons 'metaclass:
                                                         (cons '::
                                                               (cons _%L22232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '::
                                                   (cons _%L21510%_ '())))))
                               _%g2221822229%_))))
                      (_%g2221622244%_ _%metaclass21137%_))
                    _%L21510%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g2149621507%_))))
                                          (_%g2149422248%_
                                           (if _%struct?21117%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         (cons 'struct: '#t))
                   (cons ':: (cons _%L21482%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%L21482%_))))
                                      _%g2146821479%_))))
                             (_%g2146622252%_
                              (if (gx#stx-e _%L21398%_)
                                  (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons 'final: '#t))
                                              (cons '::
                                                    (cons _%L21454%_ '()))))
                                  _%L21454%_))))
                         _%g2144021451%_))))
                (_%g2143822256%_
                 (let ((_%$e22260%_ (gx#stx-getq 'properties: _%L21072%_)))
                   (if _%$e22260%_
                       _%$e22260%_
                       (cons (gx#datum->syntax '#f '@list) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g2141221423%_))))
                                           (_%g2141022264%_
                                            (if (gx#stx-e _%metaclass21137%_)
                                                (gx#core-quote-syntax
                                                 _%metaclass21137%_)
                                                '#f))))
                                       _%g2138421395%_))))
                              (_%g2138222268%_
                               (gx#stx-getq 'final: _%L21072%_))))
                          _%g2135621367%_))))
                 (_%g2135422272%_ _%struct?21117%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2132821339%_))))
                                            (_%g2132622276%_
                                             (gx#stx-map
                                              gx#core-quote-syntax
                                              _%L21076%_))))
                                        _%g2130021311%_))))
                               (_%g2129822280%_
                                (gx#core-quote-syntax _%L21077%_))))
                           _%g2127221283%_))))
                  (_%g2127022284%_ (gx#stx-getq 'constructor: _%L21072%_))))
              _%g2124421255%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2124222288%_
                                              (let ((_%$e22292%_
                                                     (gx#stx-getq
                                                      'name:
                                                      _%L21072%_)))
                                                (if _%$e22292%_
                                                    _%$e22292%_
                                                    _%L21077%_)))))
                                         _%g2121621227%_))))
                                (_%g2121422296%_
                                 (let ((_%$e22300%_
                                        (gx#stx-getq 'id: _%L21072%_)))
                                   (if _%$e22300%_
                                       _%$e22300%_
                                       (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                        _%L21077%_))))))
                            _%slot2115121190%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2114621170%_
                                                    _%target2114321164%_
                                                    '()))
                                                 (_%g2114021157%_
                                                  _%g2114121161%_)))))
                                       (_%g2114021157%_ _%g2114121161%_)))))
                           (_%g2113922304%_
                            (gx#stx-map _%slot-name20985%_ _%slots21124%_)))
                         (_%g2098821015%_ _%g2098921019%_)))
                   _%tl2100921069%_
                   _%hd2100821066%_
                   _%hd2100521056%_
                   _%hd2100221046%_
                   _%hd2099921036%_)))
              (_%g2098821015%_ _%g2098921019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2098821015%_
                                               _%g2098921019%_))))
                                      (_%g2098821015%_ _%g2098921019%_))))
                              (_%g2098821015%_ _%g2098921019%_))))
                      (_%g2098821015%_ _%g2098921019%_)))))
          (_%g2098722308%_ _%stx20979%_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_%stx22422%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22422%_ '#t)))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_%stx22425%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22425%_ '#f))))
