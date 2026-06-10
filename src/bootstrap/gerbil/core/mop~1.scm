(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_%type-t19365%_)
      (let ((_%$e19368%_ (gx#module-context-ns (gx#current-expander-context))))
        (if _%$e19368%_
            ((lambda (_%ns19372%_)
               (gx#stx-identifier
                _%type-t19365%_
                _%ns19372%_
                '"#"
                _%type-t19365%_
                '"::t"))
             _%$e19368%_)
            (gx#stx-identifier _%type-t19365%_ _%type-t19365%_ '"::t")))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_%type-t19362%_)
      (if (gx#module-context? (gx#current-expander-context))
          (|gerbil/core/mop~MOP-1[1]#module-type-id| _%type-t19362%_)
          (make-symbol '"__" (gensym (gx#stx-e _%type-t19362%_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_%stx17950%_ _%struct?17952%_)
      (letrec ((_%wrap17954%_
                (lambda (_%e-stx19359%_)
                  (gx#stx-wrap-source
                   _%e-stx19359%_
                   (gx#stx-source _%stx17950%_))))
               (_%slot-name17956%_
                (lambda (_%slot-spec19276%_)
                  (let* ((_%$%g1927919298%_
                          (lambda (_%$%g1928019294%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%$%g1928019294%_)))
                         (_%$%g1927819355%_
                          (lambda (_%$%g1928019302%_)
                            (if (gx#stx-pair? _%$%g1928019302%_)
                                (let ((_%$%e1928419305%_
                                       (gx#syntax-e _%$%g1928019302%_)))
                                  (let ((_%$%hd1928519309%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1928419305%_)))
                                        (_%$%tl1928619312%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1928419305%_))))
                                    (if (gx#stx-pair? _%$%tl1928619312%_)
                                        (let ((_%$%e1928719315%_
                                               (gx#syntax-e
                                                _%$%tl1928619312%_)))
                                          (let ((_%$%hd1928819319%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e1928719315%_)))
                                                (_%$%tl1928919322%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e1928719315%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl1928919322%_)
                                                (let ((_%$%e1929019325%_
                                                       (gx#syntax-e
                                                        _%$%tl1928919322%_)))
                                                  (let ((_%$%hd1929119329%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e1929019325%_)))
                                                        (_%$%tl1929219332%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e1929019325%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl1929219332%_)
                                                        ((lambda (_%$%g1928119335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g1928219337%_
                          _%$%g1928319338%_)
                   _%$%g1928319338%_)
                 _%$%hd1929119329%_
                 _%$%hd1928819319%_
                 _%$%hd1928519309%_)
                (_%$%g1927919298%_ _%$%g1928019302%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g1927919298%_
                                                 _%$%g1928019302%_))))
                                        (_%$%g1927919298%_
                                         _%$%g1928019302%_))))
                                (_%$%g1927919298%_ _%$%g1928019302%_)))))
                    (_%$%g1927819355%_ _%slot-spec19276%_))))
               (_%class-opt?17957%_
                (lambda (_%key19273%_)
                  (memq (gx#stx-e _%key19273%_)
                        '(struct:
                          slots:
                          id:
                          name:
                          properties:
                          constructor:
                          final:
                          mixin:
                          metaclass:)))))
        (let* ((_%$%g1795917986%_
                (lambda (_%$%g1796017982%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g1796017982%_)))
               (_%$%g1795819269%_
                (lambda (_%$%g1796017990%_)
                  (if (gx#stx-pair? _%$%g1796017990%_)
                      (let ((_%$%e1796617993%_
                             (gx#syntax-e _%$%g1796017990%_)))
                        (let ((_%$%hd1796717997%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1796617993%_)))
                              (_%$%tl1796818000%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1796617993%_))))
                          (if (gx#stx-pair? _%$%tl1796818000%_)
                              (let ((_%$%e1796918003%_
                                     (gx#syntax-e _%$%tl1796818000%_)))
                                (let ((_%$%hd1797018007%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1796918003%_)))
                                      (_%$%tl1797118010%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1796918003%_))))
                                  (if (gx#stx-pair? _%$%tl1797118010%_)
                                      (let ((_%$%e1797218013%_
                                             (gx#syntax-e _%$%tl1797118010%_)))
                                        (let ((_%$%hd1797318017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1797218013%_)))
                                              (_%$%tl1797418020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1797218013%_))))
                                          (if (gx#stx-pair? _%$%tl1797418020%_)
                                              (let ((_%$%e1797518023%_
                                                     (gx#syntax-e
                                                      _%$%tl1797418020%_)))
                                                (let ((_%$%hd1797618027%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e1797518023%_)))
                                                      (_%$%tl1797718030%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e1797518023%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl1797718030%_)
                                                      (let ((_%$%e1797818033%_
                                                             (gx#syntax-e
                                                              _%$%tl1797718030%_)))
                                                        (let ((_%$%hd1797918037%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e1797818033%_)))
                      (_%$%tl1798018040%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e1797818033%_))))
                  ((lambda (_%$%g1796118043%_
                            _%$%g1796218045%_
                            _%$%g1796318046%_
                            _%$%g1796418047%_
                            _%$%g1796518048%_)
                     (if (and (gx#identifier? _%$%g1796518048%_)
                              (gx#identifier-list? _%$%g1796418047%_)
                              (or (gx#identifier? _%$%g1796318046%_)
                                  (gx#stx-false? _%$%g1796318046%_))
                              (gx#identifier? _%$%g1796218045%_)
                              (gx#stx-plist?
                               _%$%g1796118043%_
                               _%class-opt?17957%_))
                         (let* ((_%struct?18088%_
                                 (let ((_%$e18078%_ _%struct?17952%_))
                                   (if _%$e18078%_
                                       _%$e18078%_
                                       (let ((_%$e18082%_
                                              (gx#stx-getq
                                               'struct:
                                               _%$%g1796118043%_)))
                                         (if _%$e18082%_
                                             (gx#stx-e _%$e18082%_)
                                             '#f)))))
                                (_%slots18095%_
                                 (let ((_%$e18091%_
                                        (gx#stx-getq
                                         'slots:
                                         _%$%g1796118043%_)))
                                   (if _%$e18091%_ _%$e18091%_ '())))
                                (_%mixin-slots18102%_
                                 (let ((_%$e18098%_
                                        (gx#stx-getq
                                         'mixin:
                                         _%$%g1796118043%_)))
                                   (if _%$e18098%_ _%$e18098%_ '())))
                                (_%accessible-slots18105%_
                                 (append (gx#syntax->list _%slots18095%_)
                                         (gx#syntax->list
                                          _%mixin-slots18102%_)))
                                (_%metaclass18108%_
                                 (gx#stx-getq 'metaclass: _%$%g1796118043%_))
                                (_%$%g1811118128%_
                                 (lambda (_%$%g1811218124%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g1811218124%_)))
                                (_%$%g1811019265%_
                                 (lambda (_%$%g1811218132%_)
                                   (if (gx#stx-pair/null? _%$%g1811218132%_)
                                       (let ((_g24054_
                                              (gx#syntax-split-splice
                                               _%$%g1811218132%_
                                               '0)))
                                         (begin
                                           (let ((_g24055_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g24054_)
                                                        (##values-length
                                                         _g24054_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g24055_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g24055_)))
                                           (let ((_%$%target1811418135%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g24054_ 0)))
                                                 (_%$%tl1811618138%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g24054_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%$%tl1811618138%_)
                                                 (letrec ((_%$%loop1811718141%_
                                                           (lambda (_%$%hd1811518145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%slot1812118148%_)
                     (if (gx#stx-pair? _%$%hd1811518145%_)
                         (let ((_%$%e1811818150%_
                                (gx#syntax-e _%$%hd1811518145%_)))
                           (let ((_%$%lp-hd1811918154%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e1811818150%_)))
                                 (_%$%lp-tl1812018157%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e1811818150%_))))
                             (_%$%loop1811718141%_
                              _%$%lp-tl1812018157%_
                              (cons _%$%lp-hd1811918154%_
                                    _%$%slot1812118148%_))))
                         (let ((_%$%slot1812218160%_
                                (reverse _%$%slot1812118148%_)))
                           ((lambda (_%$%g1811318163%_)
                              (let* ((_%$%g1818418192%_
                                      (lambda (_%$%g1818518188%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g1818518188%_)))
                                     (_%$%g1818319257%_
                                      (lambda (_%$%g1818518196%_)
                                        ((lambda (_%$%g1818618199%_)
                                           (let* ((_%$%g1821218220%_
                                                   (lambda (_%$%g1821318216%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g1821318216%_)))
                                                  (_%$%g1821119249%_
                                                   (lambda (_%$%g1821318224%_)
                                                     ((lambda (_%$%g1821418227%_)
                                                        (let* ((_%$%g1824018248%_
                                                                (lambda (_%$%g1824118244%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g1824118244%_)))
                       (_%$%g1823919245%_
                        (lambda (_%$%g1824118252%_)
                          ((lambda (_%$%g1824218255%_)
                             (let* ((_%$%g1826818276%_
                                     (lambda (_%$%g1826918272%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g1826918272%_)))
                                    (_%$%g1826719241%_
                                     (lambda (_%$%g1826918280%_)
                                       ((lambda (_%$%g1827018283%_)
                                          (let* ((_%$%g1829618304%_
                                                  (lambda (_%$%g1829718300%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g1829718300%_)))
                                                 (_%$%g1829519237%_
                                                  (lambda (_%$%g1829718308%_)
                                                    ((lambda (_%$%g1829818311%_)
                                                       (let* ((_%$%g1832418332%_
                                                               (lambda (_%$%g1832518328%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g1832518328%_)))
                      (_%$%g1832319233%_
                       (lambda (_%$%g1832518336%_)
                         ((lambda (_%$%g1832618339%_)
                            (let* ((_%$%g1835218360%_
                                    (lambda (_%$%g1835318356%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g1835318356%_)))
                                   (_%$%g1835119229%_
                                    (lambda (_%$%g1835318364%_)
                                      ((lambda (_%$%g1835418367%_)
                                         (let* ((_%$%g1838018388%_
                                                 (lambda (_%$%g1838118384%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g1838118384%_)))
                                                (_%$%g1837919225%_
                                                 (lambda (_%$%g1838118392%_)
                                                   ((lambda (_%$%g1838218395%_)
                                                      (let* ((_%$%g1840818416%_
                                                              (lambda (_%$%g1840918412%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g1840918412%_)))
                     (_%$%g1840719217%_
                      (lambda (_%$%g1840918420%_)
                        ((lambda (_%$%g1841018423%_)
                           (let* ((_%$%g1843618444%_
                                   (lambda (_%$%g1843718440%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g1843718440%_)))
                                  (_%$%g1843519213%_
                                   (lambda (_%$%g1843718448%_)
                                     ((lambda (_%$%g1843818451%_)
                                        (let* ((_%$%g1846418472%_
                                                (lambda (_%$%g1846518468%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g1846518468%_)))
                                               (_%$%g1846319209%_
                                                (lambda (_%$%g1846518476%_)
                                                  ((lambda (_%$%g1846618479%_)
                                                     (let* ((_%$%g1849218500%_
                                                             (lambda (_%$%g1849318496%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%$%g1849318496%_)))
                                                            (_%$%g1849119174%_
                                                             (lambda (_%$%g1849318504%_)
                                                               ((lambda (_%$%g1849418507%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%$%g1852018528%_
                                  (lambda (_%$%g1852118524%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g1852118524%_)))
                                 (_%$%g1851919170%_
                                  (lambda (_%$%g1852118532%_)
                                    ((lambda (_%$%g1852218535%_)
                                       (let* ((_%$%g1854818556%_
                                               (lambda (_%$%g1854918552%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g1854918552%_)))
                                              (_%$%g1854719158%_
                                               (lambda (_%$%g1854918560%_)
                                                 ((lambda (_%$%g1855018563%_)
                                                    (let* ((_%$%g1857618584%_
                                                            (lambda (_%$%g1857718580%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g1857718580%_)))
                                                           (_%$%g1857519146%_
                                                            (lambda (_%$%g1857718588%_)
                                                              ((lambda (_%$%g1857818591%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%$%g1860418612%_
                                 (lambda (_%$%g1860518608%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g1860518608%_)))
                                (_%$%g1860319142%_
                                 (lambda (_%$%g1860518616%_)
                                   ((lambda (_%$%g1860618619%_)
                                      (let* ((_%$%g1863218640%_
                                              (lambda (_%$%g1863318636%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g1863318636%_)))
                                             (_%$%g1863119138%_
                                              (lambda (_%$%g1863318644%_)
                                                ((lambda (_%$%g1863418647%_)
                                                   (let* ((_%$%g1866018686%_
                                                           (lambda (_%$%g1866118682%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%$%g1866118682%_)))
                                                          (_%$%g1865919050%_
                                                           (lambda (_%$%g1866118690%_)
                                                             (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g1866118690%_)
                         (let ((_g24056_
                                (gx#syntax-split-splice _%$%g1866118690%_ '0)))
                           (begin
                             (let ((_g24057_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g24056_)
                                          (##values-length _g24056_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g24057_ 2)))
                                   (error "Context expects 2 values"
                                          _g24057_)))
                             (let ((_%$%target1866418693%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g24056_ 0)))
                                   (_%$%tl1866618696%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g24056_ 1))))
                               (if (gx#stx-null? _%$%tl1866618696%_)
                                   (letrec ((_%$%loop1866718699%_
                                             (lambda (_%$%hd1866518703%_
                                                      _%$%def-setf1867118706%_
                                                      _%$%def-getf1867218707%_)
                                               (if (gx#stx-pair?
                                                    _%$%hd1866518703%_)
                                                   (let ((_%$%e1866818709%_
                                                          (gx#syntax-e
                                                           _%$%hd1866518703%_)))
                                                     (let ((_%$%lp-hd1866918713%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e1866818709%_)))
                                                           (_%$%lp-tl1867018716%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e1866818709%_))))
                                                       (if (gx#stx-pair?
                                                            _%$%lp-hd1866918713%_)
                                                           (let ((_%$%e1867518719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%lp-hd1866918713%_)))
                     (let ((_%$%hd1867618723%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e1867518719%_)))
                           (_%$%tl1867718726%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e1867518719%_))))
                       (if (gx#stx-pair? _%$%tl1867718726%_)
                           (let ((_%$%e1867818729%_
                                  (gx#syntax-e _%$%tl1867718726%_)))
                             (let ((_%$%hd1867918733%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e1867818729%_)))
                                   (_%$%tl1868018736%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e1867818729%_))))
                               (if (gx#stx-null? _%$%tl1868018736%_)
                                   (_%$%loop1866718699%_
                                    _%$%lp-tl1867018716%_
                                    (cons _%$%hd1867918733%_
                                          _%$%def-setf1867118706%_)
                                    (cons _%$%hd1867618723%_
                                          _%$%def-getf1867218707%_))
                                   (_%$%g1866018686%_ _%$%g1866118690%_))))
                           (_%$%g1866018686%_ _%$%g1866118690%_))))
                   (_%$%g1866018686%_ _%$%g1866118690%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%$%def-setf1867318739%_
                                                          (reverse _%$%def-setf1867118706%_))
                                                         (_%$%def-getf1867418741%_
                                                          (reverse _%$%def-getf1867218707%_)))
                                                     ((lambda (_%$%g1866218743%_
                                                               _%$%g1866318745%_)
                                                        (let* ((_%$%g1876218788%_
                                                                (lambda (_%$%g1876318784%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g1876318784%_)))
                       (_%$%g1876118898%_
                        (lambda (_%$%g1876318792%_)
                          (if (gx#stx-pair/null? _%$%g1876318792%_)
                              (let ((_g24058_
                                     (gx#syntax-split-splice
                                      _%$%g1876318792%_
                                      '0)))
                                (begin
                                  (let ((_g24059_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g24058_)
                                               (##values-length _g24058_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g24059_ 2)))
                                        (error "Context expects 2 values"
                                               _g24059_)))
                                  (let ((_%$%target1876618795%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g24058_ 0)))
                                        (_%$%tl1876818798%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g24058_ 1))))
                                    (if (gx#stx-null? _%$%tl1876818798%_)
                                        (letrec ((_%$%loop1876918801%_
                                                  (lambda (_%$%hd1876718805%_
                                                           _%$%def-usetf1877318808%_
                                                           _%$%def-ugetf1877418809%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd1876718805%_)
                                                        (let ((_%$%e1877018811%_
                                                               (gx#syntax-e
                                                                _%$%hd1876718805%_)))
                                                          (let ((_%$%lp-hd1877118815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e1877018811%_)))
                        (_%$%lp-tl1877218818%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e1877018811%_))))
                    (if (gx#stx-pair? _%$%lp-hd1877118815%_)
                        (let ((_%$%e1877718821%_
                               (gx#syntax-e _%$%lp-hd1877118815%_)))
                          (let ((_%$%hd1877818825%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e1877718821%_)))
                                (_%$%tl1877918828%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e1877718821%_))))
                            (if (gx#stx-pair? _%$%tl1877918828%_)
                                (let ((_%$%e1878018831%_
                                       (gx#syntax-e _%$%tl1877918828%_)))
                                  (let ((_%$%hd1878118835%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1878018831%_)))
                                        (_%$%tl1878218838%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1878018831%_))))
                                    (if (gx#stx-null? _%$%tl1878218838%_)
                                        (_%$%loop1876918801%_
                                         _%$%lp-tl1877218818%_
                                         (cons _%$%hd1878118835%_
                                               _%$%def-usetf1877318808%_)
                                         (cons _%$%hd1877818825%_
                                               _%$%def-ugetf1877418809%_))
                                        (_%$%g1876218788%_
                                         _%$%g1876318792%_))))
                                (_%$%g1876218788%_ _%$%g1876318792%_))))
                        (_%$%g1876218788%_ _%$%g1876318792%_))))
                (let ((_%$%def-usetf1877518841%_
                       (reverse _%$%def-usetf1877318808%_))
                      (_%$%def-ugetf1877618843%_
                       (reverse _%$%def-ugetf1877418809%_)))
                  ((lambda (_%$%g1876418845%_ _%$%g1876518847%_)
                     (_%wrap17954%_
                      (cons (gx#datum->syntax '#f 'begin)
                            (cons _%$%g1857818591%_
                                  (cons _%$%g1863418647%_
                                        (cons _%$%g1860618619%_
                                              (foldr (lambda (_%$%g1886518874%_
                                                              _%$%g1886618877%_)
                                                       (cons _%$%g1886518874%_
                                                             _%$%g1886618877%_))
                                                     (foldr (lambda (_%$%g1886718880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g1886818883%_)
                      (cons _%$%g1886718880%_ _%$%g1886818883%_))
                    (foldr (lambda (_%$%g1886918886%_ _%$%g1887018889%_)
                             (cons _%$%g1886918886%_ _%$%g1887018889%_))
                           (foldr (lambda (_%$%g1887118892%_ _%$%g1887218895%_)
                                    (cons _%$%g1887118892%_ _%$%g1887218895%_))
                                  '()
                                  _%$%g1876418845%_)
                           _%$%g1876518847%_)
                    _%$%g1866218743%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$%g1866318745%_)))))))
                   _%$%def-usetf1877518841%_
                   _%$%def-ugetf1877618843%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop1876918801%_
                                           _%$%target1876618795%_
                                           '()
                                           '()))
                                        (_%$%g1876218788%_
                                         _%$%g1876318792%_)))))
                              (_%$%g1876218788%_ _%$%g1876318792%_)))))
                  (_%$%g1876118898%_
                   (gx#stx-map
                    (lambda (_%ref18902%_)
                      (let* ((_%$%g1890518924%_
                              (lambda (_%$%g1890618920%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g1890618920%_)))
                             (_%$%g1890419046%_
                              (lambda (_%$%g1890618928%_)
                                (if (gx#stx-pair? _%$%g1890618928%_)
                                    (let ((_%$%e1891018931%_
                                           (gx#syntax-e _%$%g1890618928%_)))
                                      (let ((_%$%hd1891118935%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e1891018931%_)))
                                            (_%$%tl1891218938%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e1891018931%_))))
                                        (if (gx#stx-pair? _%$%tl1891218938%_)
                                            (let ((_%$%e1891318941%_
                                                   (gx#syntax-e
                                                    _%$%tl1891218938%_)))
                                              (let ((_%$%hd1891418945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e1891318941%_)))
                                                    (_%$%tl1891518948%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e1891318941%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl1891518948%_)
                                                    (let ((_%$%e1891618951%_
                                                           (gx#syntax-e
                                                            _%$%tl1891518948%_)))
                                                      (let ((_%$%hd1891718955%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e1891618951%_)))
                    (_%$%tl1891818958%_
                     (let () (declare (not safe)) (##cdr _%$%e1891618951%_))))
                (if (gx#stx-null? _%$%tl1891818958%_)
                    ((lambda (_%$%g1890718961%_
                              _%$%g1890818963%_
                              _%$%g1890918964%_)
                       (let* ((_%$%g1898218997%_
                               (lambda (_%$%g1898318993%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g1898318993%_)))
                              (_%$%g1898119042%_
                               (lambda (_%$%g1898319001%_)
                                 (if (gx#stx-pair? _%$%g1898319001%_)
                                     (let ((_%$%e1898619004%_
                                            (gx#syntax-e _%$%g1898319001%_)))
                                       (let ((_%$%hd1898719008%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e1898619004%_)))
                                             (_%$%tl1898819011%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e1898619004%_))))
                                         (if (gx#stx-pair? _%$%tl1898819011%_)
                                             (let ((_%$%e1898919014%_
                                                    (gx#syntax-e
                                                     _%$%tl1898819011%_)))
                                               (let ((_%$%hd1899019018%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e1898919014%_)))
                                                     (_%$%tl1899119021%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e1898919014%_))))
                                                 (if (gx#stx-null?
                                                      _%$%tl1899119021%_)
                                                     ((lambda (_%$%g1898419024%_
                                                               _%$%g1898519026%_)
                                                        (cons (_%wrap17954%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'def)
                             (cons _%$%g1898519026%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@mop.accessor)
                                                           (cons _%$%g1827018283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g1890918964%_ (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-class-slot-unchecked-accessor)
                         (cons _%$%g1796518048%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%$%g1890918964%_ '()))
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (cons (_%wrap17954%_
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%$%g1898419024%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@mop.mutator)
                         (cons _%$%g1827018283%_
                               (cons _%$%g1890918964%_ (cons '#f '()))))
                   (cons (cons (gx#datum->syntax
                                '#f
                                'make-class-slot-unchecked-mutator)
                               (cons _%$%g1796518048%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%$%g1890918964%_ '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            '())))
              _%$%hd1899019018%_
              _%$%hd1898719008%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g1898218997%_
                                                      _%$%g1898319001%_))))
                                             (_%$%g1898218997%_
                                              _%$%g1898319001%_))))
                                     (_%$%g1898218997%_ _%$%g1898319001%_)))))
                         (_%$%g1898119042%_
                          (list (gx#stx-identifier
                                 _%$%g1890818963%_
                                 '"&"
                                 _%$%g1890818963%_)
                                (gx#stx-identifier
                                 _%$%g1890718961%_
                                 '"&"
                                 _%$%g1890718961%_)))))
                     _%$%hd1891718955%_
                     _%$%hd1891418945%_
                     _%$%hd1891118935%_)
                    (_%$%g1890518924%_ _%$%g1890618928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g1890518924%_
                                                     _%$%g1890618928%_))))
                                            (_%$%g1890518924%_
                                             _%$%g1890618928%_))))
                                    (_%$%g1890518924%_ _%$%g1890618928%_)))))
                        (_%$%g1890419046%_ _%ref18902%_)))
                    _%accessible-slots18105%_))))
              _%$%def-setf1867318739%_
              _%$%def-getf1867418741%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%loop1866718699%_
                                      _%$%target1866418693%_
                                      '()
                                      '()))
                                   (_%$%g1866018686%_ _%$%g1866118690%_)))))
                         (_%$%g1866018686%_ _%$%g1866118690%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g1865919050%_
                                                      (gx#stx-map
                                                       (lambda (_%ref19054%_)
                                                         (let* ((_%$%g1905719076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%g1905819072%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g1905819072%_)))
                        (_%$%g1905619134%_
                         (lambda (_%$%g1905819080%_)
                           (if (gx#stx-pair? _%$%g1905819080%_)
                               (let ((_%$%e1906219083%_
                                      (gx#syntax-e _%$%g1905819080%_)))
                                 (let ((_%$%hd1906319087%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e1906219083%_)))
                                       (_%$%tl1906419090%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e1906219083%_))))
                                   (if (gx#stx-pair? _%$%tl1906419090%_)
                                       (let ((_%$%e1906519093%_
                                              (gx#syntax-e
                                               _%$%tl1906419090%_)))
                                         (let ((_%$%hd1906619097%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e1906519093%_)))
                                               (_%$%tl1906719100%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e1906519093%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl1906719100%_)
                                               (let ((_%$%e1906819103%_
                                                      (gx#syntax-e
                                                       _%$%tl1906719100%_)))
                                                 (let ((_%$%hd1906919107%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e1906819103%_)))
                                                       (_%$%tl1907019110%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e1906819103%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl1907019110%_)
                                                       ((lambda (_%$%g1905919113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g1906019115%_
                         _%$%g1906119116%_)
                  (cons (_%wrap17954%_
                         (cons (gx#datum->syntax '#f 'def)
                               (cons _%$%g1906019115%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'begin-annotation)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@mop.accessor)
                                                             (cons _%$%g1827018283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g1906119116%_ (cons '#t '()))))
               (cons (cons (gx#datum->syntax '#f 'make-class-slot-accessor)
                           (cons _%$%g1796518048%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%$%g1906119116%_ '()))
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                        (cons (_%wrap17954%_
                               (cons (gx#datum->syntax '#f 'def)
                                     (cons _%$%g1905919113%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@mop.mutator)
                           (cons _%$%g1827018283%_
                                 (cons _%$%g1906119116%_ (cons '#t '()))))
                     (cons (cons (gx#datum->syntax
                                  '#f
                                  'make-class-slot-mutator)
                                 (cons _%$%g1796518048%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%$%g1906119116%_
                                                         '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                              '())))
                _%$%hd1906919107%_
                _%$%hd1906619097%_
                _%$%hd1906319087%_)
               (_%$%g1905719076%_ _%$%g1905819080%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g1905719076%_
                                                _%$%g1905819080%_))))
                                       (_%$%g1905719076%_ _%$%g1905819080%_))))
                               (_%$%g1905719076%_ _%$%g1905819080%_)))))
                   (_%$%g1905619134%_ _%ref19054%_)))
               _%accessible-slots18105%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%g1863318644%_))))
                                        (_%$%g1863119138%_
                                         (_%wrap17954%_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _%$%g1796218045%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@mop.predicate)
                                      (cons _%$%g1827018283%_ '()))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'make-class-predicate)
                                            (cons _%$%g1796518048%_ '()))
                                      '())))
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$%g1860518616%_))))
                           (_%$%g1860319142%_
                            (if (gx#stx-false? _%$%g1796318046%_)
                                (cons (gx#datum->syntax '#f 'begin) '())
                                (_%wrap17954%_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _%$%g1796318046%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin-annotation)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '@mop.constructor)
                             (cons _%$%g1827018283%_ '()))
                       (cons (cons (gx#datum->syntax '#f 'lambda)
                                   (cons (gx#datum->syntax '#f '$args)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'apply)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'make-instance)
                                                           (cons _%$%g1796518048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))))
                       _%$%g1857718588%_))))
              (_%$%g1857519146%_
               (_%wrap17954%_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _%$%g1796518048%_
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.class)
                                                    (cons _%$%g1818618199%_
                                                          (cons _%$%g1829818311%_
                                                                (cons (foldr (lambda (_%$%g1914919152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              _%$%g1915019155%_)
                                       (cons _%$%g1914919152%_
                                             _%$%g1915019155%_))
                                     '()
                                     _%$%g1811318163%_)
                              (cons _%$%g1824218255%_
                                    (cons _%$%g1832618339%_
                                          (cons _%$%g1835418367%_
                                                (cons _%$%g1838218395%_
                                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%$%g1855018563%_ '())))
                                  '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$%g1854918560%_))))
                                         (_%$%g1854719158%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-class-type)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%$%g1818618199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote)
                          (cons _%$%g1821418227%_ '()))
                    (cons _%$%g1852218535%_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons (foldr (lambda (_%$%g1916119164%_
                                                            _%$%g1916219167%_)
                                                     (cons _%$%g1916119164%_
                                                           _%$%g1916219167%_))
                                                   '()
                                                   _%$%g1811318163%_)
                                            '()))
                                (cons _%$%g1849418507%_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%$%g1824218255%_ '()))
                                            '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%$%g1852118532%_))))
                            (_%$%g1851919170%_
                             (cons (gx#datum->syntax '#f 'list)
                                   _%$%g1796418047%_))))
                        _%$%g1849318504%_))))
               (_%$%g1849119174%_
                (if (gx#stx-e _%metaclass18108%_)
                    (let* ((_%$%g1917819186%_
                            (lambda (_%$%g1917919182%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g1917919182%_)))
                           (_%$%g1917719205%_
                            (lambda (_%$%g1917919190%_)
                              ((lambda (_%$%g1918019193%_)
                                 (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons 'metaclass:
                                                         (cons '::
                                                               (cons _%$%g1918019193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '::
                                                   (cons _%$%g1846618479%_
                                                         '())))))
                               _%$%g1917919190%_))))
                      (_%$%g1917719205%_ _%metaclass18108%_))
                    _%$%g1846618479%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%g1846518476%_))))
                                          (_%$%g1846319209%_
                                           (if _%struct?18088%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         (cons 'struct: '#t))
                   (cons ':: (cons _%$%g1843818451%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%g1843818451%_))))
                                      _%$%g1843718448%_))))
                             (_%$%g1843519213%_
                              (if (gx#stx-e _%$%g1835418367%_)
                                  (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons 'final: '#t))
                                              (cons '::
                                                    (cons _%$%g1841018423%_
                                                          '()))))
                                  _%$%g1841018423%_))))
                         _%$%g1840918420%_))))
                (_%$%g1840719217%_
                 (let ((_%$e19221%_
                        (gx#stx-getq 'properties: _%$%g1796118043%_)))
                   (if _%$e19221%_
                       _%$e19221%_
                       (cons (gx#datum->syntax '#f '@list) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$%g1838118392%_))))
                                           (_%$%g1837919225%_
                                            (if (gx#stx-e _%metaclass18108%_)
                                                (gx#core-quote-syntax
                                                 _%metaclass18108%_)
                                                '#f))))
                                       _%$%g1835318364%_))))
                              (_%$%g1835119229%_
                               (gx#stx-getq 'final: _%$%g1796118043%_))))
                          _%$%g1832518336%_))))
                 (_%$%g1832319233%_ _%struct?18088%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$%g1829718308%_))))
                                            (_%$%g1829519237%_
                                             (gx#stx-map
                                              gx#core-quote-syntax
                                              _%$%g1796418047%_))))
                                        _%$%g1826918280%_))))
                               (_%$%g1826719241%_
                                (gx#core-quote-syntax _%$%g1796518048%_))))
                           _%$%g1824118252%_))))
                  (_%$%g1823919245%_
                   (gx#stx-getq 'constructor: _%$%g1796118043%_))))
              _%$%g1821318224%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g1821119249%_
                                              (let ((_%$e19253%_
                                                     (gx#stx-getq
                                                      'name:
                                                      _%$%g1796118043%_)))
                                                (if _%$e19253%_
                                                    _%$e19253%_
                                                    _%$%g1796518048%_)))))
                                         _%$%g1818518196%_))))
                                (_%$%g1818319257%_
                                 (let ((_%$e19261%_
                                        (gx#stx-getq 'id: _%$%g1796118043%_)))
                                   (if _%$e19261%_
                                       _%$e19261%_
                                       (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                        _%$%g1796518048%_))))))
                            _%$%slot1812218160%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%loop1811718141%_
                                                    _%$%target1811418135%_
                                                    '()))
                                                 (_%$%g1811118128%_
                                                  _%$%g1811218132%_)))))
                                       (_%$%g1811118128%_
                                        _%$%g1811218132%_)))))
                           (_%$%g1811019265%_
                            (gx#stx-map _%slot-name17956%_ _%slots18095%_)))
                         (_%$%g1795917986%_ _%$%g1796017990%_)))
                   _%$%tl1798018040%_
                   _%$%hd1797918037%_
                   _%$%hd1797618027%_
                   _%$%hd1797318017%_
                   _%$%hd1797018007%_)))
              (_%$%g1795917986%_ _%$%g1796017990%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g1795917986%_
                                               _%$%g1796017990%_))))
                                      (_%$%g1795917986%_ _%$%g1796017990%_))))
                              (_%$%g1795917986%_ _%$%g1796017990%_))))
                      (_%$%g1795917986%_ _%$%g1796017990%_)))))
          (_%$%g1795819269%_ _%stx17950%_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_%stx19380%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx19380%_ '#t)))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_%stx19383%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx19383%_ '#f))))
