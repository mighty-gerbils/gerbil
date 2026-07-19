(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/sugar~QuasiquoteExpander::timestamp 1784278999)
  (begin
    (define gerbil/core/sugar~QuasiquoteExpander#_g21835_
      (##structure
       gx#syntax-quote::t
       'unquote-splicing
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/sugar~QuasiquoteExpander#_g21842_
      (##structure
       gx#syntax-quote::t
       'unquote-splicing
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/sugar~QuasiquoteExpander#_g21843_
      (##structure
       gx#syntax-quote::t
       'unquote
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/sugar~QuasiquoteExpander#_g21844_
      (##structure
       gx#syntax-quote::t
       'quasiquote
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/sugar~QuasiquoteExpander#_g21845_
      (##structure
       gx#syntax-quote::t
       'qq-quote
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/sugar~QuasiquoteExpander#_g21846_
      (##structure
       gx#syntax-quote::t
       'unquote-splicing
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/sugar~QuasiquoteExpander#_g21847_
      (##structure
       gx#syntax-quote::t
       'qq-list
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/sugar~QuasiquoteExpander#_g21848_
      (##structure
       gx#syntax-quote::t
       'qq-list*
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/sugar~QuasiquoteExpander#_g21849_
      (##structure
       gx#syntax-quote::t
       'qq-append
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/sugar~QuasiquoteExpander#_g21850_
      (##structure
       gx#syntax-quote::t
       'qq-quote
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/sugar~QuasiquoteExpander#_g21852_
      (##structure
       gx#syntax-quote::t
       'unquote-splicing
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/sugar~QuasiquoteExpander#_g21853_
      (##structure
       gx#syntax-quote::t
       'qq-quote
       #f
       (gx#current-expander-context)
       '()))
    (begin
      (define gerbil/core/sugar~QuasiquoteExpander#quasiquote-expand-0
        (lambda (_%e18281%_)
          (let* ((_%__stx2150421505%_ _%e18281%_)
                 (_%$%g1829218343%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2150421505%_))))
            (let ((_%__kont2150621507%_ (lambda () (values 'qq-null '())))
                  (_%__kont2150821509%_
                   (lambda () (values 'qq-quote _%e18281%_)))
                  (_%__kont2151021511%_
                   (lambda () (values 'qq-quote _%e18281%_)))
                  (_%__kont2151221513%_
                   (lambda (_%$%g1830018944%_)
                     (values 'unquote-splicing _%$%g1830018944%_)))
                  (_%__kont2151421515%_
                   (lambda (_%$%g1830718912%_)
                     (values 'unquote _%$%g1830718912%_)))
                  (_%__kont2151621517%_
                   (lambda (_%$%g1831418880%_)
                     (gerbil/core/sugar~QuasiquoteExpander#quasiquote-expand-0
                      (gerbil/core/sugar~QuasiquoteExpander#quasiquote-expand
                       _%$%g1831418880%_))))
                  (_%__kont2151821519%_
                   (lambda (_%$%g1832118600%_ _%$%g1832218601%_)
                     (let ((_g21831_
                            (gerbil/core/sugar~QuasiquoteExpander#quasiquote-expand-0
                             _%$%g1832218601%_))
                           (_g21833_
                            (gerbil/core/sugar~QuasiquoteExpander#quasiquote-expand-0
                             _%$%g1832118600%_)))
                       (begin
                         (let ((_g21832_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g21831_)
                                      (##values-length _g21831_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g21832_ 2)))
                               (error "Context expects 2 values" _g21832_)))
                         (let ((_g21834_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g21833_)
                                      (##values-length _g21833_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g21834_ 2)))
                               (error "Context expects 2 values" _g21834_)))
                         (let ((_%atop18611%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21831_ 0)))
                               (_%a18612%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21831_ 1))))
                           (let ((_%dtop18613%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g21833_ 0)))
                                 (_%d18614%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g21833_ 1))))
                             (begin
                               (if (eq? _%dtop18613%_ 'unquote-splicing)
                                   (gx#raise-syntax-error
                                    '#f
                                    '",@ after dot"
                                    _%e18281%_)
                                   '#!void)
                               (let* ((_%$%g1861618623%_
                                       (lambda (_%$%g1861718620%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%$%g1861718620%_)))
                                      (_%$%g1861518856%_
                                       (lambda (_%$%g1861718626%_)
                                         (let* ((_%$%g1863818645%_
                                                 (lambda (_%$%g1863918642%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g1863918642%_)))
                                                (_%$%g1863718853%_
                                                 (lambda (_%$%g1863918648%_)
                                                   (if (eq? _%atop18611%_
                                                            'unquote-splicing)
                                                       (if (eq? _%dtop18613%_
                                                                'qq-null)
                                                           (let* ((_%__stx2147821479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%a18612%_)
                          (_%$%g1866218674%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx2147821479%_))))
                     (let ((_%__kont2148021481%_
                            (lambda ()
                              (values 'qq-append
                                      (cons _%$%g1861718626%_ '()))))
                           (_%__kont2148221483%_
                            (lambda ()
                              (gerbil/core/sugar~QuasiquoteExpander#unquote-expand
                               _%a18612%_))))
                       (if (gx#stx-pair? _%__stx2147821479%_)
                           (let ((_%$%e1866418686%_
                                  (gx#syntax-e _%__stx2147821479%_)))
                             (let ((_%$%tl1866618691%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e1866418686%_)))
                                   (_%$%hd1866518689%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e1866418686%_))))
                               (if (gx#identifier? _%$%hd1866518689%_)
                                   (if (gx#free-identifier=?
                                        gerbil/core/sugar~QuasiquoteExpander#_g21835_
                                        _%$%hd1866518689%_)
                                       (if (gx#stx-pair? _%$%tl1866618691%_)
                                           (let ((_%$%e1866718694%_
                                                  (gx#syntax-e
                                                   _%$%tl1866618691%_)))
                                             (let ((_%$%tl1866918699%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e1866718694%_)))
                                                   (_%$%hd1866818697%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e1866718694%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl1866918699%_)
                                                   (_%__kont2148021481%_)
                                                   (_%__kont2148221483%_))))
                                           (_%__kont2148221483%_))
                                       (_%__kont2148221483%_))
                                   (_%__kont2148221483%_))))
                           (_%__kont2148221483%_))))
                   (values 'qq-append
                           (if (eq? _%dtop18613%_ 'qq-append)
                               (cons _%$%g1861718626%_ _%$%g1863918648%_)
                               (let* ((_%$%g1870718714%_
                                       (lambda (_%$%g1870818711%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%$%g1870818711%_)))
                                      (_%$%g1870618730%_
                                       (lambda (_%$%g1870818717%_)
                                         (cons _%$%g1861718626%_
                                               (cons _%$%g1870818717%_ '())))))
                                 (_%$%g1870618730%_
                                  (gerbil/core/sugar~QuasiquoteExpander#quasiquote-expand-1
                                   _%dtop18613%_
                                   _%d18614%_))))))
               (let* ((_%default18787%_
                       (lambda ()
                         (let* ((_%$%g1873418748%_
                                 (lambda (_%$%g1873518745%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g1873518745%_)))
                                (_%$%g1873318784%_
                                 (lambda (_%$%g1873518751%_)
                                   (if (gx#stx-pair? _%$%g1873518751%_)
                                       (let ((_%$%e1873818753%_
                                              (gx#syntax-e _%$%g1873518751%_)))
                                         (let ((_%$%hd1873918756%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e1873818753%_)))
                                               (_%$%tl1874018758%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e1873818753%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl1874018758%_)
                                               (let ((_%$%e1874118761%_
                                                      (gx#syntax-e
                                                       _%$%tl1874018758%_)))
                                                 (let ((_%$%hd1874218764%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e1874118761%_)))
                                                       (_%$%tl1874318766%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e1874118761%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl1874318766%_)
                                                       (values 'qq-list*
                                                               (cons _%$%hd1873918756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%$%hd1874218764%_ '())))
               (_%$%g1873418748%_ _%$%g1873518751%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g1873418748%_
                                                _%$%g1873518751%_))))
                                       (_%$%g1873418748%_
                                        _%$%g1873518751%_)))))
                           (_%$%g1873318784%_
                            (list (gerbil/core/sugar~QuasiquoteExpander#quasiquote-expand-1
                                   _%atop18611%_
                                   _%a18612%_)
                                  (gerbil/core/sugar~QuasiquoteExpander#quasiquote-expand-1
                                   _%dtop18613%_
                                   _%d18614%_))))))
                      (_%$e18789%_ _%dtop18613%_))
                 (if (or (eq? 'qq-quote _%$e18789%_)
                         (eq? 'qq-literal _%$e18789%_)
                         (eq? 'qq-null _%$e18789%_))
                     (if (let ()
                           (declare (not safe))
                           (##member
                            _%atop18611%_
                            '(qq-quote qq-literal qq-null)))
                         (values 'qq-quote
                                 (cons _%$%g1861718626%_ _%$%g1863918648%_))
                         (if (eq? _%dtop18613%_ 'qq-null)
                             (let* ((_%$%g1880018807%_
                                     (lambda (_%$%g1880118804%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g1880118804%_)))
                                    (_%$%g1879918823%_
                                     (lambda (_%$%g1880118810%_)
                                       (values 'qq-list
                                               (cons _%$%g1880118810%_ '())))))
                               (_%$%g1879918823%_
                                (gerbil/core/sugar~QuasiquoteExpander#quasiquote-expand-1
                                 _%atop18611%_
                                 _%a18612%_)))
                             (_%default18787%_)))
                     (if (or (eq? 'qq-list _%$e18789%_)
                             (eq? 'qq-list* _%$e18789%_))
                         (let* ((_%$%g1883018837%_
                                 (lambda (_%$%g1883118834%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g1883118834%_)))
                                (_%$%g1882918850%_
                                 (lambda (_%$%g1883118840%_)
                                   (values _%dtop18613%_
                                           (cons _%$%g1883118840%_
                                                 _%$%g1863918648%_)))))
                           (_%$%g1882918850%_
                            (gerbil/core/sugar~QuasiquoteExpander#quasiquote-expand-1
                             _%atop18611%_
                             _%a18612%_)))
                         (_%default18787%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g1863718853%_ _%d18614%_)))))
                                 (_%$%g1861518856%_ _%a18612%_)))))))))
                  (_%__kont2152021521%_
                   (lambda (_%$%g1832618468%_)
                     (let ((_g21836_
                            (gerbil/core/sugar~QuasiquoteExpander#quasiquote-expand-0
                             (foldr (lambda (_%$%g1847918482%_
                                             _%$%g1848018484%_)
                                      (cons _%$%g1847918482%_
                                            _%$%g1848018484%_))
                                    '()
                                    _%$%g1832618468%_))))
                       (begin
                         (let ((_g21837_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g21836_)
                                      (##values-length _g21836_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g21837_ 2)))
                               (error "Context expects 2 values" _g21837_)))
                         (let ((_%top18487%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21836_ 0)))
                               (_%r118488%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21836_ 1))))
                           (let* ((_%$%g1849018506%_
                                   (lambda (_%$%g1849118503%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g1849118503%_)))
                                  (_%$%g1848918584%_
                                   (lambda (_%$%g1849118509%_)
                                     (if (gx#stx-pair/null? _%$%g1849118509%_)
                                         (let ((_g21838_
                                                (gx#syntax-split-splice
                                                 _%$%g1849118509%_
                                                 '0)))
                                           (begin
                                             (let ((_g21839_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g21838_)
                                                          (##values-length
                                                           _g21838_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g21839_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g21839_)))
                                             (let ((_%$%target1849318511%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##values-ref
                                                       _g21838_
                                                       0)))
                                                   (_%$%tl1849518513%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##values-ref
                                                       _g21838_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _%$%tl1849518513%_)
                                                   (letrec ((_%$%loop1849618516%_
                                                             (lambda (_%$%hd1849418519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%r11850018521%_)
                       (if (gx#stx-pair? _%$%hd1849418519%_)
                           (let ((_%$%e1849718523%_
                                  (gx#syntax-e _%$%hd1849418519%_)))
                             (let ((_%$%lp-hd1849818526%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e1849718523%_)))
                                   (_%$%lp-tl1849918528%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e1849718523%_))))
                               (_%$%loop1849618516%_
                                _%$%lp-tl1849918528%_
                                (cons _%$%lp-hd1849818526%_
                                      _%$%r11850018521%_))))
                           (let* ((_%$%r11850118531%_
                                   (reverse _%$%r11850018521%_))
                                  (_%$e18547%_ _%top18487%_))
                             (if (or (eq? 'qq-quote _%$e18547%_)
                                     (eq? 'qq-literal _%$e18547%_)
                                     (eq? 'qq-null _%$e18547%_))
                                 (values 'qq-quote
                                         (list->vector
                                          (foldr (lambda (_%$%g1855518558%_
                                                          _%$%g1855618560%_)
                                                   (cons _%$%g1855518558%_
                                                         _%$%g1855618560%_))
                                                 '()
                                                 _%$%r11850118531%_)))
                                 (if (eq? 'qq-list _%$e18547%_)
                                     (values 'unquote
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'vector)
                                                   (foldr (lambda (_%$%g1856218565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g1856318567%_)
                    (cons _%$%g1856218565%_ _%$%g1856318567%_))
                  '()
                  _%$%r11850118531%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (eq? 'qq-list* _%$e18547%_)
                                         (values 'unquote
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'list->vector)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'qq-list*)
                           (foldr (lambda (_%$%g1856918572%_ _%$%g1857018574%_)
                                    (cons _%$%g1856918572%_ _%$%g1857018574%_))
                                  '()
                                  _%$%r11850118531%_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (eq? 'qq-append _%$e18547%_)
                                             (values 'unquote
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'list->vector)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'qq-append)
                               (foldr (lambda (_%$%g1857618579%_
                                               _%$%g1857718581%_)
                                        (cons _%$%g1857618579%_
                                              _%$%g1857718581%_))
                                      '()
                                      _%$%r11850118531%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '#!void)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%loop1849618516%_
                                                      _%$%target1849318511%_
                                                      '()))
                                                   (_%$%g1849018506%_
                                                    _%$%g1849118509%_)))))
                                         (_%$%g1849018506%_
                                          _%$%g1849118509%_)))))
                             (_%$%g1848918584%_ _%r118488%_)))))))
                  (_%__kont2152421525%_
                   (lambda (_%$%g1833718358%_)
                     (let ((_g21840_
                            (gerbil/core/sugar~QuasiquoteExpander#quasiquote-expand-0
                             _%$%g1833718358%_)))
                       (begin
                         (let ((_g21841_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g21840_)
                                      (##values-length _g21840_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g21841_ 2)))
                               (error "Context expects 2 values" _g21841_)))
                         (let ((_%top18368%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21840_ 0)))
                               (_%x118369%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21840_ 1))))
                           (let ((_%$e18371%_ _%top18368%_))
                             (if (or (eq? 'qq-quote _%$e18371%_)
                                     (eq? 'qq-literal _%$e18371%_)
                                     (eq? 'qq-null _%$e18371%_))
                                 (values 'qq-quote
                                         (let* ((_%$%g1838018387%_
                                                 (lambda (_%$%g1838118384%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g1838118384%_)))
                                                (_%$%g1837918403%_
                                                 (lambda (_%$%g1838118390%_)
                                                   (box _%$%g1838118390%_))))
                                           (_%$%g1837918403%_ _%x118369%_)))
                                 (if (or (eq? 'qq-list _%$e18371%_)
                                         (eq? 'qq-list* _%$e18371%_)
                                         (eq? 'qq-append _%$e18371%_)
                                         (eq? 'unquote _%$e18371%_))
                                     (let* ((_%$%g1841518422%_
                                             (lambda (_%$%g1841618419%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g1841618419%_)))
                                            (_%$%g1841418435%_
                                             (lambda (_%$%g1841618425%_)
                                               (values 'unquote
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'box)
                                                             (cons _%$%g1841618425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%$%g1841418435%_
                                        (gerbil/core/sugar~QuasiquoteExpander#quasiquote-expand-1
                                         _%top18368%_
                                         _%x118369%_)))
                                     (if (eq? 'unquote-splicing _%$e18371%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '",@ after #&"
                                          _%$%g1833718358%_)
                                         '#!void)))))))))
                  (_%__kont2152621527%_
                   (lambda () (values 'qq-literal _%e18281%_))))
              (let* ((_%$%g1829018438%_
                      (lambda ()
                        (if (gx#stx-box? _%__stx2150421505%_)
                            (let ((_%$%e1833818355%_
                                   (unbox (gx#syntax-e _%__stx2150421505%_))))
                              (_%__kont2152421525%_ _%$%e1833818355%_))
                            (_%__kont2152621527%_))))
                     (_%__match2162121622%_
                      (lambda (_%$%e1832718443%_
                               _%__splice2152221523%_
                               _%$%target1832818446%_
                               _%$%tl1833018448%_)
                        (letrec ((_%$%loop1833118451%_
                                  (lambda (_%$%hd1832918454%_
                                           _%$%r1833518456%_)
                                    (if (gx#stx-pair? _%$%hd1832918454%_)
                                        (let ((_%$%e1833218458%_
                                               (gx#syntax-e
                                                _%$%hd1832918454%_)))
                                          (let ((_%$%lp-tl1833418463%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e1833218458%_)))
                                                (_%$%lp-hd1833318461%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e1833218458%_))))
                                            (_%$%loop1833118451%_
                                             _%$%lp-tl1833418463%_
                                             (cons _%$%lp-hd1833318461%_
                                                   _%$%r1833518456%_))))
                                        (let ((_%$%r1833618466%_
                                               (reverse _%$%r1833518456%_)))
                                          (_%__kont2152021521%_
                                           _%$%r1833618466%_))))))
                          (_%$%loop1833118451%_ _%$%target1832818446%_ '()))))
                     (_%$%g1828918587%_
                      (lambda ()
                        (if (gx#stx-vector? _%__stx2150421505%_)
                            (let ((_%$%e1832718443%_
                                   (vector->list
                                    (gx#syntax-e _%__stx2150421505%_))))
                              (if (gx#stx-pair/null? _%$%e1832718443%_)
                                  (let ((_%__splice2152221523%_
                                         (gx#syntax-split-splice->vector
                                          _%$%e1832718443%_
                                          '0)))
                                    (let ((_%$%tl1833018448%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice2152221523%_
                                              '1)))
                                          (_%$%target1832818446%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice2152221523%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl1833018448%_)
                                          (_%__match2162121622%_
                                           _%$%e1832718443%_
                                           _%__splice2152221523%_
                                           _%$%target1832818446%_
                                           _%$%tl1833018448%_)
                                          (_%__kont2152621527%_))))
                                  (_%__kont2152621527%_)))
                            (let ()
                              (declare (not safe))
                              (_%$%g1829018438%_)))))
                     (_%$%g1828518955%_
                      (lambda ()
                        (if (gx#stx-pair? _%__stx2150421505%_)
                            (let ((_%$%e1830118928%_
                                   (gx#syntax-e _%__stx2150421505%_)))
                              (let ((_%$%tl1830318933%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e1830118928%_)))
                                    (_%$%hd1830218931%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e1830118928%_))))
                                (if (gx#identifier? _%$%hd1830218931%_)
                                    (if (gx#free-identifier=?
                                         gerbil/core/sugar~QuasiquoteExpander#_g21842_
                                         _%$%hd1830218931%_)
                                        (if (gx#stx-pair? _%$%tl1830318933%_)
                                            (let ((_%$%e1830418936%_
                                                   (gx#syntax-e
                                                    _%$%tl1830318933%_)))
                                              (let ((_%$%tl1830618941%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e1830418936%_)))
                                                    (_%$%hd1830518939%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e1830418936%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl1830618941%_)
                                                    (_%__kont2151221513%_
                                                     _%$%hd1830518939%_)
                                                    (_%__kont2151821519%_
                                                     _%$%tl1830318933%_
                                                     _%$%hd1830218931%_))))
                                            (_%__kont2151821519%_
                                             _%$%tl1830318933%_
                                             _%$%hd1830218931%_))
                                        (if (gx#free-identifier=?
                                             gerbil/core/sugar~QuasiquoteExpander#_g21843_
                                             _%$%hd1830218931%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl1830318933%_)
                                                (let ((_%$%e1831118904%_
                                                       (gx#syntax-e
                                                        _%$%tl1830318933%_)))
                                                  (let ((_%$%tl1831318909%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e1831118904%_)))
                                                        (_%$%hd1831218907%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e1831118904%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl1831318909%_)
                                                        (_%__kont2151421515%_
                                                         _%$%hd1831218907%_)
                                                        (_%__kont2151821519%_
                                                         _%$%tl1830318933%_
                                                         _%$%hd1830218931%_))))
                                                (_%__kont2151821519%_
                                                 _%$%tl1830318933%_
                                                 _%$%hd1830218931%_))
                                            (if (gx#free-identifier=?
                                                 gerbil/core/sugar~QuasiquoteExpander#_g21844_
                                                 _%$%hd1830218931%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl1830318933%_)
                                                    (let ((_%$%e1831818872%_
                                                           (gx#syntax-e
                                                            _%$%tl1830318933%_)))
                                                      (let ((_%$%tl1832018877%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e1831818872%_)))
                    (_%$%hd1831918875%_
                     (let () (declare (not safe)) (##car _%$%e1831818872%_))))
                (if (gx#stx-null? _%$%tl1832018877%_)
                    (_%__kont2151621517%_ _%$%hd1831918875%_)
                    (_%__kont2151821519%_
                     _%$%tl1830318933%_
                     _%$%hd1830218931%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2151821519%_
                                                     _%$%tl1830318933%_
                                                     _%$%hd1830218931%_))
                                                (_%__kont2151821519%_
                                                 _%$%tl1830318933%_
                                                 _%$%hd1830218931%_))))
                                    (_%__kont2151821519%_
                                     _%$%tl1830318933%_
                                     _%$%hd1830218931%_))))
                            (let ()
                              (declare (not safe))
                              (_%$%g1828918587%_)))))
                     (_%$%g1828418962%_
                      (lambda ()
                        (if (gx#identifier? _%e18281%_)
                            (_%__kont2151021511%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g1828518955%_)))))
                     (_%$%g1828318985%_
                      (lambda ()
                        (if (gx#stx-pair? _%__stx2150421505%_)
                            (let ((_%$%e1829418967%_
                                   (gx#syntax-e _%__stx2150421505%_)))
                              (let ((_%$%tl1829618972%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e1829418967%_)))
                                    (_%$%hd1829518970%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e1829418967%_))))
                                (if (gx#identifier? _%$%hd1829518970%_)
                                    (if (gx#free-identifier=?
                                         gerbil/core/sugar~QuasiquoteExpander#_g21845_
                                         _%$%hd1829518970%_)
                                        (if (gx#stx-pair? _%$%tl1829618972%_)
                                            (let ((_%$%e1829718975%_
                                                   (gx#syntax-e
                                                    _%$%tl1829618972%_)))
                                              (let ((_%$%tl1829918980%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e1829718975%_)))
                                                    (_%$%hd1829818978%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e1829718975%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl1829918980%_)
                                                    (_%__kont2150821509%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g1828418962%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g1828418962%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g1828418962%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g1828418962%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g1828418962%_))))))
                (if (gx#stx-null? _%__stx2150421505%_)
                    (_%__kont2150621507%_)
                    (let () (declare (not safe)) (_%$%g1828318985%_))))))))
      (define gerbil/core/sugar~QuasiquoteExpander#unquote-expand
        (lambda (_%e18033%_)
          (let* ((_%__stx2162821629%_ _%e18033%_)
                 (_%$%g1804418085%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2162821629%_))))
            (let ((_%__kont2163021631%_ (lambda () (values 'qq-null '())))
                  (_%__kont2163221633%_
                   (lambda () (values 'unquote _%e18033%_)))
                  (_%__kont2163421635%_
                   (lambda (_%$%g1804618253%_)
                     (values 'unquote
                             (cons (gx#datum->syntax '#f 'apply)
                                   (cons (gx#datum->syntax '#f 'qq-append)
                                         (cons _%$%g1804618253%_ '()))))))
                  (_%__kont2163621637%_
                   (lambda (_%$%g1805318223%_)
                     (values 'qq-list _%$%g1805318223%_)))
                  (_%__kont2163821639%_
                   (lambda (_%$%g1805718201%_)
                     (values 'qq-list* _%$%g1805718201%_)))
                  (_%__kont2164021641%_
                   (lambda (_%$%g1806118178%_)
                     (values 'qq-append _%$%g1806118178%_)))
                  (_%__kont2164221643%_ (lambda () (values 'qq-null '())))
                  (_%__kont2164421645%_
                   (lambda (_%$%g1807118128%_)
                     (values 'qq-quote _%$%g1807118128%_)))
                  (_%__kont2164621647%_
                   (lambda () (values 'unquote _%e18033%_)))
                  (_%__kont2164821649%_
                   (lambda () (values 'qq-literal _%e18033%_))))
              (let* ((_%$%g1803618264%_
                      (lambda ()
                        (if (gx#stx-pair? _%__stx2162821629%_)
                            (let ((_%$%e1804718237%_
                                   (gx#syntax-e _%__stx2162821629%_)))
                              (let ((_%$%tl1804918242%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e1804718237%_)))
                                    (_%$%hd1804818240%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e1804718237%_))))
                                (if (gx#identifier? _%$%hd1804818240%_)
                                    (if (gx#free-identifier=?
                                         gerbil/core/sugar~QuasiquoteExpander#_g21846_
                                         _%$%hd1804818240%_)
                                        (if (gx#stx-pair? _%$%tl1804918242%_)
                                            (let ((_%$%e1805018245%_
                                                   (gx#syntax-e
                                                    _%$%tl1804918242%_)))
                                              (let ((_%$%tl1805218250%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e1805018245%_)))
                                                    (_%$%hd1805118248%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e1805018245%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl1805218250%_)
                                                    (_%__kont2163421635%_
                                                     _%$%hd1805118248%_)
                                                    (_%__kont2164621647%_))))
                                            (_%__kont2164621647%_))
                                        (if (gx#free-identifier=?
                                             gerbil/core/sugar~QuasiquoteExpander#_g21847_
                                             _%$%hd1804818240%_)
                                            (_%__kont2163621637%_
                                             _%$%tl1804918242%_)
                                            (if (gx#free-identifier=?
                                                 gerbil/core/sugar~QuasiquoteExpander#_g21848_
                                                 _%$%hd1804818240%_)
                                                (_%__kont2163821639%_
                                                 _%$%tl1804918242%_)
                                                (if (gx#free-identifier=?
                                                     gerbil/core/sugar~QuasiquoteExpander#_g21849_
                                                     _%$%hd1804818240%_)
                                                    (_%__kont2164021641%_
                                                     _%$%tl1804918242%_)
                                                    (if (gx#free-identifier=?
                                                         gerbil/core/sugar~QuasiquoteExpander#_g21850_
                                                         _%$%hd1804818240%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl1804918242%_)
                                                            (let ((_%$%e1806818155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl1804918242%_)))
                      (let ((_%$%tl1807018160%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e1806818155%_)))
                            (_%$%hd1806918158%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e1806818155%_))))
                        (if (gx#stx-null? _%$%hd1806918158%_)
                            (if (gx#stx-null? _%$%tl1807018160%_)
                                (_%__kont2164221643%_)
                                (_%__kont2164621647%_))
                            (if (gx#stx-null? _%$%tl1807018160%_)
                                (_%__kont2164421645%_ _%$%hd1806918158%_)
                                (_%__kont2164621647%_)))))
                    (_%__kont2164621647%_))
                (_%__kont2164621647%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%__kont2164621647%_))))
                            (_%__kont2164821649%_))))
                     (_%$%g1803518271%_
                      (lambda ()
                        (if (gx#identifier? _%e18033%_)
                            (_%__kont2163221633%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g1803618264%_))))))
                (if (gx#stx-null? _%__stx2162821629%_)
                    (_%__kont2163021631%_)
                    (let () (declare (not safe)) (_%$%g1803518271%_))))))))
      (define gerbil/core/sugar~QuasiquoteExpander#quasiquote-expand-1
        (lambda (_%top17786%_ _%x17787%_)
          (let* ((_%$%g1778917796%_
                  (lambda (_%$%g1779017793%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g1779017793%_)))
                 (_%$%g1778818030%_
                  (lambda (_%$%g1779017799%_)
                    (let ((_%$e17811%_ _%top17786%_))
                      (if (or (eq? 'unquote _%$e17811%_)
                              (eq? 'qq-literal _%$e17811%_))
                          _%x17787%_
                          (if (eq? 'qq-null _%$e17811%_)
                              (cons (gx#datum->syntax '#f 'qq-quote)
                                    (cons '() '()))
                              (if (eq? 'qq-quote _%$e17811%_)
                                  (cons (gx#datum->syntax '#f 'qq-quote)
                                        (cons _%$%g1779017799%_ '()))
                                  (if (eq? 'qq-list* _%$e17811%_)
                                      (let* ((_%__stx2174821749%_ _%x17787%_)
                                             (_%$%g1781917864%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%__stx2174821749%_))))
                                        (let ((_%__kont2175021751%_
                                               (lambda (_%$%g1782118001%_
                                                        _%$%g1782218002%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'qq-append)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'qq-list)
                           (foldr (lambda (_%$%g1801918022%_ _%$%g1802018024%_)
                                    (cons _%$%g1801918022%_ _%$%g1802018024%_))
                                  '()
                                  _%$%g1782218002%_))
                     (cons (cons (gx#datum->syntax '#f 'unquote-splicing)
                                 (cons _%$%g1782118001%_ '()))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont2175421755%_
                                               (lambda (_%$%g1784117922%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'qq-list)
                                                       (foldr (lambda (_%$%g1794217945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g1794317947%_)
                        (cons _%$%g1794217945%_ _%$%g1794317947%_))
                      '()
                      _%$%g1784117922%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont2175821759%_
                                               (lambda ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'qq-list*)
                                                       _%$%g1779017799%_))))
                                          (let* ((_%__match2182921830%_
                                                  (lambda (_%__splice2175621757%_
                                                           _%$%target1784217876%_
                                                           _%$%tl1784417878%_
                                                           _%$%e1785117881%_
                                                           _%$%hd1785217884%_
                                                           _%$%tl1785317886%_
                                                           _%$%e1785417889%_
                                                           _%$%hd1785517892%_
                                                           _%$%tl1785617894%_
                                                           _%$%e1785717897%_
                                                           _%$%hd1785817900%_
                                                           _%$%tl1785917902%_)
                                                    (letrec ((_%$%loop1784517905%_
                                                              (lambda (_%$%hd1784317908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%elems1784917910%_)
                        (if (gx#stx-pair? _%$%hd1784317908%_)
                            (let ((_%$%e1784617912%_
                                   (gx#syntax-e _%$%hd1784317908%_)))
                              (let ((_%$%lp-tl1784817917%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e1784617912%_)))
                                    (_%$%lp-hd1784717915%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e1784617912%_))))
                                (_%$%loop1784517905%_
                                 _%$%lp-tl1784817917%_
                                 (cons _%$%lp-hd1784717915%_
                                       _%$%elems1784917910%_))))
                            (let ((_%$%elems1785017920%_
                                   (reverse _%$%elems1784917910%_)))
                              (_%__kont2175421755%_ _%$%elems1785017920%_))))))
              (_%$%loop1784517905%_ _%$%target1784217876%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__match2179321794%_
                                                  (lambda (_%__splice2175221753%_
                                                           _%$%target1782317955%_
                                                           _%$%tl1782517957%_
                                                           _%$%e1783217960%_
                                                           _%$%hd1783317963%_
                                                           _%$%tl1783417965%_
                                                           _%$%e1783517968%_
                                                           _%$%hd1783617971%_
                                                           _%$%tl1783717973%_
                                                           _%$%e1783817976%_
                                                           _%$%hd1783917979%_
                                                           _%$%tl1784017981%_)
                                                    (letrec ((_%$%loop1782617984%_
                                                              (lambda (_%$%hd1782417987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%elems1783017989%_)
                        (if (gx#stx-pair? _%$%hd1782417987%_)
                            (let ((_%$%e1782717991%_
                                   (gx#syntax-e _%$%hd1782417987%_)))
                              (let ((_%$%lp-tl1782917996%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e1782717991%_)))
                                    (_%$%lp-hd1782817994%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e1782717991%_))))
                                (_%$%loop1782617984%_
                                 _%$%lp-tl1782917996%_
                                 (cons _%$%lp-hd1782817994%_
                                       _%$%elems1783017989%_))))
                            (let ((_%$%elems1783117999%_
                                   (reverse _%$%elems1783017989%_)))
                              (_%__kont2175021751%_
                               _%$%hd1783917979%_
                               _%$%elems1783117999%_))))))
              (_%$%loop1782617984%_ _%$%target1782317955%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _%__stx2174821749%_)
                                                (if (let ((__tmp21851
                                                           (gx#stx-length
                                                            _%__stx2174821749%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp21851 '1))
                                                    (let ((_%__splice2175221753%_
                                                           (gx#syntax-split-splice->vector
                                                            _%__stx2174821749%_
                                                            '1)))
                                                      (let ((_%$%tl1782517957%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice2175221753%_ '1)))
                    (_%$%target1782317955%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice2175221753%_ '0))))
                (if (gx#stx-pair? _%$%tl1782517957%_)
                    (let ((_%$%e1783217960%_ (gx#syntax-e _%$%tl1782517957%_)))
                      (let ((_%$%tl1783417965%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e1783217960%_)))
                            (_%$%hd1783317963%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e1783217960%_))))
                        (if (gx#stx-pair? _%$%hd1783317963%_)
                            (let ((_%$%e1783517968%_
                                   (gx#syntax-e _%$%hd1783317963%_)))
                              (let ((_%$%tl1783717973%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e1783517968%_)))
                                    (_%$%hd1783617971%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e1783517968%_))))
                                (if (gx#identifier? _%$%hd1783617971%_)
                                    (if (gx#free-identifier=?
                                         gerbil/core/sugar~QuasiquoteExpander#_g21852_
                                         _%$%hd1783617971%_)
                                        (if (gx#stx-pair? _%$%tl1783717973%_)
                                            (let ((_%$%e1783817976%_
                                                   (gx#syntax-e
                                                    _%$%tl1783717973%_)))
                                              (let ((_%$%tl1784017981%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e1783817976%_)))
                                                    (_%$%hd1783917979%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e1783817976%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl1784017981%_)
                                                    (if (gx#stx-null?
                                                         _%$%tl1783417965%_)
                                                        (_%__match2179321794%_
                                                         _%__splice2175221753%_
                                                         _%$%target1782317955%_
                                                         _%$%tl1782517957%_
                                                         _%$%e1783217960%_
                                                         _%$%hd1783317963%_
                                                         _%$%tl1783417965%_
                                                         _%$%e1783517968%_
                                                         _%$%hd1783617971%_
                                                         _%$%tl1783717973%_
                                                         _%$%e1783817976%_
                                                         _%$%hd1783917979%_
                                                         _%$%tl1784017981%_)
                                                        (_%__kont2175821759%_))
                                                    (_%__kont2175821759%_))))
                                            (_%__kont2175821759%_))
                                        (if (gx#free-identifier=?
                                             gerbil/core/sugar~QuasiquoteExpander#_g21853_
                                             _%$%hd1783617971%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl1783717973%_)
                                                (let ((_%$%e1785717897%_
                                                       (gx#syntax-e
                                                        _%$%tl1783717973%_)))
                                                  (let ((_%$%tl1785917902%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e1785717897%_)))
                                                        (_%$%hd1785817900%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e1785717897%_))))
                                                    (if (gx#stx-null?
                                                         _%$%hd1785817900%_)
                                                        (if (gx#stx-null?
                                                             _%$%tl1785917902%_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl1783417965%_)
                        (_%__match2182921830%_
                         _%__splice2175221753%_
                         _%$%target1782317955%_
                         _%$%tl1782517957%_
                         _%$%e1783217960%_
                         _%$%hd1783317963%_
                         _%$%tl1783417965%_
                         _%$%e1783517968%_
                         _%$%hd1783617971%_
                         _%$%tl1783717973%_
                         _%$%e1785717897%_
                         _%$%hd1785817900%_
                         _%$%tl1785917902%_)
                        (_%__kont2175821759%_))
                    (_%__kont2175821759%_))
                (_%__kont2175821759%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2175821759%_))
                                            (_%__kont2175821759%_)))
                                    (_%__kont2175821759%_))))
                            (_%__kont2175821759%_))))
                    (_%__kont2175821759%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2175821759%_))
                                                (_%__kont2175821759%_)))))
                                      (if (eq? 'qq-list _%$e17811%_)
                                          (cons (gx#datum->syntax '#f 'qq-list)
                                                _%$%g1779017799%_)
                                          (if (eq? 'qq-append _%$e17811%_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'qq-append)
                                                    _%$%g1779017799%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"quasiquote-expand-1 error"
                                               _%top17786%_
                                               _%x17787%_)))))))))))
            (_%$%g1778818030%_ _%x17787%_))))
      (define gerbil/core/sugar~QuasiquoteExpander#quasiquote-expand
        (lambda (_%e17781%_)
          (let ((_g21854_
                 (gerbil/core/sugar~QuasiquoteExpander#quasiquote-expand-0
                  _%e17781%_)))
            (begin
              (let ((_g21855_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g21854_)
                           (##values-length _g21854_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g21855_ 2)))
                    (error "Context expects 2 values" _g21855_)))
              (let ((_%top17783%_
                     (let () (declare (not safe)) (##values-ref _g21854_ 0)))
                    (_%arg17784%_
                     (let () (declare (not safe)) (##values-ref _g21854_ 1))))
                (begin
                  (if (eq? _%top17783%_ 'unquote-splicing)
                      (gx#raise-syntax-error '#f '",@ after `" _%e17781%_)
                      '#!void)
                  (gerbil/core/sugar~QuasiquoteExpander#quasiquote-expand-1
                   _%top17783%_
                   _%arg17784%_))))))))))
