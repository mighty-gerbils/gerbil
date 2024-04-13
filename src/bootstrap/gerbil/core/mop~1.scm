(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_%type-t22414%_)
      (let ((_%$e22417%_ (gx#module-context-ns (gx#current-expander-context))))
        (if _%$e22417%_
            ((lambda (_%ns22421%_)
               (gx#stx-identifier
                _%type-t22414%_
                _%ns22421%_
                '"#"
                _%type-t22414%_
                '"::t"))
             _%$e22417%_)
            (let ((_%mid22426%_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _%type-t22414%_
               _%mid22426%_
               '"#"
               _%type-t22414%_
               '"::t"))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_%type-t22411%_)
      (if (gx#module-context? (gx#current-expander-context))
          (|gerbil/core/mop~MOP-1[1]#module-type-id| _%type-t22411%_)
          (make-symbol '"__" (gensym (gx#stx-e _%type-t22411%_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_%stx20989%_ _%struct?20991%_)
      (letrec ((_%wrap20993%_
                (lambda (_%e-stx22408%_)
                  (gx#stx-wrap-source
                   _%e-stx22408%_
                   (gx#stx-source _%stx20989%_))))
               (_%slot-name20995%_
                (lambda (_%slot-spec22325%_)
                  (let* ((_%g2232822347%_
                          (lambda (_%g2232922343%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2232922343%_)))
                         (_%g2232722404%_
                          (lambda (_%g2232922351%_)
                            (if (gx#stx-pair? _%g2232922351%_)
                                (let ((_%e2233322354%_
                                       (gx#syntax-e _%g2232922351%_)))
                                  (let ((_%hd2233422358%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2233322354%_)))
                                        (_%tl2233522361%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2233322354%_))))
                                    (if (gx#stx-pair? _%tl2233522361%_)
                                        (let ((_%e2233622364%_
                                               (gx#syntax-e _%tl2233522361%_)))
                                          (let ((_%hd2233722368%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2233622364%_)))
                                                (_%tl2233822371%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2233622364%_))))
                                            (if (gx#stx-pair? _%tl2233822371%_)
                                                (let ((_%e2233922374%_
                                                       (gx#syntax-e
                                                        _%tl2233822371%_)))
                                                  (let ((_%hd2234022378%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2233922374%_)))
                                                        (_%tl2234122381%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2233922374%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2234122381%_)
                                                        ((lambda (_%L22384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L22386%_
                          _%L22387%_)
                   _%L22387%_)
                 _%hd2234022378%_
                 _%hd2233722368%_
                 _%hd2233422358%_)
                (_%g2232822347%_ _%g2232922351%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2232822347%_
                                                 _%g2232922351%_))))
                                        (_%g2232822347%_ _%g2232922351%_))))
                                (_%g2232822347%_ _%g2232922351%_)))))
                    (_%g2232722404%_ _%slot-spec22325%_))))
               (_%class-opt?20996%_
                (lambda (_%key22322%_)
                  (let ((__tmp27109 (gx#stx-e _%key22322%_)))
                    (declare (not safe))
                    (##memq __tmp27109
                            '(struct:
                              slots:
                              id:
                              name:
                              properties:
                              constructor:
                              final:
                              mixin:
                              metaclass:))))))
        (let* ((_%g2099821025%_
                (lambda (_%g2099921021%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2099921021%_)))
               (_%g2099722318%_
                (lambda (_%g2099921029%_)
                  (if (gx#stx-pair? _%g2099921029%_)
                      (let ((_%e2100521032%_ (gx#syntax-e _%g2099921029%_)))
                        (let ((_%hd2100621036%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2100521032%_)))
                              (_%tl2100721039%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2100521032%_))))
                          (if (gx#stx-pair? _%tl2100721039%_)
                              (let ((_%e2100821042%_
                                     (gx#syntax-e _%tl2100721039%_)))
                                (let ((_%hd2100921046%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2100821042%_)))
                                      (_%tl2101021049%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2100821042%_))))
                                  (if (gx#stx-pair? _%tl2101021049%_)
                                      (let ((_%e2101121052%_
                                             (gx#syntax-e _%tl2101021049%_)))
                                        (let ((_%hd2101221056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2101121052%_)))
                                              (_%tl2101321059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2101121052%_))))
                                          (if (gx#stx-pair? _%tl2101321059%_)
                                              (let ((_%e2101421062%_
                                                     (gx#syntax-e
                                                      _%tl2101321059%_)))
                                                (let ((_%hd2101521066%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2101421062%_)))
                                                      (_%tl2101621069%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2101421062%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl2101621069%_)
                                                      (let ((_%e2101721072%_
                                                             (gx#syntax-e
                                                              _%tl2101621069%_)))
                                                        (let ((_%hd2101821076%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2101721072%_)))
                      (_%tl2101921079%_
                       (let () (declare (not safe)) (##cdr _%e2101721072%_))))
                  ((lambda (_%L21082%_
                            _%L21084%_
                            _%L21085%_
                            _%L21086%_
                            _%L21087%_)
                     (if (and (gx#identifier? _%L21087%_)
                              (gx#identifier-list? _%L21086%_)
                              (or (gx#identifier? _%L21085%_)
                                  (gx#stx-false? _%L21085%_))
                              (gx#identifier? _%L21084%_)
                              (gx#stx-plist? _%L21082%_ _%class-opt?20996%_))
                         (let* ((_%struct?21127%_
                                 (let ((_%$e21117%_ _%struct?20991%_))
                                   (if _%$e21117%_
                                       _%$e21117%_
                                       (let ((_%$e21121%_
                                              (gx#stx-getq
                                               'struct:
                                               _%L21082%_)))
                                         (if _%$e21121%_
                                             (gx#stx-e _%$e21121%_)
                                             '#f)))))
                                (_%slots21134%_
                                 (let ((_%$e21130%_
                                        (gx#stx-getq 'slots: _%L21082%_)))
                                   (if _%$e21130%_ _%$e21130%_ '())))
                                (_%mixin-slots21141%_
                                 (let ((_%$e21137%_
                                        (gx#stx-getq 'mixin: _%L21082%_)))
                                   (if _%$e21137%_ _%$e21137%_ '())))
                                (_%accessible-slots21144%_
                                 (append (gx#syntax->list _%slots21134%_)
                                         (gx#syntax->list
                                          _%mixin-slots21141%_)))
                                (_%metaclass21147%_
                                 (gx#stx-getq 'metaclass: _%L21082%_))
                                (_%g2115021167%_
                                 (lambda (_%g2115121163%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2115121163%_)))
                                (_%g2114922314%_
                                 (lambda (_%g2115121171%_)
                                   (if (gx#stx-pair/null? _%g2115121171%_)
                                       (let ((_g27110_
                                              (gx#syntax-split-splice
                                               _%g2115121171%_
                                               '0)))
                                         (begin
                                           (let ((_g27111_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27110_)
                                                        (##vector-length
                                                         _g27110_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27111_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27111_)))
                                           (let ((_%target2115321174%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g27110_ 0)))
                                                 (_%tl2115521177%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g27110_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2115521177%_)
                                                 (letrec ((_%loop2115621180%_
                                                           (lambda (_%hd2115421184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%slot2116021187%_)
                     (if (gx#stx-pair? _%hd2115421184%_)
                         (let ((_%e2115721190%_
                                (gx#syntax-e _%hd2115421184%_)))
                           (let ((_%lp-hd2115821194%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2115721190%_)))
                                 (_%lp-tl2115921197%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2115721190%_))))
                             (_%loop2115621180%_
                              _%lp-tl2115921197%_
                              (cons _%lp-hd2115821194%_ _%slot2116021187%_))))
                         (let ((_%slot2116121200%_
                                (reverse _%slot2116021187%_)))
                           ((lambda (_%L21204%_)
                              (let* ((_%g2122521233%_
                                      (lambda (_%g2122621229%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2122621229%_)))
                                     (_%g2122422306%_
                                      (lambda (_%g2122621237%_)
                                        ((lambda (_%L21240%_)
                                           (let* ((_%g2125321261%_
                                                   (lambda (_%g2125421257%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2125421257%_)))
                                                  (_%g2125222298%_
                                                   (lambda (_%g2125421265%_)
                                                     ((lambda (_%L21268%_)
                                                        (let* ((_%g2128121289%_
                                                                (lambda (_%g2128221285%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2128221285%_)))
                       (_%g2128022294%_
                        (lambda (_%g2128221293%_)
                          ((lambda (_%L21296%_)
                             (let* ((_%g2130921317%_
                                     (lambda (_%g2131021313%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2131021313%_)))
                                    (_%g2130822290%_
                                     (lambda (_%g2131021321%_)
                                       ((lambda (_%L21324%_)
                                          (let* ((_%g2133721345%_
                                                  (lambda (_%g2133821341%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2133821341%_)))
                                                 (_%g2133622286%_
                                                  (lambda (_%g2133821349%_)
                                                    ((lambda (_%L21352%_)
                                                       (let* ((_%g2136521373%_
                                                               (lambda (_%g2136621369%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2136621369%_)))
                      (_%g2136422282%_
                       (lambda (_%g2136621377%_)
                         ((lambda (_%L21380%_)
                            (let* ((_%g2139321401%_
                                    (lambda (_%g2139421397%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2139421397%_)))
                                   (_%g2139222278%_
                                    (lambda (_%g2139421405%_)
                                      ((lambda (_%L21408%_)
                                         (let* ((_%g2142121429%_
                                                 (lambda (_%g2142221425%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2142221425%_)))
                                                (_%g2142022274%_
                                                 (lambda (_%g2142221433%_)
                                                   ((lambda (_%L21436%_)
                                                      (let* ((_%g2144921457%_
                                                              (lambda (_%g2145021453%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2145021453%_)))
                     (_%g2144822266%_
                      (lambda (_%g2145021461%_)
                        ((lambda (_%L21464%_)
                           (let* ((_%g2147721485%_
                                   (lambda (_%g2147821481%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2147821481%_)))
                                  (_%g2147622262%_
                                   (lambda (_%g2147821489%_)
                                     ((lambda (_%L21492%_)
                                        (let* ((_%g2150521513%_
                                                (lambda (_%g2150621509%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2150621509%_)))
                                               (_%g2150422258%_
                                                (lambda (_%g2150621517%_)
                                                  ((lambda (_%L21520%_)
                                                     (let* ((_%g2153321541%_
                                                             (lambda (_%g2153421537%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g2153421537%_)))
                                                            (_%g2153222223%_
                                                             (lambda (_%g2153421545%_)
                                                               ((lambda (_%L21548%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g2156121569%_
                                  (lambda (_%g2156221565%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2156221565%_)))
                                 (_%g2156022219%_
                                  (lambda (_%g2156221573%_)
                                    ((lambda (_%L21576%_)
                                       (let* ((_%g2158921597%_
                                               (lambda (_%g2159021593%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2159021593%_)))
                                              (_%g2158822207%_
                                               (lambda (_%g2159021601%_)
                                                 ((lambda (_%L21604%_)
                                                    (let* ((_%g2161721625%_
                                                            (lambda (_%g2161821621%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2161821621%_)))
                                                           (_%g2161622195%_
                                                            (lambda (_%g2161821629%_)
                                                              ((lambda (_%L21632%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%g2164521653%_
                                 (lambda (_%g2164621649%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2164621649%_)))
                                (_%g2164422191%_
                                 (lambda (_%g2164621657%_)
                                   ((lambda (_%L21660%_)
                                      (let* ((_%g2167321681%_
                                              (lambda (_%g2167421677%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2167421677%_)))
                                             (_%g2167222187%_
                                              (lambda (_%g2167421685%_)
                                                ((lambda (_%L21688%_)
                                                   (let* ((_%g2170121727%_
                                                           (lambda (_%g2170221723%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g2170221723%_)))
                                                          (_%g2170022099%_
                                                           (lambda (_%g2170221731%_)
                                                             (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2170221731%_)
                         (let ((_g27112_
                                (gx#syntax-split-splice _%g2170221731%_ '0)))
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
                             (let ((_%target2170521734%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _g27112_ 0)))
                                   (_%tl2170721737%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _g27112_ 1))))
                               (if (gx#stx-null? _%tl2170721737%_)
                                   (letrec ((_%loop2170821740%_
                                             (lambda (_%hd2170621744%_
                                                      _%def-setf2171221747%_
                                                      _%def-getf2171321749%_)
                                               (if (gx#stx-pair?
                                                    _%hd2170621744%_)
                                                   (let ((_%e2170921752%_
                                                          (gx#syntax-e
                                                           _%hd2170621744%_)))
                                                     (let ((_%lp-hd2171021756%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e2170921752%_)))
                                                           (_%lp-tl2171121759%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e2170921752%_))))
                                                       (if (gx#stx-pair?
                                                            _%lp-hd2171021756%_)
                                                           (let ((_%e2171621762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%lp-hd2171021756%_)))
                     (let ((_%hd2171721766%_
                            (let ()
                              (declare (not safe))
                              (##car _%e2171621762%_)))
                           (_%tl2171821769%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e2171621762%_))))
                       (if (gx#stx-pair? _%tl2171821769%_)
                           (let ((_%e2171921772%_
                                  (gx#syntax-e _%tl2171821769%_)))
                             (let ((_%hd2172021776%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e2171921772%_)))
                                   (_%tl2172121779%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e2171921772%_))))
                               (if (gx#stx-null? _%tl2172121779%_)
                                   (_%loop2170821740%_
                                    _%lp-tl2171121759%_
                                    (cons _%hd2172021776%_
                                          _%def-setf2171221747%_)
                                    (cons _%hd2171721766%_
                                          _%def-getf2171321749%_))
                                   (_%g2170121727%_ _%g2170221731%_))))
                           (_%g2170121727%_ _%g2170221731%_))))
                   (_%g2170121727%_ _%g2170221731%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%def-setf2171421782%_
                                                          (reverse _%def-setf2171221747%_))
                                                         (_%def-getf2171521785%_
                                                          (reverse _%def-getf2171321749%_)))
                                                     ((lambda (_%L21788%_
                                                               _%L21790%_)
                                                        (let* ((_%g2180721833%_
                                                                (lambda (_%g2180821829%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2180821829%_)))
                       (_%g2180621947%_
                        (lambda (_%g2180821837%_)
                          (if (gx#stx-pair/null? _%g2180821837%_)
                              (let ((_g27114_
                                     (gx#syntax-split-splice
                                      _%g2180821837%_
                                      '0)))
                                (begin
                                  (let ((_g27115_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g27114_)
                                               (##vector-length _g27114_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g27115_ 2)))
                                        (error "Context expects 2 values"
                                               _g27115_)))
                                  (let ((_%target2181121840%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g27114_ 0)))
                                        (_%tl2181321843%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g27114_ 1))))
                                    (if (gx#stx-null? _%tl2181321843%_)
                                        (letrec ((_%loop2181421846%_
                                                  (lambda (_%hd2181221850%_
                                                           _%def-usetf2181821853%_
                                                           _%def-ugetf2181921855%_)
                                                    (if (gx#stx-pair?
                                                         _%hd2181221850%_)
                                                        (let ((_%e2181521858%_
                                                               (gx#syntax-e
                                                                _%hd2181221850%_)))
                                                          (let ((_%lp-hd2181621862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2181521858%_)))
                        (_%lp-tl2181721865%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2181521858%_))))
                    (if (gx#stx-pair? _%lp-hd2181621862%_)
                        (let ((_%e2182221868%_
                               (gx#syntax-e _%lp-hd2181621862%_)))
                          (let ((_%hd2182321872%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2182221868%_)))
                                (_%tl2182421875%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2182221868%_))))
                            (if (gx#stx-pair? _%tl2182421875%_)
                                (let ((_%e2182521878%_
                                       (gx#syntax-e _%tl2182421875%_)))
                                  (let ((_%hd2182621882%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2182521878%_)))
                                        (_%tl2182721885%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2182521878%_))))
                                    (if (gx#stx-null? _%tl2182721885%_)
                                        (_%loop2181421846%_
                                         _%lp-tl2181721865%_
                                         (cons _%hd2182621882%_
                                               _%def-usetf2181821853%_)
                                         (cons _%hd2182321872%_
                                               _%def-ugetf2181921855%_))
                                        (_%g2180721833%_ _%g2180821837%_))))
                                (_%g2180721833%_ _%g2180821837%_))))
                        (_%g2180721833%_ _%g2180821837%_))))
                (let ((_%def-usetf2182021888%_
                       (reverse _%def-usetf2181821853%_))
                      (_%def-ugetf2182121891%_
                       (reverse _%def-ugetf2181921855%_)))
                  ((lambda (_%L21894%_ _%L21896%_)
                     (_%wrap20993%_
                      (cons (gx#datum->syntax '#f 'begin)
                            (cons _%L21632%_
                                  (cons _%L21688%_
                                        (cons _%L21660%_
                                              (foldr (lambda (_%g2191421923%_
                                                              _%g2191521926%_)
                                                       (cons _%g2191421923%_
                                                             _%g2191521926%_))
                                                     (foldr (lambda (_%g2191621929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g2191721932%_)
                      (cons _%g2191621929%_ _%g2191721932%_))
                    (foldr (lambda (_%g2191821935%_ _%g2191921938%_)
                             (cons _%g2191821935%_ _%g2191921938%_))
                           (foldr (lambda (_%g2192021941%_ _%g2192121944%_)
                                    (cons _%g2192021941%_ _%g2192121944%_))
                                  '()
                                  _%L21894%_)
                           _%L21896%_)
                    _%L21788%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%L21790%_)))))))
                   _%def-usetf2182021888%_
                   _%def-ugetf2182121891%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop2181421846%_
                                           _%target2181121840%_
                                           '()
                                           '()))
                                        (_%g2180721833%_ _%g2180821837%_)))))
                              (_%g2180721833%_ _%g2180821837%_)))))
                  (_%g2180621947%_
                   (gx#stx-map
                    (lambda (_%ref21951%_)
                      (let* ((_%g2195421973%_
                              (lambda (_%g2195521969%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2195521969%_)))
                             (_%g2195322095%_
                              (lambda (_%g2195521977%_)
                                (if (gx#stx-pair? _%g2195521977%_)
                                    (let ((_%e2195921980%_
                                           (gx#syntax-e _%g2195521977%_)))
                                      (let ((_%hd2196021984%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2195921980%_)))
                                            (_%tl2196121987%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2195921980%_))))
                                        (if (gx#stx-pair? _%tl2196121987%_)
                                            (let ((_%e2196221990%_
                                                   (gx#syntax-e
                                                    _%tl2196121987%_)))
                                              (let ((_%hd2196321994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2196221990%_)))
                                                    (_%tl2196421997%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2196221990%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2196421997%_)
                                                    (let ((_%e2196522000%_
                                                           (gx#syntax-e
                                                            _%tl2196421997%_)))
                                                      (let ((_%hd2196622004%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2196522000%_)))
                    (_%tl2196722007%_
                     (let () (declare (not safe)) (##cdr _%e2196522000%_))))
                (if (gx#stx-null? _%tl2196722007%_)
                    ((lambda (_%L22010%_ _%L22012%_ _%L22013%_)
                       (let* ((_%g2203122046%_
                               (lambda (_%g2203222042%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2203222042%_)))
                              (_%g2203022091%_
                               (lambda (_%g2203222050%_)
                                 (if (gx#stx-pair? _%g2203222050%_)
                                     (let ((_%e2203522053%_
                                            (gx#syntax-e _%g2203222050%_)))
                                       (let ((_%hd2203622057%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2203522053%_)))
                                             (_%tl2203722060%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2203522053%_))))
                                         (if (gx#stx-pair? _%tl2203722060%_)
                                             (let ((_%e2203822063%_
                                                    (gx#syntax-e
                                                     _%tl2203722060%_)))
                                               (let ((_%hd2203922067%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2203822063%_)))
                                                     (_%tl2204022070%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2203822063%_))))
                                                 (if (gx#stx-null?
                                                      _%tl2204022070%_)
                                                     ((lambda (_%L22073%_
                                                               _%L22075%_)
                                                        (cons (_%wrap20993%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'def)
                             (cons _%L22075%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@mop.accessor)
                                                           (cons _%L21324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L22013%_ (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-class-slot-unchecked-accessor)
                         (cons _%L21087%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L22013%_ '()))
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (cons (_%wrap20993%_
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%L22073%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@mop.mutator)
                         (cons _%L21324%_ (cons _%L22013%_ (cons '#f '()))))
                   (cons (cons (gx#datum->syntax
                                '#f
                                'make-class-slot-unchecked-mutator)
                               (cons _%L21087%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L22013%_ '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            '())))
              _%hd2203922067%_
              _%hd2203622057%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2203122046%_
                                                      _%g2203222050%_))))
                                             (_%g2203122046%_
                                              _%g2203222050%_))))
                                     (_%g2203122046%_ _%g2203222050%_)))))
                         (_%g2203022091%_
                          (list (gx#stx-identifier _%L22012%_ '"&" _%L22012%_)
                                (gx#stx-identifier
                                 _%L22010%_
                                 '"&"
                                 _%L22010%_)))))
                     _%hd2196622004%_
                     _%hd2196321994%_
                     _%hd2196021984%_)
                    (_%g2195421973%_ _%g2195521977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2195421973%_
                                                     _%g2195521977%_))))
                                            (_%g2195421973%_
                                             _%g2195521977%_))))
                                    (_%g2195421973%_ _%g2195521977%_)))))
                        (_%g2195322095%_ _%ref21951%_)))
                    _%accessible-slots21144%_))))
              _%def-setf2171421782%_
              _%def-getf2171521785%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop2170821740%_
                                      _%target2170521734%_
                                      '()
                                      '()))
                                   (_%g2170121727%_ _%g2170221731%_)))))
                         (_%g2170121727%_ _%g2170221731%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2170022099%_
                                                      (gx#stx-map
                                                       (lambda (_%ref22103%_)
                                                         (let* ((_%g2210622125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2210722121%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2210722121%_)))
                        (_%g2210522183%_
                         (lambda (_%g2210722129%_)
                           (if (gx#stx-pair? _%g2210722129%_)
                               (let ((_%e2211122132%_
                                      (gx#syntax-e _%g2210722129%_)))
                                 (let ((_%hd2211222136%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2211122132%_)))
                                       (_%tl2211322139%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2211122132%_))))
                                   (if (gx#stx-pair? _%tl2211322139%_)
                                       (let ((_%e2211422142%_
                                              (gx#syntax-e _%tl2211322139%_)))
                                         (let ((_%hd2211522146%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e2211422142%_)))
                                               (_%tl2211622149%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e2211422142%_))))
                                           (if (gx#stx-pair? _%tl2211622149%_)
                                               (let ((_%e2211722152%_
                                                      (gx#syntax-e
                                                       _%tl2211622149%_)))
                                                 (let ((_%hd2211822156%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2211722152%_)))
                                                       (_%tl2211922159%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2211722152%_))))
                                                   (if (gx#stx-null?
                                                        _%tl2211922159%_)
                                                       ((lambda (_%L22162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L22164%_
                         _%L22165%_)
                  (cons (_%wrap20993%_
                         (cons (gx#datum->syntax '#f 'def)
                               (cons _%L22164%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'begin-annotation)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@mop.accessor)
                                                             (cons _%L21324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L22165%_ (cons '#t '()))))
               (cons (cons (gx#datum->syntax '#f 'make-class-slot-accessor)
                           (cons _%L21087%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L22165%_ '()))
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                        (cons (_%wrap20993%_
                               (cons (gx#datum->syntax '#f 'def)
                                     (cons _%L22162%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@mop.mutator)
                           (cons _%L21324%_ (cons _%L22165%_ (cons '#t '()))))
                     (cons (cons (gx#datum->syntax
                                  '#f
                                  'make-class-slot-mutator)
                                 (cons _%L21087%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L22165%_ '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                              '())))
                _%hd2211822156%_
                _%hd2211522146%_
                _%hd2211222136%_)
               (_%g2210622125%_ _%g2210722129%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2210622125%_
                                                _%g2210722129%_))))
                                       (_%g2210622125%_ _%g2210722129%_))))
                               (_%g2210622125%_ _%g2210722129%_)))))
                   (_%g2210522183%_ _%ref22103%_)))
               _%accessible-slots21144%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g2167421685%_))))
                                        (_%g2167222187%_
                                         (_%wrap20993%_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _%L21084%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@mop.predicate)
                                      (cons _%L21324%_ '()))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'make-class-predicate)
                                            (cons _%L21087%_ '()))
                                      '())))
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g2164621657%_))))
                           (_%g2164422191%_
                            (if (gx#stx-false? _%L21085%_)
                                (cons (gx#datum->syntax '#f 'begin) '())
                                (_%wrap20993%_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _%L21085%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin-annotation)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '@mop.constructor)
                             (cons _%L21324%_ '()))
                       (cons (cons (gx#datum->syntax '#f 'lambda)
                                   (cons (gx#datum->syntax '#f '$args)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'apply)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'make-instance)
                                                           (cons _%L21087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))))
                       _%g2161821629%_))))
              (_%g2161622195%_
               (_%wrap20993%_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _%L21087%_
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.class)
                                                    (cons _%L21240%_
                                                          (cons _%L21352%_
                                                                (cons (foldr (lambda (_%g2219822201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              _%g2219922204%_)
                                       (cons _%g2219822201%_ _%g2219922204%_))
                                     '()
                                     _%L21204%_)
                              (cons _%L21296%_
                                    (cons _%L21380%_
                                          (cons _%L21408%_
                                                (cons _%L21436%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L21604%_ '())))
                                  '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2159021601%_))))
                                         (_%g2158822207%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-class-type)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L21240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote) (cons _%L21268%_ '()))
                    (cons _%L21576%_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons (foldr (lambda (_%g2221022213%_
                                                            _%g2221122216%_)
                                                     (cons _%g2221022213%_
                                                           _%g2221122216%_))
                                                   '()
                                                   _%L21204%_)
                                            '()))
                                (cons _%L21548%_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L21296%_ '()))
                                            '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g2156221573%_))))
                            (_%g2156022219%_
                             (cons (gx#datum->syntax '#f 'list) _%L21086%_))))
                        _%g2153421545%_))))
               (_%g2153222223%_
                (if (gx#stx-e _%metaclass21147%_)
                    (let* ((_%g2222722235%_
                            (lambda (_%g2222822231%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2222822231%_)))
                           (_%g2222622254%_
                            (lambda (_%g2222822239%_)
                              ((lambda (_%L22242%_)
                                 (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons 'metaclass:
                                                         (cons '::
                                                               (cons _%L22242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '::
                                                   (cons _%L21520%_ '())))))
                               _%g2222822239%_))))
                      (_%g2222622254%_ _%metaclass21147%_))
                    _%L21520%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g2150621517%_))))
                                          (_%g2150422258%_
                                           (if _%struct?21127%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         (cons 'struct: '#t))
                   (cons ':: (cons _%L21492%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%L21492%_))))
                                      _%g2147821489%_))))
                             (_%g2147622262%_
                              (if (gx#stx-e _%L21408%_)
                                  (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons 'final: '#t))
                                              (cons '::
                                                    (cons _%L21464%_ '()))))
                                  _%L21464%_))))
                         _%g2145021461%_))))
                (_%g2144822266%_
                 (let ((_%$e22270%_ (gx#stx-getq 'properties: _%L21082%_)))
                   (if _%$e22270%_
                       _%$e22270%_
                       (cons (gx#datum->syntax '#f '@list) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g2142221433%_))))
                                           (_%g2142022274%_
                                            (if (gx#stx-e _%metaclass21147%_)
                                                (gx#core-quote-syntax
                                                 _%metaclass21147%_)
                                                '#f))))
                                       _%g2139421405%_))))
                              (_%g2139222278%_
                               (gx#stx-getq 'final: _%L21082%_))))
                          _%g2136621377%_))))
                 (_%g2136422282%_ _%struct?21127%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2133821349%_))))
                                            (_%g2133622286%_
                                             (gx#stx-map
                                              gx#core-quote-syntax
                                              _%L21086%_))))
                                        _%g2131021321%_))))
                               (_%g2130822290%_
                                (gx#core-quote-syntax _%L21087%_))))
                           _%g2128221293%_))))
                  (_%g2128022294%_ (gx#stx-getq 'constructor: _%L21082%_))))
              _%g2125421265%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2125222298%_
                                              (let ((_%$e22302%_
                                                     (gx#stx-getq
                                                      'name:
                                                      _%L21082%_)))
                                                (if _%$e22302%_
                                                    _%$e22302%_
                                                    _%L21087%_)))))
                                         _%g2122621237%_))))
                                (_%g2122422306%_
                                 (let ((_%$e22310%_
                                        (gx#stx-getq 'id: _%L21082%_)))
                                   (if _%$e22310%_
                                       _%$e22310%_
                                       (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                        _%L21087%_))))))
                            _%slot2116121200%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2115621180%_
                                                    _%target2115321174%_
                                                    '()))
                                                 (_%g2115021167%_
                                                  _%g2115121171%_)))))
                                       (_%g2115021167%_ _%g2115121171%_)))))
                           (_%g2114922314%_
                            (gx#stx-map _%slot-name20995%_ _%slots21134%_)))
                         (_%g2099821025%_ _%g2099921029%_)))
                   _%tl2101921079%_
                   _%hd2101821076%_
                   _%hd2101521066%_
                   _%hd2101221056%_
                   _%hd2100921046%_)))
              (_%g2099821025%_ _%g2099921029%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2099821025%_
                                               _%g2099921029%_))))
                                      (_%g2099821025%_ _%g2099921029%_))))
                              (_%g2099821025%_ _%g2099921029%_))))
                      (_%g2099821025%_ _%g2099921029%_)))))
          (_%g2099722318%_ _%stx20989%_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_%stx22432%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22432%_ '#t)))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_%stx22435%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22435%_ '#f))))
